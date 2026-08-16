package com.ardor3d.scenegraph.shape;

import com.ardor3d.math.MathUtils;
import com.ardor3d.scenegraph.Mesh;
import com.ardor3d.scenegraph.MeshData;
import com.ardor3d.util.export.InputCapsule;
import com.ardor3d.util.export.OutputCapsule;
import com.ardor3d.util.geom.BufferUtils;
import java.io.IOException;

public class Tube extends Mesh {
    private static final long serialVersionUID = 1;
    private int _axisSamples;
    private double _height;
    private double _innerRadius;
    private double _outerRadius;
    private int _radialSamples;
    protected boolean _viewInside;

    public Tube() {
    }

    private void allocateVertices() {
        int i10 = (this._axisSamples + 1) * 2;
        int i11 = this._radialSamples;
        int i12 = (i10 * (i11 + 1)) + (i11 * 4);
        MeshData meshData = this._meshData;
        meshData.setVertexBuffer(BufferUtils.createVector3Buffer(meshData.getVertexBuffer(), i12));
        MeshData meshData2 = this._meshData;
        meshData2.setNormalBuffer(BufferUtils.createVector3Buffer(meshData2.getNormalBuffer(), i12));
        MeshData meshData3 = this._meshData;
        meshData3.setTextureBuffer(BufferUtils.createVector2Buffer(meshData3.getTextureBuffer(0), i12), 0);
        int i13 = this._radialSamples * 4 * (this._axisSamples + 1);
        if (this._meshData.getIndices() == null || this._meshData.getIndices().getBufferLimit() != i13 * 3) {
            this._meshData.setIndices(BufferUtils.createIndexBufferData(i13 * 3, i12 - 1));
        }
        setGeometryData();
        setIndexData();
    }

    public static long getSerialVersionUID() {
        return 1L;
    }

