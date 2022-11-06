using UnityEngine.EventSystems;
using UnityEngine;

namespace MaterialKit
{
	public class DpCanvasScaler : UIBehaviour
	{
		[SerializeField]
		protected float m_ReferencePixelsPerUnit;
		[SerializeField]
		protected float m_FallbackScreenDPI;
		[SerializeField]
		protected float m_DefaultSpriteDPI;
		[SerializeField]
		protected float m_DynamicPixelsPerUnit;
	}
}
