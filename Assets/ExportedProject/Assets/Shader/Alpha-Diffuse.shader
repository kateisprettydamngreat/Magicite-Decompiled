//////////////////////////////////////////
//
// NOTE: This is *not* a valid shader file
//
///////////////////////////////////////////
Shader "Legacy Shaders/Transparent/Diffuse" {
Properties {
 _Color ("Main Color", Color) = (1,1,1,1)
 _MainTex ("Base (RGB) Trans (A)", 2D) = "white" { }
}
SubShader { 
 LOD 200
 Tags { "QUEUE"="Transparent" "IGNOREPROJECTOR"="true" "RenderType"="Transparent" }
 Pass {
  Name "FORWARD"
  Tags { "LIGHTMODE"="ForwardBase" "QUEUE"="Transparent" "IGNOREPROJECTOR"="true" "RenderType"="Transparent" }
  ZWrite Off
  Blend SrcAlpha OneMinusSrcAlpha
  ColorMask RGB
  GpuProgramID 21420
Program "vp" {
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Matrix 4 [_Object2World] 3
Matrix 7 [_World2Object] 3
Matrix 0 [glstate_matrix_mvp]
Vector 17 [_MainTex_ST]
Vector 12 [unity_SHAb]
Vector 11 [unity_SHAg]
Vector 10 [unity_SHAr]
Vector 15 [unity_SHBb]
Vector 14 [unity_SHBg]
Vector 13 [unity_SHBr]
Vector 16 [unity_SHC]
"vs_2_0
def c18, 1, 0, 0, 0
dcl_position v0
dcl_normal v1
dcl_texcoord v2
dp4 oPos.x, c0, v0
dp4 oPos.y, c1, v0
dp4 oPos.z, c2, v0
dp4 oPos.w, c3, v0
mad oT0.xy, v2, c17, c17.zwzw
dp4 oT2.x, c4, v0
dp4 oT2.y, c5, v0
dp4 oT2.z, c6, v0
mul r0.xyz, v1.y, c8
mad r0.xyz, c7, v1.x, r0
mad r0.xyz, c9, v1.z, r0
nrm r1.xyz, r0
mul r0.x, r1.y, r1.y
mad r0.x, r1.x, r1.x, -r0.x
mul r2, r1.yzzx, r1.xyzz
dp4 r3.x, c13, r2
dp4 r3.y, c14, r2
dp4 r3.z, c15, r2
mad r0.xyz, c16, r0.x, r3
mov r1.w, c18.x
dp4 r2.x, c10, r1
dp4 r2.y, c11, r1
dp4 r2.z, c12, r1
mov oT1.xyz, r1
add oT3.xyz, r0, r2

"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" "VERTEXLIGHT_ON" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Matrix 8 [_Object2World] 3
Matrix 11 [_World2Object] 3
Matrix 4 [glstate_matrix_mvp]
Vector 25 [_MainTex_ST]
Vector 17 [unity_4LightAtten0]
Vector 14 [unity_4LightPosX0]
Vector 15 [unity_4LightPosY0]
Vector 16 [unity_4LightPosZ0]
Vector 0 [unity_LightColor0]
Vector 1 [unity_LightColor1]
Vector 2 [unity_LightColor2]
Vector 3 [unity_LightColor3]
Vector 20 [unity_SHAb]
Vector 19 [unity_SHAg]
Vector 18 [unity_SHAr]
Vector 23 [unity_SHBb]
Vector 22 [unity_SHBg]
Vector 21 [unity_SHBr]
Vector 24 [unity_SHC]
"vs_2_0
def c26, 1, 0, 0, 0
dcl_position v0
dcl_normal v1
dcl_texcoord v2
dp4 oPos.x, c4, v0
dp4 oPos.y, c5, v0
dp4 oPos.z, c6, v0
dp4 oPos.w, c7, v0
mad oT0.xy, v2, c25, c25.zwzw
mul r0.xyz, v1.y, c12
mad r0.xyz, c11, v1.x, r0
mad r0.xyz, c13, v1.z, r0
nrm r1.xyz, r0
mul r0.x, r1.y, r1.y
mad r0.x, r1.x, r1.x, -r0.x
mul r2, r1.yzzx, r1.xyzz
dp4 r3.x, c21, r2
dp4 r3.y, c22, r2
dp4 r3.z, c23, r2
mad r0.xyz, c24, r0.x, r3
mov r1.w, c26.x
dp4 r2.x, c18, r1
dp4 r2.y, c19, r1
dp4 r2.z, c20, r1
add r0.xyz, r0, r2
dp4 r2.y, c9, v0
add r3, -r2.y, c15
mul r4, r1.y, r3
mul r3, r3, r3
dp4 r2.x, c8, v0
add r5, -r2.x, c14
mad r4, r5, r1.x, r4
mad r3, r5, r5, r3
dp4 r2.z, c10, v0
add r5, -r2.z, c16
mov oT2.xyz, r2
mad r2, r5, r1.z, r4
mov oT1.xyz, r1
mad r1, r5, r5, r3
rsq r3.x, r1.x
rsq r3.y, r1.y
rsq r3.z, r1.z
rsq r3.w, r1.w
mov r4.x, c26.x
mad r1, r1, c17, r4.x
mul r2, r2, r3
max r2, r2, c26.y
rcp r3.x, r1.x
rcp r3.y, r1.y
rcp r3.z, r1.z
rcp r3.w, r1.w
mul r1, r2, r3
mul r2.xyz, r1.y, c1
mad r2.xyz, c0, r1.x, r2
mad r1.xyz, c2, r1.z, r2
mad r1.xyz, c3, r1.w, r1
add oT3.xyz, r0, r1

"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" "FOG_EXP2" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Matrix 4 [_Object2World] 3
Matrix 7 [_World2Object] 3
Matrix 0 [glstate_matrix_mvp]
Vector 18 [_MainTex_ST]
Vector 17 [unity_FogParams]
Vector 12 [unity_SHAb]
Vector 11 [unity_SHAg]
Vector 10 [unity_SHAr]
Vector 15 [unity_SHBb]
Vector 14 [unity_SHBg]
Vector 13 [unity_SHBr]
Vector 16 [unity_SHC]
"vs_2_0
def c19, 1, 0, 0, 0
dcl_position v0
dcl_normal v1
dcl_texcoord v2
dp4 oPos.x, c0, v0
dp4 oPos.y, c1, v0
dp4 oPos.w, c3, v0
mad oT0.xy, v2, c18, c18.zwzw
dp4 oT2.x, c4, v0
dp4 oT2.y, c5, v0
dp4 oT2.z, c6, v0
mul r0.xyz, v1.y, c8
mad r0.xyz, c7, v1.x, r0
mad r0.xyz, c9, v1.z, r0
nrm r1.xyz, r0
mul r0.x, r1.y, r1.y
mad r0.x, r1.x, r1.x, -r0.x
mul r2, r1.yzzx, r1.xyzz
dp4 r3.x, c13, r2
dp4 r3.y, c14, r2
dp4 r3.z, c15, r2
mad r0.xyz, c16, r0.x, r3
mov r1.w, c19.x
dp4 r2.x, c10, r1
dp4 r2.y, c11, r1
dp4 r2.z, c12, r1
mov oT1.xyz, r1
add oT3.xyz, r0, r2
dp4 r0.x, c2, v0
mul r0.y, r0.x, c17.x
mov oPos.z, r0.x
mul r0.x, r0.y, -r0.y
exp oT4.x, r0.x

"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" "FOG_EXP2" "VERTEXLIGHT_ON" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Matrix 8 [_Object2World] 3
Matrix 11 [_World2Object] 3
Matrix 4 [glstate_matrix_mvp]
Vector 26 [_MainTex_ST]
Vector 17 [unity_4LightAtten0]
Vector 14 [unity_4LightPosX0]
Vector 15 [unity_4LightPosY0]
Vector 16 [unity_4LightPosZ0]
Vector 25 [unity_FogParams]
Vector 0 [unity_LightColor0]
Vector 1 [unity_LightColor1]
Vector 2 [unity_LightColor2]
Vector 3 [unity_LightColor3]
Vector 20 [unity_SHAb]
Vector 19 [unity_SHAg]
Vector 18 [unity_SHAr]
Vector 23 [unity_SHBb]
Vector 22 [unity_SHBg]
Vector 21 [unity_SHBr]
Vector 24 [unity_SHC]
"vs_2_0
def c27, 1, 0, 0, 0
dcl_position v0
dcl_normal v1
dcl_texcoord v2
dp4 oPos.x, c4, v0
dp4 oPos.y, c5, v0
dp4 oPos.w, c7, v0
mad oT0.xy, v2, c26, c26.zwzw
mul r0.xyz, v1.y, c12
mad r0.xyz, c11, v1.x, r0
mad r0.xyz, c13, v1.z, r0
nrm r1.xyz, r0
mul r0.x, r1.y, r1.y
mad r0.x, r1.x, r1.x, -r0.x
mul r2, r1.yzzx, r1.xyzz
dp4 r3.x, c21, r2
dp4 r3.y, c22, r2
dp4 r3.z, c23, r2
mad r0.xyz, c24, r0.x, r3
mov r1.w, c27.x
dp4 r2.x, c18, r1
dp4 r2.y, c19, r1
dp4 r2.z, c20, r1
add r0.xyz, r0, r2
dp4 r2.y, c9, v0
add r3, -r2.y, c15
mul r4, r1.y, r3
mul r3, r3, r3
dp4 r2.x, c8, v0
add r5, -r2.x, c14
mad r4, r5, r1.x, r4
mad r3, r5, r5, r3
dp4 r2.z, c10, v0
add r5, -r2.z, c16
mov oT2.xyz, r2
mad r2, r5, r1.z, r4
mov oT1.xyz, r1
mad r1, r5, r5, r3
rsq r3.x, r1.x
rsq r3.y, r1.y
rsq r3.z, r1.z
rsq r3.w, r1.w
mov r4.x, c27.x
mad r1, r1, c17, r4.x
mul r2, r2, r3
max r2, r2, c27.y
rcp r3.x, r1.x
rcp r3.y, r1.y
rcp r3.z, r1.z
rcp r3.w, r1.w
mul r1, r2, r3
mul r2.xyz, r1.y, c1
mad r2.xyz, c0, r1.x, r2
mad r1.xyz, c2, r1.z, r2
mad r1.xyz, c3, r1.w, r1
add oT3.xyz, r0, r1
dp4 r0.x, c6, v0
mul r0.y, r0.x, c25.x
mov oPos.z, r0.x
mul r0.x, r0.y, -r0.y
exp oT4.x, r0.x

"
}
}
Program "fp" {
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" }
Vector 2 [_Color]
Vector 1 [_LightColor0]
Vector 0 [_WorldSpaceLightPos0]
SetTexture 0 [_MainTex] 2D 0
"ps_2_0
def c3, 0, 0, 0, 0
dcl t0.xy
dcl_pp t1.xyz
dcl_pp t3.xyz
dcl_2d s0
texld r0, t0, s0
dp3_pp r1.w, t1, c0
max_pp r2.w, r1.w, c3.x
mul_pp r0, r0, c2
mul_pp r1.xyz, r0, c1
mul_pp r2.xyz, r0, t3
mad_pp r0.xyz, r1, r2.w, r2
mov_pp oC0, r0

"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "LIGHTMAP_OFF" "DIRLIGHTMAP_OFF" "DYNAMICLIGHTMAP_OFF" "FOG_EXP2" }
Vector 3 [_Color]
Vector 2 [_LightColor0]
Vector 0 [_WorldSpaceLightPos0]
Vector 1 [unity_FogColor]
SetTexture 0 [_MainTex] 2D 0
"ps_2_0
def c4, 0, 0, 0, 0
dcl t0.xy
dcl_pp t1.xyz
dcl_pp t3.xyz
dcl t4.x
dcl_2d s0
texld r0, t0, s0
dp3_pp r1.w, t1, c0
max_pp r2.w, r1.w, c4.x
mul_pp r0, r0, c3
mul_pp r1.xyz, r0, c2
mul_pp r2.xyz, r0, t3
mad_pp r1.xyz, r1, r2.w, r2
mov_sat r1.w, t4.x
lrp_pp r0.xyz, r1.w, r1, c1
mov_pp oC0, r0

"
}
}
 }
 Pass {
  Name "FORWARD"
  Tags { "LIGHTMODE"="ForwardAdd" "QUEUE"="Transparent" "IGNOREPROJECTOR"="true" "RenderType"="Transparent" }
  ZWrite Off
  Blend SrcAlpha One
  ColorMask RGB
  GpuProgramID 83441
Program "vp" {
SubProgram "d3d9 " {
Keywords { "POINT" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Matrix 4 [_Object2World] 3
Matrix 7 [_World2Object] 3
Matrix 0 [glstate_matrix_mvp]
Vector 10 [_MainTex_ST]
"vs_2_0
dcl_position v0
dcl_normal v1
dcl_texcoord v2
dp4 oPos.x, c0, v0
dp4 oPos.y, c1, v0
dp4 oPos.z, c2, v0
dp4 oPos.w, c3, v0
mad oT0.xy, v2, c10, c10.zwzw
dp4 oT2.x, c4, v0
dp4 oT2.y, c5, v0
dp4 oT2.z, c6, v0
mul r0.xyz, v1.y, c8
mad r0.xyz, c7, v1.x, r0
mad r0.xyz, c9, v1.z, r0
dp3 r0.w, r0, r0
rsq r0.w, r0.w
mul oT1.xyz, r0.w, r0

"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Matrix 4 [_Object2World] 3
Matrix 7 [_World2Object] 3
Matrix 0 [glstate_matrix_mvp]
Vector 10 [_MainTex_ST]
"vs_2_0
dcl_position v0
dcl_normal v1
dcl_texcoord v2
dp4 oPos.x, c0, v0
dp4 oPos.y, c1, v0
dp4 oPos.z, c2, v0
dp4 oPos.w, c3, v0
mad oT0.xy, v2, c10, c10.zwzw
dp4 oT2.x, c4, v0
dp4 oT2.y, c5, v0
dp4 oT2.z, c6, v0
mul r0.xyz, v1.y, c8
mad r0.xyz, c7, v1.x, r0
mad r0.xyz, c9, v1.z, r0
dp3 r0.w, r0, r0
rsq r0.w, r0.w
mul oT1.xyz, r0.w, r0

"
}
SubProgram "d3d9 " {
Keywords { "SPOT" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Matrix 4 [_Object2World] 3
Matrix 7 [_World2Object] 3
Matrix 0 [glstate_matrix_mvp]
Vector 10 [_MainTex_ST]
"vs_2_0
dcl_position v0
dcl_normal v1
dcl_texcoord v2
dp4 oPos.x, c0, v0
dp4 oPos.y, c1, v0
dp4 oPos.z, c2, v0
dp4 oPos.w, c3, v0
mad oT0.xy, v2, c10, c10.zwzw
dp4 oT2.x, c4, v0
dp4 oT2.y, c5, v0
dp4 oT2.z, c6, v0
mul r0.xyz, v1.y, c8
mad r0.xyz, c7, v1.x, r0
mad r0.xyz, c9, v1.z, r0
dp3 r0.w, r0, r0
rsq r0.w, r0.w
mul oT1.xyz, r0.w, r0

"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Matrix 4 [_Object2World] 3
Matrix 7 [_World2Object] 3
Matrix 0 [glstate_matrix_mvp]
Vector 10 [_MainTex_ST]
"vs_2_0
dcl_position v0
dcl_normal v1
dcl_texcoord v2
dp4 oPos.x, c0, v0
dp4 oPos.y, c1, v0
dp4 oPos.z, c2, v0
dp4 oPos.w, c3, v0
mad oT0.xy, v2, c10, c10.zwzw
dp4 oT2.x, c4, v0
dp4 oT2.y, c5, v0
dp4 oT2.z, c6, v0
mul r0.xyz, v1.y, c8
mad r0.xyz, c7, v1.x, r0
mad r0.xyz, c9, v1.z, r0
dp3 r0.w, r0, r0
rsq r0.w, r0.w
mul oT1.xyz, r0.w, r0

"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL_COOKIE" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Matrix 4 [_Object2World] 3
Matrix 7 [_World2Object] 3
Matrix 0 [glstate_matrix_mvp]
Vector 10 [_MainTex_ST]
"vs_2_0
dcl_position v0
dcl_normal v1
dcl_texcoord v2
dp4 oPos.x, c0, v0
dp4 oPos.y, c1, v0
dp4 oPos.z, c2, v0
dp4 oPos.w, c3, v0
mad oT0.xy, v2, c10, c10.zwzw
dp4 oT2.x, c4, v0
dp4 oT2.y, c5, v0
dp4 oT2.z, c6, v0
mul r0.xyz, v1.y, c8
mad r0.xyz, c7, v1.x, r0
mad r0.xyz, c9, v1.z, r0
dp3 r0.w, r0, r0
rsq r0.w, r0.w
mul oT1.xyz, r0.w, r0

"
}
SubProgram "d3d9 " {
Keywords { "POINT" "FOG_EXP2" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Matrix 4 [_Object2World] 3
Matrix 7 [_World2Object] 3
Matrix 0 [glstate_matrix_mvp]
Vector 11 [_MainTex_ST]
Vector 10 [unity_FogParams]
"vs_2_0
dcl_position v0
dcl_normal v1
dcl_texcoord v2
dp4 oPos.x, c0, v0
dp4 oPos.y, c1, v0
dp4 oPos.w, c3, v0
mad oT0.xy, v2, c11, c11.zwzw
dp4 oT2.x, c4, v0
dp4 oT2.y, c5, v0
dp4 oT2.z, c6, v0
mul r0.xyz, v1.y, c8
mad r0.xyz, c7, v1.x, r0
mad r0.xyz, c9, v1.z, r0
dp3 r0.w, r0, r0
rsq r0.w, r0.w
mul oT1.xyz, r0.w, r0
dp4 r0.x, c2, v0
mul r0.y, r0.x, c10.x
mov oPos.z, r0.x
mul r0.x, r0.y, -r0.y
exp oT3.x, r0.x

"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "FOG_EXP2" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Matrix 4 [_Object2World] 3
Matrix 7 [_World2Object] 3
Matrix 0 [glstate_matrix_mvp]
Vector 11 [_MainTex_ST]
Vector 10 [unity_FogParams]
"vs_2_0
dcl_position v0
dcl_normal v1
dcl_texcoord v2
dp4 oPos.x, c0, v0
dp4 oPos.y, c1, v0
dp4 oPos.w, c3, v0
mad oT0.xy, v2, c11, c11.zwzw
dp4 oT2.x, c4, v0
dp4 oT2.y, c5, v0
dp4 oT2.z, c6, v0
mul r0.xyz, v1.y, c8
mad r0.xyz, c7, v1.x, r0
mad r0.xyz, c9, v1.z, r0
dp3 r0.w, r0, r0
rsq r0.w, r0.w
mul oT1.xyz, r0.w, r0
dp4 r0.x, c2, v0
mul r0.y, r0.x, c10.x
mov oPos.z, r0.x
mul r0.x, r0.y, -r0.y
exp oT3.x, r0.x

"
}
SubProgram "d3d9 " {
Keywords { "SPOT" "FOG_EXP2" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Matrix 4 [_Object2World] 3
Matrix 7 [_World2Object] 3
Matrix 0 [glstate_matrix_mvp]
Vector 11 [_MainTex_ST]
Vector 10 [unity_FogParams]
"vs_2_0
dcl_position v0
dcl_normal v1
dcl_texcoord v2
dp4 oPos.x, c0, v0
dp4 oPos.y, c1, v0
dp4 oPos.w, c3, v0
mad oT0.xy, v2, c11, c11.zwzw
dp4 oT2.x, c4, v0
dp4 oT2.y, c5, v0
dp4 oT2.z, c6, v0
mul r0.xyz, v1.y, c8
mad r0.xyz, c7, v1.x, r0
mad r0.xyz, c9, v1.z, r0
dp3 r0.w, r0, r0
rsq r0.w, r0.w
mul oT1.xyz, r0.w, r0
dp4 r0.x, c2, v0
mul r0.y, r0.x, c10.x
mov oPos.z, r0.x
mul r0.x, r0.y, -r0.y
exp oT3.x, r0.x

"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" "FOG_EXP2" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Matrix 4 [_Object2World] 3
Matrix 7 [_World2Object] 3
Matrix 0 [glstate_matrix_mvp]
Vector 11 [_MainTex_ST]
Vector 10 [unity_FogParams]
"vs_2_0
dcl_position v0
dcl_normal v1
dcl_texcoord v2
dp4 oPos.x, c0, v0
dp4 oPos.y, c1, v0
dp4 oPos.w, c3, v0
mad oT0.xy, v2, c11, c11.zwzw
dp4 oT2.x, c4, v0
dp4 oT2.y, c5, v0
dp4 oT2.z, c6, v0
mul r0.xyz, v1.y, c8
mad r0.xyz, c7, v1.x, r0
mad r0.xyz, c9, v1.z, r0
dp3 r0.w, r0, r0
rsq r0.w, r0.w
mul oT1.xyz, r0.w, r0
dp4 r0.x, c2, v0
mul r0.y, r0.x, c10.x
mov oPos.z, r0.x
mul r0.x, r0.y, -r0.y
exp oT3.x, r0.x

"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL_COOKIE" "FOG_EXP2" }
Bind "vertex" Vertex
Bind "normal" Normal
Bind "texcoord" TexCoord0
Matrix 4 [_Object2World] 3
Matrix 7 [_World2Object] 3
Matrix 0 [glstate_matrix_mvp]
Vector 11 [_MainTex_ST]
Vector 10 [unity_FogParams]
"vs_2_0
dcl_position v0
dcl_normal v1
dcl_texcoord v2
dp4 oPos.x, c0, v0
dp4 oPos.y, c1, v0
dp4 oPos.w, c3, v0
mad oT0.xy, v2, c11, c11.zwzw
dp4 oT2.x, c4, v0
dp4 oT2.y, c5, v0
dp4 oT2.z, c6, v0
mul r0.xyz, v1.y, c8
mad r0.xyz, c7, v1.x, r0
mad r0.xyz, c9, v1.z, r0
dp3 r0.w, r0, r0
rsq r0.w, r0.w
mul oT1.xyz, r0.w, r0
dp4 r0.x, c2, v0
mul r0.y, r0.x, c10.x
mov oPos.z, r0.x
mul r0.x, r0.y, -r0.y
exp oT3.x, r0.x

"
}
}
Program "fp" {
SubProgram "d3d9 " {
Keywords { "POINT" }
Matrix 0 [_LightMatrix0] 3
Vector 5 [_Color]
Vector 4 [_LightColor0]
Vector 3 [_WorldSpaceLightPos0]
SetTexture 0 [_LightTexture0] 2D 0
SetTexture 1 [_MainTex] 2D 1
"ps_2_0
def c6, 1, 0, 0, 0
dcl t0.xy
dcl_pp t1.xyz
dcl t2.xyz
dcl_2d s0
dcl_2d s1
mov r0.xyz, t2
mov r0.w, c6.x
dp4 r1.x, c0, r0
dp4 r1.y, c1, r0
dp4 r1.z, c2, r0
dp3 r0.xy, r1, r1
texld_pp r0, r0, s0
texld r1, t0, s1
mul_pp r0.xyz, r0.x, c4
mul_pp r1, r1, c5
mul_pp r0.xyz, r0, r1
add r2.xyz, -t2, c3
nrm_pp r3.xyz, r2
dp3_pp r0.w, t1, r3
max_pp r2.x, r0.w, c6.y
mul_pp r1.xyz, r0, r2.x
mov_pp oC0, r1

"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" }
Vector 2 [_Color]
Vector 1 [_LightColor0]
Vector 0 [_WorldSpaceLightPos0]
SetTexture 0 [_MainTex] 2D 0
"ps_2_0
def c3, 0, 0, 0, 0
dcl t0.xy
dcl_pp t1.xyz
dcl_2d s0
texld r0, t0, s0
dp3_pp r1.w, t1, c0
max_pp r2.w, r1.w, c3.x
mul_pp r0, r0, c2
mul_pp r1.xyz, r0, c1
mul_pp r0.xyz, r2.w, r1
mov_pp oC0, r0

"
}
SubProgram "d3d9 " {
Keywords { "SPOT" }
Matrix 0 [_LightMatrix0]
Vector 6 [_Color]
Vector 5 [_LightColor0]
Vector 4 [_WorldSpaceLightPos0]
SetTexture 0 [_LightTexture0] 2D 0
SetTexture 1 [_LightTextureB0] 2D 1
SetTexture 2 [_MainTex] 2D 2
"ps_2_0
def c7, 1, 0.5, 0, 0
dcl t0.xy
dcl_pp t1.xyz
dcl t2.xyz
dcl_2d s0
dcl_2d s1
dcl_2d s2
mov r0.xyz, t2
mov r0.w, c7.x
dp4_pp r1.x, c0, r0
dp4_pp r1.y, c1, r0
dp4_pp r1.z, c2, r0
dp4_pp r1.w, c3, r0
rcp r1.w, r1.w
mad_pp r0.xy, r1, r1.w, c7.y
dp3 r1.xy, r1, r1
texld_pp r0, r0, s0
texld_pp r2, r1, s1
texld r3, t0, s2
mul r0.x, r0.w, r2.x
mul_pp r0.xyz, r0.x, c5
cmp_pp r0.xyz, -r1.z, c7.z, r0
mul_pp r1, r3, c6
mul_pp r0.xyz, r0, r1
add r2.xyz, -t2, c4
nrm_pp r3.xyz, r2
dp3_pp r0.w, t1, r3
max_pp r2.x, r0.w, c7.z
mul_pp r1.xyz, r0, r2.x
mov_pp oC0, r1

"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" }
Matrix 0 [_LightMatrix0] 3
Vector 5 [_Color]
Vector 4 [_LightColor0]
Vector 3 [_WorldSpaceLightPos0]
SetTexture 0 [_LightTexture0] CUBE 0
SetTexture 1 [_LightTextureB0] 2D 1
SetTexture 2 [_MainTex] 2D 2
"ps_2_0
def c6, 1, 0, 0, 0
dcl t0.xy
dcl_pp t1.xyz
dcl t2.xyz
dcl_cube s0
dcl_2d s1
dcl_2d s2
mov r0.xyz, t2
mov r0.w, c6.x
dp4 r1.x, c0, r0
dp4 r1.y, c1, r0
dp4 r1.z, c2, r0
dp3 r0.xy, r1, r1
texld r1, r1, s0
texld r0, r0, s1
texld r2, t0, s2
mul_pp r0.x, r1.w, r0.x
mul_pp r0.xyz, r0.x, c4
mul_pp r1, r2, c5
mul_pp r0.xyz, r0, r1
add r2.xyz, -t2, c3
nrm_pp r3.xyz, r2
dp3_pp r0.w, t1, r3
max_pp r2.x, r0.w, c6.y
mul_pp r1.xyz, r0, r2.x
mov_pp oC0, r1

"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL_COOKIE" }
Matrix 0 [_LightMatrix0] 2
Vector 4 [_Color]
Vector 3 [_LightColor0]
Vector 2 [_WorldSpaceLightPos0]
SetTexture 0 [_LightTexture0] 2D 0
SetTexture 1 [_MainTex] 2D 1
"ps_2_0
def c5, 1, 0, 0, 0
dcl t0.xy
dcl_pp t1.xyz
dcl t2.xyz
dcl_2d s0
dcl_2d s1
mov r0.xyz, t2
mov r0.w, c5.x
dp4 r1.x, c0, r0
dp4 r1.y, c1, r0
texld_pp r0, r1, s0
texld r1, t0, s1
mul_pp r0.xyz, r0.w, c3
mul_pp r1, r1, c4
mul_pp r0.xyz, r0, r1
dp3_pp r0.w, t1, c2
max_pp r2.w, r0.w, c5.y
mul_pp r1.xyz, r0, r2.w
mov_pp oC0, r1

"
}
SubProgram "d3d9 " {
Keywords { "POINT" "FOG_EXP2" }
Matrix 0 [_LightMatrix0] 3
Vector 5 [_Color]
Vector 4 [_LightColor0]
Vector 3 [_WorldSpaceLightPos0]
SetTexture 0 [_LightTexture0] 2D 0
SetTexture 1 [_MainTex] 2D 1
"ps_2_0
def c6, 1, 0, 0, 0
dcl t0.xy
dcl_pp t1.xyz
dcl t2.xyz
dcl t3.x
dcl_2d s0
dcl_2d s1
mov r0.xyz, t2
mov r0.w, c6.x
dp4 r1.x, c0, r0
dp4 r1.y, c1, r0
dp4 r1.z, c2, r0
dp3 r0.xy, r1, r1
texld_pp r0, r0, s0
texld r1, t0, s1
mul_pp r0.xyz, r0.x, c4
mul_pp r1, r1, c5
mul_pp r0.xyz, r0, r1
add r2.xyz, -t2, c3
nrm_pp r3.xyz, r2
dp3_pp r0.w, t1, r3
max_pp r2.x, r0.w, c6.y
mul_pp r0.xyz, r0, r2.x
mov_sat r0.w, t3.x
mul_pp r1.xyz, r0, r0.w
mov_pp oC0, r1

"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL" "FOG_EXP2" }
Vector 2 [_Color]
Vector 1 [_LightColor0]
Vector 0 [_WorldSpaceLightPos0]
SetTexture 0 [_MainTex] 2D 0
"ps_2_0
def c3, 0, 0, 0, 0
dcl t0.xy
dcl_pp t1.xyz
dcl t3.x
dcl_2d s0
texld r0, t0, s0
dp3_pp r1.w, t1, c0
max_pp r2.w, r1.w, c3.x
mul_pp r0, r0, c2
mul_pp r1.xyz, r0, c1
mul_pp r1.xyz, r2.w, r1
mov_sat r1.w, t3.x
mul_pp r0.xyz, r1, r1.w
mov_pp oC0, r0

"
}
SubProgram "d3d9 " {
Keywords { "SPOT" "FOG_EXP2" }
Matrix 0 [_LightMatrix0]
Vector 6 [_Color]
Vector 5 [_LightColor0]
Vector 4 [_WorldSpaceLightPos0]
SetTexture 0 [_LightTexture0] 2D 0
SetTexture 1 [_LightTextureB0] 2D 1
SetTexture 2 [_MainTex] 2D 2
"ps_2_0
def c7, 1, 0.5, 0, 0
dcl t0.xy
dcl_pp t1.xyz
dcl t2.xyz
dcl t3.x
dcl_2d s0
dcl_2d s1
dcl_2d s2
mov r0.xyz, t2
mov r0.w, c7.x
dp4_pp r1.x, c0, r0
dp4_pp r1.y, c1, r0
dp4_pp r1.z, c2, r0
dp4_pp r1.w, c3, r0
rcp r1.w, r1.w
mad_pp r0.xy, r1, r1.w, c7.y
dp3 r1.xy, r1, r1
texld_pp r0, r0, s0
texld_pp r2, r1, s1
texld r3, t0, s2
mul r0.x, r0.w, r2.x
mul_pp r0.xyz, r0.x, c5
cmp_pp r0.xyz, -r1.z, c7.z, r0
mul_pp r1, r3, c6
mul_pp r0.xyz, r0, r1
add r2.xyz, -t2, c4
nrm_pp r3.xyz, r2
dp3_pp r0.w, t1, r3
max_pp r2.x, r0.w, c7.z
mul_pp r0.xyz, r0, r2.x
mov_sat r0.w, t3.x
mul_pp r1.xyz, r0, r0.w
mov_pp oC0, r1

"
}
SubProgram "d3d9 " {
Keywords { "POINT_COOKIE" "FOG_EXP2" }
Matrix 0 [_LightMatrix0] 3
Vector 5 [_Color]
Vector 4 [_LightColor0]
Vector 3 [_WorldSpaceLightPos0]
SetTexture 0 [_LightTexture0] CUBE 0
SetTexture 1 [_LightTextureB0] 2D 1
SetTexture 2 [_MainTex] 2D 2
"ps_2_0
def c6, 1, 0, 0, 0
dcl t0.xy
dcl_pp t1.xyz
dcl t2.xyz
dcl t3.x
dcl_cube s0
dcl_2d s1
dcl_2d s2
mov r0.xyz, t2
mov r0.w, c6.x
dp4 r1.x, c0, r0
dp4 r1.y, c1, r0
dp4 r1.z, c2, r0
dp3 r0.xy, r1, r1
texld r1, r1, s0
texld r0, r0, s1
texld r2, t0, s2
mul_pp r0.x, r1.w, r0.x
mul_pp r0.xyz, r0.x, c4
mul_pp r1, r2, c5
mul_pp r0.xyz, r0, r1
add r2.xyz, -t2, c3
nrm_pp r3.xyz, r2
dp3_pp r0.w, t1, r3
max_pp r2.x, r0.w, c6.y
mul_pp r0.xyz, r0, r2.x
mov_sat r0.w, t3.x
mul_pp r1.xyz, r0, r0.w
mov_pp oC0, r1

"
}
SubProgram "d3d9 " {
Keywords { "DIRECTIONAL_COOKIE" "FOG_EXP2" }
Matrix 0 [_LightMatrix0] 2
Vector 4 [_Color]
Vector 3 [_LightColor0]
Vector 2 [_WorldSpaceLightPos0]
SetTexture 0 [_LightTexture0] 2D 0
SetTexture 1 [_MainTex] 2D 1
"ps_2_0
def c5, 1, 0, 0, 0
dcl t0.xy
dcl_pp t1.xyz
dcl t2.xyz
dcl t3.x
dcl_2d s0
dcl_2d s1
mov r0.xyz, t2
mov r0.w, c5.x
dp4 r1.x, c0, r0
dp4 r1.y, c1, r0
texld_pp r0, r1, s0
texld r1, t0, s1
mul_pp r0.xyz, r0.w, c3
mul_pp r1, r1, c4
mul_pp r0.xyz, r0, r1
dp3_pp r0.w, t1, c2
max_pp r2.w, r0.w, c5.y
mul_pp r0.xyz, r0, r2.w
mov_sat r0.w, t3.x
mul_pp r1.xyz, r0, r0.w
mov_pp oC0, r1

"
}
}
 }
}
Fallback "Legacy Shaders/Transparent/VertexLit"
}