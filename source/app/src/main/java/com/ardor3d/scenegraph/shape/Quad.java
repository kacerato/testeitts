package com.ardor3d.scenegraph.shape;

import com.ardor3d.scenegraph.Mesh;
import com.ardor3d.util.geom.BufferUtils;
import java.nio.ByteBuffer;
import java.nio.FloatBuffer;

public class Quad extends Mesh {
    private static final long serialVersionUID = 1;
    protected double _height;
    protected double _width;

    public Quad() {
        this._width = 0.0d;
        this._height = 0.0d;
    }

    private void initialize(double d10, double d11) {
        this._meshData.setVertexBuffer(BufferUtils.createVector3Buffer(4));
        this._meshData.setNormalBuffer(BufferUtils.createVector3Buffer(4));
        FloatBuffer createVector2Buffer = BufferUtils.createVector2Buffer(4);
        this._meshData.setTextureBuffer(createVector2Buffer, 0);
        this._meshData.getNormalBuffer().put(0.0f).put(0.0f).put(1.0f);
        this._meshData.getNormalBuffer().put(0.0f).put(0.0f).put(1.0f);
        this._meshData.getNormalBuffer().put(0.0f).put(0.0f).put(1.0f);
        this._meshData.getNormalBuffer().put(0.0f).put(0.0f).put(1.0f);
        createVector2Buffer.put(0.0f).put(1.0f);
        createVector2Buffer.put(0.0f).put(0.0f);
        createVector2Buffer.put(1.0f).put(0.0f);
        createVector2Buffer.put(1.0f).put(1.0f);
        ByteBuffer createByteBuffer = BufferUtils.createByteBuffer(6);
        createByteBuffer.put(new byte[]{0, 1, 2, 0, 2, 3});
        createByteBuffer.rewind();
        this._meshData.setIndexBuffer(createByteBuffer);
        resize(d10, d11);
    }

    public double getHeight() {
        return this._height;
    }

    public double getWidth() {
        return this._width;
    }

    public void resize(double d10, double d11) {
        this._width = d10;
        this._height = d11;
        this._meshData.getVertexBuffer().clear();
        float f10 = (float) ((-d10) / 2.0d);
        float f11 = (float) (d11 / 2.0d);
        this._meshData.getVertexBuffer().put(f10).put(f11).put(0.0f);
        float f12 = (float) ((-d11) / 2.0d);
        this._meshData.getVertexBuffer().put(f10).put(f12).put(0.0f);
        float f13 = (float) (d10 / 2.0d);
        this._meshData.getVertexBuffer().put(f13).put(f12).put(0.0f);
        this._meshData.getVertexBuffer().put(f13).put(f11).put(0.0f);
    }

    public Quad(String str) {
        this(str, 1.0d, 1.0d);
    }

    public Quad(String str, double d10, double d11) {
        super(str);
        this._width = 0.0d;
        this._height = 0.0d;
        initialize(d10, d11);
    }
}
