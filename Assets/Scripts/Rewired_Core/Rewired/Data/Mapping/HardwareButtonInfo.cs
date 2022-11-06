using System;
using UnityEngine;

namespace Rewired.Data.Mapping
{
	[Serializable]
	public class HardwareButtonInfo
	{
		[SerializeField]
		protected bool _excludeFromPolling;
		[SerializeField]
		protected bool _isPressureSensitive;
	}
}
