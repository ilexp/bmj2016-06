using System;
using System.Collections.Generic;
using System.Linq;
using System.IO;

using Duality;
using Duality.Components;
using Duality.Components.Renderers;
using Duality.Components.Physics;
using Duality.Editor;
using Duality.Plugins.Tilemaps;
using Duality.Plugins.Tilemaps.Properties;

namespace DarknessNightThunder
{
	/// <summary>
	/// Applies "retro RPG"-like character movement based on a physical model.
	/// </summary>
	[RequiredComponent(typeof(CharacterController))]
	[RequiredComponent(typeof(ActorRenderer))]
	[EditorHintImage(TilemapsResNames.ImageActorRenderer)]
	public class CharacterAnimator : Component, ICmpUpdatable
	{
		private int   spriteSheetIndex        = 0;
		private int   spriteSheetOffset       = 0;
		private float spriteSheetBaseDuration = 1.0f;

		public int SpriteSheetIndex
		{
			get { return this.spriteSheetIndex; }
			set { this.spriteSheetIndex = value; }
		}
		public int SpriteSheetOffset
		{
			get { return this.spriteSheetOffset; }
			set { this.spriteSheetOffset = value; }
		}
		public float SpriteSheetBaseDuration
		{
			get { return this.spriteSheetBaseDuration; }
			set { this.spriteSheetBaseDuration = value; }
		}

		void ICmpUpdatable.OnUpdate()
		{
			Transform transform = this.GameObj.Transform;
			CharacterController controller = this.GameObj.GetComponent<CharacterController>();
			ActorRenderer sprite = this.GameObj.GetComponent<ActorRenderer>();

			float targetMoveAngle = controller.TargetLookDir;

			bool isMoving = controller.TargetMovement.Length > 0.01f;
			if (isMoving) sprite.AnimDuration = this.spriteSheetBaseDuration / controller.TargetMovement.Length;
			sprite.AnimPaused = !isMoving;

			if (MathF.CircularDist(targetMoveAngle, 0.0f) <= MathF.RadAngle45)
				sprite.AnimFirstFrame = this.spriteSheetIndex + this.spriteSheetOffset * 0;
			else if (MathF.CircularDist(targetMoveAngle, MathF.RadAngle90) <= MathF.RadAngle45)
				sprite.AnimFirstFrame = this.spriteSheetIndex + this.spriteSheetOffset * 1;
			else if (MathF.CircularDist(targetMoveAngle, MathF.RadAngle270) <= MathF.RadAngle45)
				sprite.AnimFirstFrame = this.spriteSheetIndex + this.spriteSheetOffset * 3;
			else
				sprite.AnimFirstFrame = this.spriteSheetIndex + this.spriteSheetOffset * 2;
		}
	}
}
