package com.ardor3d.scenegraph.shape;

import com.ardor3d.math.MathUtils;
import com.ardor3d.math.Vector3;
import com.ardor3d.math.type.ReadOnlyVector3;
import com.ardor3d.scenegraph.FloatBufferData;
import com.ardor3d.scenegraph.Mesh;
import com.ardor3d.util.export.InputCapsule;
import com.ardor3d.util.export.OutputCapsule;
import com.ardor3d.util.geom.BufferUtils;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.VFXEffects.TestVFXEffect;
import java.io.IOException;

public class Sphere extends Mesh {
    private static final long serialVersionUID = 1;
    public final Vector3 _center;
    protected int _radialSamples;
    public double _radius;
    protected TextureMode _textureMode;
    protected boolean _viewInside;
    protected int _zSamples;

    public enum TextureMode {
        Linear,
        Projected,
        Polar
    }

    public Sphere() {
        this._center = new Vector3();
        this._textureMode = TextureMode.Linear;
        this._viewInside = false;
    }

    private void setGeometryData() {
        int i10;
        int i11;
        int i12 = ((this._zSamples - 2) * (this._radialSamples + 1)) + 2;
        FloatBufferData vertexCoords = this._meshData.getVertexCoords();
        if (vertexCoords == null) {
            this._meshData.setVertexBuffer(BufferUtils.createVector3Buffer(i12));
        } else {
            vertexCoords.setBuffer(BufferUtils.createVector3Buffer(vertexCoords.getBuffer(), i12));
        }
        FloatBufferData normalCoords = this._meshData.getNormalCoords();
        if (normalCoords == null) {
            this._meshData.setNormalBuffer(BufferUtils.createVector3Buffer(i12));
        } else {
            normalCoords.setBuffer(BufferUtils.createVector3Buffer(normalCoords.getBuffer(), i12));
        }
        FloatBufferData textureCoords = this._meshData.getTextureCoords(0);
        if (textureCoords == null) {
            this._meshData.setTextureBuffer(BufferUtils.createVector2Buffer(i12), 0);
        } else {
            textureCoords.setBuffer(BufferUtils.createVector2Buffer(textureCoords.getBuffer(), i12));
        }
        int i13 = this._radialSamples;
        double d10 = 1.0d / i13;
        double d11 = 2.0d / (this._zSamples - 1);
        double[] dArr = new double[i13 + 1];
        double[] dArr2 = new double[i13 + 1];
        int i14 = 0;
        while (true) {
            i10 = this._radialSamples;
            if (i14 >= i10) {
                break;
            }
            double d12 = 6.283185307179586d * d10 * i14;
            dArr2[i14] = MathUtils.cos(d12);
            dArr[i14] = MathUtils.sin(d12);
            i14++;
        }
        dArr[i10] = dArr[0];
        dArr2[i10] = dArr2[0];
        Vector3 fetchTempInstance = Vector3.fetchTempInstance();
        Vector3 fetchTempInstance2 = Vector3.fetchTempInstance();
        Vector3 fetchTempInstance3 = Vector3.fetchTempInstance();
        int i15 = 1;
        int i16 = 0;
        for (int i17 = 1; i15 < this._zSamples - i17; i17 = 1) {
            double d13 = ((i15 * d11) - 1.0d) * 1.5707963267948966d;
            double sin = MathUtils.sin(d13);
            double d14 = this._radius * sin;
            double d15 = d11;
            Vector3 vector3 = fetchTempInstance2.set(this._center);
            int i18 = i16;
            vector3.setZ(vector3.getZ() + d14);
            double d16 = this._radius;
            double sqrt = Math.sqrt(Math.abs((d16 * d16) - (d14 * d14)));
            Vector3 vector32 = fetchTempInstance2;
            int i19 = i18;
            int i20 = 0;
            while (i20 < this._radialSamples) {
                double d17 = d13;
                double d18 = i20 * d10;
                fetchTempInstance3.set(dArr2[i20], dArr[i20], 0.0d).multiply(sqrt, fetchTempInstance);
                double d19 = d10;
                double d20 = sqrt;
                this._meshData.getVertexBuffer().put((float) (vector3.getX() + fetchTempInstance.getX())).put((float) (vector3.getY() + fetchTempInstance.getY())).put((float) (vector3.getZ() + fetchTempInstance.getZ()));
                BufferUtils.populateFromBuffer(fetchTempInstance, this._meshData.getVertexBuffer(), i19);
                Vector3 subtractLocal = fetchTempInstance.subtractLocal(this._center);
                subtractLocal.normalizeLocal();
                if (this._viewInside) {
                    this._meshData.getNormalBuffer().put(-subtractLocal.getXf()).put(-subtractLocal.getYf()).put(-subtractLocal.getZf());
                } else {
                    this._meshData.getNormalBuffer().put(subtractLocal.getXf()).put(subtractLocal.getYf()).put(subtractLocal.getZf());
                }
                TextureMode textureMode = this._textureMode;
                if (textureMode == TextureMode.Linear) {
                    i11 = i19;
                    this._meshData.getTextureCoords(0).getBuffer().put((float) d18).put((float) ((sin + 1.0d) * 0.5d));
                } else {
                    i11 = i19;
                    if (textureMode == TextureMode.Projected) {
                        this._meshData.getTextureCoords(0).getBuffer().put((float) d18).put((float) ((Math.asin(sin) + 1.5707963267948966d) * 0.3183098861837907d));
                    } else if (textureMode == TextureMode.Polar) {
                        double abs = (1.5707963267948966d - Math.abs(d17)) / 3.141592653589793d;
                        this._meshData.getTextureCoords(0).getBuffer().put((float) ((dArr2[i20] * abs) + 0.5d)).put((float) ((abs * dArr[i20]) + 0.5d));
                    }
                }
                i20++;
                i19 = i11 + 1;
                d10 = d19;
                d13 = d17;
                sqrt = d20;
            }
            double d21 = d13;
            double d22 = d10;
            int i21 = i19;
            BufferUtils.copyInternalVector3(this._meshData.getVertexBuffer(), i18, i21);
            BufferUtils.copyInternalVector3(this._meshData.getNormalBuffer(), i18, i21);
            TextureMode textureMode2 = this._textureMode;
            if (textureMode2 == TextureMode.Linear) {
                this._meshData.getTextureCoords(0).getBuffer().put(1.0f).put((float) ((sin + 1.0d) * 0.5d));
            } else if (textureMode2 == TextureMode.Projected) {
                this._meshData.getTextureCoords(0).getBuffer().put(1.0f).put((float) ((Math.asin(sin) + 1.5707963267948966d) * 0.3183098861837907d));
            } else if (textureMode2 == TextureMode.Polar) {
                this._meshData.getTextureCoords(0).getBuffer().put(((float) ((1.5707963267948966d - Math.abs(d21)) / 3.141592653589793d)) + 0.5f).put(0.5f);
            }
            i16 = i21 + 1;
            i15++;
            d10 = d22;
            d11 = d15;
            fetchTempInstance2 = vector32;
        }
        Vector3 vector33 = fetchTempInstance2;
        int i22 = i16;
        int i23 = i22 * 3;
        this._meshData.getVertexBuffer().position(i23);
        this._meshData.getVertexBuffer().put(this._center.getXf()).put(this._center.getYf()).put((float) (this._center.getZ() - this._radius));
        this._meshData.getNormalBuffer().position(i23);
        if (this._viewInside) {
            this._meshData.getNormalBuffer().put(0.0f).put(0.0f).put(1.0f);
        } else {
            this._meshData.getNormalBuffer().put(0.0f).put(0.0f).put(-1.0f);
        }
        this._meshData.getTextureCoords(0).getBuffer().position(i22 * 2);
        TextureMode textureMode3 = this._textureMode;
        TextureMode textureMode4 = TextureMode.Polar;
        if (textureMode3 == textureMode4) {
            this._meshData.getTextureCoords(0).getBuffer().put(0.5f).put(0.5f);
        } else {
            this._meshData.getTextureCoords(0).getBuffer().put(0.5f).put(0.0f);
        }
        this._meshData.getVertexBuffer().put(this._center.getXf()).put(this._center.getYf()).put((float) (this._center.getZ() + this._radius));
        if (this._viewInside) {
            this._meshData.getNormalBuffer().put(0.0f).put(0.0f).put(-1.0f);
        } else {
            this._meshData.getNormalBuffer().put(0.0f).put(0.0f).put(1.0f);
        }
        if (this._textureMode == textureMode4) {
            this._meshData.getTextureCoords(0).getBuffer().put(0.5f).put(0.5f);
        } else {
            this._meshData.getTextureCoords(0).getBuffer().put(0.5f).put(1.0f);
        }
        Vector3.releaseTempInstance(fetchTempInstance);
        Vector3.releaseTempInstance(vector33);
        Vector3.releaseTempInstance(fetchTempInstance3);
    }

