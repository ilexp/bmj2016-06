using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using Duality;

namespace DarknessNightThunder
{
    public class Spell
    {
		private const float TickIntervalMs = Time.MsPFMult;

		private SpellScript		script			= null;
		private	float			clock			= 0.0f;
		private	ISpellHost		boundTo			= null;
		private	SpellCursor[]	threads			= null;
		private	List<SpellVar>	spellVars		= null;
		
		public SpellScript Script
		{
			get { return this.script; }
		}
		public ISpellHost BoundTo
		{
			get { return this.boundTo; }
		}
		public bool IsActive
		{
			get { return this.threads.Any(t => !t.HasEnded) && this.boundTo != null; }
		}

		private Spell() {}

		public void Update()
		{
			this.clock += Time.TimeMult * Time.MsPFMult;
			if (this.clock >= TickIntervalMs)
			{
				this.clock -= TickIntervalMs;
				this.Tick();
			}
		}
		public void Release()
		{
			this.boundTo = null;
		}

		public void SetSpellVariable(int index, SpellVar value)
		{
			if (this.spellVars == null) this.spellVars = new List<SpellVar>();
			while (this.spellVars.Count <= index) this.spellVars.Add(null);
			this.spellVars[index] = value;
		}
		public T GetSpellVariable<T>(int index) where T : SpellVar
		{
			if (this.spellVars == null) return null;
			if (this.spellVars.Count <= index) return null;
			return this.spellVars[index] as T;
		}

		private void Tick()
		{
			Log.Game.Write("Tick {0}", this.GetHashCode());
			Log.Game.PushIndent();

			foreach (SpellCursor thread in this.threads)
			{
				if (thread.HasEnded) continue;
				thread.Advance();
			}

			Log.Game.PopIndent();
		}
		private void InitThreads()
		{
			this.threads = this.script.EntryPoints.Select(p => new SpellCursor(this, p.X, p.Y)).ToArray();
		}

		public static Spell Cast(ISpellHost boundTo, SpellScript script)
		{
			if (script == null) throw new ArgumentNullException("script");

			Spell spell = new Spell();
			spell.boundTo = boundTo;
			spell.script = script;
			spell.InitThreads();
			return spell;
		}
		public static float GetEfficiency(float distance)
		{
			const float MaxDist = 1000.0f;
			return MathF.Clamp(1.0f - MathF.Pow(distance / MaxDist, 0.3f), 0.0f, 1.0f);
		}
		public static float[] WeightByProximity(int count, Func<int,float> distanceFunc, Func<int,float> scoreModifierFunc = null)
		{
			float highestDist = 0.0f;
			for (int i = 0; i < count; i++)
			{
				float dist = distanceFunc(i);
				if (dist > highestDist)
				{
					highestDist = dist;
				}
			}
			highestDist += 1.0f;

			float lowestDist = 0.0f;
			float[] scores = new float[count];
			float totalScore = 0.0f;
			for (int i = 0; i < scores.Length; i++)
			{
				scores[i] = (1.0f - ((distanceFunc(i) - lowestDist) / (highestDist - lowestDist)));
				if (scoreModifierFunc != null) scores[i] *= scoreModifierFunc(i);
				totalScore += scores[i];
			}

			for (int i = 0; i < scores.Length; i++)
			{
				scores[i] /= totalScore;
			}
			return scores;
		}
    }
}
