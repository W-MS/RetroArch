// GLSL shader autogenerated by cg2glsl.py.
#if defined(VERTEX)
varying     float _frame_rotation;
varying     vec4 VARc21_22;
varying     vec4 VARc12_20;
varying     vec2 VARc11;
varying     vec4 VARc02_10;
varying     vec4 VARc00_01;
struct tex_coords {
    vec4 VARc00_01;
    vec4 VARc02_10;
    vec2 VARc11;
    vec4 VARc12_20;
    vec4 VARc21_22;
};
struct input_dummy {
    vec2 _video_size;
    vec2 _texture_size;
    vec2 _output_dummy_size;
    float _frame_count;
    float _frame_direction;
    float _frame_rotation;
};
vec4 _oPosition1;
tex_coords _coords1;
uniform mat4 MVPMatrix;
input_dummy _IN1;
vec4 _r0012;
attribute vec4 VertexCoord;
attribute vec4 COLOR;
varying vec4 COL0;
attribute vec4 TexCoord;
 

         mat4 transpose_(mat4 matrix)
         {
            mat4 ret;
            for (int i = 0; i < 4; i++)
               for (int j = 0; j < 4; j++)
                  ret[i][j] = matrix[j][i];

            return ret;
         }
         
uniform int FrameDirection;
uniform int FrameCount;
#ifdef GL_ES
uniform mediump vec2 OutputSize;
uniform mediump vec2 TextureSize;
uniform mediump vec2 InputSize;
#else
uniform vec2 OutputSize;
uniform vec2 TextureSize;
uniform vec2 InputSize;
#endif
void main()
{
    mat4 MVPMatrix_ = transpose_(MVPMatrix);
    vec4 _oColor;
    vec2 _delta;
    vec2 _TMP2;
    vec2 _TMP3;
    vec2 _TMP4;
    vec2 _TMP5;
    vec2 _TMP6;
    vec2 _TMP7;
    vec2 _TMP8;
    vec2 _TMP9;
    tex_coords _TMP10;
    _r0012.x = dot(MVPMatrix_[0], VertexCoord);
    _r0012.y = dot(MVPMatrix_[1], VertexCoord);
    _r0012.z = dot(MVPMatrix_[2], VertexCoord);
    _r0012.w = dot(MVPMatrix_[3], VertexCoord);
    _oPosition1 = _r0012;
    _oColor = COLOR;
    _delta = 5.00000000E-01/TextureSize;
    _TMP8 = TexCoord.xy + vec2(-_delta.x, -_delta.y);
    _TMP9 = TexCoord.xy + vec2(-_delta.x, 0.00000000E+00);
    _TMP10.VARc00_01 = vec4(_TMP8.x, _TMP8.y, _TMP9.x, _TMP9.y);
    _TMP6 = TexCoord.xy + vec2(-_delta.x, _delta.y);
    _TMP7 = TexCoord.xy + vec2(0.00000000E+00, -_delta.y);
    _TMP10.VARc02_10 = vec4(_TMP6.x, _TMP6.y, _TMP7.x, _TMP7.y);
    _TMP4 = TexCoord.xy + vec2(0.00000000E+00, _delta.y);
    _TMP5 = TexCoord.xy + vec2(_delta.x, -_delta.y);
    _TMP10.VARc12_20 = vec4(_TMP4.x, _TMP4.y, _TMP5.x, _TMP5.y);
    _TMP2 = TexCoord.xy + vec2(_delta.x, 0.00000000E+00);
    _TMP3 = TexCoord.xy + vec2(_delta.x, _delta.y);
    _TMP10.VARc21_22 = vec4(_TMP2.x, _TMP2.y, _TMP3.x, _TMP3.y);
    VARc00_01 = _TMP10.VARc00_01;
    VARc02_10 = _TMP10.VARc02_10;
    VARc11 = TexCoord.xy;
    VARc12_20 = _TMP10.VARc12_20;
    VARc21_22 = _TMP10.VARc21_22;
    gl_Position = _r0012;
    COL0 = COLOR;
} 
#elif defined(FRAGMENT)
#ifdef GL_ES
precision mediump float;
#endif
varying     float _frame_rotation;
varying     vec4 VARc21_22;
varying     vec4 VARc12_20;
varying     vec2 VARc11;
varying     vec4 VARc02_10;
varying     vec4 VARc00_01;
struct tex_coords {
    vec4 VARc00_01;
    vec4 VARc02_10;
    vec2 VARc11;
    vec4 VARc12_20;
    vec4 VARc21_22;
};
struct input_dummy {
    vec2 _video_size;
    vec2 _texture_size;
    vec2 _output_dummy_size;
    float _frame_count;
    float _frame_direction;
    float _frame_rotation;
};
vec4 _ret_0;
vec3 _TMP18;
vec3 _TMP17;
vec3 _TMP15;
vec3 _TMP14;
float _TMP13;
float _TMP12;
float _TMP11;
float _TMP10;
float _TMP9;
vec4 _TMP8;
vec4 _TMP7;
vec4 _TMP6;
vec4 _TMP5;
vec4 _TMP3;
vec4 _TMP2;
vec4 _TMP1;
vec4 _TMP0;
tex_coords _co1;
input_dummy _IN1;
uniform sampler2D Texture;
float _x0042;
float _x0046;
float _x0050;
float _x0054;
float _x0058;
vec3 _a0064;
vec3 _diff0066;
vec3 _TMP67;
vec3 _x0074;
vec3 _TMP75;
 
