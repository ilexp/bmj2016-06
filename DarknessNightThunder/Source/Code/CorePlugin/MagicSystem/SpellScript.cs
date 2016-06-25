using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using Duality;

using DarknessNightThunder.Glyphs;

namespace DarknessNightThunder
{
    public class SpellScript
    {
		private Grid<SpellGlyph> glyphGrid = new Grid<SpellGlyph>(20, 10);

		public int Width
		{
			get { return this.glyphGrid.Width; }
		}
		public int Height
		{
			get { return this.glyphGrid.Height; }
		}
		public IEnumerable<Point2> EntryPoints
		{
			get
			{
				return this.glyphGrid.FindAllIndices(g => g is SourceGlyph);
			}
		}
		public SpellGlyph this[int x, int y]
		{
			get
			{
				if (x < 0 || x >= this.glyphGrid.Width) return null;
				if (y < 0 || y >= this.glyphGrid.Height) return null;
				return this.glyphGrid[x, y];
			}
			set
			{
				if (x < 0 || x >= this.glyphGrid.Width) return;
				if (y < 0 || y >= this.glyphGrid.Height) return;
				this.glyphGrid[x, y] = value;
			}
		}

		public Point2 FindGlyph(Predicate<SpellGlyph> predicate)
		{
			return this.glyphGrid.FindIndex(predicate);
		}
    }
}
