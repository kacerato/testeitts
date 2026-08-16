package com.ardor3d.scenegraph.shape;

import com.ardor3d.math.Vector3;
import com.ardor3d.math.type.ReadOnlyVector3;
import com.ardor3d.scenegraph.IndexBufferData;
import com.ardor3d.scenegraph.Mesh;
import com.ardor3d.scenegraph.MeshData;
import com.ardor3d.util.export.InputCapsule;
import com.ardor3d.util.export.OutputCapsule;
import com.ardor3d.util.geom.BufferUtils;
import java.io.IOException;
import java.nio.FloatBuffer;

public class RoundedBox extends Mesh {
    private static final long serialVersionUID = 1;
    private final Vector3 _border;
    private final Vector3 _extent;
    private final Vector3 _slope;

    public RoundedBox(String str) {
        super(str);
        this._extent = new Vector3(0.5d, 0.5d, 0.5d);
        this._border = new Vector3(0.05d, 0.05d, 0.05d);
        this._slope = new Vector3(0.02d, 0.02d, 0.02d);
        setData();
    }

    private void put(FloatBuffer floatBuffer, FloatBuffer floatBuffer2, Vector3 vector3) {
        floatBuffer.put((float) vector3.getX()).put((float) vector3.getY()).put((float) vector3.getZ());
        Vector3 normalize = vector3.normalize(Vector3.fetchTempInstance());
        floatBuffer2.put((float) normalize.getX()).put((float) normalize.getY()).put((float) normalize.getZ());
        Vector3.releaseTempInstance(normalize);
    }

    private void setData() {
        setVertexAndNormalData();
        setTextureData();
        setIndexData();
    }

    private void setIndexData() {
        if (this._meshData.getIndexBuffer() == null) {
            IndexBufferData<?> createIndexBufferData = BufferUtils.createIndexBufferData(180, 47);
            int[] iArr = {0, 4, 1, 1, 4, 5, 1, 5, 3, 3, 5, 7, 3, 7, 2, 2, 7, 6, 2, 6, 0, 0, 6, 4, 4, 6, 5, 5, 6, 7};
            for (int i10 = 0; i10 < 6; i10++) {
                for (int i11 = 0; i11 < 30; i11++) {
                    createIndexBufferData.put2((i10 * 30) + i11, (i10 * 8) + iArr[i11]);
                }
            }
            this._meshData.setIndices(createIndexBufferData);
        }
    }

    private void setTextureData() {
        if (this._meshData.getTextureCoords(0) == null) {
            this._meshData.setTextureBuffer(BufferUtils.createVector2Buffer(48), 0);
            FloatBuffer buffer = this._meshData.getTextureCoords(0).getBuffer();
            double[][] dArr = {new double[]{(this._border.getX() * 0.5d) / (this._extent.getX() + this._slope.getX()), (this._border.getZ() * 0.5d) / (this._extent.getZ() + this._slope.getZ())}, new double[]{(this._border.getX() * 0.5d) / (this._extent.getX() + this._slope.getX()), (this._border.getY() * 0.5d) / (this._extent.getY() + this._slope.getY())}, new double[]{(this._border.getZ() * 0.5d) / (this._extent.getZ() + this._slope.getZ()), (this._border.getY() * 0.5d) / (this._extent.getY() + this._slope.getY())}, new double[]{(this._border.getX() * 0.5d) / (this._extent.getX() + this._slope.getX()), (this._border.getY() * 0.5d) / (this._extent.getY() + this._slope.getY())}, new double[]{(this._border.getZ() * 0.5d) / (this._extent.getZ() + this._slope.getZ()), (this._border.getY() * 0.5d) / (this._extent.getY() + this._slope.getY())}, new double[]{(this._border.getX() * 0.5d) / (this._extent.getX() + this._slope.getX()), (this._border.getZ() * 0.5d) / (this._extent.getZ() + this._slope.getZ())}};
            for (int i10 = 0; i10 < 6; i10++) {
                buffer.put(1.0f).put(0.0f);
                buffer.put(0.0f).put(0.0f);
                buffer.put(1.0f).put(1.0f);
                buffer.put(0.0f).put(1.0f);
                buffer.put((float) (1.0d - dArr[i10][0])).put((float) (dArr[i10][1] + 0.0d));
                buffer.put((float) (dArr[i10][0] + 0.0d)).put((float) (dArr[i10][1] + 0.0d));
                buffer.put((float) (1.0d - dArr[i10][0])).put((float) (1.0d - dArr[i10][1]));
                buffer.put((float) (dArr[i10][0] + 0.0d)).put((float) (1.0d - dArr[i10][1]));
            }
        }
    }

