using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using Duality;
using Duality.Components;
using Duality.Components.Renderers;
using Duality.Components.Physics;

namespace DarknessNightThunder.MagicalObjects
{
    public abstract class MagicalObject : Component, ICmpUpdatable
    {
		private float	energy			= 0.0f;
		private float	transferEnergy	= 0.0f;

		public float Energy
		{
			get { return this.energy; }
			set
			{
				if (this.energy != value)
				{
					float lastEnergy = this.energy;
					this.energy = value;
					this.OnEnergyChanged(lastEnergy, this.energy);
				}
			}
		}
		protected float TransferEnergy
		{
			get { return this.transferEnergy; }
		}
		public abstract float BoundRadius { get; }

		public void AddEnergy(float newEnergy)
		{
			this.transferEnergy += MathF.Max(newEnergy, 0.0f);
		}
		
		public virtual void OnUpdate()
		{
			if (this.transferEnergy > 0.0f)
			{
				float transfer = this.transferEnergy * MathF.Clamp(0.25f * Time.TimeMult, 0.0f, 1.0f);
				this.transferEnergy -= transfer;
				this.Energy += transfer;
			}
		}
		protected virtual void OnEnergyChanged(float lastEnergy, float newEnergy) {}
	}
}