uniform int FrameDirection;
uniform int FrameCount;
#ifdef GL_ES
uniform mediump vec2 OutputSize;
uniform mediump vec2 TextureSize;
uniform mediump vec2 InputSize;
#else
uniform vec2 OutputSize;
uniform vec2 TextureSize;
uniform vec2 InputSize;
#endif
void main()
{
    vec3 _first;
    vec3 _second;
    vec3 _mid_horiz;
    vec3 _mid_vert;
    vec3 _res;
    vec3 _final;
    _TMP0 = texture2D(Texture, VARc00_01.xy);
    _TMP1 = texture2D(Texture, VARc00_01.zw);
    _TMP2 = texture2D(Texture, VARc02_10.xy);
    _TMP3 = texture2D(Texture, VARc02_10.zw);
    _TMP5 = texture2D(Texture, VARc12_20.xy);
    _TMP6 = texture2D(Texture, VARc12_20.zw);
    _TMP7 = texture2D(Texture, VARc21_22.xy);
    _TMP8 = texture2D(Texture, VARc21_22.zw);
    _x0042 = VARc11.x*TextureSize.x + 5.00000000E-01;
    _TMP9 = fract(_x0042);
    _first = _TMP0.xyz + _TMP9*(_TMP6.xyz - _TMP0.xyz);
    _x0046 = VARc11.x*TextureSize.x + 5.00000000E-01;
    _TMP10 = fract(_x0046);
    _second = _TMP2.xyz + _TMP10*(_TMP8.xyz - _TMP2.xyz);
    _x0050 = VARc11.x*TextureSize.x + 5.00000000E-01;
    _TMP11 = fract(_x0050);
    _mid_horiz = _TMP1.xyz + _TMP11*(_TMP7.xyz - _TMP1.xyz);
    _x0054 = VARc11.y*TextureSize.y + 5.00000000E-01;
    _TMP12 = fract(_x0054);
    _mid_vert = _TMP3.xyz + _TMP12*(_TMP5.xyz - _TMP3.xyz);
    _x0058 = VARc11.y*TextureSize.y + 5.00000000E-01;
    _TMP13 = fract(_x0058);
    _res = _first + _TMP13*(_second - _first);
    _TMP14 = _mid_horiz + 5.00000000E-01*(_mid_vert - _mid_horiz);
    _a0064 = _res - _TMP14;
    _TMP15 = abs(_a0064);
    _final = 2.59999990E-01*(_res + _mid_horiz + _mid_vert) + 3.50000000E+00*_TMP15;
    _diff0066 = _final - vec3( 8.00000012E-01, 8.00000012E-01, 8.00000012E-01);
    _TMP17 = min(vec3( 1.00000000E+02, 1.00000000E+02, 1.00000000E+02), _diff0066);
    _TMP67 = max(vec3( 0.00000000E+00, 0.00000000E+00, 0.00000000E+00), _TMP17);
    _x0074 = _final - _TMP67*8.00000012E-01;
    _TMP18 = min(vec3( 1.00000000E+00, 1.00000000E+00, 1.00000000E+00), _x0074);
    _TMP75 = max(vec3( 0.00000000E+00, 0.00000000E+00, 0.00000000E+00), _TMP18);
    _ret_0 = vec4(_TMP75.x, _TMP75.y, _TMP75.z, 1.00000000E+00);
    gl_FragColor = _ret_0;
    return;
} 
#endif