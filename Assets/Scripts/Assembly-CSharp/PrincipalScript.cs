using UnityEngine;

public class PrincipalScript : MonoBehaviour
{
	public bool seesRuleBreak;
	public Transform player;
	public Transform bully;
	public bool bullySeen;
	public PlayerScript playerScript;
	public BullyScript bullyScript;
	public BaldiScript baldiScript;
	public Transform wanderTarget;
	public AILocationSelectorScript wanderer;
	public DoorScript officeDoor;
	public float coolDown;
	public float timeSeenRuleBreak;
	public bool angry;
	public bool inOffice;
	public AudioClip[] audTimes;
	public AudioClip[] audScolds;
	public AudioClip audDetention;
	public AudioClip audNoDrinking;
	public AudioClip audNoBullying;
	public AudioClip audNoFaculty;
	public AudioClip audNoLockers;
	public AudioClip audNoRunning;
	public AudioClip audNoStabbing;
	public AudioClip audNoEscaping;
	public AudioClip aud_Whistle;
	public AudioClip aud_Delay;
	public AudioSource quietAudioDevice;
}
