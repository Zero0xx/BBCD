using UnityEngine;
using UnityEngine.UI;
using TMPro;

public class MathGameScript : MonoBehaviour
{
	public GameControllerScript gc;
	public BaldiScript baldiScript;
	public Vector3 playerPosition;
	public GameObject mathGame;
	public RawImage[] results;
	public Texture correct;
	public Texture incorrect;
	public TMP_InputField playerAnswer;
	public TMP_Text questionText;
	public TMP_Text questionText2;
	public TMP_Text questionText3;
	public Animator baldiFeed;
	public Transform baldiFeedTransform;
	public AudioClip bal_plus;
	public AudioClip bal_minus;
	public AudioClip bal_times;
	public AudioClip bal_divided;
	public AudioClip bal_equals;
	public AudioClip bal_howto;
	public AudioClip bal_intro;
	public AudioClip bal_screech;
	public AudioClip[] bal_numbers;
	public AudioClip[] bal_praises;
	public AudioClip[] bal_problems;
	public Button firstButton;
	public AudioSource baldiAudio;
}