    private void setIndexData() {
        int i10;
        int i11;
        int i12 = this._zSamples;
        int i13 = this._radialSamples;
        this._meshData.setIndices(BufferUtils.createIndexBufferData((i12 - 2) * 2 * i13 * 3, ((i12 - 2) * (i13 + 1)) + 1));
        int i14 = 0;
        int i15 = 0;
        while (i14 < this._zSamples - 3) {
            int i16 = i15 + 1;
            int i17 = this._radialSamples + 1 + i15;
            int i18 = i17 + 1;
            int i19 = i17;
            for (int i20 = 0; i20 < this._radialSamples; i20++) {
                if (this._viewInside) {
                    this._meshData.getIndices().put2(i15);
                    this._meshData.getIndices().put2(i19);
                    this._meshData.getIndices().put2(i16);
                    i11 = i16 + 1;
                    this._meshData.getIndices().put2(i16);
                    this._meshData.getIndices().put2(i19);
                    this._meshData.getIndices().put2(i18);
                    i18++;
                    i15++;
                    i19++;
                } else {
                    this._meshData.getIndices().put2(i15);
                    this._meshData.getIndices().put2(i16);
                    this._meshData.getIndices().put2(i19);
                    i11 = i16 + 1;
                    this._meshData.getIndices().put2(i16);
                    this._meshData.getIndices().put2(i18);
                    this._meshData.getIndices().put2(i19);
                    i19++;
                    i15++;
                    i18++;
                }
                i16 = i11;
            }
            i14++;
            i15 = i17;
        }
        int i21 = 0;
        while (true) {
            i10 = this._radialSamples;
            if (i21 >= i10) {
                break;
            }
            if (this._viewInside) {
                this._meshData.getIndices().put2(i21);
                this._meshData.getIndices().put2(i21 + 1);
                this._meshData.getIndices().put2(this._meshData.getVertexCount() - 2);
            } else {
                this._meshData.getIndices().put2(i21);
                this._meshData.getIndices().put2(this._meshData.getVertexCount() - 2);
                this._meshData.getIndices().put2(i21 + 1);
            }
            i21++;
        }
        int i22 = (this._zSamples - 3) * (i10 + 1);
        for (int i23 = 0; i23 < this._radialSamples; i23++) {
            if (this._viewInside) {
                this._meshData.getIndices().put2(i23 + i22);
                this._meshData.getIndices().put2(this._meshData.getVertexCount() - 1);
                this._meshData.getIndices().put2(i23 + 1 + i22);
            } else {
                this._meshData.getIndices().put2(i23 + i22);
                this._meshData.getIndices().put2(i23 + 1 + i22);
                this._meshData.getIndices().put2(this._meshData.getVertexCount() - 1);
            }
        }
    }

