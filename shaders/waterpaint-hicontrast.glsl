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

COMPAT_VARYING vec4 VARc21_22;
COMPAT_VARYING vec4 VARc12_20;
COMPAT_VARYING vec2 VARc11;
COMPAT_VARYING vec4 VARc02_10;
COMPAT_VARYING vec4 VARc00_01;

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
};

vec4 _oPosition1;
tex_coords _coords1;
uniform mat4 MVPMatrix;
input_dummy _IN1;
vec4 _r0012;
COMPAT_ATTRIBUTE vec4 VertexCoord;
COMPAT_ATTRIBUTE vec4 COLOR;
COMPAT_VARYING vec4 COL0;
COMPAT_ATTRIBUTE vec4 TexCoord;

         mat4 transpose_(mat4 matrix)
         {
            mat4 ret;
            for (int i = 0; i != 4; i++)
               for (int j = 0; j != 4; j++)
                  ret[i][j] = matrix[j][i];

            return ret;
         }
         
uniform COMPAT_PRECISION int FrameDirection;
uniform COMPAT_PRECISION int FrameCount;
uniform COMPAT_PRECISION vec2 OutputSize;
uniform COMPAT_PRECISION vec2 TextureSize;
uniform COMPAT_PRECISION vec2 InputSize;

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
    _delta = 5.00000000E-001/TextureSize;
    _TMP8 = TexCoord.xy + vec2(-_delta.x, -_delta.y);
    _TMP9 = TexCoord.xy + vec2(-_delta.x, 0.00000000E+000);
    _TMP10.VARc00_01 = vec4(_TMP8.x, _TMP8.y, _TMP9.x, _TMP9.y);
    _TMP6 = TexCoord.xy + vec2(-_delta.x, _delta.y);
    _TMP7 = TexCoord.xy + vec2(0.00000000E+000, -_delta.y);
    _TMP10.VARc02_10 = vec4(_TMP6.x, _TMP6.y, _TMP7.x, _TMP7.y);
    _TMP4 = TexCoord.xy + vec2(0.00000000E+000, _delta.y);
    _TMP5 = TexCoord.xy + vec2(_delta.x, -_delta.y);
    _TMP10.VARc12_20 = vec4(_TMP4.x, _TMP4.y, _TMP5.x, _TMP5.y);
    _TMP2 = TexCoord.xy + vec2(_delta.x, 0.00000000E+000);
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

COMPAT_VARYING     vec4 VARc21_22;
COMPAT_VARYING     vec4 VARc12_20;
COMPAT_VARYING     vec2 VARc11;
COMPAT_VARYING     vec4 VARc02_10;
COMPAT_VARYING     vec4 VARc00_01;

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
};

vec3 _TMP15;
vec4 _TMP16;
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
float _x0040;
float _x0044;
float _x0048;
float _x0052;
float _x0056;
vec3 _a0062;
vec4 _x0064;
vec4 _TMP65;

uniform COMPAT_PRECISION int FrameDirection;
uniform COMPAT_PRECISION int FrameCount;
uniform COMPAT_PRECISION vec2 OutputSize;
uniform COMPAT_PRECISION vec2 TextureSize;
uniform COMPAT_PRECISION vec2 InputSize;

void main()
{
    vec3 _first;
    vec3 _second;
    vec3 _mid_horiz;
    vec3 _mid_vert;
    vec3 _res;
    vec3 _TMP20;

    _TMP0 = COMPAT_TEXTURE(Texture, VARc00_01.xy);
    _TMP1 = COMPAT_TEXTURE(Texture, VARc00_01.zw);
    _TMP2 = COMPAT_TEXTURE(Texture, VARc02_10.xy);
    _TMP3 = COMPAT_TEXTURE(Texture, VARc02_10.zw);
    _TMP5 = COMPAT_TEXTURE(Texture, VARc12_20.xy);
    _TMP6 = COMPAT_TEXTURE(Texture, VARc12_20.zw);
    _TMP7 = COMPAT_TEXTURE(Texture, VARc21_22.xy);
    _TMP8 = COMPAT_TEXTURE(Texture, VARc21_22.zw);
    _x0040 = VARc11.x*TextureSize.x + 5.00000000E-001;
    _TMP9 = fract(_x0040);
    _first = _TMP0.xyz + _TMP9*(_TMP6.xyz - _TMP0.xyz);
    _x0044 = VARc11.x*TextureSize.x + 5.00000000E-001;
    _TMP10 = fract(_x0044);
    _second = _TMP2.xyz + _TMP10*(_TMP8.xyz - _TMP2.xyz);
    _x0048 = VARc11.x*TextureSize.x + 5.00000000E-001;
    _TMP11 = fract(_x0048);
    _mid_horiz = _TMP1.xyz + _TMP11*(_TMP7.xyz - _TMP1.xyz);
    _x0052 = VARc11.y*TextureSize.y + 5.00000000E-001;
    _TMP12 = fract(_x0052);
    _mid_vert = _TMP3.xyz + _TMP12*(_TMP5.xyz - _TMP3.xyz);
    _x0056 = VARc11.y*TextureSize.y + 5.00000000E-001;
    _TMP13 = fract(_x0056);
    _res = _first + _TMP13*(_second - _first);
    _TMP14 = _mid_horiz + 5.00000000E-001*(_mid_vert - _mid_horiz);
    _a0062 = _res - _TMP14;
    _TMP15 = abs(_a0062);
    _TMP20 = 2.80000001E-001*(_res + _mid_horiz + _mid_vert) + 4.69999981E+000*_TMP15;
    _x0064 = vec4(_TMP20.x, _TMP20.y, _TMP20.z, 1.00000000E+000);
    _TMP16 = min(vec4( 1.00000000E+000, 1.00000000E+000, 1.00000000E+000, 1.00000000E+000), _x0064);
    _TMP65 = max(vec4( 0.00000000E+000, 0.00000000E+000, 0.00000000E+000, 0.00000000E+000), _TMP16);
    FragColor = _TMP65;
    return;
} 
#endif
