package com.ardor3d.scenegraph.shape;

import com.ardor3d.math.MathUtils;
import com.ardor3d.math.Vector3;
import com.ardor3d.scenegraph.Mesh;
import com.ardor3d.scenegraph.MeshData;
import com.ardor3d.util.export.InputCapsule;
import com.ardor3d.util.export.OutputCapsule;
import com.ardor3d.util.geom.BufferUtils;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.VFXEffects.TestVFXEffect;
import java.io.IOException;
import java.nio.FloatBuffer;

public class Cylinder extends Mesh {
    private static final long serialVersionUID = 1;
    private int _axisSamples;
    private boolean _closed;
    private double _height;
    private boolean _inverted;
    private int _radialSamples;
    private double _radius;
    private double _radius2;

    public Cylinder() {
    }

    private void allocateVertices() {
        int i10 = (this._axisSamples * (this._radialSamples + 1)) + (this._closed ? 2 : 0);
        MeshData meshData = this._meshData;
        meshData.setVertexBuffer(BufferUtils.createVector3Buffer(meshData.getVertexBuffer(), i10));
        MeshData meshData2 = this._meshData;
        meshData2.setNormalBuffer(BufferUtils.createVector3Buffer(meshData2.getNormalBuffer(), i10));
        this._meshData.setTextureBuffer(BufferUtils.createVector2Buffer(i10), 0);
        int i11 = ((this._closed ? 2 : 0) + ((this._axisSamples - 1) * 2)) * this._radialSamples;
        if (this._meshData.getIndices() == null || this._meshData.getIndices().getBufferLimit() != i11 * 3) {
            this._meshData.setIndices(BufferUtils.createIndexBufferData(i11 * 3, i10 - 1));
        }
        setGeometryData();
        setIndexData();
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x00b2  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x01b4  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x01b6  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void setGeometryData() {
        int i10;
        double d10;
        double d11;
        double d12;
        double d13;
        int i11;
        int i12;
        double[] dArr;
        double d14;
        int i13 = this._radialSamples;
        double d15 = 1.0d / i13;
        double d16 = 1.0d / (this._closed ? this._axisSamples - 3 : this._axisSamples - 1);
        double d17 = 1.0d / (this._axisSamples - 1);
        double d18 = this._height * 0.5d;
        double[] dArr2 = new double[i13 + 1];
        double[] dArr3 = new double[i13 + 1];
        int i14 = 0;
        while (true) {
            i10 = this._radialSamples;
            if (i14 >= i10) {
                break;
            }
            double d19 = 6.283185307179586d * d15 * i14;
            dArr3[i14] = MathUtils.cos(d19);
            dArr2[i14] = MathUtils.sin(d19);
            i14++;
        }
        dArr2[i10] = dArr2[0];
        dArr3[i10] = dArr3[0];
        Vector3 vector3 = new Vector3();
        int i15 = 0;
        int i16 = 0;
        while (true) {
            int i17 = this._axisSamples;
            if (i15 >= i17) {
                break;
            }
            if (this._closed) {
                if (i15 == 0) {
                    d10 = 0.0d;
                    d11 = d16;
                    d12 = d17;
                    d13 = d12;
                    i11 = -1;
                } else if (i15 == i17 - 1) {
                    d11 = d16;
                    d13 = d17;
                    d12 = 1.0d - d17;
                    d10 = 1.0d;
                    i11 = 1;
                } else {
                    d10 = (i15 - 1) * d16;
                    d11 = d16;
                    d12 = i15 * d17;
                    d13 = d17;
                }
                double d20 = d18;
                Vector3 vector32 = new Vector3(0.0d, 0.0d, (-d18) + (this._height * d10));
                int i18 = i16;
                i12 = 0;
                while (i12 < this._radialSamples) {
                    int i19 = i18;
                    double d21 = i12 * d15;
                    vector3.set(dArr3[i12], dArr2[i12], 0.0d);
                    if (i11 == 0) {
                        dArr = dArr3;
                        if (this._inverted) {
                            d14 = d15;
                            this._meshData.getNormalBuffer().put(-vector3.getXf()).put(-vector3.getYf()).put(-vector3.getZf());
                        } else {
                            d14 = d15;
                            this._meshData.getNormalBuffer().put(vector3.getXf()).put(vector3.getYf()).put(vector3.getZf());
                        }
                    } else {
                        dArr = dArr3;
                        d14 = d15;
                        this._meshData.getNormalBuffer().put(0.0f).put(0.0f).put((this._inverted ? -1 : 1) * i11);
                    }
                    double d22 = this._radius;
                    int i20 = i15;
                    double[] dArr4 = dArr2;
                    double d23 = this._radius2;
                    vector3.multiplyLocal(((d22 - d23) * d10) + d23).addLocal(vector32);
                    this._meshData.getVertexBuffer().put(vector3.getXf()).put(vector3.getYf()).put(vector3.getZf());
                    FloatBuffer buffer = this._meshData.getTextureCoords(0).getBuffer();
                    if (this._inverted) {
                        d21 = 1.0d - d21;
                    }
                    buffer.put((float) d21).put((float) d12);
                    i18 = i19 + 1;
                    i12++;
                    dArr2 = dArr4;
                    dArr3 = dArr;
                    d15 = d14;
                    i15 = i20;
                }
                double[] dArr5 = dArr3;
                double d24 = d15;
                int i21 = i15;
                double[] dArr6 = dArr2;
                BufferUtils.copyInternalVector3(this._meshData.getVertexBuffer(), i16, i18);
                BufferUtils.copyInternalVector3(this._meshData.getNormalBuffer(), i16, i18);
                this._meshData.getTextureCoords(0).getBuffer().put(!this._inverted ? 0.0f : 1.0f).put((float) d12);
                i16 = i18 + 1;
                i15 = i21 + 1;
                dArr2 = dArr6;
                dArr3 = dArr5;
                d15 = d24;
                d16 = d11;
                d17 = d13;
                d18 = d20;
            } else {
                d10 = i15 * d16;
                d11 = d16;
                d13 = d17;
                d12 = d10;
            }
            i11 = 0;
            double d202 = d18;
            Vector3 vector322 = new Vector3(0.0d, 0.0d, (-d18) + (this._height * d10));
            int i182 = i16;
            i12 = 0;
            while (i12 < this._radialSamples) {
            }
            double[] dArr52 = dArr3;
            double d242 = d15;
            int i212 = i15;
            double[] dArr62 = dArr2;
            BufferUtils.copyInternalVector3(this._meshData.getVertexBuffer(), i16, i182);
            BufferUtils.copyInternalVector3(this._meshData.getNormalBuffer(), i16, i182);
            this._meshData.getTextureCoords(0).getBuffer().put(!this._inverted ? 0.0f : 1.0f).put((float) d12);
            i16 = i182 + 1;
            i15 = i212 + 1;
            dArr2 = dArr62;
            dArr3 = dArr52;
            d15 = d242;
            d16 = d11;
            d17 = d13;
            d18 = d202;
        }
        double d25 = d18;
        if (this._closed) {
            this._meshData.getVertexBuffer().put(0.0f).put(0.0f).put((float) (-d25));
            this._meshData.getNormalBuffer().put(0.0f).put(0.0f).put((this._inverted ? -1 : 1) * (-1));
            this._meshData.getTextureCoords(0).getBuffer().put(0.5f).put(0.0f);
            this._meshData.getVertexBuffer().put(0.0f).put(0.0f).put((float) d25);
            this._meshData.getNormalBuffer().put(0.0f).put(0.0f).put(this._inverted ? -1 : 1);
            this._meshData.getTextureCoords(0).getBuffer().put(0.5f).put(1.0f);
        }
    }

    private void setIndexData() {
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        this._meshData.getIndexBuffer().rewind();
        int i15 = 0;
        int i16 = 0;
        while (i15 < this._axisSamples - 1) {
            int i17 = i16 + 1;
            int i18 = this._radialSamples + 1 + i16;
            int i19 = i18 + 1;
            int i20 = i18;
            for (int i21 = 0; i21 < this._radialSamples; i21++) {
                boolean z10 = this._closed;
                if (z10 && i15 == 0) {
                    if (this._inverted) {
                        i13 = i16 + 1;
                        this._meshData.getIndices().put2(i16);
                        i14 = i17 + 1;
                        this._meshData.getIndices().put2(i17);
                        this._meshData.getIndices().put2(this._meshData.getVertexCount() - 2);
                    } else {
                        i13 = i16 + 1;
                        this._meshData.getIndices().put2(i16);
                        this._meshData.getIndices().put2(this._meshData.getVertexCount() - 2);
                        i14 = i17 + 1;
                        this._meshData.getIndices().put2(i17);
                    }
                    i17 = i14;
                    i16 = i13;
                } else if (z10 && i15 == this._axisSamples - 2) {
                    if (this._inverted) {
                        i11 = i20 + 1;
                        this._meshData.getIndices().put2(i20);
                        this._meshData.getIndices().put2(this._meshData.getVertexCount() - 1);
                        i12 = i19 + 1;
                        this._meshData.getIndices().put2(i19);
                    } else {
                        i11 = i20 + 1;
                        this._meshData.getIndices().put2(i20);
                        i12 = i19 + 1;
                        this._meshData.getIndices().put2(i19);
                        this._meshData.getIndices().put2(this._meshData.getVertexCount() - 1);
                    }
                    i19 = i12;
                    i20 = i11;
                } else {
                    if (this._inverted) {
                        this._meshData.getIndices().put2(i16);
                        this._meshData.getIndices().put2(i20);
                        this._meshData.getIndices().put2(i17);
                        i10 = i17 + 1;
                        this._meshData.getIndices().put2(i17);
                        this._meshData.getIndices().put2(i20);
                        this._meshData.getIndices().put2(i19);
                        i19++;
                        i16++;
                        i20++;
                    } else {
                        this._meshData.getIndices().put2(i16);
                        this._meshData.getIndices().put2(i17);
                        this._meshData.getIndices().put2(i20);
                        i10 = i17 + 1;
                        this._meshData.getIndices().put2(i17);
                        this._meshData.getIndices().put2(i19);
                        this._meshData.getIndices().put2(i20);
                        i20++;
                        i16++;
                        i19++;
                    }
                    i17 = i10;
                }
            }
            i15++;
            i16 = i18;
        }
    }

    public int getAxisSamples() {
        return this._axisSamples;
    }

    public double getHeight() {
        return this._height;
    }

    public int getRadialSamples() {
        return this._radialSamples;
    }

    public double getRadius() {
        return this._radius;
    }

    public boolean isClosed() {
        return this._closed;
    }

    public boolean isInverted() {
        return this._inverted;
    }

    @Override
    public void read(InputCapsule inputCapsule) throws IOException {
        super.read(inputCapsule);
        this._axisSamples = inputCapsule.readInt("axisSamples", 0);
        this._radialSamples = inputCapsule.readInt("radialSamples", 0);
        this._radius = inputCapsule.readDouble(TestVFXEffect.f77524P, 0.0d);
        this._radius2 = inputCapsule.readDouble("radius2", 0.0d);
        this._height = inputCapsule.readDouble("height", 0.0d);
        this._closed = inputCapsule.readBoolean("closed", false);
        this._inverted = inputCapsule.readBoolean("inverted", false);
    }

    public void setHeight(double d10) {
        this._height = d10;
        allocateVertices();
    }

    public void setRadius(double d10) {
        this._radius = d10;
        this._radius2 = d10;
        allocateVertices();
    }

    public void setRadius1(double d10) {
        this._radius = d10;
        allocateVertices();
    }

    public void setRadius2(double d10) {
        this._radius2 = d10;
        allocateVertices();
    }

    @Override
    public void write(OutputCapsule outputCapsule) throws IOException {
        super.write(outputCapsule);
        outputCapsule.write(this._axisSamples, "axisSamples", 0);
        outputCapsule.write(this._radialSamples, "radialSamples", 0);
        outputCapsule.write(this._radius, TestVFXEffect.f77524P, 0.0d);
        outputCapsule.write(this._radius2, "radius2", 0.0d);
        outputCapsule.write(this._height, "height", 0.0d);
        outputCapsule.write(this._closed, "closed", false);
        outputCapsule.write(this._inverted, "inverted", false);
    }

    public Cylinder(String str, int i10, int i11, double d10, double d11) {
        this(str, i10, i11, d10, d11, false);
    }

    public Cylinder(String str, int i10, int i11, double d10, double d11, boolean z10) {
        this(str, i10, i11, d10, d11, z10, false);
    }

    public Cylinder(String str, int i10, int i11, double d10, double d11, boolean z10, boolean z11) {
        super(str);
        this._axisSamples = i10 + (z10 ? 2 : 0);
        this._radialSamples = i11;
        setRadius(d10);
        this._height = d11;
        this._closed = z10;
        this._inverted = z11;
        allocateVertices();
    }
}
