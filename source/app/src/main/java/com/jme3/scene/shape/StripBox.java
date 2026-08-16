package com.jme3.scene.shape;

import com.jme3.math.Vector3f;
import com.jme3.scene.Mesh;
import com.jme3.scene.VertexBuffer;
import com.jme3.util.BufferUtils;
import java.nio.FloatBuffer;

public class StripBox extends AbstractBox {
    private static final short[] GEOMETRY_INDICES_DATA = {0, 1, 4, 2, 6, 7, 4, 5, 0, 7, 3, 2, 0, 1};
    private static final float[] GEOMETRY_TEXTURE_DATA = {1.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f, 1.0f, 1.0f, 1.0f, 0.0f, 0.0f, 0.0f, 1.0f, 1.0f, 0.0f, 1.0f};

    public StripBox(float f10, float f11, float f12) {
        updateGeometry(Vector3f.ZERO, f10, f11, f12);
    }

    @Override
    public void doUpdateGeometryIndices() {
        VertexBuffer.Type type = VertexBuffer.Type.Index;
        if (getBuffer(type) == null) {
            setBuffer(type, 3, BufferUtils.createShortBuffer(GEOMETRY_INDICES_DATA));
        }
    }

    @Override
    public void doUpdateGeometryNormals() {
        if (getBuffer(VertexBuffer.Type.Normal) == null) {
            float[] fArr = new float[24];
            Vector3f[] computeVertices = computeVertices();
            Vector3f vector3f = new Vector3f();
            for (int i10 = 0; i10 < 8; i10++) {
                vector3f.set(computeVertices[i10]).normalizeLocal();
                int i11 = i10 * 3;
                fArr[i11] = vector3f.f81611x;
                fArr[i11 + 1] = vector3f.f81612y;
                fArr[i11 + 2] = vector3f.f81613z;
            }
            setBuffer(VertexBuffer.Type.Normal, 3, BufferUtils.createFloatBuffer(fArr));
        }
    }

    @Override
    public void doUpdateGeometryTextures() {
        VertexBuffer.Type type = VertexBuffer.Type.TexCoord;
        if (getBuffer(type) == null) {
            setBuffer(type, 2, BufferUtils.createFloatBuffer(GEOMETRY_TEXTURE_DATA));
        }
    }

    @Override
    public void doUpdateGeometryVertices() {
        FloatBuffer createVector3Buffer = BufferUtils.createVector3Buffer(24);
        Vector3f[] computeVertices = computeVertices();
        Vector3f vector3f = computeVertices[0];
        float f10 = vector3f.f81611x;
        float f11 = vector3f.f81612y;
        float f12 = vector3f.f81613z;
        Vector3f vector3f2 = computeVertices[1];
        float f13 = vector3f2.f81611x;
        float f14 = vector3f2.f81612y;
        float f15 = vector3f2.f81613z;
        Vector3f vector3f3 = computeVertices[2];
        float f16 = vector3f3.f81611x;
        float f17 = vector3f3.f81612y;
        float f18 = vector3f3.f81613z;
        Vector3f vector3f4 = computeVertices[3];
        float f19 = vector3f4.f81611x;
        float f20 = vector3f4.f81612y;
        float f21 = vector3f4.f81613z;
        Vector3f vector3f5 = computeVertices[4];
        float f22 = vector3f5.f81611x;
        float f23 = vector3f5.f81612y;
        float f24 = vector3f5.f81613z;
        Vector3f vector3f6 = computeVertices[5];
        float f25 = vector3f6.f81611x;
        float f26 = vector3f6.f81612y;
        float f27 = vector3f6.f81613z;
        Vector3f vector3f7 = computeVertices[6];
        float f28 = vector3f7.f81611x;
        float f29 = vector3f7.f81612y;
        float f30 = vector3f7.f81613z;
        Vector3f vector3f8 = computeVertices[7];
        createVector3Buffer.put(new float[]{f10, f11, f12, f13, f14, f15, f16, f17, f18, f19, f20, f21, f22, f23, f24, f25, f26, f27, f28, f29, f30, vector3f8.f81611x, vector3f8.f81612y, vector3f8.f81613z});
        setBuffer(VertexBuffer.Type.Position, 3, createVector3Buffer);
        setMode(Mesh.Mode.TriangleStrip);
        updateBound();
    }

    public StripBox(Vector3f vector3f, float f10, float f11, float f12) {
        updateGeometry(vector3f, f10, f11, f12);
    }

    @Override
    public StripBox mo1295clone() {
        return new StripBox(this.center.m1292clone(), this.xExtent, this.yExtent, this.zExtent);
    }

    public StripBox(Vector3f vector3f, Vector3f vector3f2) {
        updateGeometry(vector3f, vector3f2);
    }

    public StripBox() {
    }
}
