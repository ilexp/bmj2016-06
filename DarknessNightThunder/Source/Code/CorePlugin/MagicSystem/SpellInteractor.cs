using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using Duality;
using Duality.Components;
using Duality.Components.Physics;

namespace DarknessNightThunder
{
	[RequiredComponent(typeof(Transform))]
	[RequiredComponent(typeof(RigidBody))]
    public class SpellInteractor : Component, ICmpSpellInteractor
    {
		Vector2 ICmpSpellInteractor.Pos
		{
			get { return this.GameObj.Transform.Pos.Xy; }
		}
	}
}
