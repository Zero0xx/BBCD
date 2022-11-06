using UnityEngine;
using UnityEngine.UI;

public class UIController : MonoBehaviour
{
	public CursorControllerScript cc;
	public bool controlMouse;
	public bool unlockOnStart;
	public bool uiControlEnabled;
	public Selectable firstButton;
	public Selectable dummyButtonPC;
	public Selectable dummyButtonElse;
	public string buttonTag;
}
