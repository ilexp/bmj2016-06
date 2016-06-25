using System;
using System.Collections.Generic;
using System.Linq;
using System.IO;

using Duality;
using Duality.Drawing;
using Duality.Components;
using Duality.Resources;
using Duality.Editor;

namespace DarknessNightThunder
{
	public class LightingController : Component, ICmpUpdatable, ICmpRenderer
	{
		private ContentRef<RenderTarget> worldTarget = null;
		private ContentRef<RenderTarget> lightTarget = null;
		private ColorRgba ambientLight;
		private float ambientLightIntensity = 0.0f;
		
		public ContentRef<RenderTarget> WorldTarget
		{
			get { return this.worldTarget; }
			set { this.worldTarget = value; }
		}
		public ContentRef<RenderTarget> LightTarget
		{
			get { return this.lightTarget; }
			set { this.lightTarget = value; }
		}
		public ColorRgba AmbientLight
		{
			get { return this.ambientLight; }
			set { this.ambientLight = value; }
		}
		public float AmbientLightIntensity
		{
			get { return this.ambientLightIntensity; }
			set { this.ambientLightIntensity = value; }
		}
		float ICmpRenderer.BoundRadius
		{
			get { return float.MaxValue; }
		}
		
		bool ICmpRenderer.IsVisible(IDrawDevice device)
		{
			return 
				(device.VisibilityMask & VisibilityFlag.ScreenOverlay) != VisibilityFlag.None &&
				(device.VisibilityMask & VisibilityFlag.Group1) != VisibilityFlag.None;
		}
		void ICmpRenderer.Draw(IDrawDevice device)
		{
			Canvas canvas = new Canvas(device);
			canvas.State.SetMaterial(new BatchInfo(DrawTechnique.Add, ColorRgba.White));
			canvas.State.ColorTint = this.ambientLight.WithAlpha(this.ambientLightIntensity % 1.0f);
			canvas.FillRect(0, 0, device.TargetSize.X, device.TargetSize.Y);
			if (this.ambientLightIntensity >= 1.0f)
			{
				for (int i = 0; i < (int)this.ambientLightIntensity; i++)
				{
					canvas.State.ColorTint = this.ambientLight;
					canvas.FillRect(0, 0, device.TargetSize.X, device.TargetSize.Y);
				}
			}
		}
		void ICmpUpdatable.OnUpdate()
		{
			this.UpdateFullScreenRenderTarget(this.worldTarget);
			this.UpdateFullScreenRenderTarget(this.lightTarget);
		}

		private void UpdateFullScreenRenderTarget(ContentRef<RenderTarget> target)
		{
			if (target == null) return;

			RenderTarget targetRes = target.Res;
			bool updatedTarget = false;
			for (int i = 0; i < targetRes.Targets.Length; i++)
			{
				Texture tex = targetRes.Targets[i].Res;
				if (tex.PixelWidth != DualityApp.TargetResolution.X ||
					tex.PixelHeight != DualityApp.TargetResolution.Y)
				{
					tex.Size = DualityApp.TargetResolution;
					tex.ReloadData();
					updatedTarget = true;
				}
			}
			if (updatedTarget)
			{
				targetRes.SetupTarget();
			}
		}
	}
}
