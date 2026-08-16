package com.jme3.scene.shape;

import com.itsmagic.engine.Engines.Engine.Animation.a;
import com.itsmagic.engine.Engines.Engine.ComponentsV2.VFXEffects.TestVFXEffect;
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

public class PQTorus extends Mesh {

    private float f81632p;

    private float f81633q;
    private int radialSamples;
    private float radius;
    private int steps;
    private float width;

    public PQTorus() {
    }

    public float getP() {
        return this.f81632p;
    }

    public float getQ() {
        return this.f81633q;
    }

    public int getRadialSamples() {
        return this.radialSamples;
    }

    public float getRadius() {
        return this.radius;
    }

    public int getSteps() {
        return this.steps;
    }

    public float getWidth() {
        return this.width;
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        super.read(jmeImporter);
        InputCapsule capsule = jmeImporter.getCapsule(this);
        this.f81632p = capsule.readFloat(a.f72594b, 0.0f);
        this.f81633q = capsule.readFloat("q", 0.0f);
        this.radius = capsule.readFloat(TestVFXEffect.f77524P, 0.0f);
        this.width = capsule.readFloat("width", 0.0f);
        this.steps = capsule.readInt("steps", 0);
        this.radialSamples = capsule.readInt("radialSamples", 0);
    }

    public void updateGeometry(float f10, float f11, float f12, float f13, int i10, int i11) {
        float f14 = f10;
        float f15 = f11;
        float f16 = f12;
        float f17 = f13;
        int i12 = i10;
        this.f81632p = f14;
        this.f81633q = f15;
        this.radius = f16;
        this.width = f17;
        this.steps = i12;
        this.radialSamples = i11;
        float f18 = i12;
        float f19 = 6.2831855f / f18;
        float f20 = i11;
        float f21 = 6.2831855f / f20;
        Vector3f[] vector3fArr = new Vector3f[i12];
        int i13 = i11 * i12;
        FloatBuffer createVector3Buffer = BufferUtils.createVector3Buffer(i13);
        FloatBuffer createVector3Buffer2 = BufferUtils.createVector3Buffer(i13);
        FloatBuffer createVector2Buffer = BufferUtils.createVector2Buffer(i13);
        Vector3f vector3f = new Vector3f();
        float f22 = 0.0f;
        int i14 = 0;
        while (i14 < i12) {
            f22 += f19;
            float f23 = i14 / f18;
            float f24 = f15 * f22;
            float sin = (FastMath.sin(f24) + 2.0f) * 0.5f * f16;
            float f25 = f14 * f22;
            float f26 = f18;
            float cos = FastMath.cos(f25) * sin * f16;
            float f27 = f19;
            float sin2 = FastMath.sin(f25) * sin * f16;
            float cos2 = sin * FastMath.cos(f24) * f16;
            FloatBuffer floatBuffer = createVector2Buffer;
            vector3fArr[i14] = new Vector3f(cos, sin2, cos2);
            float f28 = f22 + 0.01f;
            float f29 = f15 * f28;
            float sin3 = (FastMath.sin(f29) + 2.0f) * 0.5f * f16;
            float f30 = f28 * f14;
            Vector3f vector3f2 = new Vector3f(FastMath.cos(f30) * sin3 * f16, FastMath.sin(f30) * sin3 * f16, sin3 * FastMath.cos(f29) * f16);
            Vector3f subtract = vector3f2.subtract(vector3fArr[i14]);
            Vector3f cross = subtract.cross(vector3fArr[i14].add(vector3f2));
            Vector3f normalize = cross.cross(subtract).normalize();
            Vector3f normalize2 = cross.normalize();
            float f31 = 0.0f;
            int i15 = 0;
            while (i15 < i11) {
                f31 += f21;
                float cos3 = FastMath.cos(f31) * f17;
                float sin4 = FastMath.sin(f31) * f17;
                float f32 = (normalize.f81611x * cos3) + (normalize2.f81611x * sin4);
                vector3f.f81611x = f32;
                vector3f.f81612y = (normalize.f81612y * cos3) + (normalize2.f81612y * sin4);
                vector3f.f81613z = (cos3 * normalize.f81613z) + (sin4 * normalize2.f81613z);
                createVector3Buffer2.put(f32).put(vector3f.f81612y).put(vector3f.f81613z);
                vector3f.addLocal(vector3fArr[i14]);
                createVector3Buffer.put(vector3f.f81611x).put(vector3f.f81612y).put(vector3f.f81613z);
                floatBuffer.put(i15 / f20).put(f23);
                i15++;
                f17 = f13;
            }
            i14++;
            f14 = f10;
            f16 = f12;
            f17 = f13;
            i12 = i10;
            createVector2Buffer = floatBuffer;
            f19 = f27;
            f18 = f26;
            f15 = f11;
        }
        FloatBuffer floatBuffer2 = createVector2Buffer;
        int i16 = 1;
        ShortBuffer createShortBuffer = BufferUtils.createShortBuffer(i13 * 6);
        int i17 = 0;
        while (i17 < i13) {
            short s10 = (short) i17;
            int i18 = i17 - i11;
            short s11 = (short) i18;
            i17 += i16;
            short s12 = (short) i17;
            short[] sArr = new short[6];
            sArr[0] = s10;
            sArr[i16] = s11;
            sArr[2] = s12;
            sArr[3] = s12;
            sArr[4] = s11;
            sArr[5] = (short) (i18 + i16);
            createShortBuffer.put(sArr);
            i16 = 1;
        }
        int capacity = createShortBuffer.capacity();
        for (int i19 = 0; i19 < capacity; i19++) {
            short s13 = createShortBuffer.get(i19);
            if (s13 < 0) {
                createShortBuffer.put(i19, (short) (s13 + i13));
            } else if (s13 >= i13) {
                createShortBuffer.put(i19, (short) (s13 - i13));
            }
        }
        createShortBuffer.rewind();
        setBuffer(VertexBuffer.Type.Position, 3, createVector3Buffer);
        setBuffer(VertexBuffer.Type.Normal, 3, createVector3Buffer2);
        setBuffer(VertexBuffer.Type.TexCoord, 2, floatBuffer2);
        setBuffer(VertexBuffer.Type.Index, 3, createShortBuffer);
        updateBound();
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        super.write(jmeExporter);
        OutputCapsule capsule = jmeExporter.getCapsule(this);
        capsule.write(this.f81632p, a.f72594b, 0.0f);
        capsule.write(this.f81633q, "q", 0.0f);
        capsule.write(this.radius, TestVFXEffect.f77524P, 0.0f);
        capsule.write(this.width, "width", 0.0f);
        capsule.write(this.steps, "steps", 0);
        capsule.write(this.radialSamples, "radialSamples", 0);
    }

    public PQTorus(float f10, float f11, float f12, float f13, int i10, int i11) {
        updateGeometry(f10, f11, f12, f13, i10, i11);
    }
}
