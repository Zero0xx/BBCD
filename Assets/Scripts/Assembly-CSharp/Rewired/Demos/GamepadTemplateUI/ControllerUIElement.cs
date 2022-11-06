using UnityEngine;
using UnityEngine.UI;

namespace Rewired.Demos.GamepadTemplateUI
{
	public class ControllerUIElement : MonoBehaviour
	{
		[SerializeField]
		private Color _highlightColor;
		[SerializeField]
		private ControllerUIEffect _positiveUIEffect;
		[SerializeField]
		private ControllerUIEffect _negativeUIEffect;
		[SerializeField]
		private Text _label;
		[SerializeField]
		private Text _positiveLabel;
		[SerializeField]
		private Text _negativeLabel;
		[SerializeField]
		private ControllerUIElement[] _childElements;
	}
}
