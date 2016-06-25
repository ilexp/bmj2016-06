using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using Duality;

namespace DarknessNightThunder
{
    public interface ISpellHost
    {
		Vector2 Pos { get; }

		/// <summary>
		/// Atemmpts to drain the specified amount of energy from the spell host and returns the
		/// amount of energy that was actually drained.
		/// </summary>
		/// <param name="required"></param>
		/// <returns></returns>
		float DrainEnergy(float required);
    }
}
