// GLSL shader autogenerated by cg2glsl.py.
#if defined(VERTEX)
varying     vec2 _one_texel;
varying     vec2 _dot_size;
struct input_dummy {
    vec2 _video_size;
    vec2 _texture_size;
    vec2 _output_dummy_size;
    float _frame_count;
float _placeholder31;
};
struct prev_0 {
float _placeholder35;
};
struct prev_1 {
float _placeholder39;
};
struct prev_2 {
float _placeholder43;
};
struct prev_3 {
float _placeholder47;
};
struct prev_4 {
float _placeholder51;
};
struct prev_5 {
float _placeholder55;
};
struct prev_6 {
float _placeholder59;
};
struct matrix_data {
    vec2 _dot_size;
    vec2 _one_texel;
};
vec4 _oPosition1;
float _TMP2;
matrix_data _oMatrixData1;
float _TMP1;
uniform mat4 MVPMatrix;
input_dummy _IN1;
vec4 _r0008;
float _x0018;
float _x0020;
attribute vec4 VertexCoord;
attribute vec4 TexCoord;
varying vec4 TEX0;
varying vec4 TEX1;
varying vec4 TEX2;
 

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
    vec2 _oTexCoord;
    matrix_data _TMP5;
    vec2 _TMP6;
    _r0008.x = dot(MVPMatrix_[0], VertexCoord);
    _r0008.y = dot(MVPMatrix_[1], VertexCoord);
    _r0008.z = dot(MVPMatrix_[2], VertexCoord);
    _r0008.w = dot(MVPMatrix_[3], VertexCoord);
    _x0018 = OutputSize.y/InputSize.y;
    _TMP1 = floor(_x0018);
    _TMP6 = OutputSize/(InputSize*_TMP1);
    _oPosition1 = _r0008/vec4(_TMP6.x, _TMP6.y, 1.00000000E+00, 1.00000000E+00);
    _oTexCoord = TexCoord.xy + 5.00000000E-01/OutputSize;
    _x0020 = OutputSize.y/InputSize.y;
    _TMP2 = floor(_x0020);
    _TMP5._dot_size = vec2(float((1.00000000E+00/TextureSize).x), float((1.00000000E+00/TextureSize).y));
    _TMP5._one_texel = vec2(float((1.00000000E+00/(TextureSize*_TMP2)).x), float((1.00000000E+00/(TextureSize*_TMP2)).y));
    _oMatrixData1._dot_size = _TMP5._dot_size;
    _oMatrixData1._one_texel = _TMP5._one_texel;
    gl_Position = _oPosition1;
    TEX0.xy = _oTexCoord;
    TEX1.xy = _TMP5._dot_size;
    TEX2.xy = _TMP5._one_texel;
} 
#elif defined(FRAGMENT)
#ifdef GL_ES
precision mediump float;
#endif
varying     vec2 _one_texel;
varying     vec2 _dot_size;
struct input_dummy {
    vec2 _video_size;
    vec2 _texture_size;
    vec2 _output_dummy_size;
    float _frame_count;
float _placeholder43;
};
struct prev_0 {
float _placeholder47;
};
struct prev_1 {
float _placeholder51;
};
struct prev_2 {
float _placeholder55;
};
struct prev_3 {
float _placeholder59;
};
struct prev_4 {
float _placeholder63;
};
struct prev_5 {
float _placeholder67;
};
struct prev_6 {
float _placeholder71;
};
struct matrix_data {
    vec2 _dot_size;
    vec2 _one_texel;
};
vec4 _ret_0;
vec4 _TMP25;
vec3 _TMP23;
vec4 _TMP22;
vec3 _TMP20;
vec4 _TMP19;
vec3 _TMP17;
vec4 _TMP16;
vec3 _TMP14;
vec4 _TMP13;
vec3 _TMP11;
vec4 _TMP10;
vec3 _TMP8;
vec4 _TMP7;
vec3 _TMP6;
vec4 _TMP5;
vec3 _TMP4;
vec4 _TMP3;
bool _TMP2;
float _TMP0;
float _TMP29;
float _TMP28;
float _TMP27;
float _TMP26;
input_dummy _IN1;
prev_0 _PREV7;
prev_1 _PREV11;
prev_2 _PREV21;
prev_3 _PREV31;
prev_4 _PREV41;
prev_5 _PREV51;
prev_6 _PREV61;
uniform sampler2D COLOR_PALETTE;
float _b0042;
float _c0042;
float _a0044;
float _b0050;
float _c0050;
float _a0052;
bvec2 _a0058;
vec3 _a0062;
vec3 _a0066;
vec3 _a0070;
vec3 _a0074;
vec3 _a0078;
vec3 _a0082;
vec3 _a0086;
vec3 _a0090;
varying vec4 TEX0;
varying vec4 TEX1;
varying vec4 TEX2;
 
