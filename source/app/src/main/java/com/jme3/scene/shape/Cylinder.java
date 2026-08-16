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
import java.io.IOException;
import java.lang.reflect.Array;

public class Cylinder extends Mesh {
    private int axisSamples;
    private boolean closed;
    private float height;
    private boolean inverted;
    private int radialSamples;
    private float radius;
    private float radius2;

    public Cylinder() {
    }

    public int getAxisSamples() {
        return this.axisSamples;
    }

    public float getHeight() {
        return this.height;
    }

    public int getRadialSamples() {
        return this.radialSamples;
    }

    public float getRadius() {
        return this.radius;
    }

    public float getRadius2() {
        return this.radius2;
    }

    public boolean isClosed() {
        return this.closed;
    }

    public boolean isInverted() {
        return this.inverted;
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        super.read(jmeImporter);
        InputCapsule capsule = jmeImporter.getCapsule(this);
        this.axisSamples = capsule.readInt("axisSamples", 0);
        this.radialSamples = capsule.readInt("radialSamples", 0);
        this.radius = capsule.readFloat(TestVFXEffect.f77524P, 0.0f);
        this.radius2 = capsule.readFloat("radius2", 0.0f);
        this.height = capsule.readFloat("height", 0.0f);
        this.closed = capsule.readBoolean("closed", false);
        this.inverted = capsule.readBoolean("inverted", false);
    }

