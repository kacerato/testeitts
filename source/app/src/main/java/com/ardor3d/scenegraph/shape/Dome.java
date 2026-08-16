package com.ardor3d.scenegraph.shape;

import com.ardor3d.math.MathUtils;
import com.ardor3d.math.Vector3;
import com.ardor3d.scenegraph.Mesh;
import com.ardor3d.util.export.InputCapsule;
import com.ardor3d.util.export.OutputCapsule;
import com.ardor3d.util.geom.BufferUtils;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.VFXEffects.TestVFXEffect;
import java.io.IOException;

public class Dome extends Mesh {
    private static final long serialVersionUID = 1;
    private int _planes;
    private int _radialSamples;
    private double _radius;

    public Dome() {
    }

    private void setGeometryData(boolean z10, Vector3 vector3) {
        Vector3 fetchTempInstance = Vector3.fetchTempInstance();
        Vector3 fetchTempInstance2 = Vector3.fetchTempInstance();
        Vector3 fetchTempInstance3 = Vector3.fetchTempInstance();
        int i10 = ((this._planes - 1) * (this._radialSamples + 1)) + 1;
        this._meshData.setVertexBuffer(BufferUtils.createVector3Buffer(i10));
        this._meshData.setNormalBuffer(BufferUtils.createVector3Buffer(i10));
        this._meshData.setTextureBuffer(BufferUtils.createVector2Buffer(i10), 0);
        int i11 = this._radialSamples;
        double d10 = 1.0d / i11;
        double d11 = 1.0d / (this._planes - 1);
        double[] dArr = new double[i11];
        double[] dArr2 = new double[i11];
        for (int i12 = 0; i12 < this._radialSamples; i12++) {
            double d12 = 6.283185307179586d * d10 * i12;
            dArr2[i12] = MathUtils.cos(d12);
            dArr[i12] = MathUtils.sin(d12);
        }
        int i13 = 0;
        int i14 = 0;
        while (i13 < this._planes - 1) {
            double d13 = i13 * d11;
            double d14 = d10;
            double d15 = this._radius * d13;
            Vector3 vector32 = fetchTempInstance2.set(vector3);
            vector32.addLocal(0.0d, d15, 0.0d);
            double d16 = d13;
            double d17 = this._radius;
            double sqrt = Math.sqrt(Math.abs((d17 * d17) - (d15 * d15)));
            int i15 = i14;
            int i16 = 0;
            while (i16 < this._radialSamples) {
                int i17 = i15;
                int i18 = i13;
                double d18 = i16 * d14;
                Vector3 vector33 = fetchTempInstance3;
                int i19 = i16;
                double d19 = d16;
                double d20 = d11;
                Vector3 vector34 = fetchTempInstance2;
                Vector3 vector35 = fetchTempInstance3;
                int i20 = i14;
                double[] dArr3 = dArr;
                double[] dArr4 = dArr2;
                vector33.set(dArr2[i16], 0.0d, dArr[i16]).multiply(sqrt, fetchTempInstance);
                this._meshData.getVertexBuffer().put((float) (vector32.getX() + fetchTempInstance.getX())).put((float) (vector32.getY() + fetchTempInstance.getY())).put((float) (vector32.getZ() + fetchTempInstance.getZ()));
                BufferUtils.populateFromBuffer(fetchTempInstance, this._meshData.getVertexBuffer(), i17);
                Vector3 subtractLocal = fetchTempInstance.subtractLocal(vector3);
                subtractLocal.normalizeLocal();
                if (z10) {
                    this._meshData.getNormalBuffer().put((float) subtractLocal.getX()).put((float) subtractLocal.getY()).put((float) subtractLocal.getZ());
                } else {
                    this._meshData.getNormalBuffer().put((float) (-subtractLocal.getX())).put((float) (-subtractLocal.getY())).put((float) (-subtractLocal.getZ()));
                }
                this._meshData.getTextureCoords(0).getBuffer().put((float) d18).put((float) d19);
                i14 = i20;
                fetchTempInstance3 = vector35;
                fetchTempInstance2 = vector34;
                dArr = dArr3;
                dArr2 = dArr4;
                i15 = i17 + 1;
                i16 = i19 + 1;
                i13 = i18;
                d11 = d20;
                d16 = d19;
            }
            Vector3 vector36 = fetchTempInstance3;
            int i21 = i14;
            double d21 = d11;
            int i22 = i15;
            BufferUtils.copyInternalVector3(this._meshData.getVertexBuffer(), i21, i22);
            BufferUtils.copyInternalVector3(this._meshData.getNormalBuffer(), i21, i22);
            this._meshData.getTextureCoords(0).getBuffer().put(1.0f).put((float) d16);
            i14 = i22 + 1;
            i13++;
            d10 = d14;
            d11 = d21;
            fetchTempInstance3 = vector36;
            fetchTempInstance2 = fetchTempInstance2;
        }
        Vector3 vector37 = fetchTempInstance2;
        Vector3 vector38 = fetchTempInstance3;
        this._meshData.getVertexBuffer().put((float) vector3.getX()).put((float) (vector3.getY() + this._radius)).put((float) vector3.getZ());
        if (z10) {
            this._meshData.getNormalBuffer().put(0.0f).put(1.0f).put(0.0f);
        } else {
            this._meshData.getNormalBuffer().put(0.0f).put(-1.0f).put(0.0f);
        }
        this._meshData.getTextureCoords(0).getBuffer().put(0.5f).put(1.0f);
        Vector3.releaseTempInstance(fetchTempInstance);
        Vector3.releaseTempInstance(vector37);
        Vector3.releaseTempInstance(vector38);
    }

