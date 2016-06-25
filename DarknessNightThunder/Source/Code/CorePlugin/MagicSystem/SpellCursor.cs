using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using Duality;

namespace DarknessNightThunder
{
    public class SpellCursor
    {
		private static readonly VoidSpellHost voidHost = new VoidSpellHost();

		private	Point2		startPos	= Point2.Zero;
		private	Point2		pos			= Point2.Zero;
		private	Spell		spell		= null;
		private	SpellVar	annotation	= null;

		public Point2 Position
		{
			get { return this.pos; }
			set { this.pos = value; }
		}
		public ISpellHost BoundTo
		{
			get { return this.spell.BoundTo ?? voidHost; }
		}
		public SpellScript Script
		{
			get { return this.spell.Script; }
		}
		public SpellGlyph CurrentGlyph
		{
			get { return this.GetSurroundings(0, 0); }
		}
		public IEnumerable<SpellGlyph> Parameters
		{
			get
			{
				int y;

				// Upper Params
				y = -1;
				do
				{
					SpellGlyph param = this.GetSurroundings(0, y);
					if (param != null)
						yield return param;
					else
						break;
					y--;
				} while (true);

				// Lower Params
				y = 1;
				do
				{
					SpellGlyph param = this.GetSurroundings(0, y);
					if (param != null)
						yield return param;
					else
						break;
					y++;
				} while (true);

				yield break;
			}
		}
		public bool HasEnded
		{
			get { return this.CurrentGlyph == null; }
		}
		public bool HasNext
		{
			get { return this.spell.Script[this.pos.X + 1, this.pos.Y] != null; }
		}

		public SpellCursor(Spell spell, int x, int y)
		{
			this.spell = spell;
			this.pos = new Point2(x, y);
			this.startPos = this.pos;
		}

		public void Reset()
		{
			this.pos = this.startPos;
			this.annotation = null;
		}
		public void Advance()
		{
			if (this.HasEnded) return;

			SpellGlyph current = this.CurrentGlyph;
			Log.Game.Write("[ {0}, {1}] {2}", 
				this.pos.X.ToString().PadRight(3), 
				this.pos.Y.ToString().PadRight(3),
				current.GetType().Name);
			Log.Game.PushIndent();
			if (current.Activate(this))
			{
				this.pos.X += 1;
			}
			Log.Game.PopIndent();
		}
		
		public SpellGlyph GetSurroundings(int x, int y)
		{
			return this.spell.Script[this.pos.X + x, this.pos.Y + y];
		}

		public void Annotate(SpellVar annotation)
		{
			Log.Game.Write("Annotate with {0}", annotation); 
			this.annotation = annotation;
		}
		public void Store(int marker, SpellVar value)
		{
			this.spell.SetSpellVariable(marker, value);
		}
		public T GetAnnotation<T>() where T : SpellVar
		{
			return this.annotation as T;
		}
		public T Load<T>(int marker) where T : SpellVar
		{
			return this.spell.GetSpellVariable<T>(marker);
		}
    }
}
