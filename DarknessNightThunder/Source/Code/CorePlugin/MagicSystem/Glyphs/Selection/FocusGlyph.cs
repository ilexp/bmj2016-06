using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using Duality;
using Duality.Components;
using Duality.Components.Physics;
using Duality.Resources;

using DarknessNightThunder.SpellVars;

namespace DarknessNightThunder.Glyphs
{
	public class FocusGlyph : SelectionGlyph
	{
		public override int GlyphSpriteIndex
		{
			get { return 1; }
		}

		public override SpellVar Select(SpellCursor cursor)
		{
			Camera mainCam = Scene.Current.FindComponent<Camera>();
			Vector3 worldPos = mainCam.GetSpaceCoord(DualityApp.Mouse.Pos);

			var pickedObjects = RigidBody.PickShapesGlobal(worldPos.Xy)
				.Select(s => new { 
					Interactor = s.Parent.GameObj.GetComponent<ICmpSpellInteractor>(), 
					Distance = (s.Parent.GameObj.Transform.Pos.Xy - worldPos.Xy).Length } )
				.Where(e => e.Interactor != null)
				.ToArray();
			float[] scores = Spell.WeightByProximity(pickedObjects.Length, i => pickedObjects[i].Distance);

			if (pickedObjects.Length > 0)
			{
				ObjectVar objVar = new ObjectVar();
				for (int i = 0; i < pickedObjects.Length; i++)
				{
					objVar.Add(pickedObjects[i].Interactor, scores[i]);
				}
				return objVar;
			}
			else
			{
				return new PositionVar
				{
					Position = worldPos.Xy
				};
			}
		}
	}
}
