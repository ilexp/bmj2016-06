using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using Duality;
using Duality.Components;
using Duality.Components.Physics;
using Duality.Resources;

using DarknessNightThunder.MagicalObjects;
using DarknessNightThunder.SpellVars;


namespace DarknessNightThunder.Glyphs
{
	public class MoveGlyph : SpellGlyph
	{
		public override int GlyphSpriteIndex
		{
			get { return 16; }
		}
		public override bool CanNegate
		{
			get { return true; }
		}

		public override bool Activate(SpellCursor cursor)
		{
			int baseEnergy = 25;

			// Determine target position
			Vector2 targetPos = cursor.BoundTo.Pos;
			{
				List<SpellVar> selection = new List<SpellVar>();
				foreach (SpellGlyph param in cursor.Parameters)
				{
					if (param is SelectionGlyph)
					{
						SpellVar selectionVar = (param as SelectionGlyph).Select(cursor);
						if (selectionVar != null) selection.Add(selectionVar);
					}
				}
				PositionVar posVar = selection.OfType<PositionVar>().FirstOrDefault();
				ObjectVar objVar = selection.OfType<ObjectVar>().FirstOrDefault();
				if (posVar != null)
				{
					targetPos = posVar.Position;
				}
				else if (objVar != null && objVar.Count > 0.0f)
				{
					Vector2 acc = Vector2.Zero;
					foreach (var e in objVar.Elements)
					{
						acc += e.Weight * (e.Interactor as Component).GameObj.Transform.Pos.Xy;
					}
					targetPos = acc / objVar.Count;
				}
			}
			

			// Move object
			{
				ObjectVar objVar = cursor.GetAnnotation<ObjectVar>();
				if (objVar != null)
				{
					var moveObj = objVar.Elements.Select(e => new { 
						Weight = e.Weight, 
						Interactor = e.Interactor, 
						Transform = (e.Interactor as Component).GameObj.Transform, 
						Body = (e.Interactor as Component).GameObj.GetComponent<RigidBody>() });
					foreach (var p in moveObj)
					{
						Vector2 targetDir = (targetPos - p.Transform.Pos.Xy);
						float distance = targetDir.Length;
						targetDir /= MathF.Max(distance, 1.0f);

						float efficiency = Spell.GetEfficiency((p.Transform.Pos.Xy - cursor.BoundTo.Pos).Length);

						bool negativeForce = this.IsNegated;
						if (p.Weight < 0.0f) negativeForce = !negativeForce;
						float targetSpeed;
						if (negativeForce)
						{
							if (distance <= 1.0f)
							{
								distance = 1.0f;
								targetDir = MathF.Rnd.NextVector2();
							}
							targetSpeed = -15.0f * (1.0f - MathF.Min(distance / 500.0f, 1.0f));
						}
						else
							targetSpeed = 15.0f * MathF.Min(distance / 500.0f, 1.0f);

						Vector2 targetVel = targetDir * targetSpeed;
						Vector2 targetVelChange = (targetVel - p.Body.LinearVelocity);
						float targetForceFactor = targetVelChange.Length;
						Vector2 targetVelDir = targetVelChange / MathF.Max(0.01f, targetForceFactor);

						float requestedEnergy = 
							(baseEnergy * MathF.Abs(p.Weight) / (float)objVar.Count) * 
							MathF.Clamp(targetForceFactor * p.Body.Mass / 150.0f, 0.0f, 1.0f);
						float usedEnergy = cursor.BoundTo.DrainEnergy(requestedEnergy);

						p.Body.ApplyWorldImpulse(5.0f * efficiency * targetVelDir * usedEnergy);
					}
				}
			}

			return true;
		}
	}
}
