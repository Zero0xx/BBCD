using System;
using Rewired;
using UnityEngine;

namespace Rewired.Data.Mapping
{
	[Serializable]
	public class HardwareAxisInfo
	{
		[SerializeField]
		protected AxisCoordinateMode _dataFormat;
		[SerializeField]
		protected bool _excludeFromPolling;
		[SerializeField]
		protected SpecialAxisType _specialAxisType;
	}
}
