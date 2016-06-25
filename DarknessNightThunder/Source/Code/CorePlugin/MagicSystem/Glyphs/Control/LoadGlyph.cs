using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using Duality;
using Duality.Resources;

using DarknessNightThunder.MagicalObjects;

namespace DarknessNightThunder.Glyphs
{
	public class LoadGlyph : SpellGlyph
	{
		public override int GlyphSpriteIndex
		{
			get { return 15; }
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

			cursor.Annotate(cursor.Load<SpellVar>(targetIndex));
			return true;
		}
	}
}
