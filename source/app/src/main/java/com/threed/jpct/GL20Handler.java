package com.threed.jpct;

import java.nio.Buffer;
import java.nio.ByteBuffer;

public interface GL20Handler {
    void clearShader();

    void clearTangents();

    void clearTangents(int i10);

    void reset();

    void resetShaderData();

    void setRenderTarget(Texture texture, GLRenderer gLRenderer, FrameBuffer frameBuffer);

    void setShader(GLSLShader gLSLShader);

    void setTangents(int i10);

    void setTangents(Buffer buffer);

    void unloadRenderTarget(Texture texture);

    GLSLShader updateShaderData();

    boolean uploadTexture(int i10, int i11, int i12, int i13, boolean z10, ByteBuffer byteBuffer);
}
