package com.ardor3d.scenegraph.shape;

import com.ardor3d.math.MathUtils;
import com.ardor3d.math.Vector3;
import com.ardor3d.scenegraph.Mesh;
import com.ardor3d.util.export.InputCapsule;
import com.ardor3d.util.export.OutputCapsule;
import com.ardor3d.util.geom.BufferUtils;
import java.io.IOException;

public class Torus extends Mesh {
    private static final long serialVersionUID = 1;
    protected double _centerRadius;
    protected int _circleSamples;
    protected int _radialSamples;
    protected double _tubeRadius;
    protected boolean _viewInside;

    public Torus() {
    }

    private void setGeometryData() {
        int i10 = (this._circleSamples + 1) * (this._radialSamples + 1);
        this._meshData.setVertexBuffer(BufferUtils.createVector3Buffer(i10));
        this._meshData.setNormalBuffer(BufferUtils.createVector3Buffer(i10));
        int i11 = 0;
        this._meshData.setTextureBuffer(BufferUtils.createVector2Buffer(i10), 0);
        double d10 = 1.0d / this._circleSamples;
        double d11 = 1.0d / this._radialSamples;
        Vector3 vector3 = new Vector3();
        Vector3 vector32 = new Vector3();
        Vector3 vector33 = new Vector3();
        int i12 = 0;
        int i13 = 0;
        while (i12 < this._circleSamples) {
            double d12 = i12 * d10;
            double d13 = d12 * 6.283185307179586d;
            double cos = MathUtils.cos(d13);
            double sin = MathUtils.sin(d13);
            int i14 = i12;
            int i15 = i13;
            vector3.set(cos, sin, 0.0d);
            vector3.multiply(this._centerRadius, vector32);
            int i16 = i11;
            int i17 = i15;
            while (i16 < this._radialSamples) {
                double d14 = i16 * d11;
                double d15 = d14 * 6.283185307179586d;
                double d16 = d11;
                double cos2 = MathUtils.cos(d15);
                double sin2 = MathUtils.sin(d15);
                vector33.set(vector3).multiplyLocal(cos2);
                vector33.setZ(vector33.getZ() + sin2);
                vector33.normalizeLocal();
                if (this._viewInside) {
                    this._meshData.getNormalBuffer().put((float) (-vector33.getX())).put((float) (-vector33.getY())).put((float) (-vector33.getZ()));
                } else {
                    this._meshData.getNormalBuffer().put((float) vector33.getX()).put((float) vector33.getY()).put((float) vector33.getZ());
                }
                vector33.multiplyLocal(this._tubeRadius).addLocal(vector32);
                this._meshData.getVertexBuffer().put((float) vector33.getX()).put((float) vector33.getY()).put((float) vector33.getZ());
                this._meshData.getTextureCoords(0).getBuffer().put((float) d14).put((float) d12);
                i17++;
                i16++;
                d11 = d16;
            }
            BufferUtils.copyInternalVector3(this._meshData.getVertexBuffer(), i15, i17);
            BufferUtils.copyInternalVector3(this._meshData.getNormalBuffer(), i15, i17);
            this._meshData.getTextureCoords(0).getBuffer().put(1.0f).put((float) d12);
            i13 = i17 + 1;
            i12 = i14 + 1;
            d11 = d11;
            i11 = 0;
        }
        int i18 = 0;
        while (i18 <= this._radialSamples) {
            BufferUtils.copyInternalVector3(this._meshData.getVertexBuffer(), i18, i13);
            BufferUtils.copyInternalVector3(this._meshData.getNormalBuffer(), i18, i13);
            BufferUtils.copyInternalVector2(this._meshData.getTextureCoords(0).getBuffer(), i18, i13);
            this._meshData.getTextureCoords(0).getBuffer().put((i13 * 2) + 1, 1.0f);
            i18++;
            i13++;
        }
    }

    private void setIndexData() {
        int i10;
        int i11 = this._circleSamples;
        int i12 = this._radialSamples;
        this._meshData.setIndices(BufferUtils.createIndexBufferData(i11 * 2 * i12 * 3, ((i11 + 1) * (i12 + 1)) - 1));
        int i13 = 0;
        int i14 = 0;
        while (i13 < this._circleSamples) {
            int i15 = i14 + 1;
            int i16 = this._radialSamples + 1 + i14;
            int i17 = i16 + 1;
            int i18 = i16;
            for (int i19 = 0; i19 < this._radialSamples; i19++) {
                if (this._viewInside) {
                    this._meshData.getIndices().put2(i14);
                    this._meshData.getIndices().put2(i15);
                    this._meshData.getIndices().put2(i18);
                    i10 = i15 + 1;
                    this._meshData.getIndices().put2(i15);
                    this._meshData.getIndices().put2(i17);
                    this._meshData.getIndices().put2(i18);
                    i18++;
                    i14++;
                    i17++;
                } else {
                    this._meshData.getIndices().put2(i14);
                    this._meshData.getIndices().put2(i18);
                    this._meshData.getIndices().put2(i15);
                    i10 = i15 + 1;
                    this._meshData.getIndices().put2(i15);
                    this._meshData.getIndices().put2(i18);
                    this._meshData.getIndices().put2(i17);
                    i17++;
                    i14++;
                    i18++;
                }
                i15 = i10;
            }
            i13++;
            i14 = i16;
        }
    }

    public boolean isViewFromInside() {
        return this._viewInside;
    }

    @Override
    public void read(InputCapsule inputCapsule) throws IOException {
        super.read(inputCapsule);
        this._circleSamples = inputCapsule.readInt("circleSamples", 0);
        this._radialSamples = inputCapsule.readInt("radialSamples", 0);
        this._tubeRadius = inputCapsule.readDouble("tubeRadius", 0.0d);
        this._centerRadius = inputCapsule.readDouble("centerRadius", 0.0d);
        this._viewInside = inputCapsule.readBoolean("viewInside", false);
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
        outputCapsule.write(this._circleSamples, "circleSamples", 0);
        outputCapsule.write(this._radialSamples, "radialSamples", 0);
        outputCapsule.write(this._tubeRadius, "tubeRadius", 0.0d);
        outputCapsule.write(this._centerRadius, "centerRadius", 0.0d);
        outputCapsule.write(this._viewInside, "viewInside", false);
    }

    public Torus(String str, int i10, int i11, double d10, double d11) {
        super(str);
        this._circleSamples = i10;
        this._radialSamples = i11;
        this._tubeRadius = d10;
        this._centerRadius = d11;
        setGeometryData();
        setIndexData();
    }
}
