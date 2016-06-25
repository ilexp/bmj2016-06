using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using Duality;
using Duality.Input;
using Duality.Drawing;
using Duality.Resources;
using Duality.Cloning;
using Duality.Serialization;

using DarknessNightThunder;
using DarknessNightThunder.Glyphs;

namespace DarknessNightThunder
{
    public class SpellScriptEditor : Component, ICmpRenderer, ICmpUpdatable, ICmpInitializable
    {
		private struct SpellGlyphEntry
		{
			public SpellGlyph Glyph;
			public string Shortcut;

			public SpellGlyphEntry(SpellGlyph glyph, string shortcut)
			{
				this.Glyph = glyph;
				this.Shortcut = shortcut;
			}
		}

		private const int BaseOffsetX = 10;
		private const int BaseOffsetY = 10;
		private const int CellSize = 32;
		private const int CellSpacing = 2;


		private	SpellScript script = null;
		private ContentRef<Material> glyphIcons = null;

		[DontSerialize] private SpellGlyphEntry[] glyphTemplates = null;
		[DontSerialize] private Point2 activeCell = new Point2(0, 0);
		[DontSerialize] private string shortcutAcc = "";
		[DontSerialize] private int shortcutBeginX = 0;
		[DontSerialize] private CanvasBuffer buffer	= new CanvasBuffer();
		

		float ICmpRenderer.BoundRadius
		{
			get { return 0.0f; }
		}
		public SpellScript Script
		{
			get { return this.script; }
			set { this.script = value; }
		}
		public ContentRef<Material> GlyphIcons
		{
			get { return this.glyphIcons; }
			set { this.glyphIcons = value; }
		}


		public SpellScriptEditor()
		{
			this.glyphTemplates = new SpellGlyphEntry[]
			{
				new SpellGlyphEntry(new SourceGlyph(), "s"),
				new SpellGlyphEntry(new FocusGlyph(), "fo"),
				new SpellGlyphEntry(new SelfGlyph(), "se"),
				new SpellGlyphEntry(new AllGlyph(), "a"),
				new SpellGlyphEntry(new FireGlyph(), "fi"),
				new SpellGlyphEntry(new MoveGlyph(), "m"),
				new SpellGlyphEntry(new EmptyGlyph(), "space"),
				new SpellGlyphEntry(new MarkerGlyph(0), "number1"),
				new SpellGlyphEntry(new MarkerGlyph(1), "number2"),
				new SpellGlyphEntry(new MarkerGlyph(2), "number3"),
				new SpellGlyphEntry(new MarkerGlyph(3), "number4"),
				new SpellGlyphEntry(new MarkerGlyph(4), "number5"),
				new SpellGlyphEntry(new MarkerGlyph(5), "number6"),
				new SpellGlyphEntry(new MarkerGlyph(6), "number7"),
				new SpellGlyphEntry(new MarkerGlyph(7), "number8"),
				new SpellGlyphEntry(new MarkerGlyph(8), "number9"),
				new SpellGlyphEntry(new GotoGlyph(), "g"),
				new SpellGlyphEntry(new StoreGlyph(), "st"),
				new SpellGlyphEntry(new LoadGlyph(), "ld"),
			};
		}
		
		private Point2 PixelToGrid(int x, int y)
		{
			if (x < BaseOffsetX || y < BaseOffsetY) return new Point2(-1, -1);
			Point2 gridPos = new Point2(
				(x - BaseOffsetX) / (CellSize + CellSpacing), 
				(y - BaseOffsetY) / (CellSize + CellSpacing));
			if (gridPos.X >= this.script.Width || gridPos.Y >= this.script.Height) return new Point2(-1, -1);
			return gridPos;
		}
		private Point2 GridToPixel(int x, int y)
		{
			return new Point2(
				BaseOffsetX + x * (CellSize + CellSpacing), 
				BaseOffsetY + y * (CellSize + CellSpacing));
		}

		private void ScrollGlyphType(int cellX, int cellY, int offset)
		{
			SpellGlyph glyph = this.script[cellX, cellY];

			int index;
			if (glyph == null)
				index = this.glyphTemplates.Length;
			else
				index = this.glyphTemplates.IndexOfFirst(t => t.Glyph.TemplateEquals(glyph));

			index = (index + offset + (this.glyphTemplates.Length + 1)) % (this.glyphTemplates.Length + 1);
			this.script[cellX, cellY] = this.CreateGlyph(index);
		}
		private void SetGlyphType(int cellX, int cellY, int target)
		{
			this.script[cellX, cellY] = this.CreateGlyph(target);
		}
		private SpellGlyph CreateGlyph(int templateIndex)
		{
			return templateIndex < this.glyphTemplates.Length ? this.glyphTemplates[templateIndex].Glyph.DeepClone() : null;
		}

