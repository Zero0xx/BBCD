using UnityEngine;
using UnityEngine.AI;

public class CraftersScript : MonoBehaviour
{
	public bool db;
	public bool angry;
	public bool gettingAngry;
	public float anger;
	public Transform player;
	public Transform playerCamera;
	public Transform baldi;
	public NavMeshAgent baldiAgent;
	public GameObject sprite;
	public GameControllerScript gc;
	[SerializeField]
	private NavMeshAgent agent;
	public Renderer craftersRenderer;
	public SpriteRenderer spriteImage;
	public Sprite angrySprite;
	public AudioClip aud_Intro;
	public AudioClip aud_Loop;
}
