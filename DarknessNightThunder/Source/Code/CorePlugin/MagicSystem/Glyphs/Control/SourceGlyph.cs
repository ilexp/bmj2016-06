using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace DarknessNightThunder.Glyphs
{
	public class SourceGlyph : SpellGlyph
	{
		public override int GlyphSpriteIndex
		{
			get { return 0; }
		}

		public override bool Activate(SpellCursor cursor)
		{
			return true;
		}
	}
}
