using UnityEngine;
using System;

namespace UnityEngine.Experimental.Rendering
{
	public class AdditionalShadowData : MonoBehaviour
	{
		[Serializable]
		public struct ShadowData
		{
			public int format;
			public int[] data;
		}

		public float version;
		public int shadowResolution;
		public float shadowDimmer;
		public float shadowFadeDistance;
		public bool contactShadows;
		public float viewBiasMin;
		public float viewBiasMax;
		public float viewBiasScale;
		public float normalBiasMin;
		public float normalBiasMax;
		public float normalBiasScale;
		public bool sampleBiasScale;
		public bool edgeLeakFixup;
		public bool edgeToleranceNormal;
		public float edgeTolerance;
		[SerializeField]
		private int shadowCascadeCount;
		[SerializeField]
		private float[] shadowCascadeRatios;
		[SerializeField]
		private float[] shadowCascadeBorders;
		[SerializeField]
		private int shadowAlgorithm;
		[SerializeField]
		private int shadowVariant;
		[SerializeField]
		private int shadowPrecision;
		[SerializeField]
		private ShadowData shadowData;
		[SerializeField]
		private ShadowData[] shadowDatas;
	}
}
