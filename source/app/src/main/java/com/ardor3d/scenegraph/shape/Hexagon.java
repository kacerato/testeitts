package com.ardor3d.scenegraph.shape;

import com.ardor3d.math.Vector3;
import com.ardor3d.scenegraph.Mesh;
import com.ardor3d.util.export.InputCapsule;
import com.ardor3d.util.export.OutputCapsule;
import com.ardor3d.util.geom.BufferUtils;
import java.io.IOException;

public class Hexagon extends Mesh {
    private static final int NUM_POINTS = 7;
    private static final int NUM_TRIS = 6;
    private static final long serialVersionUID = 1;
    private float _sideLength;

    public Hexagon() {
    }

    private void setIndexData() {
        this._meshData.getIndexBuffer().rewind();
        this._meshData.getIndices().put2(0);
        this._meshData.getIndices().put2(6);
        this._meshData.getIndices().put2(1);
        this._meshData.getIndices().put2(1);
        this._meshData.getIndices().put2(6);
        this._meshData.getIndices().put2(2);
        this._meshData.getIndices().put2(2);
        this._meshData.getIndices().put2(6);
        this._meshData.getIndices().put2(3);
        this._meshData.getIndices().put2(3);
        this._meshData.getIndices().put2(6);
        this._meshData.getIndices().put2(4);
        this._meshData.getIndices().put2(4);
        this._meshData.getIndices().put2(6);
        this._meshData.getIndices().put2(5);
        this._meshData.getIndices().put2(5);
        this._meshData.getIndices().put2(6);
        this._meshData.getIndices().put2(0);
    }

    private void setNormalData() {
        Vector3 vector3 = new Vector3(0.0d, 0.0d, 1.0d);
        for (int i10 = 0; i10 < 7; i10++) {
            BufferUtils.setInBuffer(vector3, this._meshData.getNormalBuffer(), i10);
        }
    }

    private void setTextureData() {
        this._meshData.getTextureCoords(0).getBuffer().put(0.25f).put(0.0f);
        this._meshData.getTextureCoords(0).getBuffer().put(0.75f).put(0.0f);
        this._meshData.getTextureCoords(0).getBuffer().put(1.0f).put(0.5f);
        this._meshData.getTextureCoords(0).getBuffer().put(0.75f).put(1.0f);
        this._meshData.getTextureCoords(0).getBuffer().put(0.25f).put(1.0f);
        this._meshData.getTextureCoords(0).getBuffer().put(0.0f).put(0.5f);
        this._meshData.getTextureCoords(0).getBuffer().put(0.5f).put(0.5f);
    }

    private void setVertexData() {
        this._meshData.getVertexBuffer().put(-(this._sideLength / 2.0f)).put(this._sideLength * 0.866f).put(0.0f);
        this._meshData.getVertexBuffer().put(this._sideLength / 2.0f).put(this._sideLength * 0.866f).put(0.0f);
        this._meshData.getVertexBuffer().put(this._sideLength).put(0.0f).put(0.0f);
        this._meshData.getVertexBuffer().put(this._sideLength / 2.0f).put((-this._sideLength) * 0.866f).put(0.0f);
        this._meshData.getVertexBuffer().put(-(this._sideLength / 2.0f)).put((-this._sideLength) * 0.866f).put(0.0f);
        this._meshData.getVertexBuffer().put(-this._sideLength).put(0.0f).put(0.0f);
        this._meshData.getVertexBuffer().put(0.0f).put(0.0f).put(0.0f);
    }

    @Override
    public void read(InputCapsule inputCapsule) throws IOException {
        super.read(inputCapsule);
        this._sideLength = inputCapsule.readInt("sideLength", 0);
    }

    @Override
    public void write(OutputCapsule outputCapsule) throws IOException {
        super.write(outputCapsule);
        outputCapsule.write(this._sideLength, "sideLength", 0.0f);
    }

    public Hexagon(String str, float f10) {
        super(str);
        this._sideLength = f10;
        this._meshData.setVertexBuffer(BufferUtils.createVector3Buffer(7));
        this._meshData.setNormalBuffer(BufferUtils.createVector3Buffer(7));
        this._meshData.setTextureBuffer(BufferUtils.createVector2Buffer(7), 0);
        this._meshData.setIndices(BufferUtils.createIndexBufferData(18, 6));
        setVertexData();
        setIndexData();
        setTextureData();
        setNormalData();
    }
}
