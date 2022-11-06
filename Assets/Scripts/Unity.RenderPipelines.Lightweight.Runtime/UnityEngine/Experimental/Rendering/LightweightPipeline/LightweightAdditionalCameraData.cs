using UnityEngine;

namespace UnityEngine.Experimental.Rendering.LightweightPipeline
{
	public class LightweightAdditionalCameraData : MonoBehaviour
	{
		public bool renderShadows;
		public bool requiresDepthTexture;
		public bool requiresColorTexture;
		[SerializeField]
		private float m_Version;
	}
}
