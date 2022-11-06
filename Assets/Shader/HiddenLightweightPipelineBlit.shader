Shader "Hidden/LightweightPipeline/Blit" {
	Properties {
	}
	SubShader {
		LOD 100
		Tags { "RenderPipeline" = "LightweightPipeline" "RenderType" = "Opaque" }
		Pass {
			Name "Default"
			LOD 100
			Tags { "LIGHTMODE" = "LightweightForward" "RenderPipeline" = "LightweightPipeline" "RenderType" = "Opaque" }
			ZTest Always
			ZWrite Off
			GpuProgramID 34751
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
					// POSITION                 0   xyzw        0     NONE   float   xyz 
					// TEXCOORD                 0   xy          1     NONE   float   xy  
					//
					//
					// Output signature:
					//
					// Name                 Index   Mask Register SysValue  Format   Used
					// -------------------- ----- ------ -------- -------- ------- ------
					// SV_POSITION              0   xyzw        0      POS   float   xyzw
					// TEXCOORD                 0   xy          1     NONE   float   xy  
					//
					vs_4_0
					dcl_constantbuffer CB0[4], immediateIndexed
					dcl_constantbuffer CB1[23], immediateIndexed
					dcl_input v0.xyz
					dcl_input v1.xy
					dcl_output_siv o0.xyzw, position
					dcl_output o1.xy
					dcl_temps 2
					mul r0.xyzw, v0.yyyy, cb0[1].xyzw
					mad r0.xyzw, cb0[0].xyzw, v0.xxxx, r0.xyzw
					mad r0.xyzw, cb0[2].xyzw, v0.zzzz, r0.xyzw
					add r0.xyzw, r0.xyzw, cb0[3].xyzw
					mul r1.xyzw, r0.yyyy, cb1[20].xyzw
					mad r1.xyzw, cb1[19].xyzw, r0.xxxx, r1.xyzw
					mad r1.xyzw, cb1[21].xyzw, r0.zzzz, r1.xyzw
					mad o0.xyzw, cb1[22].xyzw, r0.wwww, r1.xyzw
					mov o1.xy, v1.xyxx
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
					// TEXCOORD                 0   xy          1     NONE   float   xy  
					//
					//
					// Output signature:
					//
					// Name                 Index   Mask Register SysValue  Format   Used
					// -------------------- ----- ------ -------- -------- ------- ------
					// SV_Target                0   xyzw        0   TARGET   float   xyzw
					//
					ps_4_0
					dcl_sampler s0, mode_default
					dcl_resource_texture2d (float,float,float,float) t0
					dcl_input_ps linear v1.xy
					dcl_output o0.xyzw
					sample o0.xyzw, v1.xyxx, t0.xyzw, s0
					ret 
					// Approximately 0 instruction slots used"
				}
			}
		}
	}
}