using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace DarknessNightThunder.Glyphs
{
	public class EmptyGlyph : SpellGlyph
	{
		public override int GlyphSpriteIndex
		{
			get { return 3; }
		}

		public override bool Activate(SpellCursor cursor)
		{
			return true;
		}
	}
}