uniform sampler2D Texture;
uniform sampler2D Prev6Texture;
uniform sampler2D Prev5Texture;
uniform sampler2D Prev4Texture;
uniform sampler2D Prev3Texture;
uniform sampler2D Prev2Texture;
uniform sampler2D Prev1Texture;
uniform sampler2D PrevTexture;
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
    int _is_on_dot;
    vec3 _input_dummy_rgb;
    vec4 _out_color;
    _b0042 = float(TEX1.x);
    _a0044 = TEX0.x/_b0042;
    _TMP26 = abs(_a0044);
    _TMP27 = fract(_TMP26);
    _TMP28 = abs(_b0042);
    _c0042 = _TMP27*_TMP28;
    if (TEX0.x < 0.00000000E+00) { 
        _TMP29 = -_c0042;
    } else {
        _TMP29 = _c0042;
    } 
    _TMP0 = _TMP29;
    _b0050 = float(TEX1.y);
    _a0052 = TEX0.y/_b0050;
    _TMP26 = abs(_a0052);
    _TMP27 = fract(_TMP26);
    _TMP28 = abs(_b0050);
    _c0050 = _TMP27*_TMP28;
    if (TEX0.y < 0.00000000E+00) { 
        _TMP29 = -_c0050;
    } else {
        _TMP29 = _c0050;
    } 
    _a0058 = bvec2(bool(int((_TMP0 > float(TEX2.x)))), bool(int((_TMP29 > float(TEX2.y)))));
    _TMP2 = _a0058.x && _a0058.y;
    _is_on_dot = int(_TMP2);
    _TMP3 = texture2D(Texture, TEX0.xy);
    _a0062 = 1.00000000E+00 - _TMP3.xyz;
    _TMP4 = abs(_a0062);
    _input_dummy_rgb = vec3(float(_TMP4.x), float(_TMP4.y), float(_TMP4.z));
    _TMP5 = texture2D(PrevTexture, TEX0.xy);
    _a0066 = 1.00000000E+00 - _TMP5.xyz;
    _TMP6 = abs(_a0066);
    _input_dummy_rgb = vec3(float((vec3(float(_input_dummy_rgb.x), float(_input_dummy_rgb.y), float(_input_dummy_rgb.z)) + (_TMP6 - vec3(float(_input_dummy_rgb.x), float(_input_dummy_rgb.y), float(_input_dummy_rgb.z)))*3.33000004E-01).x), float((vec3(float(_input_dummy_rgb.x), float(_input_dummy_rgb.y), float(_input_dummy_rgb.z)) + (_TMP6 - vec3(float(_input_dummy_rgb.x), float(_input_dummy_rgb.y), float(_input_dummy_rgb.z)))*3.33000004E-01).y), float((vec3(float(_input_dummy_rgb.x), float(_input_dummy_rgb.y), float(_input_dummy_rgb.z)) + (_TMP6 - vec3(float(_input_dummy_rgb.x), float(_input_dummy_rgb.y), float(_input_dummy_rgb.z)))*3.33000004E-01).z));
    _TMP7 = texture2D(Prev1Texture, TEX0.xy);
    _a0070 = 1.00000000E+00 - _TMP7.xyz;
    _TMP8 = abs(_a0070);
    _input_dummy_rgb = vec3(float((vec3(float(_input_dummy_rgb.x), float(_input_dummy_rgb.y), float(_input_dummy_rgb.z)) + (_TMP8 - vec3(float(_input_dummy_rgb.x), float(_input_dummy_rgb.y), float(_input_dummy_rgb.z)))*1.10889003E-01).x), float((vec3(float(_input_dummy_rgb.x), float(_input_dummy_rgb.y), float(_input_dummy_rgb.z)) + (_TMP8 - vec3(float(_input_dummy_rgb.x), float(_input_dummy_rgb.y), float(_input_dummy_rgb.z)))*1.10889003E-01).y), float((vec3(float(_input_dummy_rgb.x), float(_input_dummy_rgb.y), float(_input_dummy_rgb.z)) + (_TMP8 - vec3(float(_input_dummy_rgb.x), float(_input_dummy_rgb.y), float(_input_dummy_rgb.z)))*1.10889003E-01).z));
    _TMP10 = texture2D(Prev2Texture, TEX0.xy);
    _a0074 = 1.00000000E+00 - _TMP10.xyz;
    _TMP11 = abs(_a0074);
    _input_dummy_rgb = vec3(float((vec3(float(_input_dummy_rgb.x), float(_input_dummy_rgb.y), float(_input_dummy_rgb.z)) + (_TMP11 - vec3(float(_input_dummy_rgb.x), float(_input_dummy_rgb.y), float(_input_dummy_rgb.z)))*3.69260386E-02).x), float((vec3(float(_input_dummy_rgb.x), float(_input_dummy_rgb.y), float(_input_dummy_rgb.z)) + (_TMP11 - vec3(float(_input_dummy_rgb.x), float(_input_dummy_rgb.y), float(_input_dummy_rgb.z)))*3.69260386E-02).y), float((vec3(float(_input_dummy_rgb.x), float(_input_dummy_rgb.y), float(_input_dummy_rgb.z)) + (_TMP11 - vec3(float(_input_dummy_rgb.x), float(_input_dummy_rgb.y), float(_input_dummy_rgb.z)))*3.69260386E-02).z));
    _TMP13 = texture2D(Prev3Texture, TEX0.xy);
    _a0078 = 1.00000000E+00 - _TMP13.xyz;
    _TMP14 = abs(_a0078);
    _input_dummy_rgb = vec3(float((vec3(float(_input_dummy_rgb.x), float(_input_dummy_rgb.y), float(_input_dummy_rgb.z)) + (_TMP14 - vec3(float(_input_dummy_rgb.x), float(_input_dummy_rgb.y), float(_input_dummy_rgb.z)))*1.22963712E-02).x), float((vec3(float(_input_dummy_rgb.x), float(_input_dummy_rgb.y), float(_input_dummy_rgb.z)) + (_TMP14 - vec3(float(_input_dummy_rgb.x), float(_input_dummy_rgb.y), float(_input_dummy_rgb.z)))*1.22963712E-02).y), float((vec3(float(_input_dummy_rgb.x), float(_input_dummy_rgb.y), float(_input_dummy_rgb.z)) + (_TMP14 - vec3(float(_input_dummy_rgb.x), float(_input_dummy_rgb.y), float(_input_dummy_rgb.z)))*1.22963712E-02).z));
    _TMP16 = texture2D(Prev4Texture, TEX0.xy);
    _a0082 = 1.00000000E+00 - _TMP16.xyz;
    _TMP17 = abs(_a0082);
    _input_dummy_rgb = vec3(float((vec3(float(_input_dummy_rgb.x), float(_input_dummy_rgb.y), float(_input_dummy_rgb.z)) + (_TMP17 - vec3(float(_input_dummy_rgb.x), float(_input_dummy_rgb.y), float(_input_dummy_rgb.z)))*4.09469148E-03).x), float((vec3(float(_input_dummy_rgb.x), float(_input_dummy_rgb.y), float(_input_dummy_rgb.z)) + (_TMP17 - vec3(float(_input_dummy_rgb.x), float(_input_dummy_rgb.y), float(_input_dummy_rgb.z)))*4.09469148E-03).y), float((vec3(float(_input_dummy_rgb.x), float(_input_dummy_rgb.y), float(_input_dummy_rgb.z)) + (_TMP17 - vec3(float(_input_dummy_rgb.x), float(_input_dummy_rgb.y), float(_input_dummy_rgb.z)))*4.09469148E-03).z));
    _TMP19 = texture2D(Prev5Texture, TEX0.xy);
    _a0086 = 1.00000000E+00 - _TMP19.xyz;
    _TMP20 = abs(_a0086);
    _input_dummy_rgb = vec3(float((vec3(float(_input_dummy_rgb.x), float(_input_dummy_rgb.y), float(_input_dummy_rgb.z)) + (_TMP20 - vec3(float(_input_dummy_rgb.x), float(_input_dummy_rgb.y), float(_input_dummy_rgb.z)))*1.36353227E-03).x), float((vec3(float(_input_dummy_rgb.x), float(_input_dummy_rgb.y), float(_input_dummy_rgb.z)) + (_TMP20 - vec3(float(_input_dummy_rgb.x), float(_input_dummy_rgb.y), float(_input_dummy_rgb.z)))*1.36353227E-03).y), float((vec3(float(_input_dummy_rgb.x), float(_input_dummy_rgb.y), float(_input_dummy_rgb.z)) + (_TMP20 - vec3(float(_input_dummy_rgb.x), float(_input_dummy_rgb.y), float(_input_dummy_rgb.z)))*1.36353227E-03).z));
    _TMP22 = texture2D(Prev6Texture, TEX0.xy);
    _a0090 = 1.00000000E+00 - _TMP22.xyz;
    _TMP23 = abs(_a0090);
    _input_dummy_rgb = vec3(float((vec3(float(_input_dummy_rgb.x), float(_input_dummy_rgb.y), float(_input_dummy_rgb.z)) + (_TMP23 - vec3(float(_input_dummy_rgb.x), float(_input_dummy_rgb.y), float(_input_dummy_rgb.z)))*4.54056280E-04).x), float((vec3(float(_input_dummy_rgb.x), float(_input_dummy_rgb.y), float(_input_dummy_rgb.z)) + (_TMP23 - vec3(float(_input_dummy_rgb.x), float(_input_dummy_rgb.y), float(_input_dummy_rgb.z)))*4.54056280E-04).y), float((vec3(float(_input_dummy_rgb.x), float(_input_dummy_rgb.y), float(_input_dummy_rgb.z)) + (_TMP23 - vec3(float(_input_dummy_rgb.x), float(_input_dummy_rgb.y), float(_input_dummy_rgb.z)))*4.54056280E-04).z));
    _TMP25 = texture2D(COLOR_PALETTE, vec2( 7.50000000E-01, 5.00000000E-01));
    _out_color = vec4(float(_TMP25.x), float(_TMP25.y), float(_TMP25.z), float((float((_input_dummy_rgb.x + _input_dummy_rgb.y + _input_dummy_rgb.z))/3.00000000E+00 + float((float(_is_on_dot)*1.00000001E-01)))));
    _out_color.w = _out_color.w*float(_is_on_dot);
    _ret_0 = vec4(float(_out_color.x), float(_out_color.y), float(_out_color.z), float(_out_color.w));
    gl_FragColor = _ret_0;
    return;
} 
#endif