using UnityEngine;

public class BaldiScript : MonoBehaviour
{
	public bool db;
	public float baseTime;
	public float speed;
	public float timeToMove;
	public float baldiAnger;
	public float baldiTempAnger;
	public float baldiWait;
	public float baldiSpeedScale;
	public bool antiHearing;
	public float antiHearingTime;
	public float vibrationDistance;
	public float angerRate;
	public float angerRateRate;
	public float angerFrequency;
	public float timeToAnger;
	public bool endless;
	public Transform player;
	public Transform wanderTarget;
	public AILocationSelectorScript wanderer;
	public AudioClip slap;
	public AudioClip[] speech;
	public Animator baldiAnimator;
	public float coolDown;
}
