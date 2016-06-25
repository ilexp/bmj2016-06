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
	public abstract class SelectionGlyph : SpellGlyph
	{
		public abstract SpellVar Select(SpellCursor cursor);

		public override bool Activate(SpellCursor cursor)
		{
			cursor.Annotate(this.Select(cursor));
			return true;
		}
	}
}
