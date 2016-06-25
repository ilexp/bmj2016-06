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
	public class SelfGlyph : SelectionGlyph
	{
		public override int GlyphSpriteIndex
		{
			get { return 17; }
		}

		public override SpellVar Select(SpellCursor cursor)
		{
			Component host = cursor.BoundTo as Component;
			ICmpSpellInteractor hostInteractor = (host != null) ? host.GameObj.GetComponent<ICmpSpellInteractor>() : null;

			if (hostInteractor != null)
			{
				ObjectVar obj = new ObjectVar();
				obj.Add(hostInteractor);
				return obj;
			}
			else
			{
				if (host != null)
				{
					return new PositionVar
					{
						RelativeTo = (host != null) ? host.GameObj : null,
						RelativePosition = Vector2.Zero
					};
				}
				else
				{
					return new PositionVar { Position = cursor.BoundTo.Pos };
				}
			}
		}
	}
}
