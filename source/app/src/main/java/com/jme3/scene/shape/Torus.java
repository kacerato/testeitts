package com.jme3.scene.shape;

import com.jme3.export.InputCapsule;
import com.jme3.export.JmeExporter;
import com.jme3.export.JmeImporter;
import com.jme3.export.OutputCapsule;
import com.jme3.math.FastMath;
import com.jme3.math.Vector3f;
import com.jme3.scene.Mesh;
import com.jme3.scene.VertexBuffer;
import com.jme3.util.BufferUtils;
import java.io.IOException;
import java.nio.FloatBuffer;
import java.nio.ShortBuffer;

public class Torus extends Mesh {
    private int circleSamples;
    private float innerRadius;
    private float outerRadius;
    private int radialSamples;

    public Torus() {
    }

    private void setGeometryData() {
        int i10 = (this.circleSamples + 1) * (this.radialSamples + 1);
        FloatBuffer createVector3Buffer = BufferUtils.createVector3Buffer(i10);
        setBuffer(VertexBuffer.Type.Position, 3, createVector3Buffer);
        FloatBuffer createVector3Buffer2 = BufferUtils.createVector3Buffer(i10);
        setBuffer(VertexBuffer.Type.Normal, 3, createVector3Buffer2);
        FloatBuffer createVector2Buffer = BufferUtils.createVector2Buffer(i10);
        setBuffer(VertexBuffer.Type.TexCoord, 2, createVector2Buffer);
        float f10 = 1.0f / this.circleSamples;
        float f11 = 1.0f / this.radialSamples;
        Vector3f vector3f = new Vector3f();
        Vector3f vector3f2 = new Vector3f();
        Vector3f vector3f3 = new Vector3f();
        int i11 = 0;
        int i12 = 0;
        while (i11 < this.circleSamples) {
            float f12 = i11 * f10;
            float f13 = 6.2831855f;
            float f14 = f12 * 6.2831855f;
            vector3f.set(FastMath.cos(f14), FastMath.sin(f14), 0.0f);
            vector3f.mult(this.outerRadius, vector3f2);
            int i13 = i12;
            int i14 = 0;
            while (i14 < this.radialSamples) {
                float f15 = i14 * f11;
                float f16 = f15 * f13;
                float cos = FastMath.cos(f16);
                float sin = FastMath.sin(f16);
                vector3f3.set(vector3f).multLocal(cos);
                vector3f3.f81613z += sin;
                createVector3Buffer2.put(vector3f3.f81611x).put(vector3f3.f81612y).put(vector3f3.f81613z);
                vector3f3.multLocal(this.innerRadius).addLocal(vector3f2);
                createVector3Buffer.put(vector3f3.f81611x).put(vector3f3.f81612y).put(vector3f3.f81613z);
                createVector2Buffer.put(f15).put(f12);
                i13++;
                i14++;
                f10 = f10;
                f13 = 6.2831855f;
            }
            BufferUtils.copyInternalVector3(createVector3Buffer, i12, i13);
            BufferUtils.copyInternalVector3(createVector3Buffer2, i12, i13);
            createVector2Buffer.put(1.0f).put(f12);
            i12 = i13 + 1;
            i11++;
            f10 = f10;
        }
        int i15 = 0;
        while (i15 <= this.radialSamples) {
            BufferUtils.copyInternalVector3(createVector3Buffer, i15, i12);
            BufferUtils.copyInternalVector3(createVector3Buffer2, i15, i12);
            BufferUtils.copyInternalVector2(createVector2Buffer, i15, i12);
            createVector2Buffer.put((i12 * 2) + 1, 1.0f);
            i15++;
            i12++;
        }
    }

    private void setIndexData() {
        ShortBuffer createShortBuffer = BufferUtils.createShortBuffer(this.circleSamples * 2 * this.radialSamples * 3);
        setBuffer(VertexBuffer.Type.Index, 3, createShortBuffer);
        int i10 = 0;
        int i11 = 0;
        while (i10 < this.circleSamples) {
            int i12 = i11 + 1;
            int i13 = this.radialSamples + 1 + i11;
            int i14 = i13 + 1;
            int i15 = 0;
            int i16 = i13;
            while (i15 < this.radialSamples) {
                int i17 = i11 + 1;
                createShortBuffer.put((short) i11);
                short s10 = (short) i16;
                createShortBuffer.put(s10);
                short s11 = (short) i12;
                createShortBuffer.put(s11);
                i12++;
                createShortBuffer.put(s11);
                i16++;
                createShortBuffer.put(s10);
                createShortBuffer.put((short) i14);
                i15++;
                i14++;
                i11 = i17;
            }
            i10++;
            i11 = i13;
        }
    }

    public int getCircleSamples() {
        return this.circleSamples;
    }

    public float getInnerRadius() {
        return this.innerRadius;
    }

    public float getOuterRadius() {
        return this.outerRadius;
    }

    public int getRadialSamples() {
        return this.radialSamples;
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        super.read(jmeImporter);
        InputCapsule capsule = jmeImporter.getCapsule(this);
        this.circleSamples = capsule.readInt("circleSamples", 0);
        this.radialSamples = capsule.readInt("radialSamples", 0);
        this.innerRadius = capsule.readFloat("innerRadius", 0.0f);
        this.outerRadius = capsule.readFloat("outerRadius", 0.0f);
    }

    public void updateGeometry(int i10, int i11, float f10, float f11) {
        this.circleSamples = i10;
        this.radialSamples = i11;
        this.innerRadius = f10;
        this.outerRadius = f11;
        setGeometryData();
        setIndexData();
        updateBound();
        updateCounts();
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        super.write(jmeExporter);
        OutputCapsule capsule = jmeExporter.getCapsule(this);
        capsule.write(this.circleSamples, "circleSamples", 0);
        capsule.write(this.radialSamples, "radialSamples", 0);
        capsule.write(this.innerRadius, "innerRadius", 0.0f);
        capsule.write(this.outerRadius, "outerRadius", 0.0f);
    }

    public Torus(int i10, int i11, float f10, float f11) {
        updateGeometry(i10, i11, f10, f11);
    }
}
