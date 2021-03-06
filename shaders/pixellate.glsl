// GLSL shader autogenerated by cg2glsl.py.
#if defined(VERTEX)

#if __VERSION__ >= 130
#define COMPAT_VARYING out
#define COMPAT_ATTRIBUTE in
#define COMPAT_TEXTURE texture
#else
#define COMPAT_VARYING varying 
#define COMPAT_ATTRIBUTE attribute 
#define COMPAT_TEXTURE texture2D
#endif

#ifdef GL_ES
#define COMPAT_PRECISION mediump
#else
#define COMPAT_PRECISION
#endif

COMPAT_VARYING     float _frame_rotation;
struct input_dummy {
    vec2 _video_size;
    vec2 _texture_size;
    vec2 _output_dummy_size;
    float _frame_count;
    float _frame_direction;
    float _frame_rotation;
};
vec4 _oPosition1;
vec4 _r0005;
COMPAT_ATTRIBUTE vec4 VertexCoord;
COMPAT_ATTRIBUTE vec4 TexCoord;
COMPAT_VARYING vec4 TEX0;
 
uniform mat4 MVPMatrix;
uniform COMPAT_PRECISION int FrameDirection;
uniform COMPAT_PRECISION int FrameCount;
uniform COMPAT_PRECISION vec2 OutputSize;
uniform COMPAT_PRECISION vec2 TextureSize;
uniform COMPAT_PRECISION vec2 InputSize;
void main()
{
    vec2 _oTex;
    _r0005 = VertexCoord.x*MVPMatrix[0];
    _r0005 = _r0005 + VertexCoord.y*MVPMatrix[1];
    _r0005 = _r0005 + VertexCoord.z*MVPMatrix[2];
    _r0005 = _r0005 + VertexCoord.w*MVPMatrix[3];
    _oPosition1 = _r0005;
    _oTex = TexCoord.xy;
    gl_Position = _r0005;
    TEX0.xy = TexCoord.xy;
} 
#elif defined(FRAGMENT)

#if __VERSION__ >= 130
#define COMPAT_VARYING in
#define COMPAT_TEXTURE texture
out vec4 FragColor;
#else
#define COMPAT_VARYING varying
#define FragColor gl_FragColor
#define COMPAT_TEXTURE texture2D
#endif

#ifdef GL_ES
#ifdef GL_FRAGMENT_PRECISION_HIGH
precision highp float;
#else
precision mediump float;
#endif
#define COMPAT_PRECISION mediump
#else
#define COMPAT_PRECISION
#endif

COMPAT_VARYING     float _frame_rotation;
struct input_dummy {
    vec2 _video_size;
    vec2 _texture_size;
    vec2 _output_dummy_size;
    float _frame_count;
    float _frame_direction;
    float _frame_rotation;
};
vec4 _ret_0;
vec2 _TMP11;
vec4 _TMP9;
vec2 _TMP8;
vec4 _TMP7;
vec2 _TMP6;
vec4 _TMP5;
vec2 _TMP4;
vec4 _TMP3;
vec2 _TMP2;
float _TMP1;
float _TMP0;
uniform sampler2D Texture;
input_dummy _IN1;
float _a0016;
float _a0018;
vec2 _x0020;
vec2 _c0022;
vec2 _x0024;
vec2 _c0026;
vec2 _x0028;
vec2 _c0030;
vec2 _x0032;
vec2 _c0034;
vec2 _TMP35;
vec2 _a0036;
vec2 _x0038;
vec2 _TMP39;
vec2 _b0040;
vec2 _x0040;
vec2 _a0040;
COMPAT_VARYING vec4 TEX0;
 
uniform COMPAT_PRECISION int FrameDirection;
uniform COMPAT_PRECISION int FrameCount;
uniform COMPAT_PRECISION vec2 OutputSize;
uniform COMPAT_PRECISION vec2 TextureSize;
uniform COMPAT_PRECISION vec2 InputSize;
void main()
{
    vec2 _texelSize;
    vec2 _range;
    float _left;
    float _top;
    float _right;
    float _bottom;
    float _totalArea;
    vec3 _averageColor;
    _texelSize = 1.00000000E+00/TextureSize;
    _a0016 = InputSize.x/(OutputSize.x*TextureSize.x);
    _TMP0 = abs(_a0016);
    _a0018 = InputSize.y/(OutputSize.y*TextureSize.y);
    _TMP1 = abs(_a0018);
    _range = vec2(_TMP0, _TMP1);
    _range = (_range/2.00000000E+00)*9.99000013E-01;
    _left = TEX0.x - _range.x;
    _top = TEX0.y + _range.y;
    _right = TEX0.x + _range.x;
    _bottom = TEX0.y - _range.y;
    _x0020 = vec2(_left, _top)/_texelSize;
    _TMP2 = floor(_x0020);
    _c0022 = (_TMP2 + 5.00000000E-01)*_texelSize;
    _TMP3 = COMPAT_TEXTURE(Texture, _c0022);
    _x0024 = vec2(_right, _bottom)/_texelSize;
    _TMP4 = floor(_x0024);
    _c0026 = (_TMP4 + 5.00000000E-01)*_texelSize;
    _TMP5 = COMPAT_TEXTURE(Texture, _c0026);
    _x0028 = vec2(_left, _bottom)/_texelSize;
    _TMP6 = floor(_x0028);
    _c0030 = (_TMP6 + 5.00000000E-01)*_texelSize;
    _TMP7 = COMPAT_TEXTURE(Texture, _c0030);
    _x0032 = vec2(_right, _top)/_texelSize;
    _TMP8 = floor(_x0032);
    _c0034 = (_TMP8 + 5.00000000E-01)*_texelSize;
    _TMP9 = COMPAT_TEXTURE(Texture, _c0034);
    _a0036 = TEX0.xy/_texelSize;
    _x0038 = _a0036 + 5.00000000E-01;
    _TMP35 = floor(_x0038);
    _x0040 = _TMP35*_texelSize;
    _a0040 = vec2(_left, _bottom);
    _b0040 = vec2(_right, _top);
    _TMP11 = min(_b0040, _x0040);
    _TMP39 = max(_a0040, _TMP11);
    _totalArea = 4.00000000E+00*_range.x*_range.y;
    _averageColor = (((_TMP39.x - _left)*(_top - _TMP39.y))/_totalArea)*_TMP3.xyz;
    _averageColor = _averageColor + (((_right - _TMP39.x)*(_TMP39.y - _bottom))/_totalArea)*_TMP5.xyz;
    _averageColor = _averageColor + (((_TMP39.x - _left)*(_TMP39.y - _bottom))/_totalArea)*_TMP7.xyz;
    _averageColor = _averageColor + (((_right - _TMP39.x)*(_top - _TMP39.y))/_totalArea)*_TMP9.xyz;
    _ret_0 = vec4(_averageColor.x, _averageColor.y, _averageColor.z, 1.00000000E+00);
    FragColor = _ret_0;
    return;
} 
#endif
