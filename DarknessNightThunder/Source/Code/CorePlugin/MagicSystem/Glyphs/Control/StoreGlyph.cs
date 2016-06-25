using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using Duality;
using Duality.Resources;

using DarknessNightThunder.MagicalObjects;

namespace DarknessNightThunder.Glyphs
{
	public class StoreGlyph : SpellGlyph
	{
		public override int GlyphSpriteIndex
		{
			get { return 14; }
		}

		public override bool Activate(SpellCursor cursor)
		{
			int targetIndex = 0;
			foreach (SpellGlyph param in cursor.Parameters)
			{
				if (param is MarkerGlyph)
				{
					targetIndex = (param as MarkerGlyph).Index;
					break;
				}
			}

			cursor.Store(targetIndex, cursor.GetAnnotation<SpellVar>());
			return true;
		}
	}
}
