using System;
using UnityEngine.XR;

namespace UnityEngine.Experimental.Rendering
{
	[Serializable]
	public class XRGraphicsConfig
	{
		public float renderScale;
		public float viewportScale;
		public bool useOcclusionMesh;
		public float occlusionMaskScale;
		public bool showDeviceView;
		public GameViewRenderMode gameViewRenderMode;
	}
}
