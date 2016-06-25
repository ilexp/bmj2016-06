using System;
using System.Collections.Generic;
using System.Linq;
using System.IO;

using Duality;
using Duality.Components;
using Duality.Resources;
using Duality.Editor;

namespace DarknessNightThunder
{
	public class LightingController : Component, ICmpUpdatable
	{
		private ContentRef<RenderTarget> worldTarget = null;
		private ContentRef<RenderTarget> lightTarget = null;
		
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
