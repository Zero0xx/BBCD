using UnityEngine;

public class SweepScript : MonoBehaviour
{
	public Transform wanderTarget;
	public AILocationSelectorScript wanderer;
	public float coolDown;
	public float waitTime;
	public int wanders;
	public bool active;
	public AudioClip aud_Sweep;
	public AudioClip aud_Intro;
}
