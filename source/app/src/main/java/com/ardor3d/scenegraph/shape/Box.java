package com.ardor3d.scenegraph.shape;

import com.ardor3d.math.Vector3;
import com.ardor3d.math.type.ReadOnlyVector3;
import com.ardor3d.scenegraph.Mesh;
import com.ardor3d.util.export.InputCapsule;
import com.ardor3d.util.export.OutputCapsule;
import com.ardor3d.util.geom.BufferUtils;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.FloatBuffer;

public class Box extends Mesh {
    private final Vector3 _center;
    private double _xExtent;
    private double _yExtent;
    private double _zExtent;

    public Box() {
        this("unnamed Box");
    }

    private void setIndexData() {
        if (this._meshData.getIndexBuffer() == null) {
            ByteBuffer createByteBuffer = BufferUtils.createByteBuffer(36);
            createByteBuffer.put(new byte[]{2, 1, 0, 3, 2, 0, 6, 5, 4, 7, 6, 4, 10, 9, 8, 11, 10, 8, 14, 13, 12, 15, 14, 12, 18, 17, 16, 19, 18, 16, 22, 21, 20, 23, 22, 20});
            createByteBuffer.rewind();
            this._meshData.setIndexBuffer(createByteBuffer);
        }
    }

    private void setNormalData() {
        if (this._meshData.getNormalBuffer() == null) {
            this._meshData.setNormalBuffer(BufferUtils.createVector3Buffer(24));
            for (int i10 = 0; i10 < 4; i10++) {
                this._meshData.getNormalBuffer().put(0.0f).put(0.0f).put(-1.0f);
            }
            for (int i11 = 0; i11 < 4; i11++) {
                this._meshData.getNormalBuffer().put(1.0f).put(0.0f).put(0.0f);
            }
            for (int i12 = 0; i12 < 4; i12++) {
                this._meshData.getNormalBuffer().put(0.0f).put(0.0f).put(1.0f);
            }
            for (int i13 = 0; i13 < 4; i13++) {
                this._meshData.getNormalBuffer().put(-1.0f).put(0.0f).put(0.0f);
            }
            for (int i14 = 0; i14 < 4; i14++) {
                this._meshData.getNormalBuffer().put(0.0f).put(1.0f).put(0.0f);
            }
            for (int i15 = 0; i15 < 4; i15++) {
                this._meshData.getNormalBuffer().put(0.0f).put(-1.0f).put(0.0f);
            }
        }
    }

    private void setTextureData() {
        if (this._meshData.getTextureCoords(0) == null) {
            this._meshData.setTextureBuffer(BufferUtils.createVector2Buffer(24), 0);
            FloatBuffer textureBuffer = this._meshData.getTextureBuffer(0);
            for (int i10 = 0; i10 < 6; i10++) {
                textureBuffer.put(1.0f).put(0.0f);
                textureBuffer.put(0.0f).put(0.0f);
                textureBuffer.put(0.0f).put(1.0f);
                textureBuffer.put(1.0f).put(1.0f);
            }
        }
    }

    public Vector3[] computeVertices() {
        return new Vector3[]{this._center.add(-this._xExtent, -this._yExtent, -this._zExtent, null), this._center.add(this._xExtent, -this._yExtent, -this._zExtent, null), this._center.add(this._xExtent, this._yExtent, -this._zExtent, null), this._center.add(-this._xExtent, this._yExtent, -this._zExtent, null), this._center.add(this._xExtent, -this._yExtent, this._zExtent, null), this._center.add(-this._xExtent, -this._yExtent, this._zExtent, null), this._center.add(this._xExtent, this._yExtent, this._zExtent, null), this._center.add(-this._xExtent, this._yExtent, this._zExtent, null)};
    }

    public ReadOnlyVector3 getCenter() {
        return this._center;
    }

    public double getXExtent() {
        return this._xExtent;
    }

    public double getYExtent() {
        return this._yExtent;
    }

    public double getZExtent() {
        return this._zExtent;
    }

    @Override
    public void read(InputCapsule inputCapsule) throws IOException {
        super.read(inputCapsule);
        this._xExtent = inputCapsule.readDouble("xExtent", 0.0d);
        this._yExtent = inputCapsule.readDouble("yExtent", 0.0d);
        this._zExtent = inputCapsule.readDouble("zExtent", 0.0d);
        this._center.set((Vector3) inputCapsule.readSavable("center", new Vector3(Vector3.ZERO)));
    }

    public void setData(ReadOnlyVector3 readOnlyVector3, ReadOnlyVector3 readOnlyVector32) {
        this._center.set(readOnlyVector32).addLocal(readOnlyVector3).multiplyLocal(0.5d);
        setData(this._center, Math.abs(readOnlyVector32.getX() - this._center.getX()), Math.abs(readOnlyVector32.getY() - this._center.getY()), Math.abs(readOnlyVector32.getZ() - this._center.getZ()));
    }

