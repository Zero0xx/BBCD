using UnityEngine.UI;
using UnityEngine;

namespace Rewired.UI.ControlMapper
{
	public class CustomToggle : Toggle
	{
		[SerializeField]
		private Sprite _disabledHighlightedSprite;
		[SerializeField]
		private Color _disabledHighlightedColor;
		[SerializeField]
		private string _disabledHighlightedTrigger;
		[SerializeField]
		private bool _autoNavUp;
		[SerializeField]
		private bool _autoNavDown;
		[SerializeField]
		private bool _autoNavLeft;
		[SerializeField]
		private bool _autoNavRight;
	}
}
