package com.ardor3d.scenegraph.shape;

import com.ardor3d.math.Vector2;
import com.ardor3d.math.Vector3;
import com.ardor3d.scenegraph.IndexBufferData;
import com.ardor3d.scenegraph.Mesh;
import com.ardor3d.util.export.InputCapsule;
import com.ardor3d.util.export.OutputCapsule;
import com.ardor3d.util.geom.BufferUtils;
import java.io.IOException;

public class Octahedron extends Mesh {
    private static final int NUM_POINTS = 6;
    private static final int NUM_TRIS = 8;
    private static final long serialVersionUID = 1;
    private double _sideLength;

    public Octahedron() {
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [java.nio.Buffer] */
    private void setIndexData() {
        IndexBufferData<?> indices = this._meshData.getIndices();
        indices.getBuffer().rewind();
        indices.put2(4).put2(0).put2(2);
        indices.put2(4).put2(2).put2(1);
        indices.put2(4).put2(1).put2(3);
        indices.put2(4).put2(3).put2(0);
        indices.put2(5).put2(2).put2(0);
        indices.put2(5).put2(1).put2(2);
        indices.put2(5).put2(3).put2(1);
        indices.put2(5).put2(0).put2(3);
    }

    private void setNormalData() {
        Vector3 vector3 = new Vector3();
        for (int i10 = 0; i10 < 6; i10++) {
            BufferUtils.populateFromBuffer(vector3, this._meshData.getVertexBuffer(), i10);
            vector3.normalizeLocal();
            BufferUtils.setInBuffer(vector3, this._meshData.getNormalBuffer(), i10);
        }
    }

    private void setTextureData() {
        Vector2 vector2 = new Vector2();
        Vector3 vector3 = new Vector3();
        for (int i10 = 0; i10 < 6; i10++) {
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
        float f10 = (float) this._sideLength;
        this._meshData.getVertexBuffer().put(f10).put(0.0f).put(0.0f);
        float f11 = -f10;
        this._meshData.getVertexBuffer().put(f11).put(0.0f).put(0.0f);
        this._meshData.getVertexBuffer().put(0.0f).put(f10).put(0.0f);
        this._meshData.getVertexBuffer().put(0.0f).put(f11).put(0.0f);
        this._meshData.getVertexBuffer().put(0.0f).put(0.0f).put(f10);
        this._meshData.getVertexBuffer().put(0.0f).put(0.0f).put(f11);
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

    public Octahedron(String str, double d10) {
        super(str);
        this._sideLength = d10;
        this._meshData.setVertexBuffer(BufferUtils.createVector3Buffer(6));
        this._meshData.setNormalBuffer(BufferUtils.createVector3Buffer(6));
        this._meshData.setTextureBuffer(BufferUtils.createVector2Buffer(6), 0);
        this._meshData.setIndices(BufferUtils.createIndexBufferData(24, 5));
        setVertexData();
        setNormalData();
        setTextureData();
        setIndexData();
    }
}
