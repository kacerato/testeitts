package com.jme3.bullet.util;

import com.jme3.bullet.debug.DebugMeshInitListener;
import com.jme3.scene.Mesh;
import com.jme3.scene.VertexBuffer;
import com.jme3.util.BufferUtils;
import java.nio.FloatBuffer;
import java.util.logging.Logger;
import p000if.C13702E;

public class PlaneDmiListener implements DebugMeshInitListener {
    static final boolean $assertionsDisabled = false;
    public static final Logger logger = Logger.getLogger(PlaneDmiListener.class.getName());
    private final float textureScale;

    public PlaneDmiListener(float f10) {
        C13702E.E(f10, "side length");
        this.textureScale = DebugShapeFactory.meshSideLength() / f10;
    }

    @Override
    public void debugMeshInit(Mesh mesh) {
        FloatBuffer createFloatBuffer = BufferUtils.createFloatBuffer(16);
        mesh.setBuffer(VertexBuffer.Type.TexCoord, 2, createFloatBuffer);
        for (int i10 = 0; i10 < 2; i10++) {
            float f10 = this.textureScale;
            createFloatBuffer.put(new float[]{f10, f10, f10, 0.0f, 0.0f, 0.0f, 0.0f, f10});
        }
        createFloatBuffer.flip();
    }
}
