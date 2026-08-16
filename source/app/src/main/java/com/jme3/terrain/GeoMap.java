package com.jme3.terrain;

import com.jme3.export.InputCapsule;
import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.export.OutputCapsule;
import com.jme3.export.Savable;
import com.jme3.math.Vector2f;
import com.jme3.math.Vector3f;
import com.jme3.scene.Mesh;
import com.jme3.scene.VertexBuffer;
import com.jme3.util.BufferUtils;
import java.io.IOException;
import java.nio.BufferUnderflowException;
import java.nio.FloatBuffer;
import java.nio.IntBuffer;

public class GeoMap implements Savable {
    static final boolean $assertionsDisabled = false;
    protected float[] hdata;
    protected int height;
    protected int maxval;
    protected int width;

    public GeoMap() {
    }

    public Mesh createMesh(Vector3f vector3f, Vector2f vector2f, boolean z10) {
        FloatBuffer writeVertexArray = writeVertexArray(null, vector3f, z10);
        FloatBuffer writeTexCoordArray = writeTexCoordArray(null, Vector2f.ZERO, vector2f);
        FloatBuffer writeNormalArray = writeNormalArray(null, vector3f);
        IntBuffer writeIndexArray = writeIndexArray(null);
        Mesh mesh = new Mesh();
        mesh.setBuffer(VertexBuffer.Type.Position, 3, writeVertexArray);
        mesh.setBuffer(VertexBuffer.Type.Normal, 3, writeNormalArray);
        mesh.setBuffer(VertexBuffer.Type.TexCoord, 2, writeTexCoordArray);
        mesh.setBuffer(VertexBuffer.Type.Index, 3, writeIndexArray);
        mesh.setStatic();
        mesh.updateBound();
        return mesh;
    }

    public int getHeight() {
        return this.height;
    }

    public float[] getHeightArray() {
        if (isLoaded()) {
            return this.hdata;
        }
        return null;
    }

    public int getMaximumValue() {
        return this.maxval;
    }

    public Vector2f getUV(int i10, Vector2f vector2f) {
        return vector2f;
    }

    public float getValue(int i10, int i11) {
        return this.hdata[(i11 * this.width) + i10];
    }

    public int getWidth() {
        return this.width;
    }

    public boolean isLoaded() {
        return true;
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        FloatBuffer readFloatBuffer;
        InputCapsule capsule = jmeImporter.getCapsule(this);
        float[] readFloatArray = capsule.readFloatArray("hdataarray", null);
        this.hdata = readFloatArray;
        if (readFloatArray == null && (readFloatBuffer = capsule.readFloatBuffer("hdata", null)) != null) {
            float[] fArr = new float[readFloatBuffer.limit()];
            this.hdata = fArr;
            readFloatBuffer.get(fArr);
        }
        this.width = capsule.readInt("width", 0);
        this.height = capsule.readInt("height", 0);
        this.maxval = capsule.readInt("maxval", 0);
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        OutputCapsule capsule = jmeExporter.getCapsule(this);
        capsule.write(this.hdata, "hdataarray", (float[]) null);
        capsule.write(this.width, "width", 0);
        capsule.write(this.height, "height", 0);
        capsule.write(this.maxval, "maxval", 0);
    }

    public IntBuffer writeIndexArray(IntBuffer intBuffer) {
        int width = (getWidth() - 1) * (getHeight() - 1);
        if (intBuffer == null) {
            intBuffer = BufferUtils.createIntBuffer(width * 6);
        } else if (intBuffer.remaining() < width * 6) {
            throw new BufferUnderflowException();
        }
        int i10 = 0;
        for (int i11 = 0; i11 < getHeight() - 1; i11++) {
            int i12 = 0;
            while (i12 < getWidth() - 1) {
                intBuffer.put(i10).put(getWidth() + i10).put(getWidth() + i10 + 1);
                int i13 = i10 + 1;
                intBuffer.put(getWidth() + i10 + 1).put(i13).put(i10);
                i10 = i12 == getWidth() + (-2) ? i10 + 2 : i13;
                i12++;
            }
        }
        intBuffer.flip();
        return intBuffer;
    }

