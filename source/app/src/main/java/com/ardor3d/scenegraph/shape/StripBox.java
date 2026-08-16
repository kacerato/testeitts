package com.ardor3d.scenegraph.shape;

import com.ardor3d.math.Vector3;
import com.ardor3d.renderer.IndexMode;
import com.ardor3d.scenegraph.FloatBufferData;
import com.ardor3d.scenegraph.Mesh;
import com.ardor3d.scenegraph.MeshData;
import com.ardor3d.util.export.InputCapsule;
import com.ardor3d.util.export.OutputCapsule;
import com.ardor3d.util.geom.BufferUtils;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.FloatBuffer;

public class StripBox extends Mesh {
    private static final long serialVersionUID = 1;
    public final Vector3 _center;
    public double _xExtent;
    public double _yExtent;
    public double _zExtent;

    public StripBox() {
        super("temp");
        this._center = new Vector3(0.0d, 0.0d, 0.0d);
    }

    private void setIndexData() {
        this._meshData.setIndexMode(IndexMode.TriangleStrip);
        if (this._meshData.getIndexBuffer() == null) {
            ByteBuffer createByteBuffer = BufferUtils.createByteBuffer(14);
            createByteBuffer.put(new byte[]{2, 3, 6, 7, 5, 3, 0, 2, 1, 6, 4, 5, 1, 0});
            createByteBuffer.rewind();
            this._meshData.setIndexBuffer(createByteBuffer);
        }
    }

    private void setNormalData() {
        Vector3[] computeVertices = computeVertices();
        MeshData meshData = this._meshData;
        meshData.setNormalBuffer(BufferUtils.createVector3Buffer(meshData.getNormalBuffer(), 8));
        Vector3 vector3 = new Vector3();
        this._meshData.getNormalBuffer().clear();
        for (int i10 = 0; i10 < 8; i10++) {
            vector3.set(computeVertices[i10]).normalizeLocal();
            this._meshData.getNormalBuffer().put(vector3.getXf()).put(vector3.getYf()).put(vector3.getZf());
        }
    }

    private void setTextureData() {
        if (this._meshData.getTextureCoords(0) == null) {
            this._meshData.setTextureCoords(new FloatBufferData(BufferUtils.createVector2Buffer(8), 2), 0);
            FloatBuffer buffer = this._meshData.getTextureCoords(0).getBuffer();
            buffer.put(1.0f).put(0.0f);
            buffer.put(0.0f).put(0.0f);
            buffer.put(0.0f).put(1.0f);
            buffer.put(1.0f).put(1.0f);
            buffer.put(1.0f).put(0.0f);
            buffer.put(0.0f).put(0.0f);
            buffer.put(1.0f).put(1.0f);
            buffer.put(0.0f).put(1.0f);
        }
    }

    private void setVertexData() {
        MeshData meshData = this._meshData;
        meshData.setVertexBuffer(BufferUtils.createVector3Buffer(meshData.getVertexBuffer(), 8));
        Vector3[] computeVertices = computeVertices();
        this._meshData.getVertexBuffer().clear();
        this._meshData.getVertexBuffer().put(computeVertices[0].getXf()).put(computeVertices[0].getYf()).put(computeVertices[0].getZf());
        this._meshData.getVertexBuffer().put(computeVertices[1].getXf()).put(computeVertices[1].getYf()).put(computeVertices[1].getZf());
        this._meshData.getVertexBuffer().put(computeVertices[2].getXf()).put(computeVertices[2].getYf()).put(computeVertices[2].getZf());
        this._meshData.getVertexBuffer().put(computeVertices[3].getXf()).put(computeVertices[3].getYf()).put(computeVertices[3].getZf());
        this._meshData.getVertexBuffer().put(computeVertices[4].getXf()).put(computeVertices[4].getYf()).put(computeVertices[4].getZf());
        this._meshData.getVertexBuffer().put(computeVertices[5].getXf()).put(computeVertices[5].getYf()).put(computeVertices[5].getZf());
        this._meshData.getVertexBuffer().put(computeVertices[6].getXf()).put(computeVertices[6].getYf()).put(computeVertices[6].getZf());
        this._meshData.getVertexBuffer().put(computeVertices[7].getXf()).put(computeVertices[7].getYf()).put(computeVertices[7].getZf());
    }

