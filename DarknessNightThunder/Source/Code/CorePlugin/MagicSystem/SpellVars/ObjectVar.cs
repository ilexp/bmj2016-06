using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;

using Duality;
using Duality.Components;

namespace DarknessNightThunder.SpellVars
{
    public class ObjectVar : SpellVar
	{
		public struct Element
		{
			public float Weight;
			public ICmpSpellInteractor Interactor;

			public Element(ICmpSpellInteractor obj, float weight)
			{
				this.Weight = MathF.Abs(weight);
				this.Interactor = obj;
			}
		}

		private List<Element> elements = new List<Element>();
		private float count = 0.0f;

		/// <summary>
		/// [GET] Enumerates all the elements in this object variable, sorted from most to least weight.
		/// </summary>
		public IEnumerable<Element> Elements
		{
			get { return this.elements; }
		}
		public float Count
		{
			get { return this.count; }
		}
		
		public void Add(ICmpSpellInteractor obj, float weight = 1.0f)
		{
			int index = this.elements.IndexOfFirst(e => e.Interactor == obj);
			if (index == -1)
			{
				this.elements.Add(new Element(obj, weight));
			}
			else
			{
				Element element = this.elements[index];
				element.Weight = MathF.Clamp(element.Weight + weight, 0.0f, 1.0f);
				this.elements[index] = element;
			}

			this.elements.StableSort((a, b) => Comparer<float>.Default.Compare(MathF.Abs(b.Weight), MathF.Abs(a.Weight)));
			this.count = this.elements.Sum(e => MathF.Abs(e.Weight));
		}
		public void Remove(ICmpSpellInteractor obj, float weight = 1.0f)
		{
			int index = this.elements.IndexOfFirst(e => e.Interactor == obj);
			if (index != -1)
			{
				Element element = this.elements[index];
				element.Weight = MathF.Clamp(element.Weight - weight, 0.0f, 1.0f);
				if (element.Weight <= 0.0f)
					this.elements.RemoveAt(index);
				else
					this.elements[index] = element;

				this.count = this.elements.Sum(e => MathF.Abs(e.Weight));
			}
		}
		public void Clear()
		{
			this.elements.Clear();
			this.count = 0.0f;
		}
		public float Contains(ICmpSpellInteractor obj)
		{
			Element element = this.elements.FirstOrDefault(e => e.Interactor == obj);
			return element.Weight;
		}

		public override string ToString()
		{
			return string.Format("Objects:{0}{1}", Environment.NewLine, this.elements.ToString(e => string.Format("\t[{1:F}] {0}", e.Interactor, e.Weight), Environment.NewLine));
		}
	}
}
