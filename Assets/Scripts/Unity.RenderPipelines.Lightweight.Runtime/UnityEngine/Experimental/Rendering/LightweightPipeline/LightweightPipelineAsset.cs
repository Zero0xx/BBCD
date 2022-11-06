using UnityEngine.Experimental.Rendering;
using UnityEngine;

namespace UnityEngine.Experimental.Rendering.LightweightPipeline
{
	public class LightweightPipelineAsset : RenderPipelineAsset
	{
		[SerializeField]
		private int k_AssetVersion;
		[SerializeField]
		private int m_MaxPixelLights;
		[SerializeField]
		private bool m_SupportsVertexLight;
		[SerializeField]
		private bool m_RequireDepthTexture;
		[SerializeField]
		private bool m_RequireSoftParticles;
		[SerializeField]
		private bool m_RequireOpaqueTexture;
		[SerializeField]
		private Downsampling m_OpaqueDownsampling;
		[SerializeField]
		private bool m_SupportsHDR;
		[SerializeField]
		private MSAAQuality m_MSAA;
		[SerializeField]
		private float m_RenderScale;
		[SerializeField]
		private bool m_SupportsDynamicBatching;
		[SerializeField]
		private bool m_DirectionalShadowsSupported;
		[SerializeField]
		private ShadowResolution m_ShadowAtlasResolution;
		[SerializeField]
		private float m_ShadowDistance;
		[SerializeField]
		private ShadowCascades m_ShadowCascades;
		[SerializeField]
		private float m_Cascade2Split;
		[SerializeField]
		private Vector3 m_Cascade4Split;
		[SerializeField]
		private bool m_LocalShadowsSupported;
		[SerializeField]
		private ShadowResolution m_LocalShadowsAtlasResolution;
		[SerializeField]
		private bool m_SoftShadowsSupported;
		[SerializeField]
		private bool m_KeepAdditionalLightVariants;
		[SerializeField]
		private bool m_KeepVertexLightVariants;
		[SerializeField]
		private bool m_KeepDirectionalShadowVariants;
		[SerializeField]
		private bool m_KeepLocalShadowVariants;
		[SerializeField]
		private bool m_KeepSoftShadowVariants;
		[SerializeField]
		private LightweightPipelineResources m_ResourcesAsset;
		[SerializeField]
		private XRGraphicsConfig m_SavedXRConfig;
		[SerializeField]
		private ShadowType m_ShadowType;
	}
}
