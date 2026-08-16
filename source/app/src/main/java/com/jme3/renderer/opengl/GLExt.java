package com.jme3.renderer.opengl;

import java.nio.FloatBuffer;
import java.nio.IntBuffer;

public interface GLExt {
    public static final int GL_ALREADY_SIGNALED = 37146;
    public static final int GL_BUFFER = 33504;
    public static final int GL_COMPRESSED_RGB8_ETC2 = 37492;
    public static final int GL_COMPRESSED_RGB8_PUNCHTHROUGH_ALPHA1_ETC2 = 37494;
    public static final int GL_COMPRESSED_RGBA8_ETC2_EAC = 37496;
    public static final int GL_COMPRESSED_RGBA_BPTC_UNORM = 36492;
    public static final int GL_COMPRESSED_RGBA_S3TC_DXT1_EXT = 33777;
    public static final int GL_COMPRESSED_RGBA_S3TC_DXT3_EXT = 33778;
    public static final int GL_COMPRESSED_RGBA_S3TC_DXT5_EXT = 33779;
    public static final int GL_COMPRESSED_RGB_BPTC_SIGNED_FLOAT = 36494;
    public static final int GL_COMPRESSED_RGB_BPTC_UNSIGNED_FLOAT = 36495;
    public static final int GL_COMPRESSED_RGB_S3TC_DXT1_EXT = 33776;
    public static final int GL_COMPRESSED_SRGB8_ALPHA8_ETC2_EAC = 37497;
    public static final int GL_COMPRESSED_SRGB8_ETC2 = 37493;
    public static final int GL_COMPRESSED_SRGB8_PUNCHTHROUGH_ALPHA1_ETC2 = 37495;
    public static final int GL_COMPRESSED_SRGB_ALPHA_BPTC_UNORM = 36493;
    public static final int GL_COMPRESSED_SRGB_ALPHA_S3TC_DXT1_EXT = 35917;
    public static final int GL_COMPRESSED_SRGB_ALPHA_S3TC_DXT3_EXT = 35918;
    public static final int GL_COMPRESSED_SRGB_ALPHA_S3TC_DXT5_EXT = 35919;
    public static final int GL_COMPRESSED_SRGB_S3TC_DXT1_EXT = 35916;
    public static final int GL_CONDITION_SATISFIED = 37148;
    public static final int GL_DEBUG_SOURCE_API = 33350;
    public static final int GL_DEBUG_SOURCE_APPLICATION = 33354;
    public static final int GL_DEBUG_SOURCE_OTHER = 33355;
    public static final int GL_DEBUG_SOURCE_SHADER_COMPILER = 33352;
    public static final int GL_DEBUG_SOURCE_THIRD_PARTY = 33353;
    public static final int GL_DEBUG_SOURCE_WINDOW_SYSTEM = 33351;
    public static final int GL_DEPTH24_STENCIL8_EXT = 35056;
    public static final int GL_DEPTH_COMPONENT32F = 36012;
    public static final int GL_DEPTH_STENCIL_EXT = 34041;
    public static final int GL_DISPLAY_LIST = 33511;
    public static final int GL_ETC1_RGB8_OES = 36196;
    public static final int GL_FRAMEBUFFER_SRGB_CAPABLE_EXT = 36282;
    public static final int GL_FRAMEBUFFER_SRGB_EXT = 36281;
    public static final int GL_HALF_FLOAT_ARB = 5131;
    public static final int GL_HALF_FLOAT_OES = 36193;
    public static final int GL_LUMINANCE16F_ARB = 34846;
    public static final int GL_LUMINANCE32F_ARB = 34840;
    public static final int GL_LUMINANCE_ALPHA16F_ARB = 34847;
    public static final int GL_MAX_COLOR_TEXTURE_SAMPLES = 37134;
    public static final int GL_MAX_DEPTH_TEXTURE_SAMPLES = 37135;
    public static final int GL_MAX_DRAW_BUFFERS_ARB = 34852;
    public static final int GL_MAX_SAMPLES_EXT = 36183;
    public static final int GL_MAX_TEXTURE_MAX_ANISOTROPY_EXT = 34047;
    public static final int GL_MULTISAMPLE_ARB = 32925;
    public static final int GL_NUM_PROGRAM_BINARY_FORMATS = 34814;
    public static final int GL_PIXEL_PACK_BUFFER_ARB = 35051;
    public static final int GL_PIXEL_UNPACK_BUFFER_ARB = 35052;
    public static final int GL_PROGRAM = 33506;
    public static final int GL_PROGRAM_PIPELINE = 33508;
    public static final int GL_QUERY = 33507;
    public static final int GL_R11F_G11F_B10F_EXT = 35898;
    public static final int GL_RGB16F_ARB = 34843;
    public static final int GL_RGB32F_ARB = 34837;
    public static final int GL_RGB9_E5_EXT = 35901;
    public static final int GL_RGBA16F_ARB = 34842;
    public static final int GL_RGBA32F_ARB = 34836;
    public static final int GL_RGBA8 = 32856;
    public static final int GL_SAMPLER = 33510;
    public static final int GL_SAMPLES_ARB = 32937;
    public static final int GL_SAMPLE_ALPHA_TO_COVERAGE_ARB = 32926;
    public static final int GL_SAMPLE_BUFFERS_ARB = 32936;
    public static final int GL_SAMPLE_POSITION = 36432;
    public static final int GL_SHADER = 33505;
    public static final int GL_SLUMINANCE8_ALPHA8_EXT = 35909;
    public static final int GL_SLUMINANCE8_EXT = 35911;
    public static final int GL_SRGB8_ALPHA8_EXT = 35907;
    public static final int GL_SRGB8_EXT = 35905;
    public static final int GL_SYNC_FLUSH_COMMANDS_BIT = 1;
    public static final int GL_SYNC_GPU_COMMANDS_COMPLETE = 37143;
    public static final int GL_TEXTURE_2D_ARRAY_EXT = 35866;
    public static final int GL_TEXTURE_2D_MULTISAMPLE = 37120;
    public static final int GL_TEXTURE_2D_MULTISAMPLE_ARRAY = 37122;
    public static final int GL_TEXTURE_CUBE_MAP_SEAMLESS = 34895;
    public static final int GL_TEXTURE_MAX_ANISOTROPY_EXT = 34046;
    public static final int GL_TIMEOUT_EXPIRED = 37147;
    public static final int GL_UNSIGNED_INT_10F_11F_11F_REV_EXT = 35899;
    public static final int GL_UNSIGNED_INT_24_8_EXT = 34042;
    public static final int GL_UNSIGNED_INT_5_9_9_9_REV_EXT = 35902;
    public static final int GL_WAIT_FAILED = 37149;