		bool ICmpRenderer.IsVisible(IDrawDevice device)
		{
			return 
				(device.VisibilityMask & VisibilityFlag.ScreenOverlay) == VisibilityFlag.ScreenOverlay &&
				(device.VisibilityMask & VisibilityFlag.Group0) != VisibilityFlag.None;
		}
		void ICmpRenderer.Draw(IDrawDevice device)
		{
			Canvas canvas = new Canvas(device, this.buffer);
			canvas.State.SetMaterial(new BatchInfo(DrawTechnique.Alpha, ColorRgba.White));
			
			if (activeCell.X != -1)
			{
				Point2 cellPos = this.GridToPixel(activeCell.X, activeCell.Y);
				canvas.PushState();
				canvas.State.ColorTint = ColorRgba.White.WithAlpha(0.25f);
				canvas.FillRect(cellPos.X, cellPos.Y, CellSize, CellSize);
				canvas.PopState();
			}

			if (this.script != null)
			{
				canvas.PushState();
				canvas.State.ColorTint = ColorRgba.White.WithAlpha(0.25f);
				for (int y = 0; y < this.script.Height; y++)
				{
					for (int x = 0; x < this.script.Width; x++)
					{
						SpellGlyph glyph = this.script[x, y];
						Point2 cellPos = this.GridToPixel(x, y);
						canvas.DrawRect(cellPos.X, cellPos.Y, CellSize, CellSize);
					}
				}
				canvas.PopState();
				canvas.PushState();
				Texture glyphTex = this.glyphIcons.IsAvailable ? this.glyphIcons.Res.MainTexture.Res : null;
				canvas.State.SetMaterial(this.glyphIcons);
				for (int y = 0; y < this.script.Height; y++)
				{
					for (int x = 0; x < this.script.Width; x++)
					{
						SpellGlyph glyph = this.script[x, y];
						if (glyph == null) continue;

						Point2 cellPos = this.GridToPixel(x, y);
						if (glyphTex != null)
						{
							canvas.State.TextureCoordinateRect = glyphTex.LookupAtlas(glyph.GlyphSpriteIndex);
						}
						canvas.FillRect(cellPos.X, cellPos.Y, CellSize, CellSize);
					}
				}
				canvas.PopState();
				canvas.PushState();
				canvas.State.SetMaterial(new BatchInfo(DrawTechnique.Invert, ColorRgba.White));
				for (int y = 0; y < this.script.Height; y++)
				{
					for (int x = 0; x < this.script.Width; x++)
					{
						SpellGlyph glyph = this.script[x, y];
						if (glyph == null) continue;
						if (!glyph.IsNegated) continue;

						Point2 cellPos = this.GridToPixel(x, y);
						canvas.FillRect(cellPos.X, cellPos.Y, CellSize, CellSize);
					}
				}
				canvas.PopState();
			}

			if (activeCell.X != -1)
			{
				Point2 cellPos = this.GridToPixel(activeCell.X, activeCell.Y);
				canvas.PushState();
				canvas.State.ColorTint = ColorRgba.White;
				canvas.DrawRect(cellPos.X, cellPos.Y, CellSize, CellSize);
				canvas.PopState();
			}
		}
		void ICmpUpdatable.OnUpdate()
		{
			if (this.script == null) return;

			if (DualityApp.Mouse.Vel.Length > 0.0f)
			{
				this.activeCell = this.PixelToGrid(DualityApp.Mouse.X, DualityApp.Mouse.Y);
			}
			if (this.activeCell.X != -1 && DualityApp.Mouse.WheelSpeed != 0)
			{
				this.ScrollGlyphType(this.activeCell.X, this.activeCell.Y, -DualityApp.Mouse.WheelSpeed);
			}
			if (this.activeCell.X != -1 && DualityApp.Mouse.ButtonHit(MouseButton.Right))
			{
				this.script[this.activeCell.X, this.activeCell.Y] = null;
			}

			if (DualityApp.Keyboard.KeyHit(Key.Left))
			{
				this.activeCell.X = (this.activeCell.X - 1 + this.script.Width) % this.script.Width;
			}
			else if (DualityApp.Keyboard.KeyHit(Key.Right))
			{
				this.activeCell.X = (this.activeCell.X + 1 + this.script.Width) % this.script.Width;
			}
			if (DualityApp.Keyboard.KeyHit(Key.Up))
			{
				this.activeCell.Y = (this.activeCell.Y - 1 + this.script.Height) % this.script.Height;
			}
			else if (DualityApp.Keyboard.KeyHit(Key.Down))
			{
				this.activeCell.Y = (this.activeCell.Y + 1 + this.script.Height) % this.script.Height;
			}
			else if (DualityApp.Keyboard.KeyHit(Key.BackSpace))
			{
				this.script[this.activeCell.X, this.activeCell.Y] = null;
				this.activeCell.X = (this.activeCell.X - 1 + this.script.Width) % this.script.Width;
			}
			if (this.activeCell.X != -1 && (DualityApp.Keyboard.KeyHit(Key.Plus) || DualityApp.Keyboard.KeyHit(Key.KeypadAdd)))
			{
				this.ScrollGlyphType(this.activeCell.X, this.activeCell.Y, 1);
			}
			else if (this.activeCell.X != -1 && (DualityApp.Keyboard.KeyHit(Key.Minus) || DualityApp.Keyboard.KeyHit(Key.KeypadSubtract)))
			{
				this.ScrollGlyphType(this.activeCell.X, this.activeCell.Y, -1);
			}
			if (this.activeCell.X != -1 && (DualityApp.Keyboard.KeyHit(Key.Delete)))
			{
				this.script[this.activeCell.X, this.activeCell.Y] = null;
			}
			if (this.activeCell.X != -1 && (DualityApp.Keyboard.KeyHit(Key.Comma)))
			{
				SpellGlyph glyph = this.script[this.activeCell.X, this.activeCell.Y];
				if (glyph != null)
				{
					glyph.IsNegated = !glyph.IsNegated;
				}
			}

			if (DualityApp.Keyboard[Key.ShiftLeft] || DualityApp.Keyboard[Key.ShiftRight])
			{
				for (int i = 0; i < 9; i++)
				{
					if (DualityApp.Keyboard.KeyHit((Key)((int)Key.F1 + i)))
					{
						Serializer.WriteObject(this.script, "SpellScript" + i + ".spl", typeof(XmlSerializer));
						break;
					}
				}
			}
			else
			{
				for (int i = 0; i < 9; i++)
				{
					if (DualityApp.Keyboard.KeyHit((Key)((int)Key.F1 + i)))
					{
						this.script = Serializer.TryReadObject<SpellScript>("SpellScript" + i + ".spl") ?? new SpellScript();
						break;
					}
				}
			}
		}
		void ICmpInitializable.OnInit(Component.InitContext context)
		{
			if (context == InitContext.Activate)
			{
				DualityApp.Keyboard.KeyDown += this.Keyboard_KeyDown;
			}
		}
		void ICmpInitializable.OnShutdown(Component.ShutdownContext context)
		{
			if (context == ShutdownContext.Deactivate)
			{
				DualityApp.Keyboard.KeyDown -= this.Keyboard_KeyDown;
			}
		}

