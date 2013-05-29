// GLSL shader autogenerated by cg2glsl.py.
#if defined(VERTEX)
struct input_dummy {
    vec2 _video_size;
    vec2 _texture_size;
    vec2 _output_dummy_size;
    float _frame_count;
float _placeholder24;
};
struct pass_1 {
float _placeholder28;
};
vec4 _oPosition1;
uniform mat4 MVPMatrix;
vec4 _r0003;
attribute vec4 VertexCoord;
attribute vec4 TexCoord;
varying vec4 TEX0;
 

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
    _r0003.x = dot(MVPMatrix_[0], VertexCoord);
    _r0003.y = dot(MVPMatrix_[1], VertexCoord);
    _r0003.z = dot(MVPMatrix_[2], VertexCoord);
    _r0003.w = dot(MVPMatrix_[3], VertexCoord);
    _oPosition1 = _r0003;
    _oTexCoord = TexCoord.xy;
    gl_Position = _r0003;
    TEX0.xy = TexCoord.xy;
} 
#elif defined(FRAGMENT)
#ifdef GL_ES
precision mediump float;
#endif
struct input_dummy {
    vec2 _video_size;
    vec2 _texture_size;
    vec2 _output_dummy_size;
    float _frame_count;
float _placeholder29;
};
struct pass_1 {
float _placeholder33;
};
vec4 _ret_0;
float _TMP5;
float _TMP4;
float _TMP3;
vec3 _TMP6;
vec3 _TMP8;
vec3 _TMP7;
vec4 _TMP2;
vec4 _TMP1;
vec4 _TMP0;
pass_1 _PASS11;
input_dummy _IN1;
uniform sampler2D BACKGROUND;
vec3 _x0026;
vec3 _TMP27;
varying vec4 TEX0;
 
uniform sampler2D Texture;
uniform sampler2D Pass1Texture;
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
    vec4 _lcd_color;
    vec4 _input_dummy_color;
    vec4 _bg_color;
    vec4 _out_color;
    vec3 _TMP12;
    _TMP0 = texture2D(Texture, TEX0.xy);
    _lcd_color = vec4(float(_TMP0.x), float(_TMP0.y), float(_TMP0.z), float(_TMP0.w));
    _TMP1 = texture2D(Pass1Texture, TEX0.xy);
    _input_dummy_color = vec4(float(_TMP1.x), float(_TMP1.y), float(_TMP1.z), float(_TMP1.w));
    _TMP2 = texture2D(BACKGROUND, TEX0.xy);
    _bg_color = vec4(float(_TMP2.x), float(_TMP2.y), float(_TMP2.z), float(_TMP2.w));
    _TMP12 = _lcd_color.xyz*9.00390625E-01 + _input_dummy_color.xyz*9.96093750E-02;
    _out_color = vec4(_TMP12.x, _TMP12.y, _TMP12.z, _input_dummy_color.w);
    _TMP3 = -1.00000000E+00 + _bg_color.x*1.99902344E+00;
    _TMP4 = -1.00000000E+00 + _bg_color.y*1.99902344E+00;
    _TMP5 = -1.00000000E+00 + _bg_color.z*1.99902344E+00;
    _x0026 = vec3(_TMP3, _TMP4, _TMP5);
    _TMP7 = min(vec3( 1.00000000E+00, 1.00000000E+00, 1.00000000E+00), vec3(float(_x0026.x), float(_x0026.y), float(_x0026.z)));
    _TMP6 = vec3(float(_TMP7.x), float(_TMP7.y), float(_TMP7.z));
    _TMP8 = max(vec3( 0.00000000E+00, 0.00000000E+00, 0.00000000E+00), vec3(float(_TMP6.x), float(_TMP6.y), float(_TMP6.z)));
    _TMP27 = vec3(float(_TMP8.x), float(_TMP8.y), float(_TMP8.z));
    _out_color.xyz = _TMP27*float((_out_color.w == 0.00000000E+00)) + _out_color.xyz*float(!bool(float((_out_color.w == 0.00000000E+00))));
    _ret_0 = vec4(float(_out_color.x), float(_out_color.y), float(_out_color.z), float(_out_color.w));
    gl_FragColor = _ret_0;
    return;
} 
#endif