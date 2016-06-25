using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using Duality;
using Duality.Resources;

using DarknessNightThunder.MagicalObjects;

namespace DarknessNightThunder.Glyphs
{
	public class GotoGlyph : SpellGlyph
	{
		public override int GlyphSpriteIndex
		{
			get { return 4; }
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

			Point2 targetPos = cursor.Script.FindGlyph(g => 
				(g is MarkerGlyph) && 
				(g as MarkerGlyph).Index == targetIndex &&
				!cursor.Parameters.Contains(g));
			cursor.Position = targetPos;
			return true;
		}
	}
}
