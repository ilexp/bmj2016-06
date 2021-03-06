﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.IO;

using Duality;
using Duality.Properties;
using Duality.Components;
using Duality.Editor;
using Duality.Drawing;
using Duality.Resources;
using Duality.Plugins.Tilemaps;
using Duality.Plugins.Tilemaps.Properties;

namespace DarknessNightThunder
{
	/// <summary>
	/// Renders a "retro RPG"-like actor sprite with an automatically determined depth offset that fits to
	/// the one generated by a <see cref="TilemapRenderer"/>.
	/// </summary>
	[RequiredComponent(typeof(Transform))]
	[EditorHintImage(TilemapsResNames.ImageActorRenderer)]
	public class ActorRenderer : Renderer, ICmpUpdatable, ICmpInitializable
	{
		/// <summary>
		/// Describes the sprite animations loop behaviour.
		/// </summary>
		public enum LoopMode
		{
			/// <summary>
			/// The animation is played once an then remains in its last frame.
			/// </summary>
			Once,
			/// <summary>
			/// The animation is looped: When reaching the last frame, it begins again at the first one.
			/// </summary>
			Loop,
			/// <summary>
			/// The animation plays forward until reaching the end, then reverses and plays backward until 
			/// reaching the start again. This "pingpong" behaviour is looped.
			/// </summary>
			PingPong,
			/// <summary>
			/// A single frame is selected randomly each time the object is initialized and remains static
			/// for its whole lifetime.
			/// </summary>
			RandomSingle,
			/// <summary>
			/// A fixed, single frame is displayed. Which one depends on the one you set in the editor or
			/// in source code.
			/// </summary>
			FixedSingle,
			/// <summary>
			/// The <see cref="CustomFrameSequence"/> is interpreted and processed as a queue where <see cref="AnimDuration"/>
			/// is the time a single frame takes.
			/// </summary>
			Queue
		}

		private Rect                 rect                = Rect.Align(Alignment.Center, 0, 0, 256, 256);
		private ContentRef<Material> sharedMat           = Material.DualityIcon;
		private BatchInfo            customMat           = null;
		private ColorRgba            colorTint           = ColorRgba.White;
		private float                offset              = 0.0f;
		private float                depthScale          = 0.01f;
		private bool                 isVertical          = true;
		private float                height              = 0.0f;

		private int                  animFirstFrame      = 0;
		private int                  animFrameCount      = 0;
		private float                animDuration        = 5.0f;
		private LoopMode             animLoopMode        = LoopMode.Loop;
		private float                animTime            = 0.0f;
		private bool                 animPaused          = false;
		private List<int>            customFrameSequence = null;

		[DontSerialize] private int            curAnimFrame      = 0;
		[DontSerialize] private int            nextAnimFrame     = 0;
		[DontSerialize] private float          curAnimFrameFade  = 0.0f;
		[DontSerialize] private VertexC1P3T2[] vertices          = null;


