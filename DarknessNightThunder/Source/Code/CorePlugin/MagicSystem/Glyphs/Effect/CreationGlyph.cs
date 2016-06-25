using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using Duality;
using Duality.Resources;
using Duality.Components;

using DarknessNightThunder.MagicalObjects;
using DarknessNightThunder.SpellVars;

namespace DarknessNightThunder.Glyphs
{
	public abstract class CreationGlyph<T> : SpellGlyph, ICreationGlyph where T : MagicalObject
	{
		protected abstract ContentRef<Prefab> ObjectTemplate { get; }
		public override bool CanNegate
		{
			get { return true; }
		}

		protected abstract float GetEnergyConsumption();
		public override bool Activate(SpellCursor cursor)
		{
			float baseEnergy = this.GetEnergyConsumption();
			float usedEnergy = cursor.BoundTo.DrainEnergy(baseEnergy);

			Vector2 boundPos = cursor.BoundTo.Pos;
			PositionVar posVar = cursor.GetAnnotation<PositionVar>();
			ObjectVar objVar = cursor.GetAnnotation<ObjectVar>();
			ObjectVar selectedObjects = new ObjectVar();
			if (objVar != null)
			{
				var weightedPos = objVar.Elements.Select(e => new { 
					Weight = e.Weight, 
					Interactor = e.Interactor, 
					Pos = e.Interactor.Pos });
				foreach (var p in weightedPos)
				{
					float energyMult = Spell.GetEfficiency((p.Pos - boundPos).Length) * p.Weight / objVar.Count;
					foreach (T magic in this.Create(p.Pos, usedEnergy * energyMult))
					{
						ICmpSpellInteractor interactor = magic.GameObj.GetComponent<ICmpSpellInteractor>();
						if (interactor != null)
						{
							selectedObjects.Add(interactor, energyMult);
						}
					}
				}
			}
			else if (posVar != null)
			{
				Vector2 targetPos = posVar.Position;
				float energyMult = Spell.GetEfficiency((targetPos - boundPos).Length);
				foreach (T magic in this.Create(posVar.Position, usedEnergy * energyMult))
				{
					ICmpSpellInteractor interactor = magic.GameObj.GetComponent<ICmpSpellInteractor>();
					if (interactor != null)
					{
						selectedObjects.Add(interactor, energyMult);
					}
				}
			}
			else
			{
				foreach (T magic in this.Create(boundPos, usedEnergy))
				{
					ICmpSpellInteractor interactor = magic.GameObj.GetComponent<ICmpSpellInteractor>();
					if (interactor != null)
					{
						selectedObjects.Add(interactor);
					}
				}
			}

			if (selectedObjects.Count > 0.0f)
			{
				cursor.Annotate(selectedObjects);
			}

			return true;
		}
		public abstract float GetRessemblance(ICmpSpellInteractor interactor);

		private IEnumerable<T> Create(Vector2 pos, float energy)
		{
			var existingObj = Scene.Current.FindComponents<T>()
				.Select(m => new { Object = m, Distance = (m.GameObj.Transform.Pos.Xy - pos).Length })
				.Where(v => v.Distance <= v.Object.BoundRadius)
				.ToArray();

			if (existingObj.Length > 0)
			{
				if (existingObj.Length > 1)
				{
					float[] scores = Spell.WeightByProximity(existingObj.Length, i => existingObj[i].Distance);
					for (int i = 0; i < existingObj.Length; i++)
					{
						existingObj[i].Object.AddEnergy(energy * scores[i]);
					}
				}
				else
				{
					for (int i = 0; i < existingObj.Length; i++)
					{
						existingObj[i].Object.AddEnergy(energy / (float)existingObj.Length);
					}
				}
				return existingObj.Select(e => e.Object);
			}
			else
			{
				Prefab prefab = this.ObjectTemplate.Res;
				GameObject obj = prefab.Instantiate();
				Transform transform = obj.Transform;
				T magic = obj.GetComponent<T>();

				transform.Pos = new Vector3(pos, transform.Pos.Z);
				magic.AddEnergy(energy);

				Scene.Current.AddObject(obj);
				return new[] { magic };
			}
		}
	}

	public interface ICreationGlyph
	{
		float GetRessemblance(ICmpSpellInteractor interactor);
	}
}