    private void setGeometryData() {
        char c10;
        this._meshData.getVertexBuffer().rewind();
        this._meshData.getNormalBuffer().rewind();
        this._meshData.getTextureCoords(0).getBuffer().rewind();
        int i10 = this._radialSamples;
        double d10 = 1.0d / i10;
        double d11 = this._height;
        int i11 = this._axisSamples;
        double d12 = d11 / i11;
        double d13 = 1.0d / i11;
        double d14 = d11 * 0.5d;
        double d15 = this._innerRadius / this._outerRadius;
        double[] dArr = new double[i10];
        double[] dArr2 = new double[i10];
        int i12 = 0;
        while (i12 < this._radialSamples) {
            double d16 = 6.283185307179586d * d10 * i12;
            dArr2[i12] = MathUtils.cos(d16);
            dArr[i12] = MathUtils.sin(d16);
            i12++;
            d10 = d10;
        }
        double d17 = d10;
        for (int i13 = 0; i13 < this._radialSamples + 1; i13++) {
            int i14 = 0;
            while (i14 < this._axisSamples + 1) {
                double d18 = d13;
                double d19 = i14;
                this._meshData.getVertexBuffer().put((float) (this._outerRadius * dArr2[i13 % this._radialSamples])).put((float) ((d12 * d19) - d14)).put((float) (dArr[i13 % this._radialSamples] * this._outerRadius));
                if (this._viewInside) {
                    this._meshData.getNormalBuffer().put((float) dArr2[i13 % this._radialSamples]).put(0.0f).put((float) dArr[i13 % this._radialSamples]);
                } else {
                    this._meshData.getNormalBuffer().put((float) (-dArr2[i13 % this._radialSamples])).put(0.0f).put((float) (-dArr[i13 % this._radialSamples]));
                }
                this._meshData.getTextureCoords(0).getBuffer().put((float) (i13 * d17)).put((float) (d18 * d19));
                i14++;
                d15 = d15;
                d13 = d18;
            }
        }
        double d20 = d13;
        double d21 = d15;
        for (int i15 = 0; i15 < this._radialSamples + 1; i15++) {
            int i16 = 0;
            while (i16 < this._axisSamples + 1) {
                double d22 = i16;
                this._meshData.getVertexBuffer().put((float) (dArr2[i15 % this._radialSamples] * this._innerRadius)).put((float) ((d12 * d22) - d14)).put((float) (dArr[i15 % this._radialSamples] * this._innerRadius));
                if (this._viewInside) {
                    this._meshData.getNormalBuffer().put((float) (-dArr2[i15 % this._radialSamples])).put(0.0f).put((float) (-dArr[i15 % this._radialSamples]));
                } else {
                    this._meshData.getNormalBuffer().put((float) dArr2[i15 % this._radialSamples]).put(0.0f).put((float) dArr[i15 % this._radialSamples]);
                }
                this._meshData.getTextureCoords(0).getBuffer().put((float) (i15 * d17)).put((float) (d20 * d22));
                i16++;
                d14 = d14;
            }
        }
        double d23 = d14;
        int i17 = 0;
        while (i17 < this._radialSamples) {
            double d24 = d23;
            float f10 = (float) (-d24);
            this._meshData.getVertexBuffer().put((float) (dArr2[i17] * this._outerRadius)).put(f10).put((float) (dArr[i17] * this._outerRadius));
            this._meshData.getVertexBuffer().put((float) (dArr2[i17] * this._innerRadius)).put(f10).put((float) (dArr[i17] * this._innerRadius));
            if (this._viewInside) {
                this._meshData.getNormalBuffer().put(0.0f).put(1.0f).put(0.0f);
                this._meshData.getNormalBuffer().put(0.0f).put(1.0f).put(0.0f);
            } else {
                this._meshData.getNormalBuffer().put(0.0f).put(-1.0f).put(0.0f);
                this._meshData.getNormalBuffer().put(0.0f).put(-1.0f).put(0.0f);
            }
            this._meshData.getTextureCoords(0).getBuffer().put((float) ((dArr2[i17] * 0.5d) + 0.5d)).put((float) ((dArr[i17] * 0.5d) + 0.5d));
            double d25 = d21 * 0.5d;
            this._meshData.getTextureCoords(0).getBuffer().put((float) ((dArr2[i17] * d25) + 0.5d)).put((float) ((d25 * dArr[i17]) + 0.5d));
            i17++;
            d23 = d24;
        }
        double d26 = d23;
        for (int i18 = 0; i18 < this._radialSamples; i18++) {
            float f11 = (float) d26;
            this._meshData.getVertexBuffer().put((float) (dArr2[i18] * this._outerRadius)).put(f11).put((float) (dArr[i18] * this._outerRadius));
            this._meshData.getVertexBuffer().put((float) (dArr2[i18] * this._innerRadius)).put(f11).put((float) (dArr[i18] * this._innerRadius));
            if (this._viewInside) {
                this._meshData.getNormalBuffer().put(0.0f).put(-1.0f).put(0.0f);
                this._meshData.getNormalBuffer().put(0.0f).put(-1.0f).put(0.0f);
                c10 = 0;
            } else {
                c10 = 0;
                this._meshData.getNormalBuffer().put(0.0f).put(1.0f).put(0.0f);
                this._meshData.getNormalBuffer().put(0.0f).put(1.0f).put(0.0f);
            }
            this._meshData.getTextureCoords(0).getBuffer().put((float) ((dArr2[i18] * 0.5d) + 0.5d)).put((float) ((dArr[i18] * 0.5d) + 0.5d));
            double d27 = d21 * 0.5d;
            this._meshData.getTextureCoords(0).getBuffer().put((float) ((dArr2[i18] * d27) + 0.5d)).put((float) ((d27 * dArr[i18]) + 0.5d));
        }
    }

