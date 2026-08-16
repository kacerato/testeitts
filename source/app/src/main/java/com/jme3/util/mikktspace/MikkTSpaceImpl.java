package com.jme3.util.mikktspace;

import com.jme3.scene.Mesh;
import com.jme3.scene.VertexBuffer;
import com.jme3.scene.mesh.IndexBuffer;
import com.jme3.util.BufferUtils;
import java.nio.FloatBuffer;

public class MikkTSpaceImpl implements MikkTSpaceContext {
    private final IndexBuffer index;
    Mesh mesh;

    public MikkTSpaceImpl(Mesh mesh) {
        this.mesh = mesh;
        this.index = mesh.getIndicesAsList();
        VertexBuffer.Type type = VertexBuffer.Type.Tangent;
        mesh.clearBuffer(type);
        mesh.setBuffer(type, 4, BufferUtils.createFloatBuffer(mesh.getVertexCount() * 4));
    }

    private int getIndex(int i10, int i11) {
        return this.index.get((i10 * 3) + i11);
    }

    @Override
    public void getNormal(float[] fArr, int i10, int i11) {
        int index = getIndex(i10, i11);
        FloatBuffer floatBuffer = (FloatBuffer) this.mesh.getBuffer(VertexBuffer.Type.Normal).getData();
        floatBuffer.position(index * 3);
        fArr[0] = floatBuffer.get();
        fArr[1] = floatBuffer.get();
        fArr[2] = floatBuffer.get();
    }

    @Override
    public int getNumFaces() {
        return this.mesh.getTriangleCount();
    }

    @Override
    public int getNumVerticesOfFace(int i10) {
        return 3;
    }

    @Override
    public void getPosition(float[] fArr, int i10, int i11) {
        int index = getIndex(i10, i11);
        FloatBuffer floatBuffer = (FloatBuffer) this.mesh.getBuffer(VertexBuffer.Type.Position).getData();
        floatBuffer.position(index * 3);
        fArr[0] = floatBuffer.get();
        fArr[1] = floatBuffer.get();
        fArr[2] = floatBuffer.get();
    }

    @Override
    public void getTexCoord(float[] fArr, int i10, int i11) {
        int index = getIndex(i10, i11);
        FloatBuffer floatBuffer = (FloatBuffer) this.mesh.getBuffer(VertexBuffer.Type.TexCoord).getData();
        floatBuffer.position(index * 2);
        fArr[0] = floatBuffer.get();
        fArr[1] = floatBuffer.get();
    }

    @Override
    public void setTSpace(float[] fArr, float[] fArr2, float f10, float f11, boolean z10, int i10, int i11) {
    }

    @Override
    public void setTSpaceBasic(float[] fArr, float f10, int i10, int i11) {
        int index = getIndex(i10, i11);
        VertexBuffer buffer = this.mesh.getBuffer(VertexBuffer.Type.Tangent);
        FloatBuffer floatBuffer = (FloatBuffer) buffer.getData();
        floatBuffer.position(index * 4);
        floatBuffer.put(fArr);
        floatBuffer.put(f10);
        floatBuffer.rewind();
        buffer.setUpdateNeeded();
    }
}
