package com.ardor3d.scenegraph.shape;

import com.ardor3d.math.MathUtils;
import com.ardor3d.math.Matrix3;
import com.ardor3d.math.Vector3;
import com.ardor3d.scenegraph.Mesh;
import com.ardor3d.scenegraph.MeshData;
import com.ardor3d.util.export.InputCapsule;
import com.ardor3d.util.export.OutputCapsule;
import com.ardor3d.util.geom.BufferUtils;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.VFXEffects.TestVFXEffect;
import java.io.IOException;
import java.nio.FloatBuffer;

public class Capsule extends Mesh {
    private static final long serialVersionUID = 1;
    private int axisSamples;
    private double height;
    private int radialSamples;
    private double radius;
    private int sphereSamples;

    public Capsule() {
    }

    private void recreateBuffers() {
        int i10 = ((this.sphereSamples * 2) - 1) + this.axisSamples;
        int i11 = (this.radialSamples + 1) * i10;
        int i12 = i11 + 2;
        MeshData meshData = this._meshData;
        meshData.setVertexBuffer(BufferUtils.createVector3Buffer(meshData.getVertexBuffer(), i12));
        MeshData meshData2 = this._meshData;
        meshData2.setNormalBuffer(BufferUtils.createVector3Buffer(meshData2.getNormalBuffer(), i12));
        this._meshData.setTextureBuffer(BufferUtils.createVector2Buffer(i12), 0);
        int i13 = this.radialSamples * 2 * i10;
        if (this._meshData.getIndices() == null || this._meshData.getIndices().getBufferLimit() != i13 * 3) {
            this._meshData.setIndices(BufferUtils.createIndexBufferData(i13 * 3, i11 + 1));
        }
        setGeometryData();
        setIndexData();
    }

