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
	public class AllGlyph : SelectionGlyph
	{
		public override int GlyphSpriteIndex
		{
			get { return 18; }
		}

		public override SpellVar Select(SpellCursor cursor)
		{
			// Determine additional selection parameters
			List<Func<ICmpSpellInteractor,float>> predicateList = new List<Func<ICmpSpellInteractor,float>>();
			foreach (SpellGlyph param in cursor.Parameters)
			{
				if (param is ICreationGlyph)
				{
					predicateList.Add(i => (param as ICreationGlyph).GetRessemblance(i));
				}
			}

			// Select objects
			Vector2 myPos = cursor.BoundTo.Pos;
			var pickedObjects = Scene.Current.FindComponents<ICmpSpellInteractor>()
				.Select(i => new { 
					Interactor = i, 
					Distance = (myPos - i.Pos).Length,
					MatchRate = predicateList.Aggregate(1.0f, (r, p) => r * p(i)) })
				.Where(e => e.MatchRate > 0.01f && Spell.GetEfficiency(e.Distance) > 0.01f && (e.Interactor as Component).GameObj != (cursor.BoundTo as Component).GameObj)
				.ToArray();

			ObjectVar objVar = new ObjectVar();
			float[] scores = Spell.WeightByProximity(pickedObjects.Length, i => pickedObjects[i].Distance, i => pickedObjects[i].MatchRate);
			for (int i = 0; i < pickedObjects.Length; i++)
			{
				objVar.Add(pickedObjects[i].Interactor, scores[i] * pickedObjects[i].MatchRate);
			}
			return objVar;
		}
	}
}
