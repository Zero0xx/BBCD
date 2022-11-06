using System;
using UnityEngine;

namespace Rewired.ComponentControls
{
	[Serializable]
	public class TouchRegion : TouchInteractable
	{
		[SerializeField]
		private bool _hideAtRuntime;
	}
}