    private void setGeometryData() {
        int i10;
        FloatBuffer vertexBuffer = this._meshData.getVertexBuffer();
        FloatBuffer normalBuffer = this._meshData.getNormalBuffer();
        char c10 = 0;
        FloatBuffer textureBuffer = this._meshData.getTextureBuffer(0);
        vertexBuffer.rewind();
        normalBuffer.rewind();
        textureBuffer.rewind();
        int i11 = this.radialSamples;
        double d10 = 1.0d / i11;
        double d11 = 1.0d / this.sphereSamples;
        double d12 = this.height * 0.5d;
        double[] dArr = new double[i11 + 1];
        double[] dArr2 = new double[i11 + 1];
        int i12 = 0;
        while (true) {
            i10 = this.radialSamples;
            if (i12 >= i10) {
                break;
            }
            double[] dArr3 = dArr2;
            double d13 = 6.283185307179586d * d10 * i12;
            dArr3[i12] = MathUtils.cos(d13);
            dArr[i12] = MathUtils.sin(d13);
            i12++;
            dArr2 = dArr3;
            c10 = 0;
        }
        double[] dArr4 = dArr2;
        dArr[i10] = dArr[c10];
        dArr4[i10] = dArr4[c10];
        Vector3 vector3 = new Vector3();
        vertexBuffer.put(0.0f).put((float) (this.radius + d12)).put(0.0f);
        normalBuffer.put(0.0f).put(1.0f).put(0.0f);
        textureBuffer.put(1.0f).put(1.0f);
        int i13 = 0;
        while (i13 < this.sphereSamples) {
            double d14 = this.radius;
            int i14 = i13 + 1;
            double d15 = d10;
            double d16 = (1.0d - (i14 * d11)) * d14;
            double d17 = d11;
            double d18 = this.height;
            double d19 = ((d16 + d18) + d14) / (d18 + (2.0d * d14));
            double sqrt = Math.sqrt(Math.abs((d14 * d14) - (d16 * d16)));
            int i15 = 0;
            while (i15 <= this.radialSamples) {
                Vector3 vector32 = vector3.set(dArr4[i15], 0.0d, dArr[i15]);
                vector32.multiplyLocal(sqrt);
                vertexBuffer.put(vector32.getXf()).put((float) (d16 + d12)).put(vector32.getZf());
                vector32.setY(d16);
                vector32.normalizeLocal();
                normalBuffer.put(vector32.getXf()).put(vector32.getYf()).put(vector32.getZf());
                textureBuffer.put((float) (1.0d - (i15 * d15))).put((float) d19);
                i15++;
                dArr = dArr;
                sqrt = sqrt;
                vector3 = vector3;
            }
            d10 = d15;
            d11 = d17;
            i13 = i14;
        }
        double d20 = d10;
        double[] dArr5 = dArr;
        Vector3 vector33 = vector3;
        int i16 = 1;
        while (true) {
            int i17 = this.axisSamples;
            if (i16 >= i17) {
                break;
            }
            double d21 = this.height;
            double d22 = d12 - ((i16 * d21) / i17);
            double d23 = d22 + d12;
            double d24 = d12;
            double d25 = this.radius;
            double d26 = (d23 + d25) / (d21 + (d25 * 2.0d));
            for (int i18 = 0; i18 <= this.radialSamples; i18++) {
                Vector3 vector34 = vector33.set(dArr4[i18], 0.0d, dArr5[i18]);
                vector34.multiplyLocal(this.radius);
                vertexBuffer.put(vector34.getXf()).put((float) d22).put(vector34.getZf());
                vector34.normalizeLocal();
                normalBuffer.put(vector34.getXf()).put(vector34.getYf()).put(vector34.getZf());
                textureBuffer.put((float) (1.0d - (i18 * d20))).put((float) d26);
            }
            i16++;
            d12 = d24;
        }
        double d27 = d12;
        int i19 = 0;
        while (true) {
            int i20 = this.sphereSamples;
            if (i19 >= i20) {
                vertexBuffer.put(0.0f).put((float) ((-this.radius) - d27)).put(0.0f);
                normalBuffer.put(0.0f).put(-1.0f).put(0.0f);
                textureBuffer.put(0.0f).put(0.0f);
                return;
            }
            double d28 = this.radius;
            double d29 = i19 * (d28 / i20);
            double d30 = (d28 - d29) / (this.height + (d28 * 2.0d));
            double sqrt2 = Math.sqrt(Math.abs((d28 * d28) - (d29 * d29)));
            int i21 = 0;
            while (i21 <= this.radialSamples) {
                Vector3 vector35 = vector33.set(dArr4[i21], 0.0d, dArr5[i21]);
                vector35.multiplyLocal(sqrt2);
                double[] dArr6 = dArr5;
                double d31 = -d29;
                vertexBuffer.put(vector35.getXf()).put((float) (d31 - d27)).put(vector35.getZf());
                vector35.setY(d31);
                vector35.normalizeLocal();
                normalBuffer.put(vector35.getXf()).put(vector35.getYf()).put(vector35.getZf());
                textureBuffer.put((float) (1.0d - (i21 * d20))).put((float) d30);
                i21++;
                dArr5 = dArr6;
                sqrt2 = sqrt2;
                d29 = d29;
            }
            i19++;
            dArr5 = dArr5;
        }
    }

