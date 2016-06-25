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
			return 
				DualityApp.ExecContext != DualityApp.ExecutionContext.Editor &&
				(device.VisibilityMask & VisibilityFlag.AllGroups) != VisibilityFlag.None;
		}
		void ICmpRenderer.Draw(IDrawDevice device)
		{
			Canvas canvas = new Canvas(device);
			if ((device.VisibilityMask & VisibilityFlag.ScreenOverlay) != VisibilityFlag.None && 
				(device.VisibilityMask & VisibilityFlag.Group0) != VisibilityFlag.None)
			{
				this.DrawOverlayPass(canvas);
			}
			else if (
				(device.VisibilityMask & VisibilityFlag.ScreenOverlay) == VisibilityFlag.None && 
				(device.VisibilityMask & VisibilityFlag.Group1) != VisibilityFlag.None)
			{
				this.DrawLightPass(canvas);
			}
		}

		private void DrawLightPass(Canvas canvas)
		{
			Camera mainCam = this.GameObj.ParentScene.FindComponent<Camera>();

			SpellScriptEditor spellEditor = Scene.Current.FindComponent<SpellScriptEditor>();
			bool spellEditorActive = (spellEditor != null && spellEditor.Active);

			Vector3 mouseWorldCoord = mainCam.GetSpaceCoord(DualityApp.Mouse.Pos);
			Vector3 playerWorldCoord = this.player.CharacterController.GameObj.Transform.Pos;

			if (!spellEditorActive)
			{
				canvas.State.SetMaterial(this.cursorLight);
				canvas.FillRect(
					mouseWorldCoord.X - this.cursorLightSize, 
					mouseWorldCoord.Y - this.cursorLightSize, 
					this.cursorLightSize * 2, 
					this.cursorLightSize * 2);
			}
			canvas.State.SetMaterial(this.playerLight);
			canvas.FillRect(
				playerWorldCoord.X - this.playerLightSize, 
				playerWorldCoord.Y - this.playerLightSize, 
				this.playerLightSize * 2, 
				this.playerLightSize * 2);
		}
		private void DrawOverlayPass(Canvas canvas)
		{
			canvas.State.SetMaterial(new BatchInfo(DrawTechnique.Alpha, ColorRgba.White));

			Player player = Scene.Current.FindComponent<Player>();
			Character character = player != null ? player.Character : null;

			if (character != null)
			{
				canvas.PushState();
				canvas.State.ColorTint = ColorRgba.Red * ColorRgba.Grey;
				canvas.FillRect(
					canvas.DrawDevice.TargetSize.X - 10 - 30, 
					canvas.DrawDevice.TargetSize.Y - 10 - character.Health, 
					30, 
					character.Health);
				canvas.State.ColorTint = ColorRgba.White.WithAlpha(0.5f);
				canvas.DrawRect(
					canvas.DrawDevice.TargetSize.X - 10 - 30, 
					canvas.DrawDevice.TargetSize.Y - 10 - 100, 
					30, 
					100);
				canvas.State.ColorTint = ColorRgba.Blue * ColorRgba.Grey;
				canvas.FillRect(
					canvas.DrawDevice.TargetSize.X - 10 - 30 - 10 - 30, 
					canvas.DrawDevice.TargetSize.Y - 10 - character.Mana, 
					30, 
					character.Mana);
				canvas.State.ColorTint = ColorRgba.White.WithAlpha(0.5f);
				canvas.DrawRect(
					canvas.DrawDevice.TargetSize.X - 10 - 30 - 10 - 30, 
					canvas.DrawDevice.TargetSize.Y - 10 - 100, 
					30, 
					100);
				canvas.PopState();

				if (character.DamageReaction > 0.005f)
				{
					canvas.PushState();
					canvas.State.SetMaterial(new BatchInfo(DrawTechnique.Add, ColorRgba.White));
					canvas.State.ColorTint = ColorRgba.Red.WithAlpha(character.DamageReaction * 0.5f);
					canvas.FillRect(0, 0, canvas.Width, canvas.Height);
					canvas.PopState();
				}
			}
			
			SpellScriptEditor spellEditor = Scene.Current.FindComponent<SpellScriptEditor>();
			bool spellEditorActive = (spellEditor != null && spellEditor.Active);
			if (!spellEditorActive)
			{
				canvas.DrawText(new string[] { 
					"P:     Toggle Spell Editor",
					"WASD:  Move around",
					"Click: Cast the spell"},
					10, canvas.DrawDevice.TargetSize.Y - 10, 0, Alignment.BottomLeft, true);
			}
			else
			{
				canvas.DrawText(new string[] { 
					"P:     Toggle Spell Editor",
					"F-Key: Load Spell Preset",
					"Shift+",
					"F-Key: Save Spell Preset",
					"",
					"Type on the Keyboard to create Glyphs,",
					"or just use the Mouse Wheel."},
					10, canvas.DrawDevice.TargetSize.Y - 10, 0, Alignment.BottomLeft, true);
			}

			canvas.State.ColorTint = ColorRgba.White;
			canvas.FillCircle(DualityApp.Mouse.X, DualityApp.Mouse.Y, 4);
			canvas.State.ColorTint = ColorRgba.Black;
			canvas.FillCircleSegment(DualityApp.Mouse.X, DualityApp.Mouse.Y, 0, 4, 0, MathF.RadAngle360, 1.5f);
		}
	}
}
