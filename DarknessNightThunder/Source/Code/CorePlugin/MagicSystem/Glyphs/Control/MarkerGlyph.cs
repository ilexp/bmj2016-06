using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace DarknessNightThunder.Glyphs
{
	public class MarkerGlyph : SpellGlyph
	{
		private int index = 0;

		public int Index
		{
			get { return this.index; }
			set { this.index = value; }
		}
		public override int GlyphSpriteIndex
		{
			get { return 5 + index; }
		}

		public MarkerGlyph(int index)
		{
			this.index = index;
		}

		public override bool Activate(SpellCursor cursor)
		{
			SpellVar value = cursor.Load<SpellVar>(this.index);
			if (value != null) cursor.Annotate(value);
			return true;
		}
		public override bool TemplateEquals(SpellGlyph other)
		{
			return base.TemplateEquals(other) && (other as MarkerGlyph).index == this.index;
		}
	}
}