    private void setIndexData() {
        this._meshData.getIndexBuffer().rewind();
        int i10 = this._axisSamples + 1;
        int i11 = this._radialSamples;
        int i12 = i10 * (i11 + 1);
        int i13 = i12 * 2;
        int i14 = (i11 * 2) + i13;
        int i15 = 0;
        for (int i16 = 0; i16 < this._radialSamples; i16++) {
            int i17 = 0;
            while (true) {
                int i18 = this._axisSamples;
                if (i17 < i18) {
                    int i19 = ((i18 + 1) * i16) + i17;
                    int i20 = i19 + 1;
                    int i21 = i18 + 1 + i19;
                    int i22 = i21 + 1;
                    if (this._viewInside) {
                        this._meshData.getIndices().put2(i19).put2(i20).put2(i21);
                        this._meshData.getIndices().put2(i20).put2(i22).put2(i21);
                    } else {
                        this._meshData.getIndices().put2(i19).put2(i21).put2(i20);
                        this._meshData.getIndices().put2(i20).put2(i21).put2(i22);
                    }
                    i17++;
                }
            }
        }
        for (int i23 = 0; i23 < this._radialSamples; i23++) {
            int i24 = 0;
            while (true) {
                int i25 = this._axisSamples;
                if (i24 < i25) {
                    int i26 = i12 + i24 + ((i25 + 1) * i23);
                    int i27 = i26 + 1;
                    int i28 = i25 + 1 + i26;
                    int i29 = i28 + 1;
                    if (this._viewInside) {
                        this._meshData.getIndices().put2(i26).put2(i28).put2(i27);
                        this._meshData.getIndices().put2(i27).put2(i28).put2(i29);
                    } else {
                        this._meshData.getIndices().put2(i26).put2(i27).put2(i28);
                        this._meshData.getIndices().put2(i27).put2(i29).put2(i28);
                    }
                    i24++;
                }
            }
        }
        int i30 = 0;
        while (true) {
            int i31 = this._radialSamples;
            if (i30 >= i31) {
                break;
            }
            int i32 = (i30 * 2) + i13;
            int i33 = i32 + 1;
            i30++;
            int i34 = ((i30 % i31) * 2) + i13;
            int i35 = i34 + 1;
            if (this._viewInside) {
                this._meshData.getIndices().put2(i32).put2(i34).put2(i33);
                this._meshData.getIndices().put2(i33).put2(i34).put2(i35);
            } else {
                this._meshData.getIndices().put2(i32).put2(i33).put2(i34);
                this._meshData.getIndices().put2(i33).put2(i35).put2(i34);
            }
        }
        while (true) {
            int i36 = this._radialSamples;
            if (i15 >= i36) {
                return;
            }
            int i37 = (i15 * 2) + i14;
            int i38 = i37 + 1;
            i15++;
            int i39 = ((i15 % i36) * 2) + i14;
            int i40 = i39 + 1;
            if (this._viewInside) {
                this._meshData.getIndices().put2(i37).put2(i38).put2(i39);
                this._meshData.getIndices().put2(i38).put2(i40).put2(i39);
            } else {
                this._meshData.getIndices().put2(i37).put2(i39).put2(i38);
                this._meshData.getIndices().put2(i38).put2(i39).put2(i40);
            }
        }
    }

    public int getAxisSamples() {
        return this._axisSamples;
    }

    public double getHeight() {
        return this._height;
    }

    public double getInnerRadius() {
        return this._innerRadius;
    }

    public double getOuterRadius() {
        return this._outerRadius;
    }

    public int getRadialSamples() {
        return this._radialSamples;
    }

    public boolean isViewFromInside() {
        return this._viewInside;
    }

    @Override
    public void read(InputCapsule inputCapsule) throws IOException {
        super.read(inputCapsule);
        setAxisSamples(inputCapsule.readInt("axisSamples", 0));
        setRadialSamples(inputCapsule.readInt("radialSamples", 0));
        setOuterRadius(inputCapsule.readDouble("outerRadius", 0.0d));
        setInnerRadius(inputCapsule.readDouble("innerRadius", 0.0d));
        setHeight(inputCapsule.readDouble("height", 0.0d));
        this._viewInside = inputCapsule.readBoolean("viewInside", false);
    }

    public void setAxisSamples(int i10) {
        this._axisSamples = i10;
        allocateVertices();
    }

    public void setHeight(double d10) {
        this._height = d10;
        allocateVertices();
    }

    public void setInnerRadius(double d10) {
        this._innerRadius = d10;
        allocateVertices();
    }

    public void setOuterRadius(double d10) {
        this._outerRadius = d10;
        allocateVertices();
    }

    public void setRadialSamples(int i10) {
        this._radialSamples = i10;
        allocateVertices();
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
        outputCapsule.write(getAxisSamples(), "axisSamples", 0);
        outputCapsule.write(getRadialSamples(), "radialSamples", 0);
        outputCapsule.write(getOuterRadius(), "outerRadius", 0.0d);
        outputCapsule.write(getInnerRadius(), "innerRadius", 0.0d);
        outputCapsule.write(getHeight(), "height", 0.0d);
        outputCapsule.write(this._viewInside, "viewInside", false);
    }

    public Tube(String str, double d10, double d11, double d12, int i10, int i11) {
        super(str);
        this._outerRadius = d10;
        this._innerRadius = d11;
        this._height = d12;
        this._axisSamples = i10;
        this._radialSamples = i11;
        allocateVertices();
    }

    public Tube(String str, double d10, double d11, double d12) {
        this(str, d10, d11, d12, 2, 20);
    }
}
