using System;
using System.Collections.Generic;
using System.Linq;
using System.IO;

using Duality;
using Duality.Components;
using Duality.Resources;
using Duality.Drawing;
using Duality.Editor;

namespace DarknessNightThunder
{
	public class HudRenderer : Component, ICmpRenderer
	{
		private Player player; 
		private ContentRef<Material> cursorLight;
		private ContentRef<Material> playerLight;
		private float cursorLightSize;
		private float playerLightSize;

		public Player Player
		{
			get { return this.player; }
			set { this.player = value; }
		}
		public ContentRef<Material> CursorLight
		{
			get { return this.cursorLight; }
			set { this.cursorLight = value; }
		}
		public ContentRef<Material> PlayerLight
		{
			get { return this.playerLight; }
			set { this.playerLight = value; }
		}
		public float CursorLightSize
		{
			get { return this.cursorLightSize; }
			set { this.cursorLightSize = value; }
		}
		public float PlayerLightSize
		{
			get { return this.playerLightSize; }
			set { this.playerLightSize = value; }
		}
		float ICmpRenderer.BoundRadius
		{
			get { return float.MaxValue; }
		}
		
		bool ICmpRenderer.IsVisible(IDrawDevice device)
		{
			return (device.VisibilityMask & VisibilityFlag.AllGroups) != VisibilityFlag.None;
		}
		void ICmpRenderer.Draw(IDrawDevice device)
		{
			Canvas canvas = new Canvas(device);
			if ((device.VisibilityMask & VisibilityFlag.ScreenOverlay) != VisibilityFlag.None)
				this.DrawOverlayPass(canvas);
			else if ((device.VisibilityMask & VisibilityFlag.Group1) != VisibilityFlag.None)
				this.DrawLightPass(canvas);
		}

		private void DrawLightPass(Canvas canvas)
		{
			Camera mainCam = this.GameObj.ParentScene.FindComponent<Camera>();

			Vector3 mouseWorldCoord = mainCam.GetSpaceCoord(DualityApp.Mouse.Pos);
			Vector3 playerWorldCoord = this.player.Character.GameObj.Transform.Pos;

			canvas.State.SetMaterial(this.cursorLight);
			canvas.FillRect(
				mouseWorldCoord.X - this.cursorLightSize, 
				mouseWorldCoord.Y - this.cursorLightSize, 
				this.cursorLightSize * 2, 
				this.cursorLightSize * 2);
			canvas.State.SetMaterial(this.playerLight);
			canvas.FillRect(
				playerWorldCoord.X - this.playerLightSize, 
				playerWorldCoord.Y - this.playerLightSize, 
				this.playerLightSize * 2, 
				this.playerLightSize * 2);
		}
		private void DrawOverlayPass(Canvas canvas)
		{
			canvas.FillCircle(DualityApp.Mouse.X, DualityApp.Mouse.Y, 3.0f);
		}
	}
}
