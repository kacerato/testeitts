package com.jme3.renderer.opengl;

import java.nio.IntBuffer;

public interface GLES_30 extends GL {
    public static final int GL_RGB10_A2 = 32857;
    public static final int GL_UNSIGNED_INT_2_10_10_10_REV = 33640;

    void glBindVertexArray(int i10);

    void glDeleteVertexArrays(IntBuffer intBuffer);

    void glGenVertexArrays(IntBuffer intBuffer);
}
