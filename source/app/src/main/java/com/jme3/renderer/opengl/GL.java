package com.jme3.renderer.opengl;

import java.nio.ByteBuffer;
import java.nio.FloatBuffer;
import java.nio.IntBuffer;
import java.nio.ShortBuffer;

public interface GL {
    public static final int GL_ALIASED_LINE_WIDTH_RANGE = 33902;
    public static final int GL_ALPHA = 6406;
    public static final int GL_ALWAYS = 519;
    public static final int GL_ARRAY_BUFFER = 34962;
    public static final int GL_BACK = 1029;
    public static final int GL_BLEND = 3042;
    public static final int GL_BLUE = 6405;
    public static final int GL_BYTE = 5120;
    public static final int GL_CLAMP_TO_EDGE = 33071;
    public static final int GL_COLOR_BUFFER_BIT = 16384;
    public static final int GL_COMPILE_STATUS = 35713;
    public static final int GL_CULL_FACE = 2884;
    public static final int GL_DECR = 7683;
    public static final int GL_DECR_WRAP = 34056;
    public static final int GL_DEPTH_BUFFER_BIT = 256;
    public static final int GL_DEPTH_COMPONENT = 6402;
    public static final int GL_DEPTH_COMPONENT16 = 33189;
    public static final int GL_DEPTH_TEST = 2929;
    public static final int GL_DOUBLE = 5130;
    public static final int GL_DST_ALPHA = 772;
    public static final int GL_DST_COLOR = 774;
    public static final int GL_DYNAMIC_COPY = 35050;
    public static final int GL_DYNAMIC_DRAW = 35048;
    public static final int GL_DYNAMIC_READ = 35049;
    public static final int GL_ELEMENT_ARRAY_BUFFER = 34963;
    public static final int GL_EQUAL = 514;
    public static final int GL_EXTENSIONS = 7939;
    public static final int GL_FALSE = 0;
    public static final int GL_FLOAT = 5126;
    public static final int GL_FRAGMENT_SHADER = 35632;
    public static final int GL_FRAMEBUFFER_BINDING = 36006;
    public static final int GL_FRONT = 1028;
    public static final int GL_FRONT_AND_BACK = 1032;
    public static final int GL_FUNC_ADD = 32774;
    public static final int GL_FUNC_REVERSE_SUBTRACT = 32779;
    public static final int GL_FUNC_SUBTRACT = 32778;
    public static final int GL_GEQUAL = 518;
    public static final int GL_GREATER = 516;
    public static final int GL_GREEN = 6404;
    public static final int GL_INCR = 7682;
    public static final int GL_INCR_WRAP = 34055;
    public static final int GL_INFO_LOG_LENGTH = 35716;
    public static final int GL_INT = 5124;
    public static final int GL_INVALID_ENUM = 1280;
    public static final int GL_INVALID_OPERATION = 1282;
    public static final int GL_INVALID_VALUE = 1281;
    public static final int GL_INVERT = 5386;
    public static final int GL_KEEP = 7680;
    public static final int GL_LEQUAL = 515;
    public static final int GL_LESS = 513;
    public static final int GL_LINEAR = 9729;
    public static final int GL_LINEAR_MIPMAP_LINEAR = 9987;
    public static final int GL_LINEAR_MIPMAP_NEAREST = 9985;
    public static final int GL_LINES = 1;
    public static final int GL_LINE_LOOP = 2;
    public static final int GL_LINE_SMOOTH = 2848;
    public static final int GL_LINE_STRIP = 3;
    public static final int GL_LINK_STATUS = 35714;
    public static final int GL_LUMINANCE = 6409;
    public static final int GL_LUMINANCE_ALPHA = 6410;
    public static final int GL_MAX = 32776;
    public static final int GL_MAX_CUBE_MAP_TEXTURE_SIZE = 34076;
    public static final int GL_MAX_FRAGMENT_UNIFORM_COMPONENTS = 35657;
    public static final int GL_MAX_FRAGMENT_UNIFORM_VECTORS = 36349;
    public static final int GL_MAX_TEXTURE_IMAGE_UNITS = 34930;
    public static final int GL_MAX_TEXTURE_SIZE = 3379;
    public static final int GL_MAX_VERTEX_ATTRIBS = 34921;
    public static final int GL_MAX_VERTEX_TEXTURE_IMAGE_UNITS = 35660;
    public static final int GL_MAX_VERTEX_UNIFORM_COMPONENTS = 35658;
    public static final int GL_MAX_VERTEX_UNIFORM_VECTORS = 36347;
    public static final int GL_MIN = 32775;
    public static final int GL_MIRRORED_REPEAT = 33648;
    public static final int GL_NEAREST = 9728;
    public static final int GL_NEAREST_MIPMAP_LINEAR = 9986;
    public static final int GL_NEAREST_MIPMAP_NEAREST = 9984;
    public static final int GL_NEVER = 512;
    public static final int GL_NONE = 0;
    public static final int GL_NOTEQUAL = 517;
    public static final int GL_NO_ERROR = 0;
    public static final int GL_ONE = 1;
    public static final int GL_ONE_MINUS_DST_ALPHA = 773;
    public static final int GL_ONE_MINUS_DST_COLOR = 775;
    public static final int GL_ONE_MINUS_SRC_ALPHA = 771;
    public static final int GL_ONE_MINUS_SRC_COLOR = 769;
    public static final int GL_OUT_OF_MEMORY = 1285;
    public static final int GL_POINTS = 0;
    public static final int GL_POLYGON_OFFSET_FILL = 32823;
    public static final int GL_QUERY_RESULT = 34918;
    public static final int GL_QUERY_RESULT_AVAILABLE = 34919;
    public static final int GL_RED = 6403;
    public static final int GL_RENDERER = 7937;
    public static final int GL_REPEAT = 10497;
    public static final int GL_REPLACE = 7681;
    public static final int GL_RGB = 6407;
    public static final int GL_RGB565 = 36194;
    public static final int GL_RGB5_A1 = 32855;
    public static final int GL_RGBA = 6408;
    public static final int GL_RGBA4 = 32854;
    public static final int GL_SCISSOR_TEST = 3089;
    public static final int GL_SHADING_LANGUAGE_VERSION = 35724;
    public static final int GL_SHORT = 5122;
    public static final int GL_SRC_ALPHA = 770;
    public static final int GL_SRC_ALPHA_SATURATE = 776;
    public static final int GL_SRC_COLOR = 768;
    public static final int GL_STATIC_COPY = 35046;
    public static final int GL_STATIC_DRAW = 35044;
    public static final int GL_STATIC_READ = 35045;
    public static final int GL_STENCIL_BUFFER_BIT = 1024;
    public static final int GL_STENCIL_TEST = 2960;
    public static final int GL_STREAM_COPY = 35042;
    public static final int GL_STREAM_DRAW = 35040;
    public static final int GL_STREAM_READ = 35041;
    public static final int GL_TEXTURE = 5890;
    public static final int GL_TEXTURE0 = 33984;
    public static final int GL_TEXTURE1 = 33985;
    public static final int GL_TEXTURE10 = 33994;
    public static final int GL_TEXTURE11 = 33995;
    public static final int GL_TEXTURE12 = 33996;
    public static final int GL_TEXTURE13 = 33997;
    public static final int GL_TEXTURE14 = 33998;
    public static final int GL_TEXTURE15 = 33999;
    public static final int GL_TEXTURE2 = 33986;
    public static final int GL_TEXTURE3 = 33987;
    public static final int GL_TEXTURE4 = 33988;
    public static final int GL_TEXTURE5 = 33989;
    public static final int GL_TEXTURE6 = 33990;
    public static final int GL_TEXTURE7 = 33991;
    public static final int GL_TEXTURE8 = 33992;
    public static final int GL_TEXTURE9 = 33993;
    public static final int GL_TEXTURE_2D = 3553;
    public static final int GL_TEXTURE_CUBE_MAP = 34067;
    public static final int GL_TEXTURE_CUBE_MAP_NEGATIVE_X = 34070;
    public static final int GL_TEXTURE_CUBE_MAP_NEGATIVE_Y = 34072;
    public static final int GL_TEXTURE_CUBE_MAP_NEGATIVE_Z = 34074;
    public static final int GL_TEXTURE_CUBE_MAP_POSITIVE_X = 34069;
    public static final int GL_TEXTURE_CUBE_MAP_POSITIVE_Y = 34071;
    public static final int GL_TEXTURE_CUBE_MAP_POSITIVE_Z = 34073;
    public static final int GL_TEXTURE_MAG_FILTER = 10240;
    public static final int GL_TEXTURE_MIN_FILTER = 10241;
    public static final int GL_TEXTURE_WRAP_S = 10242;
    public static final int GL_TEXTURE_WRAP_T = 10243;
    public static final int GL_TIME_ELAPSED = 35007;
    public static final int GL_TRIANGLES = 4;
    public static final int GL_TRIANGLE_FAN = 6;
    public static final int GL_TRIANGLE_STRIP = 5;
    public static final int GL_TRUE = 1;
    public static final int GL_UNPACK_ALIGNMENT = 3317;
    public static final int GL_UNPACK_ROW_LENGTH = 3314;
    public static final int GL_UNSIGNED_BYTE = 5121;
    public static final int GL_UNSIGNED_INT = 5125;
    public static final int GL_UNSIGNED_SHORT = 5123;
    public static final int GL_UNSIGNED_SHORT_5_5_5_1 = 32820;
    public static final int GL_UNSIGNED_SHORT_5_6_5 = 33635;
    public static final int GL_VENDOR = 7936;
    public static final int GL_VERSION = 7938;
    public static final int GL_VERTEX_SHADER = 35633;
    public static final int GL_ZERO = 0;

