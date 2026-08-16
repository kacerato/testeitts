package com.jme3.scene.shape;

import com.jme3.scene.Mesh;
import com.jme3.scene.VertexBuffer;

public class FullscreenTriangle extends Mesh {
    private static final float[] POSITIONS = {0.0f, 0.0f, 0.0f, 2.0f, 0.0f, 0.0f, 0.0f, 2.0f, 0.0f};
    private static final float[] TEXCOORDS = {0.0f, 0.0f, 2.0f, 0.0f, 0.0f, 2.0f};

    public FullscreenTriangle() {
        setBuffer(VertexBuffer.Type.Position, 3, POSITIONS);
        setBuffer(VertexBuffer.Type.TexCoord, 2, TEXCOORDS);
        setBuffer(VertexBuffer.Type.Index, 3, new short[]{0, 1, 2});
        updateBound();
    }
}
