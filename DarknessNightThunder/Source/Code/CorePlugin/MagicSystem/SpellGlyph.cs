using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

namespace DarknessNightThunder
{
	public abstract class SpellGlyph
	{
		private	bool	negated	= false;

		public abstract int GlyphSpriteIndex { get; }
		public virtual bool CanNegate
		{
			get { return false; }
		}
		public bool IsNegated
		{
			get { return this.negated; }
			set { this.negated = value && this.CanNegate; }
		}

		public abstract bool Activate(SpellCursor cursor);
		public virtual bool TemplateEquals(SpellGlyph other)
		{
			if (object.ReferenceEquals(other, this)) return true;
			if (object.ReferenceEquals(other, null)) return false;
			return other.GetType() == this.GetType();
		}
	}
}