    public Vector3 getCenter() {
        return this._center;
    }

    public double getRadius() {
        return this._radius;
    }

    public TextureMode getTextureMode() {
        return this._textureMode;
    }

    public boolean isViewFromInside() {
        return this._viewInside;
    }

    @Override
    public void read(InputCapsule inputCapsule) throws IOException {
        super.read(inputCapsule);
        this._zSamples = inputCapsule.readInt("zSamples", 0);
        this._radialSamples = inputCapsule.readInt("radialSamples", 0);
        this._radius = inputCapsule.readDouble(TestVFXEffect.f77524P, 0.0d);
        this._center.set((Vector3) inputCapsule.readSavable("center", new Vector3(Vector3.ZERO)));
        this._textureMode = (TextureMode) inputCapsule.readEnum("textureMode", TextureMode.class, TextureMode.Linear);
        this._viewInside = inputCapsule.readBoolean("viewInside", false);
    }

    public void setData(ReadOnlyVector3 readOnlyVector3, int i10, int i11, double d10) {
        this._center.set(readOnlyVector3);
        this._zSamples = i10;
        this._radialSamples = i11;
        this._radius = d10;
        setGeometryData();
        setIndexData();
    }

    public void setTextureMode(TextureMode textureMode) {
        this._textureMode = textureMode;
        setGeometryData();
        setIndexData();
    }

    public void setViewFromInside(boolean z10) {
        if (z10 != this._viewInside) {
            this._viewInside = z10;
            setGeometryData();
            setIndexData();
        }
    }

    @Override
    public void write(OutputCapsule outputCapsule) throws IOException {
        super.write(outputCapsule);
        outputCapsule.write(this._zSamples, "zSamples", 0);
        outputCapsule.write(this._radialSamples, "radialSamples", 0);
        outputCapsule.write(this._radius, TestVFXEffect.f77524P, 0.0d);
        outputCapsule.write(this._center, "center", new Vector3(Vector3.ZERO));
        outputCapsule.write(this._textureMode, "textureMode", TextureMode.Linear);
        outputCapsule.write(this._viewInside, "viewInside", false);
    }

    public Sphere(String str) {
        super(str);
        this._center = new Vector3();
        this._textureMode = TextureMode.Linear;
        this._viewInside = false;
    }

    public Sphere(String str, int i10, int i11, double d10) {
        this(str, new Vector3(0.0d, 0.0d, 0.0d), i10, i11, d10);
    }

    public Sphere(String str, ReadOnlyVector3 readOnlyVector3, int i10, int i11, double d10) {
        super(str);
        this._center = new Vector3();
        this._textureMode = TextureMode.Linear;
        this._viewInside = false;
        setData(readOnlyVector3, i10, i11, d10);
    }

    public Sphere(String str, ReadOnlyVector3 readOnlyVector3, int i10, int i11, double d10, TextureMode textureMode) {
        super(str);
        this._center = new Vector3();
        TextureMode textureMode2 = TextureMode.Linear;
        this._viewInside = false;
        this._textureMode = textureMode;
        setData(readOnlyVector3, i10, i11, d10);
    }
}
