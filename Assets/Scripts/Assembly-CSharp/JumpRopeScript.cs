using UnityEngine;
using TMPro;

public class JumpRopeScript : MonoBehaviour
{
	public TMP_Text jumpCount;
	public Animator rope;
	public CameraScript cs;
	public PlayerScript ps;
	public PlaytimeScript playtime;
	public GameObject mobileIns;
	public int jumps;
	public float jumpDelay;
	public float ropePosition;
	public bool ropeHit;
	public bool jumpStarted;
}
