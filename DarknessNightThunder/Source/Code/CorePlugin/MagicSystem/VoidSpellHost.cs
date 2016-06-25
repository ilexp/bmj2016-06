using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using Duality;

namespace DarknessNightThunder
{
    public class VoidSpellHost : ISpellHost
    {
		Vector2 ISpellHost.Pos
		{
			get { return Vector2.Zero; }
		}
		float ISpellHost.DrainEnergy(float required)
		{
			return 0;
		}
	}
}
