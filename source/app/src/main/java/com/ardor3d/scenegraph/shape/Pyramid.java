package com.ardor3d.scenegraph.shape;

import com.ardor3d.math.Vector3;
import com.ardor3d.scenegraph.IndexBufferData;
import com.ardor3d.scenegraph.Mesh;
import com.ardor3d.util.export.InputCapsule;
import com.ardor3d.util.export.OutputCapsule;
import com.ardor3d.util.geom.BufferUtils;
import java.io.IOException;
import java.nio.FloatBuffer;

public class Pyramid extends Mesh {
    private static final long serialVersionUID = 1;
    private double _height;
    private double _width;

    public Pyramid() {
    }

    /* JADX WARN: Type inference failed for: r1v3, types: [java.nio.Buffer] */
    private void setIndexData() {
        IndexBufferData<?> createIndexBufferData = BufferUtils.createIndexBufferData(18, 15);
        createIndexBufferData.put2(3).put2(2).put2(1);
        createIndexBufferData.put2(3).put2(1).put2(0);
        createIndexBufferData.put2(6).put2(5).put2(4);
        createIndexBufferData.put2(9).put2(8).put2(7);
        createIndexBufferData.put2(12).put2(11).put2(10);
        createIndexBufferData.put2(15).put2(14).put2(13);
        createIndexBufferData.getBuffer().rewind();
        this._meshData.setIndices(createIndexBufferData);
    }

    private void setNormalData() {
        FloatBuffer createVector3Buffer = BufferUtils.createVector3Buffer(16);
        createVector3Buffer.put(0.0f).put(-1.0f).put(0.0f);
        createVector3Buffer.put(0.0f).put(-1.0f).put(0.0f);
        createVector3Buffer.put(0.0f).put(-1.0f).put(0.0f);
        createVector3Buffer.put(0.0f).put(-1.0f).put(0.0f);
        createVector3Buffer.put(0.0f).put(0.70710677f).put(-0.70710677f);
        createVector3Buffer.put(0.0f).put(0.70710677f).put(-0.70710677f);
        createVector3Buffer.put(0.0f).put(0.70710677f).put(-0.70710677f);
        createVector3Buffer.put(0.70710677f).put(0.70710677f).put(0.0f);
        createVector3Buffer.put(0.70710677f).put(0.70710677f).put(0.0f);
        createVector3Buffer.put(0.70710677f).put(0.70710677f).put(0.0f);
        createVector3Buffer.put(0.0f).put(0.70710677f).put(0.70710677f);
        createVector3Buffer.put(0.0f).put(0.70710677f).put(0.70710677f);
        createVector3Buffer.put(0.0f).put(0.70710677f).put(0.70710677f);
        createVector3Buffer.put(-0.70710677f).put(0.70710677f).put(0.0f);
        createVector3Buffer.put(-0.70710677f).put(0.70710677f).put(0.0f);
        createVector3Buffer.put(-0.70710677f).put(0.70710677f).put(0.0f);
        createVector3Buffer.rewind();
        this._meshData.setNormalBuffer(createVector3Buffer);
    }

    private void setTextureData() {
        FloatBuffer createVector2Buffer = BufferUtils.createVector2Buffer(16);
        createVector2Buffer.put(1.0f).put(0.0f);
        createVector2Buffer.put(0.0f).put(0.0f);
        createVector2Buffer.put(0.0f).put(1.0f);
        createVector2Buffer.put(1.0f).put(1.0f);
        createVector2Buffer.put(1.0f).put(0.0f);
        createVector2Buffer.put(0.75f).put(0.0f);
        createVector2Buffer.put(0.5f).put(1.0f);
        createVector2Buffer.put(0.75f).put(0.0f);
        createVector2Buffer.put(0.5f).put(0.0f);
        createVector2Buffer.put(0.5f).put(1.0f);
        createVector2Buffer.put(0.5f).put(0.0f);
        createVector2Buffer.put(0.25f).put(0.0f);
        createVector2Buffer.put(0.5f).put(1.0f);
        createVector2Buffer.put(0.25f).put(0.0f);
        createVector2Buffer.put(0.0f).put(0.0f);
        createVector2Buffer.put(0.5f).put(1.0f);
        createVector2Buffer.rewind();
        this._meshData.setTextureBuffer(createVector2Buffer, 0);
    }

    private void setVertexData() {
        Vector3 vector3 = new Vector3(0.0d, this._height / 2.0d, 0.0d);
        double d10 = this._width;
        Vector3 vector32 = new Vector3((-d10) / 2.0d, (-this._height) / 2.0d, (-d10) / 2.0d);
        double d11 = this._width;
        Vector3 vector33 = new Vector3(d11 / 2.0d, (-this._height) / 2.0d, (-d11) / 2.0d);
        double d12 = this._width;
        Vector3 vector34 = new Vector3(d12 / 2.0d, (-this._height) / 2.0d, d12 / 2.0d);
        double d13 = this._width;
        Vector3 vector35 = new Vector3((-d13) / 2.0d, (-this._height) / 2.0d, d13 / 2.0d);
        FloatBuffer createVector3Buffer = BufferUtils.createVector3Buffer(16);
        createVector3Buffer.put(vector35.getXf()).put(vector35.getYf()).put(vector35.getZf());
        createVector3Buffer.put(vector34.getXf()).put(vector34.getYf()).put(vector34.getZf());
        createVector3Buffer.put(vector33.getXf()).put(vector33.getYf()).put(vector33.getZf());
        createVector3Buffer.put(vector32.getXf()).put(vector32.getYf()).put(vector32.getZf());
        createVector3Buffer.put(vector32.getXf()).put(vector32.getYf()).put(vector32.getZf());
        createVector3Buffer.put(vector33.getXf()).put(vector33.getYf()).put(vector33.getZf());
        createVector3Buffer.put(vector3.getXf()).put(vector3.getYf()).put(vector3.getZf());
        createVector3Buffer.put(vector33.getXf()).put(vector33.getYf()).put(vector33.getZf());
        createVector3Buffer.put(vector34.getXf()).put(vector34.getYf()).put(vector34.getZf());
        createVector3Buffer.put(vector3.getXf()).put(vector3.getYf()).put(vector3.getZf());
        createVector3Buffer.put(vector34.getXf()).put(vector34.getYf()).put(vector34.getZf());
        createVector3Buffer.put(vector35.getXf()).put(vector35.getYf()).put(vector35.getZf());
        createVector3Buffer.put(vector3.getXf()).put(vector3.getYf()).put(vector3.getZf());
        createVector3Buffer.put(vector35.getXf()).put(vector35.getYf()).put(vector35.getZf());
        createVector3Buffer.put(vector32.getXf()).put(vector32.getYf()).put(vector32.getZf());
        createVector3Buffer.put(vector3.getXf()).put(vector3.getYf()).put(vector3.getZf());
        createVector3Buffer.rewind();
        this._meshData.setVertexBuffer(createVector3Buffer);
    }

    @Override
    public void read(InputCapsule inputCapsule) throws IOException {
        super.read(inputCapsule);
        this._height = inputCapsule.readDouble("height", 0.0d);
        this._width = inputCapsule.readDouble("width", 0.0d);
    }

    @Override
    public void write(OutputCapsule outputCapsule) throws IOException {
        super.write(outputCapsule);
        outputCapsule.write(this._height, "height", 0.0d);
        outputCapsule.write(this._width, "width", 0.0d);
    }

    public Pyramid(String str, double d10, double d11) {
        super(str);
        this._width = d10;
        this._height = d11;
        setVertexData();
        setNormalData();
        setTextureData();
        setIndexData();
    }
}
