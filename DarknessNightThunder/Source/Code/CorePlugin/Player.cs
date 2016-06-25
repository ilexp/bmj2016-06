using System;
using System.Collections.Generic;
using System.Linq;
using System.IO;

using Duality;
using Duality.Input;
using Duality.Components;
using Duality.Editor;
using Duality.Plugins.Tilemaps;
using Duality.Plugins.Tilemaps.Properties;

namespace DarknessNightThunder
{
	/// <summary>
	/// Represents a player and applies user input to the controlled <see cref="CharacterController"/>.
	/// </summary>
	public class Player : Component, ICmpUpdatable
	{
		private CharacterController character;

		[DontSerialize] private Spell       activeSpell = null;
		[DontSerialize] private List<Spell> spells      = new List<Spell>();

		public CharacterController CharacterController
		{
			get { return this.character; }
			set { this.character = value; }
		}
		public Character Character
		{
			get { return this.character.GameObj.GetComponent<Character>(); }
		}

		void ICmpUpdatable.OnUpdate()
		{
			if (this.character == null) return;

			SpellScriptEditor spellEditor = this.GameObj.ParentScene.FindComponent<SpellScriptEditor>(false);
			bool spellEditorActive = (spellEditor != null && spellEditor.Active);

			// Character movement
			if (!spellEditorActive)
			{
				Camera mainCam = this.GameObj.ParentScene.FindComponent<Camera>();
				Vector2 characterScreenPos = mainCam.GetScreenCoord(this.character.GameObj.Transform.Pos).Xy;

				Vector2 movement = Vector2.Zero;
				if (DualityApp.Keyboard[Key.A])
					movement -= Vector2.UnitX;
				if (DualityApp.Keyboard[Key.D])
					movement += Vector2.UnitX;
				if (DualityApp.Keyboard[Key.W])
					movement -= Vector2.UnitY;
				if (DualityApp.Keyboard[Key.S])
					movement += Vector2.UnitY;

				if (movement.Length > 1.0f)
					movement = movement.Normalized;

				this.character.TargetMovement = movement;
				this.character.TargetLookDir = (DualityApp.Mouse.Pos - characterScreenPos).Angle;
			}
			else
			{
				this.character.TargetMovement = Vector2.Zero;
			}
			
			// Update existing spells
			for (int i = this.spells.Count - 1; i >= 0; i--)
			{
				Spell spell = this.spells[i];
				spell.Update();
				if (!spell.IsActive)
				{
					if (spell == this.activeSpell) this.activeSpell = null;
					this.spells.RemoveAt(i);
				}
			}

			// Cast Spells
			if (spellEditor != null && !spellEditorActive)
			{
				if (DualityApp.Mouse.ButtonHit(MouseButton.Left))
				{
					if (this.activeSpell == null)
					{
						this.activeSpell = Spell.Cast(this.Character, spellEditor.Script);
						this.spells.Add(this.activeSpell);
					}
				}
				if (!DualityApp.Mouse[MouseButton.Left])
				{
					if (this.activeSpell != null)
					{
						this.activeSpell.Release();
						this.activeSpell = null;
					}
				}
			}

			if (DualityApp.Keyboard.KeyHit(Key.P) && spellEditor != null)
			{
				spellEditor.Active = !spellEditor.Active;
			}
		}
	}
}
