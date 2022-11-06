using UnityEngine;
using UnityEngine.AI;
using UnityEngine.UI;

public class PlayerScript : MonoBehaviour
{
	public GameControllerScript gc;
	public BaldiScript baldi;
	public DoorScript door;
	public PlaytimeScript playtime;
	public bool gameOver;
	public bool jumpRope;
	public bool sweeping;
	public bool hugging;
	public bool bootsActive;
	public int principalBugFixer;
	public float sweepingFailsave;
	public float fliparoo;
	public float flipaturn;
	public Vector3 frozenPosition;
	public float mouseSensitivity;
	public float walkSpeed;
	public float runSpeed;
	public float slowSpeed;
	public float maxStamina;
	public float staminaRate;
	public float guilt;
	public float initGuilt;
	public float stamina;
	public CharacterController cc;
	public NavMeshAgent gottaSweep;
	public NavMeshAgent firstPrize;
	public Transform firstPrizeTransform;
	public Slider staminaBar;
	public float db;
	public string guiltType;
	public GameObject jumpRopeScreen;
	public float height;
	public Material blackSky;
	public Canvas hud;
	public Canvas mobile1;
	public Canvas mobile2;
}