    default void glBindBufferBase(int i10, int i11, int i12) {
        throw new UnsupportedOperationException("Uniform buffer objects are not supported");
    }

    void glBufferData(int i10, IntBuffer intBuffer, int i11);

    void glBufferSubData(int i10, long j10, IntBuffer intBuffer);

    int glClientWaitSync(Object obj, int i10, long j10);

    void glDeleteSync(Object obj);

    void glDrawArraysInstancedARB(int i10, int i11, int i12, int i13);

    void glDrawBuffers(IntBuffer intBuffer);

    void glDrawElementsInstancedARB(int i10, int i11, int i12, long j10, int i13);

    Object glFenceSync(int i10, int i11);

    void glGetMultisample(int i10, int i11, FloatBuffer floatBuffer);

    default int glGetProgramResourceIndex(int i10, int i11, String str) {
        throw new UnsupportedOperationException("Shader storage buffer objects are not supported");
    }

    default int glGetUniformBlockIndex(int i10, String str) {
        throw new UnsupportedOperationException("Uniform buffer objects are not supported");
    }

    default void glObjectLabel(int i10, int i11, String str) {
    }

    default void glPopDebugGroup() {
    }

    default void glPushDebugGroup(int i10, int i11, String str) {
    }

    default void glShaderStorageBlockBinding(int i10, int i11, int i12) {
        throw new UnsupportedOperationException("Shader storage buffer objects are not supported");
    }

    void glTexImage2DMultisample(int i10, int i11, int i12, int i13, int i14, boolean z10);

    default void glUniformBlockBinding(int i10, int i11, int i12) {
        throw new UnsupportedOperationException("Uniform buffer objects are not supported");
    }

    void glVertexAttribDivisorARB(int i10, int i11);
}
