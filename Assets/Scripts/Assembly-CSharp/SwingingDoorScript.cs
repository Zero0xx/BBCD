using UnityEngine;

public class SwingingDoorScript : MonoBehaviour
{
	public GameControllerScript gc;
	public BaldiScript baldi;
	public MeshCollider barrier;
	public GameObject obstacle;
	public MeshCollider trigger;
	public MeshRenderer inside;
	public MeshRenderer outside;
	public Material closed;
	public Material open;
	public Material locked;
	public AudioClip doorOpen;
	public AudioClip baldiDoor;
	public bool bDoorOpen;
	public bool bDoorLocked;
}
