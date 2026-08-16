package com.ardor3d.scenegraph.shape;

import com.ardor3d.math.Vector2;
import com.ardor3d.math.Vector3;
import com.ardor3d.scenegraph.Mesh;
import com.ardor3d.util.export.InputCapsule;
import com.ardor3d.util.export.OutputCapsule;
import com.ardor3d.util.geom.BufferUtils;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.FloatBuffer;

public class Dodecahedron extends Mesh {
    private static final int NUM_POINTS = 20;
    private static final int NUM_TRIS = 36;
    private static final long serialVersionUID = 1;
    private double _sideLength;

    public Dodecahedron() {
    }

    private void setIndexData() {
        ByteBuffer byteBuffer = (ByteBuffer) this._meshData.getIndexBuffer();
        byteBuffer.rewind();
        byteBuffer.put((byte) 0).put((byte) 8).put((byte) 9);
        byteBuffer.put((byte) 0).put((byte) 9).put((byte) 4);
        byteBuffer.put((byte) 0).put((byte) 4).put((byte) 16);
        byteBuffer.put((byte) 0).put((byte) 12).put((byte) 13);
        byteBuffer.put((byte) 0).put((byte) 13).put((byte) 1);
        byteBuffer.put((byte) 0).put((byte) 1).put((byte) 8);
        byteBuffer.put((byte) 0).put((byte) 16).put((byte) 17);
        byteBuffer.put((byte) 0).put((byte) 17).put((byte) 2);
        byteBuffer.put((byte) 0).put((byte) 2).put((byte) 12);
        byteBuffer.put((byte) 8).put((byte) 1).put((byte) 18);
        byteBuffer.put((byte) 8).put((byte) 18).put((byte) 5);
        byteBuffer.put((byte) 8).put((byte) 5).put((byte) 9);
        byteBuffer.put((byte) 12).put((byte) 2).put((byte) 10);
        byteBuffer.put((byte) 12).put((byte) 10).put((byte) 3);
        byteBuffer.put((byte) 12).put((byte) 3).put((byte) 13);
        byteBuffer.put((byte) 16).put((byte) 4).put((byte) 14);
        byteBuffer.put((byte) 16).put((byte) 14).put((byte) 6);
        byteBuffer.put((byte) 16).put((byte) 6).put((byte) 17);
        byteBuffer.put((byte) 9).put((byte) 5).put((byte) 15);
        byteBuffer.put((byte) 9).put((byte) 15).put((byte) 14);
        byteBuffer.put((byte) 9).put((byte) 14).put((byte) 4);
        byteBuffer.put((byte) 6).put((byte) 11).put((byte) 10);
        byteBuffer.put((byte) 6).put((byte) 10).put((byte) 2);
        byteBuffer.put((byte) 6).put((byte) 2).put((byte) 17);
        byteBuffer.put((byte) 3).put((byte) 19).put((byte) 18);
        byteBuffer.put((byte) 3).put((byte) 18).put((byte) 1);
        byteBuffer.put((byte) 3).put((byte) 1).put((byte) 13);
        byteBuffer.put((byte) 7).put((byte) 15).put((byte) 5);
        byteBuffer.put((byte) 7).put((byte) 5).put((byte) 18);
        byteBuffer.put((byte) 7).put((byte) 18).put((byte) 19);
        byteBuffer.put((byte) 7).put((byte) 11).put((byte) 6);
        byteBuffer.put((byte) 7).put((byte) 6).put((byte) 14);
        byteBuffer.put((byte) 7).put((byte) 14).put((byte) 15);
        byteBuffer.put((byte) 7).put((byte) 19).put((byte) 3);
        byteBuffer.put((byte) 7).put((byte) 3).put((byte) 10);
        byteBuffer.put((byte) 7).put((byte) 10).put((byte) 11);
    }

    private void setNormalData() {
        Vector3 vector3 = new Vector3();
        for (int i10 = 0; i10 < 20; i10++) {
            BufferUtils.populateFromBuffer(vector3, this._meshData.getVertexBuffer(), i10);
            vector3.normalizeLocal();
            BufferUtils.setInBuffer(vector3, this._meshData.getNormalBuffer(), i10);
        }
    }

