Shader "TextMeshPro/Sprite" {
	Properties {
		_MainTex ("Sprite Texture", 2D) = "white" {}
		_Color ("Tint", Vector) = (1,1,1,1)
		_StencilComp ("Stencil Comparison", Float) = 8
		_Stencil ("Stencil ID", Float) = 0
		_StencilOp ("Stencil Operation", Float) = 0
		_StencilWriteMask ("Stencil Write Mask", Float) = 255
		_StencilReadMask ("Stencil Read Mask", Float) = 255
		_ColorMask ("Color Mask", Float) = 15
		_ClipRect ("Clip Rect", Vector) = (-32767,-32767,32767,32767)
		[Toggle(UNITY_UI_ALPHACLIP)] _UseUIAlphaClip ("Use Alpha Clip", Float) = 0
	}
	SubShader {
		Tags { "CanUseSpriteAtlas" = "true" "IGNOREPROJECTOR" = "true" "PreviewType" = "Plane" "QUEUE" = "Transparent" "RenderType" = "Transparent" }
		Pass {
			Tags { "CanUseSpriteAtlas" = "true" "IGNOREPROJECTOR" = "true" "PreviewType" = "Plane" "QUEUE" = "Transparent" "RenderType" = "Transparent" }
			Blend SrcAlpha OneMinusSrcAlpha, SrcAlpha OneMinusSrcAlpha
			ColorMask 0 -1
			ZWrite Off
			Cull Off
			Stencil {
				ReadMask 0
				WriteMask 0
				Comp Disabled
				Pass Keep
				Fail Keep
				ZFail Keep
			}
			GpuProgramID 34451
			Program "vp" {
				SubProgram "d3d11 " {
					"!!vs_4_0
					//
					// Generated by Microsoft (R) D3D Shader Disassembler
					//
					//
					// Input signature:
					//
					// Name                 Index   Mask Register SysValue  Format   Used
					// -------------------- ----- ------ -------- -------- ------- ------
					// POSITION                 0   xyzw        0     NONE   float   xyzw
					// COLOR                    0   xyzw        1     NONE   float   xyzw
					// TEXCOORD                 0   xy          2     NONE   float   xy  
					//
					//
					// Output signature:
					//
					// Name                 Index   Mask Register SysValue  Format   Used
					// -------------------- ----- ------ -------- -------- ------- ------
					// SV_POSITION              0   xyzw        0      POS   float   xyzw
					// COLOR                    0   xyzw        1     NONE   float   xyzw
					// TEXCOORD                 0   xy          2     NONE   float   xy  
					// TEXCOORD                 1   xyzw        3     NONE   float   xyzw
					//
					vs_4_0
					dcl_constantbuffer CB0[3], immediateIndexed
					dcl_constantbuffer CB1[4], immediateIndexed
					dcl_constantbuffer CB2[21], immediateIndexed
					dcl_input v0.xyzw
					dcl_input v1.xyzw
					dcl_input v2.xy
					dcl_output_siv o0.xyzw, position
					dcl_output o1.xyzw
					dcl_output o2.xy
					dcl_output o3.xyzw
					dcl_temps 2
					mul r0.xyzw, v0.yyyy, cb1[1].xyzw
					mad r0.xyzw, cb1[0].xyzw, v0.xxxx, r0.xyzw
					mad r0.xyzw, cb1[2].xyzw, v0.zzzz, r0.xyzw
					add r0.xyzw, r0.xyzw, cb1[3].xyzw
					mul r1.xyzw, r0.yyyy, cb2[18].xyzw
					mad r1.xyzw, cb2[17].xyzw, r0.xxxx, r1.xyzw
					mad r1.xyzw, cb2[19].xyzw, r0.zzzz, r1.xyzw
					mad o0.xyzw, cb2[20].xyzw, r0.wwww, r1.xyzw
					mul o1.xyzw, v1.xyzw, cb0[2].xyzw
					mov o2.xy, v2.xyxx
					mov o3.xyzw, v0.xyzw
					ret 
					// Approximately 0 instruction slots used"
				}
				SubProgram "d3d11 " {
					Keywords { "UNITY_UI_ALPHACLIP" }
					"!!vs_4_0
					//
					// Generated by Microsoft (R) D3D Shader Disassembler
					//
					//
					// Input signature:
					//
					// Name                 Index   Mask Register SysValue  Format   Used
					// -------------------- ----- ------ -------- -------- ------- ------
					// POSITION                 0   xyzw        0     NONE   float   xyzw
					// COLOR                    0   xyzw        1     NONE   float   xyzw
					// TEXCOORD                 0   xy          2     NONE   float   xy  
					//
					//
					// Output signature:
					//
					// Name                 Index   Mask Register SysValue  Format   Used
					// -------------------- ----- ------ -------- -------- ------- ------
					// SV_POSITION              0   xyzw        0      POS   float   xyzw
					// COLOR                    0   xyzw        1     NONE   float   xyzw
					// TEXCOORD                 0   xy          2     NONE   float   xy  
					// TEXCOORD                 1   xyzw        3     NONE   float   xyzw
					//
					vs_4_0
					dcl_constantbuffer CB0[3], immediateIndexed
					dcl_constantbuffer CB1[4], immediateIndexed
					dcl_constantbuffer CB2[21], immediateIndexed
					dcl_input v0.xyzw
					dcl_input v1.xyzw
					dcl_input v2.xy
					dcl_output_siv o0.xyzw, position
					dcl_output o1.xyzw
					dcl_output o2.xy
					dcl_output o3.xyzw
					dcl_temps 2
					mul r0.xyzw, v0.yyyy, cb1[1].xyzw
					mad r0.xyzw, cb1[0].xyzw, v0.xxxx, r0.xyzw
					mad r0.xyzw, cb1[2].xyzw, v0.zzzz, r0.xyzw
					add r0.xyzw, r0.xyzw, cb1[3].xyzw
					mul r1.xyzw, r0.yyyy, cb2[18].xyzw
					mad r1.xyzw, cb2[17].xyzw, r0.xxxx, r1.xyzw
					mad r1.xyzw, cb2[19].xyzw, r0.zzzz, r1.xyzw
					mad o0.xyzw, cb2[20].xyzw, r0.wwww, r1.xyzw
					mul o1.xyzw, v1.xyzw, cb0[2].xyzw
					mov o2.xy, v2.xyxx
					mov o3.xyzw, v0.xyzw
					ret 
					// Approximately 0 instruction slots used"
				}
				SubProgram "d3d11 " {
					Keywords { "UNITY_UI_CLIP_RECT" }
					"!!vs_4_0
					//
					// Generated by Microsoft (R) D3D Shader Disassembler
					//
					//
					// Input signature:
					//
					// Name                 Index   Mask Register SysValue  Format   Used
					// -------------------- ----- ------ -------- -------- ------- ------
					// POSITION                 0   xyzw        0     NONE   float   xyzw
					// COLOR                    0   xyzw        1     NONE   float   xyzw
					// TEXCOORD                 0   xy          2     NONE   float   xy  
					//
					//
					// Output signature:
					//
					// Name                 Index   Mask Register SysValue  Format   Used
					// -------------------- ----- ------ -------- -------- ------- ------
					// SV_POSITION              0   xyzw        0      POS   float   xyzw
					// COLOR                    0   xyzw        1     NONE   float   xyzw
					// TEXCOORD                 0   xy          2     NONE   float   xy  
					// TEXCOORD                 1   xyzw        3     NONE   float   xyzw
					//
					vs_4_0
					dcl_constantbuffer CB0[3], immediateIndexed
					dcl_constantbuffer CB1[4], immediateIndexed
					dcl_constantbuffer CB2[21], immediateIndexed
					dcl_input v0.xyzw
					dcl_input v1.xyzw
					dcl_input v2.xy
					dcl_output_siv o0.xyzw, position
					dcl_output o1.xyzw
					dcl_output o2.xy
					dcl_output o3.xyzw
					dcl_temps 2
					mul r0.xyzw, v0.yyyy, cb1[1].xyzw
					mad r0.xyzw, cb1[0].xyzw, v0.xxxx, r0.xyzw
					mad r0.xyzw, cb1[2].xyzw, v0.zzzz, r0.xyzw
					add r0.xyzw, r0.xyzw, cb1[3].xyzw
					mul r1.xyzw, r0.yyyy, cb2[18].xyzw
					mad r1.xyzw, cb2[17].xyzw, r0.xxxx, r1.xyzw
					mad r1.xyzw, cb2[19].xyzw, r0.zzzz, r1.xyzw
					mad o0.xyzw, cb2[20].xyzw, r0.wwww, r1.xyzw
					mul o1.xyzw, v1.xyzw, cb0[2].xyzw
					mov o2.xy, v2.xyxx
					mov o3.xyzw, v0.xyzw
					ret 
					// Approximately 0 instruction slots used"
				}
				SubProgram "d3d11 " {
					Keywords { "UNITY_UI_CLIP_RECT" "UNITY_UI_ALPHACLIP" }
					"!!vs_4_0
					//
					// Generated by Microsoft (R) D3D Shader Disassembler
					//
					//
					// Input signature:
					//
					// Name                 Index   Mask Register SysValue  Format   Used
					// -------------------- ----- ------ -------- -------- ------- ------
					// POSITION                 0   xyzw        0     NONE   float   xyzw
					// COLOR                    0   xyzw        1     NONE   float   xyzw
					// TEXCOORD                 0   xy          2     NONE   float   xy  
					//
					//
					// Output signature:
					//
					// Name                 Index   Mask Register SysValue  Format   Used
					// -------------------- ----- ------ -------- -------- ------- ------
					// SV_POSITION              0   xyzw        0      POS   float   xyzw
					// COLOR                    0   xyzw        1     NONE   float   xyzw
					// TEXCOORD                 0   xy          2     NONE   float   xy  
					// TEXCOORD                 1   xyzw        3     NONE   float   xyzw
					//
					vs_4_0
					dcl_constantbuffer CB0[3], immediateIndexed
					dcl_constantbuffer CB1[4], immediateIndexed
					dcl_constantbuffer CB2[21], immediateIndexed
					dcl_input v0.xyzw
					dcl_input v1.xyzw
					dcl_input v2.xy
					dcl_output_siv o0.xyzw, position
					dcl_output o1.xyzw
					dcl_output o2.xy
					dcl_output o3.xyzw
					dcl_temps 2
					mul r0.xyzw, v0.yyyy, cb1[1].xyzw
					mad r0.xyzw, cb1[0].xyzw, v0.xxxx, r0.xyzw
					mad r0.xyzw, cb1[2].xyzw, v0.zzzz, r0.xyzw
					add r0.xyzw, r0.xyzw, cb1[3].xyzw
					mul r1.xyzw, r0.yyyy, cb2[18].xyzw
					mad r1.xyzw, cb2[17].xyzw, r0.xxxx, r1.xyzw
					mad r1.xyzw, cb2[19].xyzw, r0.zzzz, r1.xyzw
					mad o0.xyzw, cb2[20].xyzw, r0.wwww, r1.xyzw
					mul o1.xyzw, v1.xyzw, cb0[2].xyzw
					mov o2.xy, v2.xyxx
					mov o3.xyzw, v0.xyzw
					ret 
					// Approximately 0 instruction slots used"
				}
			}
			Program "fp" {
				SubProgram "d3d11 " {
					"!!ps_4_0
					//
					// Generated by Microsoft (R) D3D Shader Disassembler
					//
					//
					// Input signature:
					//
					// Name                 Index   Mask Register SysValue  Format   Used
					// -------------------- ----- ------ -------- -------- ------- ------
					// SV_POSITION              0   xyzw        0      POS   float       
					// COLOR                    0   xyzw        1     NONE   float   xyzw
					// TEXCOORD                 0   xy          2     NONE   float   xy  
					// TEXCOORD                 1   xyzw        3     NONE   float       
					//
					//
					// Output signature:
					//
					// Name                 Index   Mask Register SysValue  Format   Used
					// -------------------- ----- ------ -------- -------- ------- ------
					// SV_Target                0   xyzw        0   TARGET   float   xyzw
					//
					ps_4_0
					dcl_constantbuffer CB0[4], immediateIndexed
					dcl_sampler s0, mode_default
					dcl_resource_texture2d (float,float,float,float) t0
					dcl_input_ps linear v1.xyzw
					dcl_input_ps linear v2.xy
					dcl_output o0.xyzw
					dcl_temps 1
					sample r0.xyzw, v2.xyxx, t0.xyzw, s0
					add r0.xyzw, r0.xyzw, cb0[3].xyzw
					mul o0.xyzw, r0.xyzw, v1.xyzw
					ret 
					// Approximately 0 instruction slots used"
				}
				SubProgram "d3d11 " {
					Keywords { "UNITY_UI_ALPHACLIP" }
					"!!ps_4_0
					//
					// Generated by Microsoft (R) D3D Shader Disassembler
					//
					//
					// Input signature:
					//
					// Name                 Index   Mask Register SysValue  Format   Used
					// -------------------- ----- ------ -------- -------- ------- ------
					// SV_POSITION              0   xyzw        0      POS   float       
					// COLOR                    0   xyzw        1     NONE   float   xyzw
					// TEXCOORD                 0   xy          2     NONE   float   xy  
					// TEXCOORD                 1   xyzw        3     NONE   float       
					//
					//
					// Output signature:
					//
					// Name                 Index   Mask Register SysValue  Format   Used
					// -------------------- ----- ------ -------- -------- ------- ------
					// SV_Target                0   xyzw        0   TARGET   float   xyzw
					//
					ps_4_0
					dcl_constantbuffer CB0[4], immediateIndexed
					dcl_sampler s0, mode_default
					dcl_resource_texture2d (float,float,float,float) t0
					dcl_input_ps linear v1.xyzw
					dcl_input_ps linear v2.xy
					dcl_output o0.xyzw
					dcl_temps 2
					sample r0.xyzw, v2.xyxx, t0.xyzw, s0
					add r0.xyzw, r0.xyzw, cb0[3].xyzw
					mad r1.x, r0.w, v1.w, l(-0.001000)
					mul r0.xyzw, r0.xyzw, v1.xyzw
					mov o0.xyzw, r0.xyzw
					lt r0.x, r1.x, l(0.000000)
					discard_nz r0.x
					ret 
					// Approximately 0 instruction slots used"
				}
				SubProgram "d3d11 " {
					Keywords { "UNITY_UI_CLIP_RECT" }
					"!!ps_4_0
					//
					// Generated by Microsoft (R) D3D Shader Disassembler
					//
					//
					// Input signature:
					//
					// Name                 Index   Mask Register SysValue  Format   Used
					// -------------------- ----- ------ -------- -------- ------- ------
					// SV_POSITION              0   xyzw        0      POS   float       
					// COLOR                    0   xyzw        1     NONE   float   xyzw
					// TEXCOORD                 0   xy          2     NONE   float   xy  
					// TEXCOORD                 1   xyzw        3     NONE   float   xy  
					//
					//
					// Output signature:
					//
					// Name                 Index   Mask Register SysValue  Format   Used
					// -------------------- ----- ------ -------- -------- ------- ------
					// SV_Target                0   xyzw        0   TARGET   float   xyzw
					//
					ps_4_0
					dcl_constantbuffer CB0[5], immediateIndexed
					dcl_sampler s0, mode_default
					dcl_resource_texture2d (float,float,float,float) t0
					dcl_input_ps linear v1.xyzw
					dcl_input_ps linear v2.xy
					dcl_input_ps linear v3.xy
					dcl_output o0.xyzw
					dcl_temps 2
					ge r0.xy, v3.xyxx, cb0[4].xyxx
					ge r0.zw, cb0[4].zzzw, v3.xxxy
					and r0.xyzw, r0.xyzw, l(0x3f800000, 0x3f800000, 0x3f800000, 0x3f800000)
					mul r0.xy, r0.zwzz, r0.xyxx
					mul r0.x, r0.y, r0.x
					sample r1.xyzw, v2.xyxx, t0.xyzw, s0
					add r1.xyzw, r1.xyzw, cb0[3].xyzw
					mul r1.xyzw, r1.xyzw, v1.xyzw
					mul o0.w, r0.x, r1.w
					mov o0.xyz, r1.xyzx
					ret 
					// Approximately 0 instruction slots used"
				}
				SubProgram "d3d11 " {
					Keywords { "UNITY_UI_CLIP_RECT" "UNITY_UI_ALPHACLIP" }
					"!!ps_4_0
					//
					// Generated by Microsoft (R) D3D Shader Disassembler
					//
					//
					// Input signature:
					//
					// Name                 Index   Mask Register SysValue  Format   Used
					// -------------------- ----- ------ -------- -------- ------- ------
					// SV_POSITION              0   xyzw        0      POS   float       
					// COLOR                    0   xyzw        1     NONE   float   xyzw
					// TEXCOORD                 0   xy          2     NONE   float   xy  
					// TEXCOORD                 1   xyzw        3     NONE   float   xy  
					//
					//
					// Output signature:
					//
					// Name                 Index   Mask Register SysValue  Format   Used
					// -------------------- ----- ------ -------- -------- ------- ------
					// SV_Target                0   xyzw        0   TARGET   float   xyzw
					//
					ps_4_0
					dcl_constantbuffer CB0[5], immediateIndexed
					dcl_sampler s0, mode_default
					dcl_resource_texture2d (float,float,float,float) t0
					dcl_input_ps linear v1.xyzw
					dcl_input_ps linear v2.xy
					dcl_input_ps linear v3.xy
					dcl_output o0.xyzw
					dcl_temps 2
					ge r0.xy, v3.xyxx, cb0[4].xyxx
					ge r0.zw, cb0[4].zzzw, v3.xxxy
					and r0.xyzw, r0.xyzw, l(0x3f800000, 0x3f800000, 0x3f800000, 0x3f800000)
					mul r0.xy, r0.zwzz, r0.xyxx
					mul r0.x, r0.y, r0.x
					sample r1.xyzw, v2.xyxx, t0.xyzw, s0
					add r1.xyzw, r1.xyzw, cb0[3].xyzw
					mul r1.xyzw, r1.xyzw, v1.xyzw
					mad r0.y, r1.w, r0.x, l(-0.001000)
					mul r0.x, r0.x, r1.w
					mov o0.xyz, r1.xyzx
					mov o0.w, r0.x
					lt r0.x, r0.y, l(0.000000)
					discard_nz r0.x
					ret 
					// Approximately 0 instruction slots used"
				}
			}
		}
	}
}