    private void setVertexAndNormalData() {
        MeshData meshData = this._meshData;
        meshData.setVertexBuffer(BufferUtils.createVector3Buffer(meshData.getVertexBuffer(), 48));
        this._meshData.setNormalBuffer(BufferUtils.createVector3Buffer(48));
        Vector3[] computeVertices = computeVertices();
        FloatBuffer vertexBuffer = this._meshData.getVertexBuffer();
        FloatBuffer normalBuffer = this._meshData.getNormalBuffer();
        put(vertexBuffer, normalBuffer, computeVertices[0]);
        put(vertexBuffer, normalBuffer, computeVertices[1]);
        put(vertexBuffer, normalBuffer, computeVertices[2]);
        put(vertexBuffer, normalBuffer, computeVertices[3]);
        put(vertexBuffer, normalBuffer, computeVertices[8]);
        put(vertexBuffer, normalBuffer, computeVertices[9]);
        put(vertexBuffer, normalBuffer, computeVertices[10]);
        put(vertexBuffer, normalBuffer, computeVertices[11]);
        put(vertexBuffer, normalBuffer, computeVertices[1]);
        put(vertexBuffer, normalBuffer, computeVertices[0]);
        put(vertexBuffer, normalBuffer, computeVertices[5]);
        put(vertexBuffer, normalBuffer, computeVertices[4]);
        put(vertexBuffer, normalBuffer, computeVertices[13]);
        put(vertexBuffer, normalBuffer, computeVertices[12]);
        put(vertexBuffer, normalBuffer, computeVertices[15]);
        put(vertexBuffer, normalBuffer, computeVertices[14]);
        put(vertexBuffer, normalBuffer, computeVertices[3]);
        put(vertexBuffer, normalBuffer, computeVertices[1]);
        put(vertexBuffer, normalBuffer, computeVertices[7]);
        put(vertexBuffer, normalBuffer, computeVertices[5]);
        put(vertexBuffer, normalBuffer, computeVertices[17]);
        put(vertexBuffer, normalBuffer, computeVertices[16]);
        put(vertexBuffer, normalBuffer, computeVertices[19]);
        put(vertexBuffer, normalBuffer, computeVertices[18]);
        put(vertexBuffer, normalBuffer, computeVertices[2]);
        put(vertexBuffer, normalBuffer, computeVertices[3]);
        put(vertexBuffer, normalBuffer, computeVertices[6]);
        put(vertexBuffer, normalBuffer, computeVertices[7]);
        put(vertexBuffer, normalBuffer, computeVertices[20]);
        put(vertexBuffer, normalBuffer, computeVertices[21]);
        put(vertexBuffer, normalBuffer, computeVertices[22]);
        put(vertexBuffer, normalBuffer, computeVertices[23]);
        put(vertexBuffer, normalBuffer, computeVertices[0]);
        put(vertexBuffer, normalBuffer, computeVertices[2]);
        put(vertexBuffer, normalBuffer, computeVertices[4]);
        put(vertexBuffer, normalBuffer, computeVertices[6]);
        put(vertexBuffer, normalBuffer, computeVertices[24]);
        put(vertexBuffer, normalBuffer, computeVertices[25]);
        put(vertexBuffer, normalBuffer, computeVertices[26]);
        put(vertexBuffer, normalBuffer, computeVertices[27]);
        put(vertexBuffer, normalBuffer, computeVertices[5]);
        put(vertexBuffer, normalBuffer, computeVertices[4]);
        put(vertexBuffer, normalBuffer, computeVertices[7]);
        put(vertexBuffer, normalBuffer, computeVertices[6]);
        put(vertexBuffer, normalBuffer, computeVertices[29]);
        put(vertexBuffer, normalBuffer, computeVertices[28]);
        put(vertexBuffer, normalBuffer, computeVertices[31]);
        put(vertexBuffer, normalBuffer, computeVertices[30]);
    }