		[EditorHintFlags(MemberFlags.Invisible)]
		public override float BoundRadius
		{
			get 
			{
				float scale = this.GameObj.Transform.Scale;
				Rect tempRect = this.rect;
				tempRect.Y -= this.height;
				tempRect.X *= scale;
				tempRect.Y *= scale;
				tempRect.W *= scale;
				tempRect.H *= scale;
				return tempRect.BoundingRadius;
			}
		}
		/// <summary>
		/// [GET / SET] The rectangular area the sprite occupies. Relative to the <see cref="GameObject"/>.
		/// </summary>
		[EditorHintDecimalPlaces(1)]
		public Rect Rect
		{
			get { return this.rect; }
			set { this.rect = value; }
		}
		/// <summary>
		/// [GET / SET] The <see cref="Duality.Resources.Material"/> that is used for rendering the sprite.
		/// </summary>
		public ContentRef<Material> SharedMaterial
		{
			get { return this.sharedMat; }
			set { this.sharedMat = value; }
		}
		/// <summary>
		/// [GET / SET] A custom, local <see cref="Duality.Drawing.BatchInfo"/> overriding the <see cref="SharedMaterial"/>,
		/// allowing this sprite to look unique without having to create its own <see cref="Duality.Resources.Material"/> Resource.
		/// However, this feature should be used with caution: Performance is better using <see cref="SharedMaterial">shared Materials</see>.
		/// </summary>
		public BatchInfo CustomMaterial
		{
			get { return this.customMat; }
			set { this.customMat = value; }
		}
		/// <summary>
		/// [GET / SET] A color by which the sprite is tinted.
		/// </summary>
		public ColorRgba ColorTint
		{
			get { return this.colorTint; }
			set { this.colorTint = value; }
		}
		/// <summary>
		/// [GET / SET] The depth offset for the <see cref="ActorRenderer"/> that is added
		/// to each output vertex without contributing to perspective effects such as parallax.
		/// </summary>
		public float DepthOffset
		{
			get { return this.offset; }
			set { this.offset = value; }
		}
		/// <summary>
		/// [GET / SET] The depth offset scale that is used to determine how much depth each 
		/// unit of Y movement adds.
		/// </summary>
		public float DepthScale
		{
			get { return this.depthScale; }
			set { this.depthScale = value; }
		}
		/// <summary>
		/// [GET / SET] Whether the rendered sprite is considered vertical or flat with regard
		/// to its depth offset generation.
		/// </summary>
		public bool IsVertical
		{
			get { return this.isVertical; }
			set { this.isVertical = value; }
		}
		/// <summary>
		/// [GET / SET] The actor's current height above the ground. This is usually
		/// zero / the same as the ground level, except when jumping, floating or being 
		/// partially submerged.
		/// </summary>
		[EditorHintIncrement(1)]
		[EditorHintDecimalPlaces(0)]
		public float Height
		{
			get { return this.height; }
			set { this.height = value; }
		}
		/// <summary>
		/// [GET / SET] The index of the first frame to display. Ignored if <see cref="CustomFrameSequence"/> is set.
		/// </summary>
		/// <remarks>
		/// Animation indices are looked up in the <see cref="Duality.Resources.Pixmap.Atlas"/> map
		/// of the <see cref="Duality.Resources.Texture"/> that is used.
		/// </remarks>
		[EditorHintRange(0, int.MaxValue)]
		public int AnimFirstFrame
		{
			get { return this.animFirstFrame; }
			set { this.animFirstFrame = MathF.Max(0, value); }
		}
		/// <summary>
		/// [GET / SET] The number of continous frames to use for the animation. Ignored if <see cref="CustomFrameSequence"/> is set.
		/// </summary>
		/// <remarks>
		/// Animation indices are looked up in the <see cref="Duality.Resources.Pixmap.Atlas"/> map
		/// of the <see cref="Duality.Resources.Texture"/> that is used.
		/// </remarks>
		[EditorHintRange(0, int.MaxValue)]
		public int AnimFrameCount
		{
			get { return this.animFrameCount; }
			set { this.animFrameCount = MathF.Max(0, value); }
		}
		/// <summary>
		/// [GET / SET] The time a single animation cycle needs to complete, in seconds.
		/// </summary>
		[EditorHintRange(0.0f, float.MaxValue)]
		public float AnimDuration
		{
			get { return this.animDuration; }
			set
			{
				float lastDuration = this.animDuration;

				this.animDuration = MathF.Max(0.0f, value);

				if (lastDuration != 0.0f && this.animDuration != 0.0f)
					this.animTime *= this.animDuration / lastDuration;
			}
		}
		/// <summary>
		/// [GET / SET] The animations current play time, i.e. the current state of the animation.
		/// </summary>
		[EditorHintRange(0.0f, float.MaxValue)]
		public float AnimTime
		{
			get { return this.animTime; }
			set { this.animTime = MathF.Max(0.0f, value); }
		}
		/// <summary>
		/// [GET / SET] If true, the animation is paused and won't advance over time. <see cref="AnimTime"/> will stay constant until resumed.
		/// </summary>
		public bool AnimPaused
		{
			get { return this.animPaused; }
			set { this.animPaused = value; }
		}
		/// <summary>
		/// [GET / SET] The animations loop behaviour.
		/// </summary>
		public LoopMode AnimLoopMode
		{
			get { return this.animLoopMode; }
			set { this.animLoopMode = value; }
		}
		/// <summary>
		/// [GET / SET] A custom sequence of frame indices that will be used instead of the default range
		/// specified by <see cref="AnimFirstFrame"/> and <see cref="AnimFrameCount"/>. Unused if set to null.
		/// </summary>
		/// <remarks>
		/// Animation indices are looked up in the <see cref="Duality.Resources.Pixmap.Atlas"/> map
		/// of the <see cref="Duality.Resources.Texture"/> that is used.
		/// </remarks>
		[EditorHintFlags(MemberFlags.ForceWriteback)]
		public List<int> CustomFrameSequence
		{
			get { return this.customFrameSequence; }
			set { this.customFrameSequence = value; }
		}
		/// <summary>
		/// [GET] Whether the animation is currently running, i.e. if there is anything animated right now.
		/// </summary>
		[EditorHintFlags(MemberFlags.Invisible)]
		public bool IsAnimationRunning
		{
			get
			{
				switch (this.animLoopMode)
				{
					case LoopMode.FixedSingle:
					case LoopMode.RandomSingle:
						return false;
					case LoopMode.Loop:
					case LoopMode.PingPong:
						return !this.animPaused;
					case LoopMode.Once:
						return !this.animPaused && this.animTime < this.animDuration;
					case LoopMode.Queue:
						return !this.animPaused && this.customFrameSequence != null && this.customFrameSequence.Count > 1;
					default:
						return false;
				}
			}
		}
		/// <summary>
		/// [GET] The currently visible animation frames index.
		/// </summary>
		[EditorHintFlags(MemberFlags.Invisible)]
		public int CurrentFrame
		{
			get { return this.curAnimFrame; }
		}
		/// <summary>
		/// [GET] The next visible animation frames index.
		/// </summary>
		[EditorHintFlags(MemberFlags.Invisible)]
		public int NextFrame
		{
			get { return this.nextAnimFrame; }
		}
		/// <summary>
		/// [GET] The current animation frames progress where zero means "just entered the current frame"
		/// and one means "about to leave the current frame". This value is also used for smooth animation blending.
		/// </summary>
		[EditorHintFlags(MemberFlags.Invisible)]
		public float CurrentFrameProgress
		{
			get { return this.curAnimFrameFade; }
		}
		

