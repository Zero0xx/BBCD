using System;
using UnityEngine;

namespace Rewired
{
	[Serializable]
	public class ActionElementMap
	{
		[SerializeField]
		protected int _actionCategoryId;
		[SerializeField]
		protected int _actionId;
		[SerializeField]
		protected ControllerElementType _elementType;
		[SerializeField]
		protected int _elementIdentifierId;
		[SerializeField]
		protected AxisRange _axisRange;
		[SerializeField]
		protected bool _invert;
		[SerializeField]
		protected Pole _axisContribution;
		[SerializeField]
		protected KeyboardKeyCode _keyboardKeyCode;
		[SerializeField]
		protected ModifierKey _modifierKey1;
		[SerializeField]
		protected ModifierKey _modifierKey2;
		[SerializeField]
		protected ModifierKey _modifierKey3;
	}
}