    void glActiveTexture(int i10);

    void glAttachShader(int i10, int i11);

    void glBeginQuery(int i10, int i11);

    void glBindBuffer(int i10, int i11);

    void glBindTexture(int i10, int i11);

    void glBlendEquationSeparate(int i10, int i11);

    void glBlendFunc(int i10, int i11);

    void glBlendFuncSeparate(int i10, int i11, int i12, int i13);

    void glBufferData(int i10, long j10, int i11);

    void glBufferData(int i10, ByteBuffer byteBuffer, int i11);

    void glBufferData(int i10, FloatBuffer floatBuffer, int i11);

    void glBufferData(int i10, IntBuffer intBuffer, int i11);

    void glBufferData(int i10, ShortBuffer shortBuffer, int i11);

    void glBufferSubData(int i10, long j10, ByteBuffer byteBuffer);

    void glBufferSubData(int i10, long j10, FloatBuffer floatBuffer);

    void glBufferSubData(int i10, long j10, ShortBuffer shortBuffer);

    void glClear(int i10);

    void glClearColor(float f10, float f11, float f12, float f13);

    void glColorMask(boolean z10, boolean z11, boolean z12, boolean z13);

    void glCompileShader(int i10);

    void glCompressedTexImage2D(int i10, int i11, int i12, int i13, int i14, int i15, ByteBuffer byteBuffer);