		/// <summary>
		/// Determines the depth offset that is generated at the specified world position.
		/// This also inclues the renderers overall offset as specified in <see cref="DepthOffset"/>.
		/// </summary>
		/// <param name="worldPos"></param>
		/// <returns></returns>
		public float GetDepthOffsetAt(Vector2 worldPos)
		{
			Transform transform = this.GameObj.Transform;
			float depthPerUnit = -this.depthScale;
			return this.offset + transform.Pos.Y * depthPerUnit;
		}
		/// <summary>
		/// Updates the <see cref="CurrentFrame"/>, <see cref="NextFrame"/> and <see cref="CurrentFrameProgress"/> properties immediately.
		/// This is called implicitly once each frame before drawing, so you don't normally call this. However, when changing animation
		/// parameters and requiring updated animation frame data immediately, this could be helpful.
		/// </summary>
		public void UpdateVisibleFrames()
		{
			int actualFrameBegin = this.customFrameSequence != null ? 0 : this.animFirstFrame;
			int actualFrameCount = this.customFrameSequence != null ? this.customFrameSequence.Count : this.animFrameCount;

			// Calculate visible frames
			this.curAnimFrame = 0;
			this.nextAnimFrame = 0;
			this.curAnimFrameFade = 0.0f;
			if (actualFrameCount > 0 && this.animDuration > 0)
			{
				// Queued behavior
				if (this.animLoopMode == LoopMode.Queue)
				{
					this.curAnimFrameFade = MathF.Clamp(this.animTime / this.animDuration, 0.0f, 1.0f);
					this.curAnimFrame = 0;
					this.nextAnimFrame = 1;
				}
				// Non-queued behavior
				else
				{
					// Calculate currently visible frame
					float frameTemp = actualFrameCount * this.animTime / this.animDuration;
					this.curAnimFrame = (int)frameTemp;

					// Handle extended frame range for ping pong mode
					if (this.animLoopMode == LoopMode.PingPong)
					{
						if (this.curAnimFrame >= actualFrameCount)
							this.curAnimFrame = (actualFrameCount - 1) * 2 - this.curAnimFrame;
					}

					// Normalize current frame when exceeding anim duration
					if (this.animLoopMode == LoopMode.Once || this.animLoopMode == LoopMode.FixedSingle || this.animLoopMode == LoopMode.RandomSingle)
						this.curAnimFrame = MathF.Clamp(this.curAnimFrame, 0, actualFrameCount - 1);
					else
						this.curAnimFrame = MathF.NormalizeVar(this.curAnimFrame, 0, actualFrameCount);

					// Calculate second frame and fade value
					this.curAnimFrameFade = frameTemp - (int)frameTemp;
					if (this.animLoopMode == LoopMode.Loop)
					{
						this.nextAnimFrame = MathF.NormalizeVar(this.curAnimFrame + 1, 0, actualFrameCount);
					}
					else if (this.animLoopMode == LoopMode.PingPong)
					{
						if ((int)frameTemp < actualFrameCount)
						{
							this.nextAnimFrame = this.curAnimFrame + 1;
							if (this.nextAnimFrame >= actualFrameCount)
								this.nextAnimFrame = (actualFrameCount - 1) * 2 - this.nextAnimFrame;
						}
						else
						{
							this.nextAnimFrame = this.curAnimFrame - 1;
							if (this.nextAnimFrame < 0)
								this.nextAnimFrame = -this.nextAnimFrame;
						}
					}
					else
					{
						this.nextAnimFrame = this.curAnimFrame + 1;
					}
				}
			}
			this.curAnimFrame	= actualFrameBegin + MathF.Clamp(this.curAnimFrame, 0, actualFrameCount - 1);
			this.nextAnimFrame	= actualFrameBegin + MathF.Clamp(this.nextAnimFrame, 0, actualFrameCount - 1);

			// Map to custom sequence
			if (this.customFrameSequence != null)
			{
				if (this.customFrameSequence.Count > 0)
				{
					this.curAnimFrame	= this.customFrameSequence[this.curAnimFrame];
					this.nextAnimFrame	= this.customFrameSequence[this.nextAnimFrame];
				}
				else
				{
					this.curAnimFrame	= 0;
					this.nextAnimFrame	= 0;
				}
			}
		}