    public void updateGeometry(int i10, int i11, float f10, float f11, float f12, boolean z10, boolean z11) {
        int i12;
        int i13 = i10;
        if (i13 < 2 || i11 < 3 || f10 <= 0.0f || f11 <= 0.0f || f12 <= 0.0f) {
            throw new IllegalArgumentException("Cylinders must have at least 2 axis samples and 3 radial samples, and positive dimensions.");
        }
        this.axisSamples = i13;
        this.radialSamples = i11;
        this.radius = f11;
        this.radius2 = f10;
        this.height = f12;
        this.closed = z10;
        this.inverted = z11;
        int i14 = i11 + 1;
        int i15 = i13 * i14;
        int i16 = i13 * i11 * 2;
        if (z10) {
            i12 = (i14 * 2) + 2 + i15;
            i16 += i11 * 2;
        } else {
            i12 = i15;
        }
        float[][] fArr = (float[][]) Array.newInstance(Float.TYPE, i14, 2);
        for (int i17 = 0; i17 < i11; i17++) {
            float f13 = (6.2831855f / i11) * i17;
            fArr[i17][0] = FastMath.cos(f13);
            fArr[i17][1] = FastMath.sin(f13);
        }
        float[] fArr2 = fArr[i11];
        float[] fArr3 = fArr[0];
        fArr2[0] = fArr3[0];
        fArr2[1] = fArr3[1];
        Vector3f[] vector3fArr = new Vector3f[i14];
        int i18 = 0;
        while (i18 < i14) {
            float[] fArr4 = fArr[i18];
            vector3fArr[i18] = new Vector3f(f12 * fArr4[0], f12 * fArr4[1], f11 - f10).normalizeLocal();
            i18++;
            i15 = i15;
        }
        int i19 = i15;
        int i20 = i12 * 3;
        float[] fArr5 = new float[i20];
        float[] fArr6 = new float[i20];
        float[] fArr7 = new float[i12 * 2];
        int i21 = 0;
        int i22 = 0;
        while (i21 < i13) {
            int i23 = i20;
            int i24 = i12;
            float f14 = i21;
            int i25 = i16;
            float f15 = i13 - 1;
            float f16 = ((-f12) / 2.0f) + ((f12 * f14) / f15);
            float f17 = f11 + (((f10 - f11) * f14) / f15);
            int i26 = 0;
            while (i26 < i14) {
                int i27 = i22 * 3;
                float[] fArr8 = fArr[i26];
                fArr5[i27] = fArr8[0] * f17;
                int i28 = i27 + 1;
                fArr5[i28] = fArr8[1] * f17;
                int i29 = i27 + 2;
                fArr5[i29] = f16;
                float f18 = f17;
                Vector3f vector3f = vector3fArr[i26];
                Vector3f[] vector3fArr2 = vector3fArr;
                fArr6[i27] = vector3f.f81611x;
                fArr6[i28] = vector3f.f81612y;
                fArr6[i29] = vector3f.f81613z;
                int i30 = i22 * 2;
                fArr7[i30] = i26 / i11;
                if (z10) {
                    fArr7[i30 + 1] = (((f12 / 2.0f) + f11) + f16) / ((f11 + f12) + f10);
                } else {
                    fArr7[i30 + 1] = (f12 / 2.0f) + f16;
                }
                i22++;
                i26++;
                f17 = f18;
                vector3fArr = vector3fArr2;
            }
            i21++;
            i13 = i10;
            i20 = i23;
            i12 = i24;
            i16 = i25;
        }
        int i31 = i20;
        int i32 = i16;
        int i33 = i12;
        if (z10) {
            for (int i34 = 0; i34 < i14; i34++) {
                int i35 = i22 * 3;
                float[] fArr9 = fArr[i34];
                fArr5[i35] = fArr9[0] * f11;
                int i36 = i35 + 1;
                fArr5[i36] = fArr9[1] * f11;
                int i37 = i35 + 2;
                fArr5[i37] = (-f12) / 2.0f;
                fArr6[i35] = 0.0f;
                fArr6[i36] = 0.0f;
                fArr6[i37] = -1.0f;
                int i38 = i22 * 2;
                fArr7[i38] = i34 / i11;
                fArr7[i38 + 1] = f11 / ((f11 + f12) + f10);
                i22++;
            }
            for (int i39 = 0; i39 < i14; i39++) {
                int i40 = i22 * 3;
                float[] fArr10 = fArr[i39];
                fArr5[i40] = fArr10[0] * f10;
                int i41 = i40 + 1;
                fArr5[i41] = fArr10[1] * f10;
                int i42 = i40 + 2;
                fArr5[i42] = f12 / 2.0f;
                fArr6[i40] = 0.0f;
                fArr6[i41] = 0.0f;
                fArr6[i42] = 1.0f;
                int i43 = i22 * 2;
                fArr7[i43] = i39 / i11;
                float f19 = f11 + f12;
                fArr7[i43 + 1] = f19 / (f19 + f10);
                i22++;
            }
            int i44 = i22 * 3;
            fArr5[i44] = 0.0f;
            int i45 = i44 + 1;
            fArr5[i45] = 0.0f;
            int i46 = i44 + 2;
            fArr5[i46] = (-f12) / 2.0f;
            fArr6[i44] = 0.0f;
            fArr6[i45] = 0.0f;
            fArr6[i46] = -1.0f;
            int i47 = i22 * 2;
            fArr7[i47] = 0.5f;
            fArr7[i47 + 1] = 0.0f;
            int i48 = i22 + 1;
            int i49 = i48 * 3;
            fArr5[i49] = 0.0f;
            int i50 = i49 + 1;
            fArr5[i50] = 0.0f;
            int i51 = i49 + 2;
            fArr5[i51] = f12 / 2.0f;
            fArr6[i49] = 0.0f;
            fArr6[i50] = 0.0f;
            fArr6[i51] = 1.0f;
            int i52 = i48 * 2;
            fArr7[i52] = 0.5f;
            fArr7[i52 + 1] = 1.0f;
        }
        int i53 = i32 * 3;
        short[] sArr = new short[i53];
        int i54 = 0;
        for (short s10 = 0; s10 < i10 - 1; s10 = (short) (s10 + 1)) {
            for (int i55 = 0; i55 < i11; i55++) {
                int i56 = (s10 * i14) + i55;
                sArr[i54] = (short) i56;
                short s11 = (short) (i56 + 1);
                sArr[i54 + 1] = s11;
                int i57 = ((s10 + 1) * i14) + i55;
                short s12 = (short) i57;
                sArr[i54 + 2] = s12;
                sArr[i54 + 3] = s12;
                int i58 = i54 + 5;
                sArr[i54 + 4] = s11;
                i54 += 6;
                sArr[i58] = (short) (i57 + 1);
            }
        }
        if (z10) {
            short s13 = (short) (i33 - 2);
            short s14 = (short) (i33 - 1);
            int i59 = (i10 + 1) * i14;
            for (int i60 = 0; i60 < i11; i60++) {
                int i61 = i19 + i60;
                sArr[i54] = (short) (i61 + 1);
                sArr[i54 + 1] = (short) i61;
                sArr[i54 + 2] = s13;
                int i62 = i59 + i60;
                sArr[i54 + 3] = (short) i62;
                int i63 = i54 + 5;
                sArr[i54 + 4] = (short) (i62 + 1);
                i54 += 6;
                sArr[i63] = s14;
            }
        }
        if (z11) {
            for (int i64 = 0; i64 < i53 / 2; i64++) {
                short s15 = sArr[i64];
                int i65 = (i53 - 1) - i64;
                sArr[i64] = sArr[i65];
                sArr[i65] = s15;
            }
            for (int i66 = 0; i66 < i31; i66++) {
                fArr6[i66] = -fArr6[i66];
            }
        }
        setBuffer(VertexBuffer.Type.Position, 3, BufferUtils.createFloatBuffer(fArr5));
        setBuffer(VertexBuffer.Type.Normal, 3, BufferUtils.createFloatBuffer(fArr6));
        setBuffer(VertexBuffer.Type.TexCoord, 2, BufferUtils.createFloatBuffer(fArr7));
        setBuffer(VertexBuffer.Type.Index, 3, BufferUtils.createShortBuffer(sArr));
        updateBound();
        setStatic();
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        super.write(jmeExporter);
        OutputCapsule capsule = jmeExporter.getCapsule(this);
        capsule.write(this.axisSamples, "axisSamples", 0);
        capsule.write(this.radialSamples, "radialSamples", 0);
        capsule.write(this.radius, TestVFXEffect.f77524P, 0.0f);
        capsule.write(this.radius2, "radius2", 0.0f);
        capsule.write(this.height, "height", 0.0f);
        capsule.write(this.closed, "closed", false);
        capsule.write(this.inverted, "inverted", false);
    }

    public Cylinder(int i10, int i11, float f10, float f11) {
        this(i10, i11, f10, f11, false);
    }

    public Cylinder(int i10, int i11, float f10, float f11, boolean z10) {
        this(i10, i11, f10, f11, z10, false);
    }

    public Cylinder(int i10, int i11, float f10, float f11, boolean z10, boolean z11) {
        this(i10, i11, f10, f10, f11, z10, z11);
    }

    public Cylinder(int i10, int i11, float f10, float f11, float f12, boolean z10, boolean z11) {
        updateGeometry(i10, i11, f10, f11, f12, z10, z11);
    }
}