    public Vector3[] computeVertices() {
        return new Vector3[]{new Vector3(-this._extent.getX(), -this._extent.getY(), this._extent.getZ()), new Vector3(this._extent.getX(), -this._extent.getY(), this._extent.getZ()), new Vector3(-this._extent.getX(), -this._extent.getY(), -this._extent.getZ()), new Vector3(this._extent.getX(), -this._extent.getY(), -this._extent.getZ()), new Vector3(-this._extent.getX(), this._extent.getY(), this._extent.getZ()), new Vector3(this._extent.getX(), this._extent.getY(), this._extent.getZ()), new Vector3(-this._extent.getX(), this._extent.getY(), -this._extent.getZ()), new Vector3(this._extent.getX(), this._extent.getY(), -this._extent.getZ()), new Vector3((-this._extent.getX()) + this._border.getX(), (-this._extent.getY()) - this._slope.getY(), this._extent.getZ() - this._border.getZ()), new Vector3(this._extent.getX() - this._border.getX(), (-this._extent.getY()) - this._slope.getY(), this._extent.getZ() - this._border.getZ()), new Vector3((-this._extent.getX()) + this._border.getX(), (-this._extent.getY()) - this._slope.getY(), (-this._extent.getZ()) + this._border.getZ()), new Vector3(this._extent.getX() - this._border.getX(), (-this._extent.getY()) - this._slope.getY(), (-this._extent.getZ()) + this._border.getZ()), new Vector3((-this._extent.getX()) + this._border.getX(), (-this._extent.getY()) + this._border.getY(), this._extent.getZ() + this._slope.getZ()), new Vector3(this._extent.getX() - this._border.getX(), (-this._extent.getY()) + this._border.getY(), this._extent.getZ() + this._slope.getZ()), new Vector3((-this._extent.getX()) + this._border.getX(), this._extent.getY() - this._border.getY(), this._extent.getZ() + this._slope.getZ()), new Vector3(this._extent.getX() - this._border.getX(), this._extent.getY() - this._border.getY(), this._extent.getZ() + this._slope.getZ()), new Vector3(this._extent.getX() + this._slope.getX(), (-this._extent.getY()) + this._border.getY(), this._extent.getZ() - this._border.getZ()), new Vector3(this._extent.getX() + this._slope.getX(), (-this._extent.getY()) + this._border.getY(), (-this._extent.getZ()) + this._border.getZ()), new Vector3(this._extent.getX() + this._slope.getX(), this._extent.getY() - this._border.getY(), this._extent.getZ() - this._border.getZ()), new Vector3(this._extent.getX() + this._slope.getX(), this._extent.getY() - this._border.getY(), (-this._extent.getZ()) + this._border.getZ()), new Vector3((-this._extent.getX()) + this._border.getX(), (-this._extent.getY()) + this._border.getY(), (-this._extent.getZ()) - this._slope.getZ()), new Vector3(this._extent.getX() - this._border.getX(), (-this._extent.getY()) + this._border.getY(), (-this._extent.getZ()) - this._slope.getZ()), new Vector3((-this._extent.getX()) + this._border.getX(), this._extent.getY() - this._border.getY(), (-this._extent.getZ()) - this._slope.getZ()), new Vector3(this._extent.getX() - this._border.getX(), this._extent.getY() - this._border.getY(), (-this._extent.getZ()) - this._slope.getZ()), new Vector3((-this._extent.getX()) - this._slope.getX(), (-this._extent.getY()) + this._border.getY(), this._extent.getZ() - this._border.getZ()), new Vector3((-this._extent.getX()) - this._slope.getX(), (-this._extent.getY()) + this._border.getY(), (-this._extent.getZ()) + this._border.getZ()), new Vector3((-this._extent.getX()) - this._slope.getX(), this._extent.getY() - this._border.getY(), this._extent.getZ() - this._border.getZ()), new Vector3((-this._extent.getX()) - this._slope.getX(), this._extent.getY() - this._border.getY(), (-this._extent.getZ()) + this._border.getZ()), new Vector3((-this._extent.getX()) + this._border.getX(), this._extent.getY() + this._slope.getY(), this._extent.getZ() - this._border.getZ()), new Vector3(this._extent.getX() - this._border.getX(), this._extent.getY() + this._slope.getY(), this._extent.getZ() - this._border.getZ()), new Vector3((-this._extent.getX()) + this._border.getX(), this._extent.getY() + this._slope.getY(), (-this._extent.getZ()) + this._border.getZ()), new Vector3(this._extent.getX() - this._border.getX(), this._extent.getY() + this._slope.getY(), (-this._extent.getZ()) + this._border.getZ())};
    }