    void glCompressedTexSubImage2D(int i10, int i11, int i12, int i13, int i14, int i15, int i16, ByteBuffer byteBuffer);

    int glCreateProgram();

    int glCreateShader(int i10);

    void glCullFace(int i10);

    void glDeleteBuffers(IntBuffer intBuffer);

    void glDeleteProgram(int i10);

    void glDeleteShader(int i10);

    void glDeleteTextures(IntBuffer intBuffer);

    void glDepthFunc(int i10);

    void glDepthMask(boolean z10);

    void glDepthRange(double d10, double d11);

    void glDetachShader(int i10, int i11);

    void glDisable(int i10);

    void glDisableVertexAttribArray(int i10);

    void glDrawArrays(int i10, int i11, int i12);

    void glDrawRangeElements(int i10, int i11, int i12, int i13, int i14, long j10);

    void glEnable(int i10);

    void glEnableVertexAttribArray(int i10);

    void glEndQuery(int i10);

    void glGenBuffers(IntBuffer intBuffer);

    void glGenQueries(int i10, IntBuffer intBuffer);

    void glGenTextures(IntBuffer intBuffer);

    int glGetAttribLocation(int i10, String str);

    void glGetBoolean(int i10, ByteBuffer byteBuffer);

    void glGetBufferSubData(int i10, long j10, ByteBuffer byteBuffer);