    private void setTextureData() {
        Vector2 vector2 = new Vector2();
        Vector3 vector3 = new Vector3();
        for (int i10 = 0; i10 < 20; i10++) {
            BufferUtils.populateFromBuffer(vector3, this._meshData.getVertexBuffer(), i10);
            if (Math.abs(vector3.getZ()) < this._sideLength) {
                vector2.setX(((Math.atan2(vector3.getY(), vector3.getX()) * 0.3183098861837907d) + 1.0d) * 0.5d);
            } else {
                vector2.setX(0.5d);
            }
            vector2.setY(Math.acos(vector3.getZ() / this._sideLength) * 0.3183098861837907d);
            this._meshData.getTextureCoords(0).getBuffer().put((float) vector2.getX()).put((float) vector2.getY());
        }
    }

    private void setVertexData() {
        double sqrt = 1.0d / Math.sqrt(3.0d);
        double sqrt2 = Math.sqrt((3.0d - Math.sqrt(5.0d)) / 6.0d);
        double sqrt3 = Math.sqrt((Math.sqrt(5.0d) + 3.0d) / 6.0d);
        double d10 = this._sideLength;
        double d11 = sqrt * d10;
        double d12 = sqrt2 * d10;
        double d13 = sqrt3 * d10;
        FloatBuffer vertexBuffer = this._meshData.getVertexBuffer();
        vertexBuffer.rewind();
        float f10 = (float) d11;
        vertexBuffer.put(f10).put(f10).put(f10);
        float f11 = (float) (-d11);
        vertexBuffer.put(f10).put(f10).put(f11);
        vertexBuffer.put(f10).put(f11).put(f10);
        vertexBuffer.put(f10).put(f11).put(f11);
        vertexBuffer.put(f11).put(f10).put(f10);
        vertexBuffer.put(f11).put(f10).put(f11);
        vertexBuffer.put(f11).put(f11).put(f10);
        vertexBuffer.put(f11).put(f11).put(f11);
        float f12 = (float) d12;
        float f13 = (float) d13;
        vertexBuffer.put(f12).put(f13).put(0.0f);
        float f14 = (float) (-d12);
        vertexBuffer.put(f14).put(f13).put(0.0f);
        float f15 = (float) (-d13);
        vertexBuffer.put(f12).put(f15).put(0.0f);
        vertexBuffer.put(f14).put(f15).put(0.0f);
        vertexBuffer.put(f13).put(0.0f).put(f12);
        vertexBuffer.put(f13).put(0.0f).put(f14);
        vertexBuffer.put(f15).put(0.0f).put(f12);
        vertexBuffer.put(f15).put(0.0f).put(f14);
        vertexBuffer.put(0.0f).put(f12).put(f13);
        vertexBuffer.put(0.0f).put(f14).put(f13);
        vertexBuffer.put(0.0f).put(f12).put(f15);
        vertexBuffer.put(0.0f).put(f14).put(f15);
    }

    @Override
    public void read(InputCapsule inputCapsule) throws IOException {
        super.read(inputCapsule);
        this._sideLength = inputCapsule.readInt("sideLength", 0);
    }

    @Override
    public void write(OutputCapsule outputCapsule) throws IOException {
        super.write(outputCapsule);
        outputCapsule.write(this._sideLength, "sideLength", 0.0d);
    }

    public Dodecahedron(String str, double d10) {
        super(str);
        this._sideLength = d10;
        this._meshData.setVertexBuffer(BufferUtils.createVector3Buffer(20));
        this._meshData.setNormalBuffer(BufferUtils.createVector3Buffer(20));
        this._meshData.setTextureBuffer(BufferUtils.createVector2Buffer(20), 0);
        this._meshData.setIndices(BufferUtils.createIndexBufferData(108, 19));
        setVertexData();
        setNormalData();
        setTextureData();
        setIndexData();
    }
}