    public FloatBuffer writeNormalArray(FloatBuffer floatBuffer, Vector3f vector3f) {
        if (floatBuffer == null) {
            floatBuffer = BufferUtils.createFloatBuffer(getWidth() * getHeight() * 3);
        } else if (floatBuffer.remaining() < getWidth() * getHeight() * 3) {
            throw new BufferUnderflowException();
        }
        floatBuffer.rewind();
        Vector3f vector3f2 = new Vector3f();
        Vector3f vector3f3 = new Vector3f();
        Vector3f vector3f4 = new Vector3f();
        Vector3f vector3f5 = new Vector3f();
        int i10 = 0;
        for (int i11 = 0; i11 < getHeight(); i11++) {
            for (int i12 = 0; i12 < getWidth(); i12++) {
                float f10 = i12;
                float f11 = i11;
                vector3f4.set(f10, getValue(i12, i11), f11);
                if (i11 == getHeight() - 1) {
                    if (i12 == getWidth() - 1) {
                        int i13 = i11 - 1;
                        vector3f3.set(f10, getValue(i12, i13), i13);
                        int i14 = i12 - 1;
                        vector3f2.set(i14, getValue(i14, i11), f11);
                    } else {
                        int i15 = i12 + 1;
                        vector3f3.set(i15, getValue(i15, i11), f11);
                        int i16 = i11 - 1;
                        vector3f2.set(f10, getValue(i12, i16), i16);
                    }
                } else if (i12 == getWidth() - 1) {
                    int i17 = i12 - 1;
                    vector3f3.set(i17, getValue(i17, i11), f11);
                    int i18 = i11 + 1;
                    vector3f2.set(f10, getValue(i12, i18), i18);
                } else {
                    int i19 = i11 + 1;
                    vector3f3.set(f10, getValue(i12, i19), i19);
                    int i20 = i12 + 1;
                    vector3f2.set(i20, getValue(i20, i11), f11);
                }
                vector3f5.set(vector3f3).subtractLocal(vector3f4).crossLocal(vector3f2.subtractLocal(vector3f4));
                vector3f5.multLocal(vector3f).normalizeLocal();
                BufferUtils.setInBuffer(vector3f5, floatBuffer, i10);
                i10++;
            }
        }
        return floatBuffer;
    }

    public FloatBuffer writeTexCoordArray(FloatBuffer floatBuffer, Vector2f vector2f, Vector2f vector2f2) {
        if (floatBuffer == null) {
            floatBuffer = BufferUtils.createFloatBuffer(getWidth() * getHeight() * 2);
        } else if (floatBuffer.remaining() < getWidth() * getHeight() * 2) {
            throw new BufferUnderflowException();
        }
        if (vector2f == null) {
            vector2f = new Vector2f();
        }
        Vector2f vector2f3 = new Vector2f();
        for (int i10 = 0; i10 < getHeight(); i10++) {
            for (int i11 = 0; i11 < getWidth(); i11++) {
                getUV(i11, i10, vector2f3);
                floatBuffer.put(vector2f.f81609x + (vector2f3.f81609x * vector2f2.f81609x));
                floatBuffer.put(vector2f.f81610y + (vector2f3.f81610y * vector2f2.f81610y));
            }
        }
        return floatBuffer;
    }

    public FloatBuffer writeVertexArray(FloatBuffer floatBuffer, Vector3f vector3f, boolean z10) {
        if (floatBuffer == null) {
            floatBuffer = BufferUtils.createFloatBuffer(this.width * this.height * 3);
        } else if (floatBuffer.remaining() < this.width * this.height * 3) {
            throw new BufferUnderflowException();
        }
        Vector3f vector3f2 = new Vector3f((-getWidth()) * vector3f.f81611x * 0.5f, 0.0f, (-getWidth()) * vector3f.f81613z * 0.5f);
        if (!z10) {
            vector3f2.zero();
        }
        int i10 = 0;
        for (int i11 = 0; i11 < this.height; i11++) {
            int i12 = 0;
            while (i12 < this.width) {
                floatBuffer.put((i12 * vector3f.f81611x) + vector3f2.f81611x);
                floatBuffer.put(this.hdata[i10] * vector3f.f81612y);
                floatBuffer.put((i11 * vector3f.f81613z) + vector3f2.f81613z);
                i12++;
                i10++;
            }
        }
        return floatBuffer;
    }

    public GeoMap(float[] fArr, int i10, int i11, int i12) {
        this.hdata = fArr;
        this.width = i10;
        this.height = i11;
        this.maxval = i12;
    }

    public Vector2f getUV(int i10, int i11, Vector2f vector2f) {
        vector2f.set(i10 / getWidth(), i11 / getHeight());
        return vector2f;
    }

    public float getValue(int i10) {
        return this.hdata[i10];
    }
}
