using UnityEngine;

namespace Rewired.Demos
{
	public class PlayerMouseSpriteExample : MonoBehaviour
	{
		public int playerId;
		public string horizontalAction;
		public string verticalAction;
		public string wheelAction;
		public string leftButtonAction;
		public string rightButtonAction;
		public string middleButtonAction;
		public float distanceFromCamera;
		public float spriteScale;
		public GameObject pointerPrefab;
		public GameObject clickEffectPrefab;
		public bool hideHardwarePointer;
	}
}
