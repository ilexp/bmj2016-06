using System;
using System.Collections.Generic;
using System.Linq;
using System.IO;

using Duality;
using Duality.Audio;
using Duality.Resources;
using Duality.Components;
using Duality.Components.Renderers;
using Duality.Components.Physics;
using Duality.Editor;
using Duality.Plugins.Tilemaps;
using Duality.Plugins.Tilemaps.Properties;

namespace DarknessNightThunder
{
	[EditorHintImage(TilemapsResNames.ImageActorRenderer)]
	[RequiredComponent(typeof(Transform))]
	public class Character : Component, ICmpUpdatable, ISpellHost
	{
		private float health = 100.0f;
		private float mana   = 100.0f;
		private ContentRef<Sound> painSound = null;
		[DontSerialize] private float         damageReaction = 0.0f;
		[DontSerialize] private SoundInstance damageSound    = null;


		public float Health
		{
			get { return this.health; }
			set { this.health = value; }
		}
		public float Mana
		{
			get { return this.mana; }
			set { this.mana = value; }
		}
		public ContentRef<Sound> PainSound
		{
			get { return this.painSound; }
			set { this.painSound = value; }
		}
		public float DamageReaction
		{
			get { return this.damageReaction; }
		}


		public void DoDamage(float damage)
		{
			this.health -= damage;
			this.health = MathF.Clamp(this.health, 0.0f, 100.0f);
			this.damageReaction += damage * 0.35f;
		}

		void ICmpUpdatable.OnUpdate()
		{
			Transform transform = this.GameObj.Transform;

			this.mana = MathF.Clamp(this.mana + Time.TimeMult * 0.01f, 0.0f, 100.0f);
			this.health = MathF.Clamp(this.health + Time.TimeMult * 0.001f, 0.0f, 100.0f);
			this.damageReaction -= MathF.Clamp(this.damageReaction * Time.TimeMult * 0.1f, 0.0f, 1.0f);

			if (this.damageReaction > 0.005f && this.painSound != null)
			{
				if (this.damageSound == null) this.damageSound = DualityApp.Sound.PlaySound3D(this.painSound, this.GameObj);
				this.damageSound.Volume = MathF.Clamp(0.05f + this.damageReaction, 0.0f, 1.0f);
			}
			else
			{
				if (this.damageSound != null) this.damageSound.FadeOut(0.5f);
			}
			if (this.damageSound != null && this.damageSound.Disposed)
				this.damageSound = null;
		}

		Vector2 ISpellHost.Pos
		{
			get { return this.GameObj.Transform.Pos.Xy; }
		}
		float ISpellHost.DrainEnergy(float required)
		{
			float usedEnergy = MathF.Min(this.mana * 100.0f, required);
			this.mana -= usedEnergy * 0.01f;
			return usedEnergy;
		}
	}
}
