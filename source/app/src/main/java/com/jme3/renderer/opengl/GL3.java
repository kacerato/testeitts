package com.jme3.renderer.opengl;

import java.nio.IntBuffer;

public interface GL3 extends GL2 {
    public static final int GL_COMPRESSED_RED_RGTC1 = 36283;
    public static final int GL_COMPRESSED_RG_RGTC2 = 36285;
    public static final int GL_COMPRESSED_SIGNED_RED_RGTC1 = 36284;
    public static final int GL_COMPRESSED_SIGNED_RG_RGTC2 = 36286;
    public static final int GL_DEPTH_STENCIL_ATTACHMENT = 33306;
    public static final int GL_DRAW_FRAMEBUFFER = 36009;
    public static final int GL_FRAMEBUFFER = 36160;
    public static final int GL_GEOMETRY_SHADER = 36313;
    public static final int GL_MAX_COMBINED_FRAGMENT_UNIFORM_COMPONENTS = 35379;
    public static final int GL_MAX_COMBINED_GEOMETRY_UNIFORM_COMPONENTS = 35378;
    public static final int GL_MAX_COMBINED_UNIFORM_BLOCKS = 35374;
    public static final int GL_MAX_COMBINED_VERTEX_UNIFORM_COMPONENTS = 35377;
    public static final int GL_MAX_FRAGMENT_UNIFORM_BLOCKS = 35373;
    public static final int GL_MAX_GEOMETRY_UNIFORM_BLOCKS = 35372;
    public static final int GL_MAX_UNIFORM_BLOCK_SIZE = 35376;
    public static final int GL_MAX_UNIFORM_BUFFER_BINDINGS = 35375;
    public static final int GL_MAX_VERTEX_UNIFORM_BLOCKS = 35371;
    public static final int GL_NUM_EXTENSIONS = 33309;
    public static final int GL_R16F = 33325;
    public static final int GL_R16I = 33331;
    public static final int GL_R16UI = 33332;
    public static final int GL_R32F = 33326;
    public static final int GL_R32I = 33333;
    public static final int GL_R32UI = 33334;
    public static final int GL_R8 = 33321;
    public static final int GL_R8I = 33329;
    public static final int GL_R8UI = 33330;
    public static final int GL_READ_FRAMEBUFFER = 36008;
    public static final int GL_RED_INTEGER = 36244;
    public static final int GL_RG = 33319;
    public static final int GL_RG16F = 33327;
    public static final int GL_RG16I = 33337;
    public static final int GL_RG16UI = 33338;
    public static final int GL_RG32F = 33328;
    public static final int GL_RG32I = 33339;
    public static final int GL_RG32UI = 33340;
    public static final int GL_RG8 = 33323;
    public static final int GL_RG8I = 33335;
    public static final int GL_RG8UI = 33336;
    public static final int GL_RGB16I = 36233;
    public static final int GL_RGB16UI = 36215;
    public static final int GL_RGB32I = 36227;
    public static final int GL_RGB32UI = 36209;
    public static final int GL_RGB8I = 36239;
    public static final int GL_RGB8UI = 36221;
    public static final int GL_RGBA16I = 36232;
    public static final int GL_RGBA16UI = 36214;
    public static final int GL_RGBA32I = 36226;
    public static final int GL_RGBA32UI = 36208;
    public static final int GL_RGBA8I = 36238;
    public static final int GL_RGBA8UI = 36220;
    public static final int GL_RGBA_INTEGER = 36249;
    public static final int GL_RGB_INTEGER = 36248;
    public static final int GL_RG_INTEGER = 33320;
    public static final int GL_TEXTURE_SWIZZLE_A = 36421;
    public static final int GL_TEXTURE_SWIZZLE_B = 36420;
    public static final int GL_TEXTURE_SWIZZLE_G = 36419;
    public static final int GL_TEXTURE_SWIZZLE_R = 36418;
    public static final int GL_TRANSFORM_FEEDBACK_BUFFER = 35982;
    public static final int GL_UNIFORM_BLOCK_ACTIVE_UNIFORMS = 35394;
    public static final int GL_UNIFORM_BLOCK_ACTIVE_UNIFORM_INDICES = 35395;
    public static final int GL_UNIFORM_BLOCK_BINDING = 35391;
    public static final int GL_UNIFORM_BLOCK_DATA_SIZE = 35392;
    public static final int GL_UNIFORM_BLOCK_NAME_LENGTH = 35393;
    public static final int GL_UNIFORM_BLOCK_REFERENCED_BY_FRAGMENT_SHADER = 35398;
    public static final int GL_UNIFORM_BLOCK_REFERENCED_BY_GEOMETRY_SHADER = 35397;
    public static final int GL_UNIFORM_BLOCK_REFERENCED_BY_VERTEX_SHADER = 35396;
    public static final int GL_UNIFORM_BUFFER = 35345;
    public static final int GL_UNIFORM_BUFFER_OFFSET_ALIGNMENT = 35380;
    public static final int GL_UNIFORM_OFFSET = 35387;

    void glBindBufferBase(int i10, int i11, int i12);

    void glBindFragDataLocation(int i10, int i11, String str);

    void glBindVertexArray(int i10);

    void glDeleteVertexArrays(IntBuffer intBuffer);

    void glGenVertexArrays(IntBuffer intBuffer);

    String glGetString(int i10, int i11);

    int glGetUniformBlockIndex(int i10, String str);

    void glUniformBlockBinding(int i10, int i11, int i12);
}
