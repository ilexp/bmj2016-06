using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using Duality;
using Duality.Components;

namespace DarknessNightThunder.SpellVars
{
    public class PositionVar : SpellVar
	{
		private GameObject relativeTo = null;
		private	Vector2 pos = Vector2.Zero;

		public GameObject RelativeTo
		{
			get { return this.relativeTo; }
			set { this.relativeTo = value; }
		}
		public Vector2 RelativePosition
		{
			get { return this.pos; }
			set { this.pos = value; }
		}
		public Vector2 Position
		{
			get
			{
				if (this.relativeTo != null && this.relativeTo.Disposed) this.relativeTo = null;
				Transform transform = this.relativeTo != null ? this.relativeTo.Transform : null;
				if (transform != null)
				{
					return transform.GetWorldPoint(this.pos);
				}
				else
				{
					return this.pos;
				}
			}
			set
			{
				if (this.relativeTo != null && this.relativeTo.Disposed) this.relativeTo = null;
				Transform transform = this.relativeTo != null ? this.relativeTo.Transform : null;
				if (transform != null)
				{
					this.pos = transform.GetLocalPoint(value);
				}
				else
				{
					this.pos = value;
				}
			}
		}

		public override string ToString()
		{
			if (this.relativeTo != null)
				return string.Format("Position: {2} ({0}, relative to {1})", this.Position, this.RelativePosition, this.RelativeTo);
			else
				return string.Format("Position: {0}", this.Position);
		}
	}
}