		private void Keyboard_KeyDown(object sender, KeyboardKeyEventArgs e)
		{
			string shortcut = e.Key.ToString().ToLower();
			if (string.IsNullOrEmpty(this.shortcutAcc)) this.shortcutBeginX = this.activeCell.X;
			this.shortcutAcc += shortcut;

			int templateIndex = this.glyphTemplates.IndexOfFirst(en => en.Shortcut.StartsWith(this.shortcutAcc));
			if (templateIndex == -1)
			{
				this.shortcutAcc = shortcut;
				this.shortcutBeginX = this.activeCell.X;
				templateIndex = this.glyphTemplates.IndexOfFirst(en => en.Shortcut.StartsWith(shortcut));
			}

			if (templateIndex == -1)
			{
				this.shortcutAcc = "";
			}
			else
			{
				if (this.glyphTemplates[templateIndex].Shortcut == this.shortcutAcc)
				{
					for (int i = this.shortcutBeginX; i <= this.activeCell.X; i++)
					{
						this.script[i, this.activeCell.Y] = null;
					}
					this.activeCell.X = this.shortcutBeginX;
					this.SetGlyphType(this.activeCell.X, this.activeCell.Y, templateIndex);
					this.activeCell.X = (this.activeCell.X + 1) % this.script.Width;
				}
			}
		}
	}
}
