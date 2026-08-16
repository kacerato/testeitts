package com.jme3.scene.debug.custom;

import com.jme3.scene.Mesh;
import com.jme3.scene.VertexBuffer;

public class JointShape extends Mesh {
    public JointShape() {
        setBuffer(VertexBuffer.Type.Position, 3, new float[]{-0.5f, -0.5f, 0.0f, 0.5f, -0.5f, 0.0f, 0.5f, 0.5f, 0.0f, -0.5f, 0.5f, 0.0f});
        setBuffer(VertexBuffer.Type.TexCoord, 2, new float[]{0.0f, 0.0f, 1.0f, 0.0f, 1.0f, 1.0f, 0.0f, 1.0f});
        setBuffer(VertexBuffer.Type.Normal, 3, new float[]{0.0f, 0.0f, 1.0f, 0.0f, 0.0f, 1.0f, 0.0f, 0.0f, 1.0f, 0.0f, 0.0f, 1.0f});
        setBuffer(VertexBuffer.Type.Color, 4, new float[]{1.0f, 1.0f, 1.0f, 1.0f, 1.0f, 1.0f, 1.0f, 1.0f, 1.0f, 1.0f, 1.0f, 1.0f, 1.0f, 1.0f, 1.0f, 1.0f});
        setBuffer(VertexBuffer.Type.Index, 3, new short[]{0, 1, 2, 0, 2, 3});
        updateBound();
        setStatic();
    }
}