    public void setVertexData() {
        if (this._meshData.getVertexBuffer() == null) {
            this._meshData.setVertexBuffer(BufferUtils.createVector3Buffer(24));
        }
        Vector3[] computeVertices = computeVertices();
        BufferUtils.setInBuffer(computeVertices[0], this._meshData.getVertexBuffer(), 0);
        BufferUtils.setInBuffer(computeVertices[1], this._meshData.getVertexBuffer(), 1);
        BufferUtils.setInBuffer(computeVertices[2], this._meshData.getVertexBuffer(), 2);
        BufferUtils.setInBuffer(computeVertices[3], this._meshData.getVertexBuffer(), 3);
        BufferUtils.setInBuffer(computeVertices[1], this._meshData.getVertexBuffer(), 4);
        BufferUtils.setInBuffer(computeVertices[4], this._meshData.getVertexBuffer(), 5);
        BufferUtils.setInBuffer(computeVertices[6], this._meshData.getVertexBuffer(), 6);
        BufferUtils.setInBuffer(computeVertices[2], this._meshData.getVertexBuffer(), 7);
        BufferUtils.setInBuffer(computeVertices[4], this._meshData.getVertexBuffer(), 8);
        BufferUtils.setInBuffer(computeVertices[5], this._meshData.getVertexBuffer(), 9);
        BufferUtils.setInBuffer(computeVertices[7], this._meshData.getVertexBuffer(), 10);
        BufferUtils.setInBuffer(computeVertices[6], this._meshData.getVertexBuffer(), 11);
        BufferUtils.setInBuffer(computeVertices[5], this._meshData.getVertexBuffer(), 12);
        BufferUtils.setInBuffer(computeVertices[0], this._meshData.getVertexBuffer(), 13);
        BufferUtils.setInBuffer(computeVertices[3], this._meshData.getVertexBuffer(), 14);
        BufferUtils.setInBuffer(computeVertices[7], this._meshData.getVertexBuffer(), 15);
        BufferUtils.setInBuffer(computeVertices[2], this._meshData.getVertexBuffer(), 16);
        BufferUtils.setInBuffer(computeVertices[6], this._meshData.getVertexBuffer(), 17);
        BufferUtils.setInBuffer(computeVertices[7], this._meshData.getVertexBuffer(), 18);
        BufferUtils.setInBuffer(computeVertices[3], this._meshData.getVertexBuffer(), 19);
        BufferUtils.setInBuffer(computeVertices[0], this._meshData.getVertexBuffer(), 20);
        BufferUtils.setInBuffer(computeVertices[5], this._meshData.getVertexBuffer(), 21);
        BufferUtils.setInBuffer(computeVertices[4], this._meshData.getVertexBuffer(), 22);
        BufferUtils.setInBuffer(computeVertices[1], this._meshData.getVertexBuffer(), 23);
    }

    @Override
    public void write(OutputCapsule outputCapsule) throws IOException {
        super.write(outputCapsule);
        outputCapsule.write(this._xExtent, "xExtent", 0.0d);
        outputCapsule.write(this._yExtent, "yExtent", 0.0d);
        outputCapsule.write(this._zExtent, "zExtent", 0.0d);
        outputCapsule.write(this._center, "center", new Vector3(Vector3.ZERO));
    }

    public Box(String str) {
        super(str);
        this._center = new Vector3(0.0d, 0.0d, 0.0d);
        setData(Vector3.ZERO, 0.5d, 0.5d, 0.5d);
    }

    public Box m1205clone() {
        return new Box(getName() + "_clone", this._center.m1203clone(), this._xExtent, this._yExtent, this._zExtent);
    }

    public Box(String str, ReadOnlyVector3 readOnlyVector3, ReadOnlyVector3 readOnlyVector32) {
        super(str);
        this._center = new Vector3(0.0d, 0.0d, 0.0d);
        setData(readOnlyVector3, readOnlyVector32);
    }

    public void setData(ReadOnlyVector3 readOnlyVector3, double d10, double d11, double d12) {
        if (readOnlyVector3 != null) {
            this._center.set(readOnlyVector3);
        }
        this._xExtent = d10;
        this._yExtent = d11;
        this._zExtent = d12;
        setVertexData();
        setNormalData();
        setTextureData();
        setIndexData();
    }

    public Box(String str, ReadOnlyVector3 readOnlyVector3, double d10, double d11, double d12) {
        super(str);
        this._center = new Vector3(0.0d, 0.0d, 0.0d);
        setData(readOnlyVector3, d10, d11, d12);
    }
}