		private Texture RetrieveMainTex()
		{
			if (this.customMat != null)
				return this.customMat.MainTexture.Res;
			else if (this.sharedMat.IsAvailable)
				return this.sharedMat.Res.MainTexture.Res;
			else
				return null;
		}
		private ColorRgba RetrieveMainColor()
		{
			if (this.customMat != null)
				return this.customMat.MainColor * this.colorTint;
			else if (this.sharedMat.IsAvailable)
				return this.sharedMat.Res.MainColor * this.colorTint;
			else
				return this.colorTint;
		}
		private void PrepareVertices(ref VertexC1P3T2[] vertices, IDrawDevice device, ColorRgba mainClr, Rect uvRect)
		{
			Transform transform = this.GameObj.Transform;
			Vector3 posTemp = transform.Pos;
			float scaleTemp = transform.Scale;
			device.PreprocessCoords(ref posTemp, ref scaleTemp);

			Vector2 xDot, yDot;
			MathF.GetTransformDotVec(transform.Angle, scaleTemp, out xDot, out yDot);

			Vector2 edge1 = this.rect.TopLeft;
			Vector2 edge2 = this.rect.BottomLeft;
			Vector2 edge3 = this.rect.BottomRight;
			Vector2 edge4 = this.rect.TopRight;

			MathF.TransformDotVec(ref edge1, ref xDot, ref yDot);
			MathF.TransformDotVec(ref edge2, ref xDot, ref yDot);
			MathF.TransformDotVec(ref edge3, ref xDot, ref yDot);
			MathF.TransformDotVec(ref edge4, ref xDot, ref yDot);
            
			float uvLeft   = uvRect.X;
			float uvRight  = uvRect.RightX;
			float uvTop    = uvRect.Y;
			float uvBottom = uvRect.BottomY;

			if (vertices == null || vertices.Length != 4) vertices = new VertexC1P3T2[4];

			vertices[0].Pos.X = posTemp.X + edge1.X;
			vertices[0].Pos.Y = posTemp.Y + edge1.Y - this.height;
			vertices[0].Pos.Z = posTemp.Z;
			vertices[0].TexCoord.X = uvLeft;
			vertices[0].TexCoord.Y = uvTop;
			vertices[0].Color = mainClr;

			vertices[1].Pos.X = posTemp.X + edge2.X;
			vertices[1].Pos.Y = posTemp.Y + edge2.Y - this.height;
			vertices[1].Pos.Z = posTemp.Z;
			vertices[1].TexCoord.X = uvLeft;
			vertices[1].TexCoord.Y = uvBottom;
			vertices[1].Color = mainClr;

			vertices[2].Pos.X = posTemp.X + edge3.X;
			vertices[2].Pos.Y = posTemp.Y + edge3.Y - this.height;
			vertices[2].Pos.Z = posTemp.Z;
			vertices[2].TexCoord.X = uvRight;
			vertices[2].TexCoord.Y = uvBottom;
			vertices[2].Color = mainClr;
				
			vertices[3].Pos.X = posTemp.X + edge4.X;
			vertices[3].Pos.Y = posTemp.Y + edge4.Y - this.height;
			vertices[3].Pos.Z = posTemp.Z;
			vertices[3].TexCoord.X = uvRight;
			vertices[3].TexCoord.Y = uvTop;
			vertices[3].Color = mainClr;

			// Apply depth offsets
			float depthPerUnit = -this.depthScale;
			if (this.isVertical)
			{
				// Vertical actors share the same depth offset on all four vertices
				float baseDepthOffset = this.offset + transform.Pos.Y * depthPerUnit;
				vertices[0].Pos.Z += baseDepthOffset;
				vertices[1].Pos.Z += baseDepthOffset;
				vertices[2].Pos.Z += baseDepthOffset;
				vertices[3].Pos.Z += baseDepthOffset;
			}
			else
			{
				// Flat actors need to apply depth individually per vertex
				float worldBaseY = transform.Pos.Y;
				vertices[0].Pos.Z += this.offset + (worldBaseY + edge1.Y * transform.Scale / scaleTemp + this.height) * depthPerUnit;
				vertices[1].Pos.Z += this.offset + (worldBaseY + edge2.Y * transform.Scale / scaleTemp + this.height) * depthPerUnit;
				vertices[2].Pos.Z += this.offset + (worldBaseY + edge3.Y * transform.Scale / scaleTemp + this.height) * depthPerUnit;
				vertices[3].Pos.Z += this.offset + (worldBaseY + edge4.Y * transform.Scale / scaleTemp + this.height) * depthPerUnit;
			}
		}
		
