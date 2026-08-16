package com.jme3.scene.shape;

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
import com.jme3.util.TempVars;
import java.io.IOException;
import java.nio.FloatBuffer;
import java.nio.ShortBuffer;

public class Dome extends Mesh {
    private Vector3f center;
    private boolean insideView;
    private int planes;
    private int radialSamples;
    private float radius;

    public Dome() {
        this.insideView = true;
    }

    public Vector3f getCenter() {
        return this.center;
    }

    public int getPlanes() {
        return this.planes;
    }

    public int getRadialSamples() {
        return this.radialSamples;
    }

    public float getRadius() {
        return this.radius;
    }

    public boolean isInsideView() {
        return this.insideView;
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        super.read(jmeImporter);
        InputCapsule capsule = jmeImporter.getCapsule(this);
        this.planes = capsule.readInt("planes", 0);
        this.radialSamples = capsule.readInt("radialSamples", 0);
        this.radius = capsule.readFloat(TestVFXEffect.f77524P, 0.0f);
        this.center = (Vector3f) capsule.readSavable("center", Vector3f.ZERO.m1292clone());
    }

    public void updateGeometry(Vector3f vector3f, int i10, int i11, float f10, boolean z10) {
        int i12;
        int i13 = i11;
        float f11 = f10;
        this.insideView = z10;
        this.center = vector3f != null ? vector3f : new Vector3f(0.0f, 0.0f, 0.0f);
        this.planes = i10;
        this.radialSamples = i13;
        this.radius = f11;
        int i14 = i10 - 1;
        int i15 = i13 + 1;
        int i16 = i14 * i15;
        int i17 = i16 + 1;
        FloatBuffer createVector3Buffer = BufferUtils.createVector3Buffer(i17);
        FloatBuffer createVector3Buffer2 = BufferUtils.createVector3Buffer(i17);
        FloatBuffer createVector2Buffer = BufferUtils.createVector2Buffer(i17);
        setBuffer(VertexBuffer.Type.Position, 3, createVector3Buffer);
        setBuffer(VertexBuffer.Type.Normal, 3, createVector3Buffer2);
        setBuffer(VertexBuffer.Type.TexCoord, 2, createVector2Buffer);
        float f12 = 1.0f / i13;
        float f13 = 1.0f / i14;
        float[] fArr = new float[i13];
        float[] fArr2 = new float[i13];
        int i18 = i16;
        int i19 = 0;
        while (i19 < i13) {
            float f14 = 6.2831855f * f12 * i19;
            fArr2[i19] = FastMath.cos(f14);
            fArr[i19] = FastMath.sin(f14);
            i19++;
            i15 = i15;
        }
        int i20 = i15;
        TempVars tempVars = TempVars.get();
        Vector3f vector3f2 = tempVars.vect3;
        Vector3f vector3f3 = tempVars.vect2;
        Vector3f vector3f4 = tempVars.vect1;
        int i21 = 0;
        int i22 = 0;
        while (i21 < i14) {
            int i23 = i14;
            float f15 = i21 * f13;
            float f16 = f11 * f15;
            float f17 = f13;
            Vector3f vector3f5 = vector3f3.set(vector3f);
            Vector3f vector3f6 = vector3f3;
            vector3f5.f81612y += f16;
            float sqrt = FastMath.sqrt(FastMath.abs((f11 * f11) - (f16 * f16)));
            int i24 = i21;
            int i25 = 0;
            int i26 = i22;
            while (i25 < i13) {
                float f18 = i25 * f12;
                float f19 = f12;
                float[] fArr3 = fArr2;
                float[] fArr4 = fArr;
                vector3f2.set(fArr2[i25], 0.0f, fArr[i25]).mult(sqrt, vector3f4);
                createVector3Buffer.put(vector3f5.f81611x + vector3f4.f81611x).put(vector3f5.f81612y + vector3f4.f81612y).put(vector3f5.f81613z + vector3f4.f81613z);
                BufferUtils.populateFromBuffer(vector3f4, createVector3Buffer, i26);
                Vector3f subtractLocal = vector3f4.subtractLocal(vector3f);
                subtractLocal.normalizeLocal();
                if (z10) {
                    createVector3Buffer2.put(-subtractLocal.f81611x).put(-subtractLocal.f81612y).put(-subtractLocal.f81613z);
                } else {
                    createVector3Buffer2.put(subtractLocal.f81611x).put(subtractLocal.f81612y).put(subtractLocal.f81613z);
                }
                createVector2Buffer.put(f18).put(f15);
                i25++;
                i26++;
                i13 = i11;
                f12 = f19;
                fArr2 = fArr3;
                fArr = fArr4;
            }
            int i27 = i22;
            BufferUtils.copyInternalVector3(createVector3Buffer, i27, i26);
            BufferUtils.copyInternalVector3(createVector3Buffer2, i27, i26);
            createVector2Buffer.put(1.0f).put(f15);
            i22 = i26 + 1;
            i13 = i11;
            f11 = f10;
            i21 = i24 + 1;
            i14 = i23;
            f13 = f17;
            vector3f3 = vector3f6;
        }
        int i28 = i14;
        tempVars.release();
        createVector3Buffer.put(this.center.f81611x).put(this.center.f81612y + f10).put(this.center.f81613z);
        createVector3Buffer2.put(0.0f).put(z10 ? -1.0f : 1.0f).put(0.0f);
        createVector2Buffer.put(0.5f).put(1.0f);
        int i29 = i10 - 2;
        ShortBuffer createShortBuffer = BufferUtils.createShortBuffer(((i29 * i11 * 2) + i11) * 3);
        setBuffer(VertexBuffer.Type.Index, 3, createShortBuffer);
        for (int i30 = 1; i30 < i28; i30++) {
            int i31 = (i30 - 1) * i20;
            int i32 = i30 * i20;
            for (int i33 = 0; i33 < i11; i33++) {
                if (z10) {
                    int i34 = i31 + i33;
                    createShortBuffer.put((short) i34);
                    short s10 = (short) (i34 + 1);
                    createShortBuffer.put(s10);
                    int i35 = i32 + i33;
                    short s11 = (short) i35;
                    createShortBuffer.put(s11);
                    createShortBuffer.put(s10);
                    createShortBuffer.put((short) (i35 + 1));
                    createShortBuffer.put(s11);
                } else {
                    int i36 = i31 + i33;
                    createShortBuffer.put((short) i36);
                    int i37 = i32 + i33;
                    short s12 = (short) i37;
                    createShortBuffer.put(s12);
                    short s13 = (short) (i36 + 1);
                    createShortBuffer.put(s13);
                    createShortBuffer.put(s13);
                    createShortBuffer.put(s12);
                    createShortBuffer.put((short) (i37 + 1));
                }
            }
        }
        int i38 = i29 * i20;
        int i39 = 0;
        while (i39 < i11) {
            if (z10) {
                int i40 = i38 + i39;
                createShortBuffer.put((short) i40);
                createShortBuffer.put((short) (i40 + 1));
                i12 = i18;
                createShortBuffer.put((short) i12);
            } else {
                i12 = i18;
                int i41 = i38 + i39;
                createShortBuffer.put((short) i41);
                createShortBuffer.put((short) i12);
                createShortBuffer.put((short) (i41 + 1));
            }
            i39++;
            i18 = i12;
        }
        updateBound();
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        super.write(jmeExporter);
        OutputCapsule capsule = jmeExporter.getCapsule(this);
        capsule.write(this.planes, "planes", 0);
        capsule.write(this.radialSamples, "radialSamples", 0);
        capsule.write(this.radius, TestVFXEffect.f77524P, 0.0f);
        capsule.write(this.center, "center", Vector3f.ZERO);
    }

    public Dome(int i10, int i11, float f10) {
        this(new Vector3f(0.0f, 0.0f, 0.0f), i10, i11, f10);
    }

    public Dome(Vector3f vector3f, int i10, int i11, float f10) {
        this.insideView = true;
        updateGeometry(vector3f, i10, i11, f10, true);
    }

    public Dome(Vector3f vector3f, int i10, int i11, float f10, boolean z10) {
        this.insideView = true;
        updateGeometry(vector3f, i10, i11, f10, z10);
    }
}