    void glGetBufferSubData(int i10, long j10, IntBuffer intBuffer);

    int glGetError();

    void glGetFloat(int i10, FloatBuffer floatBuffer);

    void glGetInteger(int i10, IntBuffer intBuffer);

    void glGetProgram(int i10, int i11, IntBuffer intBuffer);

    String glGetProgramInfoLog(int i10, int i11);

    int glGetQueryObjectiv(int i10, int i11);

    long glGetQueryObjectui64(int i10, int i11);

    void glGetShader(int i10, int i11, IntBuffer intBuffer);

    String glGetShaderInfoLog(int i10, int i11);

    String glGetString(int i10);

    int glGetUniformLocation(int i10, String str);

    boolean glIsEnabled(int i10);

    void glLineWidth(float f10);

    void glLinkProgram(int i10);

    void glPixelStorei(int i10, int i11);

    void glPolygonOffset(float f10, float f11);

    void glReadPixels(int i10, int i11, int i12, int i13, int i14, int i15, long j10);

    void glReadPixels(int i10, int i11, int i12, int i13, int i14, int i15, ByteBuffer byteBuffer);

    void glScissor(int i10, int i11, int i12, int i13);

    void glShaderSource(int i10, String[] strArr, IntBuffer intBuffer);

    void glStencilFuncSeparate(int i10, int i11, int i12, int i13);

    void glStencilOpSeparate(int i10, int i11, int i12, int i13);

    void glTexImage2D(int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17, ByteBuffer byteBuffer);

    void glTexParameterf(int i10, int i11, float f10);

    void glTexParameteri(int i10, int i11, int i12);

    void glTexSubImage2D(int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17, ByteBuffer byteBuffer);

    void glUniform1(int i10, FloatBuffer floatBuffer);

    void glUniform1(int i10, IntBuffer intBuffer);

    void glUniform1f(int i10, float f10);

    void glUniform1i(int i10, int i11);

    void glUniform2(int i10, FloatBuffer floatBuffer);

    void glUniform2(int i10, IntBuffer intBuffer);

    void glUniform2f(int i10, float f10, float f11);

    void glUniform3(int i10, FloatBuffer floatBuffer);

    void glUniform3(int i10, IntBuffer intBuffer);

    void glUniform3f(int i10, float f10, float f11, float f12);

    void glUniform4(int i10, FloatBuffer floatBuffer);

    void glUniform4(int i10, IntBuffer intBuffer);

    void glUniform4f(int i10, float f10, float f11, float f12, float f13);

    void glUniformMatrix3(int i10, boolean z10, FloatBuffer floatBuffer);

    void glUniformMatrix4(int i10, boolean z10, FloatBuffer floatBuffer);

    void glUseProgram(int i10);

    void glVertexAttribPointer(int i10, int i11, int i12, boolean z10, int i13, long j10);

    void glViewport(int i10, int i11, int i12, int i13);

    void resetStats();
}