    private void setIndexData() {
        int i10;
        int i11;
        int i12 = this._planes;
        int i13 = this._radialSamples;
        this._meshData.setIndices(BufferUtils.createIndexBufferData((((i12 - 2) * i13 * 2) + i13) * 3, (i12 - 1) * (i13 + 1)));
        int i14 = 1;
        while (true) {
            i10 = this._planes;
            i11 = 0;
            if (i14 >= i10 - 1) {
                break;
            }
            int i15 = this._radialSamples;
            int i16 = (i14 - 1) * (i15 + 1);
            int i17 = (i15 + 1) * i14;
            while (i11 < this._radialSamples) {
                int i18 = i16 + i11;
                this._meshData.getIndices().put2(i18);
                int i19 = i17 + i11;
                this._meshData.getIndices().put2(i19);
                int i20 = i18 + 1;
                this._meshData.getIndices().put2(i20);
                this._meshData.getIndices().put2(i20);
                this._meshData.getIndices().put2(i19);
                this._meshData.getIndices().put2(i19 + 1);
                i11++;
            }
            i14++;
        }
        int i21 = (i10 - 2) * (this._radialSamples + 1);
        while (i11 < this._radialSamples) {
            int i22 = i21 + i11;
            this._meshData.getIndices().put2(i22);
            this._meshData.getIndices().put2(this._meshData.getVertexCount() - 1);
            this._meshData.getIndices().put2(i22 + 1);
            i11++;
        }
    }

    public int getPlanes() {
        return this._planes;
    }

    public int getRadialSamples() {
        return this._radialSamples;
    }

    public double getRadius() {
        return this._radius;
    }

    @Override
    public void read(InputCapsule inputCapsule) throws IOException {
        super.read(inputCapsule);
        this._planes = inputCapsule.readInt("planes", 0);
        this._radialSamples = inputCapsule.readInt("radialSamples", 0);
        this._radius = inputCapsule.readDouble(TestVFXEffect.f77524P, 0.0d);
    }

    public void setData(Vector3 vector3, int i10, int i11, double d10, boolean z10, boolean z11) {
        this._planes = i10;
        this._radialSamples = i11;
        this._radius = d10;
        if (z10) {
            setGeometryData(z11, vector3);
            setIndexData();
        }
    }

    @Override
    public void write(OutputCapsule outputCapsule) throws IOException {
        super.write(outputCapsule);
        outputCapsule.write(this._planes, "planes", 0);
        outputCapsule.write(this._radialSamples, "radialSamples", 0);
        outputCapsule.write(this._radius, TestVFXEffect.f77524P, 0.0d);
    }

    public Dome(String str) {
        super(str);
    }

    public Dome(String str, int i10, int i11, double d10) {
        this(str, new Vector3(0.0d, 0.0d, 0.0d), i10, i11, d10);
    }

    public Dome(String str, Vector3 vector3, int i10, int i11, double d10) {
        super(str);
        setData(vector3, i10, i11, d10, true, true);
    }

    public Dome(String str, Vector3 vector3, int i10, int i11, double d10, boolean z10) {
        super(str);
        setData(vector3, i10, i11, d10, true, z10);
    }
}
