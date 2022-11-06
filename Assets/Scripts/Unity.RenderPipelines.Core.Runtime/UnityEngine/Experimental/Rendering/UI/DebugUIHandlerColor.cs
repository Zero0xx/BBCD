using UnityEngine.UI;

namespace UnityEngine.Experimental.Rendering.UI
{
	public class DebugUIHandlerColor : DebugUIHandlerWidget
	{
		public Text nameLabel;
		public UIFoldout valueToggle;
		public Image colorImage;
		public DebugUIHandlerIndirectFloatField fieldR;
		public DebugUIHandlerIndirectFloatField fieldG;
		public DebugUIHandlerIndirectFloatField fieldB;
		public DebugUIHandlerIndirectFloatField fieldA;
	}
}
