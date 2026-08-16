package com.jme3.scene.shape;

import com.jme3.math.Vector3f;
import com.jme3.scene.VertexBuffer;
import com.jme3.util.BufferUtils;
import java.nio.FloatBuffer;

public class Box extends AbstractBox {
    private static final short[] GEOMETRY_INDICES_DATA = {2, 1, 0, 3, 2, 0, 6, 5, 4, 7, 6, 4, 10, 9, 8, 11, 10, 8, 14, 13, 12, 15, 14, 12, 18, 17, 16, 19, 18, 16, 22, 21, 20, 23, 22, 20};
    private static final float[] GEOMETRY_NORMALS_DATA = {0.0f, 0.0f, -1.0f, 0.0f, 0.0f, -1.0f, 0.0f, 0.0f, -1.0f, 0.0f, 0.0f, -1.0f, 1.0f, 0.0f, 0.0f, 1.0f, 0.0f, 0.0f, 1.0f, 0.0f, 0.0f, 1.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f, 0.0f, 1.0f, 0.0f, 0.0f, 1.0f, 0.0f, 0.0f, 1.0f, -1.0f, 0.0f, 0.0f, -1.0f, 0.0f, 0.0f, -1.0f, 0.0f, 0.0f, -1.0f, 0.0f, 0.0f, 0.0f, 1.0f, 0.0f, 0.0f, 1.0f, 0.0f, 0.0f, 1.0f, 0.0f, 0.0f, 1.0f, 0.0f, 0.0f, -1.0f, 0.0f, 0.0f, -1.0f, 0.0f, 0.0f, -1.0f, 0.0f, 0.0f, -1.0f, 0.0f};
    private static final float[] GEOMETRY_TEXTURE_DATA = {1.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f, 1.0f, 1.0f, 1.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f, 1.0f, 1.0f, 1.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f, 1.0f, 1.0f, 1.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f, 1.0f, 1.0f, 1.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f, 1.0f, 1.0f, 1.0f, 0.0f, 0.0f, 0.0f, 0.0f, 1.0f, 1.0f, 1.0f};

    public Box(float f10, float f11, float f12) {
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
        VertexBuffer.Type type = VertexBuffer.Type.Normal;
        if (getBuffer(type) == null) {
            setBuffer(type, 3, BufferUtils.createFloatBuffer(GEOMETRY_NORMALS_DATA));
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
        Vector3f vector3f6 = computeVertices[6];
        float f25 = vector3f6.f81611x;
        float f26 = vector3f6.f81612y;
        float f27 = vector3f6.f81613z;
        Vector3f vector3f7 = computeVertices[5];
        float f28 = vector3f7.f81611x;
        float f29 = vector3f7.f81612y;
        float f30 = vector3f7.f81613z;
        Vector3f vector3f8 = computeVertices[7];
        float f31 = vector3f8.f81611x;
        float f32 = vector3f8.f81612y;
        float f33 = vector3f8.f81613z;
        createVector3Buffer.put(new float[]{f10, f11, f12, f13, f14, f15, f16, f17, f18, f19, f20, f21, f13, f14, f15, f22, f23, f24, f25, f26, f27, f16, f17, f18, f22, f23, f24, f28, f29, f30, f31, f32, f33, f25, f26, f27, f28, f29, f30, f10, f11, f12, f19, f20, f21, f31, f32, f33, f16, f17, f18, f25, f26, f27, f31, f32, f33, f19, f20, f21, f10, f11, f12, f28, f29, f30, f22, f23, f24, f13, f14, f15});
        setBuffer(VertexBuffer.Type.Position, 3, createVector3Buffer);
        updateBound();
    }

    @Deprecated
    public Box(Vector3f vector3f, float f10, float f11, float f12) {
        updateGeometry(vector3f, f10, f11, f12);
    }

    @Override
    public Box mo1295clone() {
        return new Box(this.center.m1292clone(), this.xExtent, this.yExtent, this.zExtent);
    }

    public Box(Vector3f vector3f, Vector3f vector3f2) {
        updateGeometry(vector3f, vector3f2);
    }

    public Box() {
    }
}
