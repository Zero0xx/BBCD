using UnityEngine;
using System;

namespace UnityEngine.Experimental.Rendering
{
	public class GPUCopyAsset : ScriptableObject
	{
		[Serializable]
		public struct CopyOperation
		{
			public string subscript;
			public int sourceChannel;
			public int targetChannel;
		}

		[SerializeField]
		private CopyOperation[] m_CopyOperation;
	}
}