    @Override
    public void read(InputCapsule inputCapsule) throws IOException {
        super.read(inputCapsule);
        Vector3 vector3 = this._extent;
        ReadOnlyVector3 readOnlyVector3 = Vector3.ZERO;
        vector3.set((Vector3) inputCapsule.readSavable("extent", new Vector3(readOnlyVector3)));
        this._border.set((Vector3) inputCapsule.readSavable("border", new Vector3(readOnlyVector3)));
        this._slope.set((Vector3) inputCapsule.readSavable("slope", new Vector3(readOnlyVector3)));
    }

    @Override
    public void write(OutputCapsule outputCapsule) throws IOException {
        super.write(outputCapsule);
        Vector3 vector3 = this._extent;
        ReadOnlyVector3 readOnlyVector3 = Vector3.ZERO;
        outputCapsule.write(vector3, "extent", new Vector3(readOnlyVector3));
        outputCapsule.write(this._border, "border", new Vector3(readOnlyVector3));
        outputCapsule.write(this._slope, "slope", new Vector3(readOnlyVector3));
    }

    public RoundedBox m1206clone() {
        return new RoundedBox(getName() + "_clone", this._extent.m1203clone(), this._border.m1203clone(), this._slope.m1203clone());
    }

    public RoundedBox(String str, Vector3 vector3) {
        super(str);
        Vector3 vector32 = new Vector3(0.5d, 0.5d, 0.5d);
        this._extent = vector32;
        this._border = new Vector3(0.05d, 0.05d, 0.05d);
        Vector3 vector33 = new Vector3(0.02d, 0.02d, 0.02d);
        this._slope = vector33;
        vector3.subtract(vector33, vector32);
        setData();
    }

    public RoundedBox(String str, Vector3 vector3, Vector3 vector32, Vector3 vector33) {
        super(str);
        Vector3 vector34 = new Vector3(0.5d, 0.5d, 0.5d);
        this._extent = vector34;
        Vector3 vector35 = new Vector3(0.05d, 0.05d, 0.05d);
        this._border = vector35;
        Vector3 vector36 = new Vector3(0.02d, 0.02d, 0.02d);
        this._slope = vector36;
        vector35.set(vector32);
        vector36.set(vector33);
        vector3.subtract(vector36, vector34);
        setData();
    }
}