    private void setIndexData() {
        int i10;
        int i11;
        int i12;
        int i13;
        this._meshData.getIndexBuffer().rewind();
        int i14 = 1;
        while (true) {
            i10 = 0;
            if (i14 > this.radialSamples) {
                break;
            }
            int i15 = i14 + 1;
            this._meshData.getIndices().put2(i15);
            this._meshData.getIndices().put2(i14);
            this._meshData.getIndices().put2(0);
            i14 = i15;
        }
        int i16 = 1;
        while (true) {
            i11 = this.sphereSamples;
            if (i16 >= i11) {
                break;
            }
            int i17 = this.radialSamples;
            int i18 = (i17 + 1) * i16;
            int i19 = (i16 - 1) * (i17 + 1);
            for (int i20 = 1; i20 <= this.radialSamples; i20++) {
                int i21 = i19 + i20;
                this._meshData.getIndices().put2(i21);
                int i22 = i21 + 1;
                this._meshData.getIndices().put2(i22);
                int i23 = i18 + i20;
                this._meshData.getIndices().put2(i23);
                this._meshData.getIndices().put2(i22);
                this._meshData.getIndices().put2(i23 + 1);
                this._meshData.getIndices().put2(i23);
            }
            i16++;
        }
        int i24 = i11 * (this.radialSamples + 1);
        while (true) {
            i12 = this.axisSamples;
            if (i10 >= i12) {
                break;
            }
            int i25 = this.radialSamples;
            int i26 = ((i25 + 1) * i10) + i24;
            int i27 = ((i10 - 1) * (i25 + 1)) + i24;
            for (int i28 = 1; i28 <= this.radialSamples; i28++) {
                int i29 = i27 + i28;
                this._meshData.getIndices().put2(i29);
                int i30 = i29 + 1;
                this._meshData.getIndices().put2(i30);
                int i31 = i26 + i28;
                this._meshData.getIndices().put2(i31);
                this._meshData.getIndices().put2(i30);
                this._meshData.getIndices().put2(i31 + 1);
                this._meshData.getIndices().put2(i31);
            }
            i10++;
        }
        int i32 = i24 + ((i12 - 1) * (this.radialSamples + 1));
        int i33 = 1;
        while (true) {
            i13 = this.sphereSamples;
            if (i33 >= i13) {
                break;
            }
            int i34 = this.radialSamples;
            int i35 = ((i34 + 1) * i33) + i32;
            int i36 = ((i33 - 1) * (i34 + 1)) + i32;
            for (int i37 = 1; i37 <= this.radialSamples; i37++) {
                int i38 = i36 + i37;
                this._meshData.getIndices().put2(i38);
                int i39 = i38 + 1;
                this._meshData.getIndices().put2(i39);
                int i40 = i35 + i37;
                this._meshData.getIndices().put2(i40);
                this._meshData.getIndices().put2(i39);
                this._meshData.getIndices().put2(i40 + 1);
                this._meshData.getIndices().put2(i40);
            }
            i33++;
        }
        int i41 = i32 + ((i13 - 1) * (this.radialSamples + 1));
        for (int i42 = 1; i42 <= this.radialSamples; i42++) {
            int i43 = i41 + i42;
            this._meshData.getIndices().put2(i43);
            this._meshData.getIndices().put2(i43 + 1);
            this._meshData.getIndices().put2(this.radialSamples + i41 + 2);
        }
    }

    public double getHeight() {
        return this.height;
    }

    public double getRadius() {
        return this.radius;
    }

    @Override
    public void read(InputCapsule inputCapsule) throws IOException {
        super.read(inputCapsule);
        this.axisSamples = inputCapsule.readInt("circleSamples", 0);
        this.radialSamples = inputCapsule.readInt("radialSamples", 0);
        this.sphereSamples = inputCapsule.readInt("sphereSamples", 0);
        this.radius = inputCapsule.readDouble(TestVFXEffect.f77524P, 0.0d);
        this.height = inputCapsule.readDouble("height", 0.0d);
    }

    public void reconstruct(Vector3 vector3, Vector3 vector32, double d10) {
        Vector3 fetchTempInstance = Vector3.fetchTempInstance();
        Vector3 fetchTempInstance2 = Vector3.fetchTempInstance();
        this.height = vector3.distance(vector32);
        this.radius = d10;
        setGeometryData();
        fetchTempInstance.set(this._localTransform.getTranslation());
        vector3.add(vector32, fetchTempInstance).multiplyLocal(0.5d);
        vector3.subtract(fetchTempInstance, fetchTempInstance2).normalizeLocal();
        Matrix3 fetchTempInstance3 = Matrix3.fetchTempInstance();
        fetchTempInstance3.fromStartEndLocal(Vector3.UNIT_Y, fetchTempInstance2);
        this._localTransform.setRotation(fetchTempInstance3);
        Vector3.releaseTempInstance(fetchTempInstance);
        Vector3.releaseTempInstance(fetchTempInstance2);
        Matrix3.releaseTempInstance(fetchTempInstance3);
        updateWorldTransform(false);
    }

    public void setHeight(double d10) {
        this.height = d10;
        recreateBuffers();
    }

    public void setRadius(double d10) {
        this.radius = d10;
        setGeometryData();
    }

    @Override
    public void write(OutputCapsule outputCapsule) throws IOException {
        super.write(outputCapsule);
        outputCapsule.write(this.axisSamples, "axisSamples", 0);
        outputCapsule.write(this.radialSamples, "radialSamples", 0);
        outputCapsule.write(this.sphereSamples, "sphereSamples", 0);
        outputCapsule.write(this.radius, TestVFXEffect.f77524P, 0.0d);
        outputCapsule.write(this.height, "height", 0.0d);
    }

    public Capsule(String str, int i10, int i11, int i12, double d10, double d11) {
        super(str);
        this.axisSamples = i10;
        this.sphereSamples = i12;
        this.radialSamples = i11;
        this.radius = d10;
        this.height = d11;
        recreateBuffers();
    }
}