    public Vector3[] computeVertices() {
        Vector3[] vector3Arr = {Vector3.UNIT_X.multiply(this._xExtent, Vector3.fetchTempInstance()), Vector3.UNIT_Y.multiply(this._yExtent, Vector3.fetchTempInstance()), Vector3.UNIT_Z.multiply(this._zExtent, Vector3.fetchTempInstance())};
        Vector3[] vector3Arr2 = {this._center.subtract(vector3Arr[0], new Vector3()).subtractLocal(vector3Arr[1]).subtractLocal(vector3Arr[2]), this._center.add(vector3Arr[0], new Vector3()).subtractLocal(vector3Arr[1]).subtractLocal(vector3Arr[2]), this._center.add(vector3Arr[0], new Vector3()).addLocal(vector3Arr[1]).subtractLocal(vector3Arr[2]), this._center.subtract(vector3Arr[0], new Vector3()).addLocal(vector3Arr[1]).subtractLocal(vector3Arr[2]), this._center.add(vector3Arr[0], new Vector3()).subtractLocal(vector3Arr[1]).addLocal(vector3Arr[2]), this._center.subtract(vector3Arr[0], new Vector3()).subtractLocal(vector3Arr[1]).addLocal(vector3Arr[2]), this._center.add(vector3Arr[0], new Vector3()).addLocal(vector3Arr[1]).addLocal(vector3Arr[2]), this._center.subtract(vector3Arr[0], new Vector3()).addLocal(vector3Arr[1]).addLocal(vector3Arr[2])};
        for (int i10 = 0; i10 < 3; i10++) {
            Vector3.releaseTempInstance(vector3Arr[i10]);
        }
        return vector3Arr2;
    }

    public Vector3 getCenter() {
        return this._center;
    }

    @Override
    public void read(InputCapsule inputCapsule) throws IOException {
        super.read(inputCapsule);
        this._xExtent = inputCapsule.readDouble("xExtent", 0.0d);
        this._yExtent = inputCapsule.readDouble("yExtent", 0.0d);
        this._zExtent = inputCapsule.readDouble("zExtent", 0.0d);
        this._center.set((Vector3) inputCapsule.readSavable("center", new Vector3(Vector3.ZERO)));
    }

    public void setData(Vector3 vector3, Vector3 vector32) {
        this._center.set(vector32).addLocal(vector3).multiplyLocal(0.5d);
        setData(this._center, vector32.getX() - this._center.getX(), vector32.getY() - this._center.getY(), vector32.getZ() - this._center.getZ());
    }

    @Override
    public void write(OutputCapsule outputCapsule) throws IOException {
        super.write(outputCapsule);
        outputCapsule.write(this._xExtent, "xExtent", 0.0d);
        outputCapsule.write(this._yExtent, "yExtent", 0.0d);
        outputCapsule.write(this._zExtent, "zExtent", 0.0d);
        outputCapsule.write(this._center, "center", new Vector3(Vector3.ZERO));
    }

    public StripBox m1207clone() {
        return new StripBox(getName() + "_clone", this._center.m1203clone(), this._xExtent, this._yExtent, this._zExtent);
    }

    public StripBox(String str) {
        super(str);
        this._center = new Vector3(0.0d, 0.0d, 0.0d);
    }

    public StripBox(String str, Vector3 vector3, Vector3 vector32) {
        super(str);
        this._center = new Vector3(0.0d, 0.0d, 0.0d);
        setData(vector3, vector32);
    }

    public void setData(Vector3 vector3, double d10, double d11, double d12) {
        if (vector3 != null) {
            this._center.set(vector3);
        }
        this._xExtent = d10;
        this._yExtent = d11;
        this._zExtent = d12;
        setVertexData();
        setNormalData();
        setTextureData();
        setIndexData();
    }

    public StripBox(String str, Vector3 vector3, double d10, double d11, double d12) {
        super(str);
        this._center = new Vector3(0.0d, 0.0d, 0.0d);
        setData(vector3, d10, d11, d12);
    }
}
