using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using Duality;
using Duality.Resources;

using DarknessNightThunder.MagicalObjects;

namespace DarknessNightThunder.Glyphs
{
	public class FireGlyph : CreationGlyph<MagicalFire>
	{
		public override int GlyphSpriteIndex
		{
			get { return 2; }
		}
		protected override ContentRef<Prefab> ObjectTemplate
		{
			get { return new ContentRef<Prefab>(null, "Data/Prefabs/MagicalFire.Prefab.res"); }
		}

		protected override float GetEnergyConsumption()
		{
			return 100.0f;
		}
		public override float GetRessemblance(ICmpSpellInteractor interactor)
		{
			Component cmp = interactor as Component;
			float result = 0.0f;

			if (cmp.GameObj.GetComponent<MagicalFire>() != null) result = 1.0f;
			
			return this.IsNegated ? (1.0f - result) : result;
		}
	}
}