		protected void GetAnimData(Texture mainTex, out Rect uvRect)
		{
			this.UpdateVisibleFrames();
			if (mainTex != null)
				mainTex.LookupAtlas(this.curAnimFrame, out uvRect);
			else
				uvRect = new Rect(1.0f, 1.0f);
		}
		public override void Draw(IDrawDevice device)
		{
			Texture mainTex = this.RetrieveMainTex();
			ColorRgba mainClr = this.RetrieveMainColor();
			
			Rect uvRect;
			this.GetAnimData(mainTex, out uvRect);

			this.PrepareVertices(ref this.vertices, device, mainClr, uvRect);
			if (this.customMat != null)
				device.AddVertices(this.customMat, VertexMode.Quads, this.vertices);
			else
				device.AddVertices(this.sharedMat, VertexMode.Quads, this.vertices);
		}

		void ICmpUpdatable.OnUpdate()
		{
			if (!this.IsAnimationRunning) return;
			if (this.animPaused) return;

			int actualFrameBegin = this.customFrameSequence != null ? 0 : this.animFirstFrame;
			int actualFrameCount = this.customFrameSequence != null ? this.customFrameSequence.Count : this.animFrameCount;

			// Advance animation timer
			if (this.animLoopMode == LoopMode.Loop)
			{
				this.animTime += Time.TimeMult * Time.SPFMult;
				if (this.animTime > this.animDuration)
				{
					int n = (int)(this.animTime / this.animDuration);
					this.animTime -= this.animDuration * n;
				}
			}
			else if (this.animLoopMode == LoopMode.Once)
			{
				this.animTime = MathF.Min(this.animTime + Time.TimeMult * Time.SPFMult, this.animDuration);
			}
			else if (this.animLoopMode == LoopMode.PingPong)
			{
				float frameTime = this.animDuration / actualFrameCount;
				float pingpongDuration = (this.animDuration - frameTime) * 2.0f;

				this.animTime += Time.TimeMult * Time.SPFMult;
				if (this.animTime > pingpongDuration)
				{
					int n = (int)(this.animTime / pingpongDuration);
					this.animTime -= pingpongDuration * n;
				}
			}
			else if (this.animLoopMode == LoopMode.Queue)
			{
				this.animTime += Time.TimeMult * Time.SPFMult;
				if (this.animTime > this.animDuration)
				{
					int n = (int)(this.animTime / this.animDuration);
					this.animTime -= this.animDuration * n;

					if (this.customFrameSequence != null)
					{
						while (n > 0 && this.customFrameSequence.Count > 1)
						{
							this.customFrameSequence.RemoveAt(0);
							n--;
						}
					}
				}
			}

			this.UpdateVisibleFrames();
		}
		void ICmpInitializable.OnInit(Component.InitContext context)
		{
			if (context == InitContext.Loaded)
			{
				if (this.animLoopMode == LoopMode.RandomSingle)
					this.animTime = MathF.Rnd.NextFloat(this.animDuration);
			}
		}
		void ICmpInitializable.OnShutdown(Component.ShutdownContext context) {}
	}
}
