using UnityEngine;

public class DoorScript : MonoBehaviour
{
	public float openingDistance;
	public Transform player;
	public BaldiScript baldi;
	public MeshCollider barrier;
	public MeshCollider trigger;
	public MeshCollider invisibleBarrier;
	public MeshRenderer inside;
	public MeshRenderer outside;
	public AudioClip doorOpen;
	public AudioClip doorClose;
	public Material closed;
	public Material open;
	public int silentOpens;
	public float lockTime;
}
