using UnityEngine;

namespace Rewired.Demos.GamepadTemplateUI
{
	public class GamepadTemplateUI : MonoBehaviour
	{
		public int playerId;
		[SerializeField]
		private RectTransform leftStick;
		[SerializeField]
		private RectTransform rightStick;
		[SerializeField]
		private ControllerUIElement leftStickX;
		[SerializeField]
		private ControllerUIElement leftStickY;
		[SerializeField]
		private ControllerUIElement leftStickButton;
		[SerializeField]
		private ControllerUIElement rightStickX;
		[SerializeField]
		private ControllerUIElement rightStickY;
		[SerializeField]
		private ControllerUIElement rightStickButton;
		[SerializeField]
		private ControllerUIElement actionBottomRow1;
		[SerializeField]
		private ControllerUIElement actionBottomRow2;
		[SerializeField]
		private ControllerUIElement actionBottomRow3;
		[SerializeField]
		private ControllerUIElement actionTopRow1;
		[SerializeField]
		private ControllerUIElement actionTopRow2;
		[SerializeField]
		private ControllerUIElement actionTopRow3;
		[SerializeField]
		private ControllerUIElement leftShoulder;
		[SerializeField]
		private ControllerUIElement leftTrigger;
		[SerializeField]
		private ControllerUIElement rightShoulder;
		[SerializeField]
		private ControllerUIElement rightTrigger;
		[SerializeField]
		private ControllerUIElement center1;
		[SerializeField]
		private ControllerUIElement center2;
		[SerializeField]
		private ControllerUIElement center3;
		[SerializeField]
		private ControllerUIElement dPadUp;
		[SerializeField]
		private ControllerUIElement dPadRight;
		[SerializeField]
		private ControllerUIElement dPadDown;
		[SerializeField]
		private ControllerUIElement dPadLeft;
	}
}
