package com.jme3.renderer.opengl;

public interface GL4 extends GL3 {
    public static final int GL_ALREADY_SIGNALED = 37146;
    public static final int GL_ATOMIC_COUNTER_BUFFER = 37568;
    public static final int GL_COMPUTE_SHADER = 37305;
    public static final int GL_CONDITION_SATISFIED = 37148;
    public static final int GL_MAX_COMBINED_SHADER_STORAGE_BLOCKS = 37084;
    public static final int GL_MAX_COMPUTE_SHADER_STORAGE_BLOCKS = 37083;
    public static final int GL_MAX_FRAGMENT_SHADER_STORAGE_BLOCKS = 37082;
    public static final int GL_MAX_GEOMETRY_SHADER_STORAGE_BLOCKS = 37079;
    public static final int GL_MAX_SHADER_STORAGE_BLOCK_SIZE = 37086;
    public static final int GL_MAX_SHADER_STORAGE_BUFFER_BINDINGS = 37085;
    public static final int GL_MAX_TESS_CONTROL_SHADER_STORAGE_BLOCKS = 37080;
    public static final int GL_MAX_TESS_EVALUATION_SHADER_STORAGE_BLOCKS = 37081;
    public static final int GL_MAX_VERTEX_SHADER_STORAGE_BLOCKS = 37078;
    public static final int GL_PATCHES = 14;
    public static final int GL_SHADER_STORAGE_BARRIER_BIT = 8192;
    public static final int GL_SHADER_STORAGE_BLOCK = 37606;
    public static final int GL_SHADER_STORAGE_BUFFER = 37074;
    public static final int GL_SHADER_STORAGE_BUFFER_OFFSET_ALIGNMENT = 37087;
    public static final int GL_SYNC_GPU_COMMANDS_COMPLETE = 37143;
    public static final int GL_TESS_CONTROL_SHADER = 36488;
    public static final int GL_TESS_EVALUATION_SHADER = 36487;
    public static final int GL_TEXTURE_FETCH_BARRIER_BIT = 8;
    public static final int GL_TIMEOUT_EXPIRED = 37147;
    public static final int GL_WAIT_FAILED = 37149;

    void glBindImageTexture(int i10, int i11, int i12, boolean z10, int i13, int i14, int i15);

    int glClientWaitSync(GLFence gLFence, int i10, long j10);

    void glDeleteSync(GLFence gLFence);

    void glDispatchCompute(int i10, int i11, int i12);

    GLFence glFenceSync(int i10, int i11);

    int glGetProgramResourceIndex(int i10, int i11, String str);

    void glMemoryBarrier(int i10);

    void glPatchParameter(int i10);

    void glShaderStorageBlockBinding(int i10, int i11, int i12);
}
