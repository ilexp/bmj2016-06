using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using Duality;
using Duality.Audio;
using Duality.Resources;
using Duality.Components;
using Duality.Components.Renderers;
using Duality.Components.Physics;

namespace DarknessNightThunder.MagicalObjects
{
	[RequiredComponent(typeof(Transform))]
    public class MagicalFire : MagicalObject, ICmpInitializable
    {
		private float lifeTimeMs = 0.0f;
		private ContentRef<Sound> fireLoopSound = null;
		[DontSerialize] private SoundInstance fireLoopInstance = null;

		public ContentRef<Sound> FireLoopSound
		{
			get { return this.fireLoopSound; }
			set { this.fireLoopSound = value; }
		}
		public override float BoundRadius
		{
			get { return 16.0f * MathF.Max(this.GetScale(this.Energy), 1.0f); }
		}

		public override void OnUpdate()
		{
			base.OnUpdate();
			ActorRenderer sprite = this.GameObj.GetComponent<ActorRenderer>();
			Transform transform = this.GameObj.Transform;

			Vector2 moveVec = transform.Vel.Xy;
			float moveDir = moveVec.Angle;
			if (moveVec.Length <= 0.75f)
				sprite.AnimFirstFrame = 0;
			else if (MathF.CircularDist(moveDir, 0.0f) <= MathF.RadAngle45)
				sprite.AnimFirstFrame = 9;
			else if (MathF.CircularDist(moveDir, MathF.RadAngle90) <= MathF.RadAngle45)
				sprite.AnimFirstFrame = 6;
			else if (MathF.CircularDist(moveDir, MathF.RadAngle270) <= MathF.RadAngle45)
				sprite.AnimFirstFrame = 3;
			else
				sprite.AnimFirstFrame = 0;

			this.lifeTimeMs += Time.TimeMult * Time.MsPFMult;
			if (this.lifeTimeMs > 500.0f)
			{
				this.Energy -= (Time.MsPFMult / (50.0f)) * Time.TimeMult;
				if (this.Energy + this.TransferEnergy <= 0.0f)
					this.GameObj.Dispose();
				this.HurtCharacters();
			}

			if (this.fireLoopInstance != null && this.fireLoopInstance.Disposed) this.fireLoopInstance = null;
			if (this.fireLoopInstance == null)
			{
				float scale = this.GetScale(this.Energy);
				if (scale > 0.05f && this.fireLoopSound != null)
				{
					this.fireLoopInstance = DualityApp.Sound.PlaySound3D(this.fireLoopSound, this.GameObj);
					this.fireLoopInstance.Looped = true;
					this.fireLoopInstance.Volume = scale;
				}
			}
		}
		protected override void OnEnergyChanged(float lastEnergy, float newEnergy)
		{
			float scale = this.GetScale(newEnergy);
			this.GameObj.Transform.Scale = scale;
			if (this.fireLoopInstance != null)
			{
				this.fireLoopInstance.Volume = scale;
			}
		}

		private void HurtCharacters()
		{
			float radius = 20.0f;
			Vector2 basePos = this.GameObj.Transform.Pos.Xy;
			Vector2 size = Vector2.One * radius * 2.0f;
			List<RigidBody> nearBodies = RigidBody.QueryRectGlobal(basePos - 0.5f * size, size);

			float energyFactor = MathF.Clamp(this.Energy / 200.0f, 0.0f, 3.0f);
			foreach (RigidBody body in nearBodies)
			{
				Transform transform = body.GameObj.Transform;
				Character character = body.GameObj.GetComponent<Character>();
				if (character == null) continue;
				
				float distance = (transform.Pos.Xy - basePos).Length;
				if (distance > radius) continue;

				character.DoDamage(energyFactor * 0.1f * Time.TimeMult);
			}
		}
		private float GetScale(float energy)
		{
			return MathF.Max(MathF.Sqrt(energy * 0.5f) / 10.0f, 0.001f);
		}

		void ICmpInitializable.OnInit(Component.InitContext context) {}
		void ICmpInitializable.OnShutdown(Component.ShutdownContext context)
		{
			if (context == ShutdownContext.Deactivate)
			{
				if (this.fireLoopInstance != null)
				{
					this.fireLoopInstance.FadeOut(1.0f);
				}
			}
		}
	}
}
