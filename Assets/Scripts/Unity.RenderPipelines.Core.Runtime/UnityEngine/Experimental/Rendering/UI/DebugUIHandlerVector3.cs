using UnityEngine.UI;

namespace UnityEngine.Experimental.Rendering.UI
{
	public class DebugUIHandlerVector3 : DebugUIHandlerWidget
	{
		public Text nameLabel;
		public UIFoldout valueToggle;
		public DebugUIHandlerIndirectFloatField fieldX;
		public DebugUIHandlerIndirectFloatField fieldY;
		public DebugUIHandlerIndirectFloatField fieldZ;
	}
}
