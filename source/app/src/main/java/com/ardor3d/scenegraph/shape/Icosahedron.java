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

public class Icosahedron extends Mesh {
    private static final int NUM_POINTS = 12;
    private static final long serialVersionUID = 1;
    private double _sideLength;

    public Icosahedron() {
    }

    private void setIndexData() {
        ByteBuffer createByteBuffer = BufferUtils.createByteBuffer(60);
        createByteBuffer.put(new byte[]{0, 8, 4, 0, 5, 10, 2, 4, 9, 2, 11, 5, 1, 6, 8, 1, 10, 7, 3, 9, 6, 3, 7, 11, 0, 10, 8, 1, 8, 10, 2, 9, 11, 3, 11, 9, 4, 2, 0, 5, 0, 2, 6, 1, 3, 7, 3, 1, 8, 6, 4, 9, 4, 6, 10, 5, 7, 11, 7, 5});
        createByteBuffer.rewind();
        this._meshData.setIndexBuffer(createByteBuffer);
    }

    private void setNormalData() {
        Vector3 vector3 = new Vector3();
        for (int i10 = 0; i10 < 12; i10++) {
            BufferUtils.populateFromBuffer(vector3, this._meshData.getVertexBuffer(), i10);
            vector3.normalizeLocal();
            BufferUtils.setInBuffer(vector3, this._meshData.getNormalBuffer(), i10);
        }
    }

    private void setTextureData() {
        Vector2 vector2 = new Vector2();
        Vector3 vector3 = new Vector3();
        for (int i10 = 0; i10 < 12; i10++) {
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
        double sqrt = (Math.sqrt(5.0d) + 1.0d) * 0.5d;
        double sqrt2 = 1.0d / Math.sqrt((sqrt * sqrt) + 1.0d);
        double d10 = this._sideLength;
        float f10 = (float) (sqrt * sqrt2 * d10);
        float f11 = (float) (sqrt2 * d10);
        FloatBuffer vertexBuffer = this._meshData.getVertexBuffer();
        vertexBuffer.rewind();
        vertexBuffer.put(f10).put(f11).put(0.0f);
        float f12 = -f10;
        vertexBuffer.put(f12).put(f11).put(0.0f);
        float f13 = -f11;
        vertexBuffer.put(f10).put(f13).put(0.0f);
        vertexBuffer.put(f12).put(f13).put(0.0f);
        vertexBuffer.put(f11).put(0.0f).put(f10);
        vertexBuffer.put(f11).put(0.0f).put(f12);
        vertexBuffer.put(f13).put(0.0f).put(f10);
        vertexBuffer.put(f13).put(0.0f).put(f12);
        vertexBuffer.put(0.0f).put(f10).put(f11);
        vertexBuffer.put(0.0f).put(f12).put(f11);
        vertexBuffer.put(0.0f).put(f10).put(f13);
        vertexBuffer.put(0.0f).put(f12).put(f13);
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

    public Icosahedron(String str, double d10) {
        super(str);
        this._sideLength = d10;
        this._meshData.setVertexBuffer(BufferUtils.createVector3Buffer(12));
        this._meshData.setNormalBuffer(BufferUtils.createVector3Buffer(12));
        this._meshData.setTextureBuffer(BufferUtils.createVector2Buffer(12), 0);
        setVertexData();
        setNormalData();
        setTextureData();
        setIndexData();
    }
}
