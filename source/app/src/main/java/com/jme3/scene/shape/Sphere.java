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

public class Sphere extends Mesh {
    protected boolean interior;
    protected int radialSamples;
    public float radius;
    protected TextureMode textureMode;
    protected int triCount;
    protected boolean useEvenSlices;
    protected int vertCount;
    protected int zSamples;

    public enum TextureMode {
        Original,
        Projected,
        Polar
    }

    public Sphere() {
        this.textureMode = TextureMode.Original;
    }

    private void setGeometryData() {
        int i10;
        float f10;
        int i11 = ((this.zSamples - 2) * (this.radialSamples + 1)) + 2;
        this.vertCount = i11;
        FloatBuffer createVector3Buffer = BufferUtils.createVector3Buffer(i11);
        FloatBuffer createVector3Buffer2 = BufferUtils.createVector3Buffer(this.vertCount);
        FloatBuffer createVector2Buffer = BufferUtils.createVector2Buffer(this.vertCount);
        setBuffer(VertexBuffer.Type.Position, 3, createVector3Buffer);
        setBuffer(VertexBuffer.Type.Normal, 3, createVector3Buffer2);
        setBuffer(VertexBuffer.Type.TexCoord, 2, createVector2Buffer);
        int i12 = this.radialSamples;
        float f11 = 1.0f / i12;
        float f12 = 2.0f / (this.zSamples - 1);
        float[] fArr = new float[i12 + 1];
        float[] fArr2 = new float[i12 + 1];
        int i13 = 0;
        while (true) {
            i10 = this.radialSamples;
            if (i13 >= i10) {
                break;
            }
            float f13 = 6.2831855f * f11 * i13;
            fArr2[i13] = FastMath.cos(f13);
            fArr[i13] = FastMath.sin(f13);
            i13++;
        }
        fArr[i10] = fArr[0];
        fArr2[i10] = fArr2[0];
        TempVars tempVars = TempVars.get();
        Vector3f vector3f = tempVars.vect1;
        Vector3f vector3f2 = tempVars.vect2;
        Vector3f vector3f3 = tempVars.vect3;
        int i14 = 0;
        int i15 = 1;
        for (int i16 = 1; i15 < this.zSamples - i16; i16 = 1) {
            float f14 = (i15 * f12) - 1.0f;
            float f15 = f14 * 1.5707964f;
            if (!this.useEvenSlices) {
                f14 = FastMath.sin(f15);
            }
            float f16 = this.radius * f14;
            float f17 = f12;
            Vector3f vector3f4 = vector3f2.set(Vector3f.ZERO);
            Vector3f vector3f5 = vector3f2;
            vector3f4.f81613z += f16;
            float f18 = this.radius;
            float sqrt = FastMath.sqrt(FastMath.abs((f18 * f18) - (f16 * f16)));
            int i17 = i15;
            TempVars tempVars2 = tempVars;
            int i18 = 0;
            int i19 = i14;
            while (i18 < this.radialSamples) {
                float f19 = i18 * f11;
                float f20 = f11;
                int i20 = i14;
                float[] fArr3 = fArr;
                vector3f3.set(fArr2[i18], fArr[i18], 0.0f).mult(sqrt, vector3f);
                createVector3Buffer.put(vector3f4.f81611x + vector3f.f81611x).put(vector3f4.f81612y + vector3f.f81612y).put(vector3f4.f81613z + vector3f.f81613z);
                BufferUtils.populateFromBuffer(vector3f, createVector3Buffer, i19);
                vector3f.normalizeLocal();
                if (this.interior) {
                    createVector3Buffer2.put(-vector3f.f81611x).put(-vector3f.f81612y).put(-vector3f.f81613z);
                } else {
                    createVector3Buffer2.put(vector3f.f81611x).put(vector3f.f81612y).put(vector3f.f81613z);
                }
                TextureMode textureMode = this.textureMode;
                if (textureMode == TextureMode.Original) {
                    createVector2Buffer.put(f19).put((f14 + 1.0f) * 0.5f);
                } else if (textureMode == TextureMode.Projected) {
                    createVector2Buffer.put(f19).put((FastMath.asin(f14) + 1.5707964f) * 0.31830987f);
                } else if (textureMode == TextureMode.Polar) {
                    float abs = (1.5707964f - FastMath.abs(f15)) / 3.1415927f;
                    createVector2Buffer.put((fArr2[i18] * abs) + 0.5f).put((abs * fArr3[i18]) + 0.5f);
                }
                i19++;
                i18++;
                f11 = f20;
                i14 = i20;
                fArr = fArr3;
            }
            int i21 = i14;
            float f21 = f11;
            float[] fArr4 = fArr;
            BufferUtils.copyInternalVector3(createVector3Buffer, i21, i19);
            BufferUtils.copyInternalVector3(createVector3Buffer2, i21, i19);
            TextureMode textureMode2 = this.textureMode;
            if (textureMode2 == TextureMode.Original) {
                createVector2Buffer.put(1.0f).put((f14 + 1.0f) * 0.5f);
            } else if (textureMode2 == TextureMode.Projected) {
                createVector2Buffer.put(1.0f).put((FastMath.asin(f14) + 1.5707964f) * 0.31830987f);
            } else if (textureMode2 == TextureMode.Polar) {
                createVector2Buffer.put(((1.5707964f - FastMath.abs(f15)) / 3.1415927f) + 0.5f).put(0.5f);
            }
            i14 = i19 + 1;
            i15 = i17 + 1;
            f12 = f17;
            vector3f2 = vector3f5;
            tempVars = tempVars2;
            f11 = f21;
            fArr = fArr4;
        }
        int i22 = i14;
        tempVars.release();
        int i23 = i22 * 3;
        createVector3Buffer.position(i23);
        createVector3Buffer.put(0.0f).put(0.0f).put(-this.radius);
        createVector3Buffer2.position(i23);
        if (this.interior) {
            createVector3Buffer2.put(0.0f).put(0.0f).put(1.0f);
        } else {
            createVector3Buffer2.put(0.0f).put(0.0f).put(-1.0f);
        }
        createVector2Buffer.position(2 * i22);
        TextureMode textureMode3 = this.textureMode;
        TextureMode textureMode4 = TextureMode.Polar;
        if (textureMode3 == textureMode4) {
            createVector2Buffer.put(0.5f).put(0.5f);
            f10 = 0.0f;
        } else {
            f10 = 0.0f;
            createVector2Buffer.put(0.5f).put(0.0f);
        }
        createVector3Buffer.put(f10).put(f10).put(this.radius);
        if (this.interior) {
            createVector3Buffer2.put(f10).put(f10).put(-1.0f);
        } else {
            createVector3Buffer2.put(f10).put(f10).put(1.0f);
        }
        if (this.textureMode == textureMode4) {
            createVector2Buffer.put(0.5f).put(0.5f);
        } else {
            createVector2Buffer.put(0.5f).put(1.0f);
        }
        updateBound();
    }

    private void setIndexData() {
        int i10;
        int i11;
        int i12;
        int i13 = (this.zSamples - 2) * 2 * this.radialSamples;
        this.triCount = i13;
        ShortBuffer createShortBuffer = BufferUtils.createShortBuffer(i13 * 3);
        setBuffer(VertexBuffer.Type.Index, 3, createShortBuffer);
        int i14 = 0;
        int i15 = 0;
        while (i14 < this.zSamples - 3) {
            int i16 = i15 + 1;
            int i17 = this.radialSamples + 1 + i15;
            int i18 = i17 + 1;
            int i19 = i17;
            for (int i20 = 0; i20 < this.radialSamples; i20++) {
                if (this.interior) {
                    i11 = i15 + 1;
                    createShortBuffer.put((short) i15);
                    short s10 = (short) i19;
                    createShortBuffer.put(s10);
                    short s11 = (short) i16;
                    createShortBuffer.put(s11);
                    i16++;
                    createShortBuffer.put(s11);
                    i19++;
                    createShortBuffer.put(s10);
                    i12 = i18 + 1;
                    createShortBuffer.put((short) i18);
                } else {
                    i11 = i15 + 1;
                    createShortBuffer.put((short) i15);
                    short s12 = (short) i16;
                    createShortBuffer.put(s12);
                    short s13 = (short) i19;
                    createShortBuffer.put(s13);
                    i16++;
                    createShortBuffer.put(s12);
                    i12 = i18 + 1;
                    createShortBuffer.put((short) i18);
                    i19++;
                    createShortBuffer.put(s13);
                }
                i18 = i12;
                i15 = i11;
            }
            i14++;
            i15 = i17;
        }
        int i21 = 0;
        while (true) {
            i10 = this.radialSamples;
            if (i21 >= i10) {
                break;
            }
            if (this.interior) {
                createShortBuffer.put((short) i21);
                createShortBuffer.put((short) (i21 + 1));
                createShortBuffer.put((short) (this.vertCount - 2));
            } else {
                createShortBuffer.put((short) i21);
                createShortBuffer.put((short) (this.vertCount - 2));
                createShortBuffer.put((short) (i21 + 1));
            }
            i21++;
        }
        int i22 = (this.zSamples - 3) * (i10 + 1);
        for (int i23 = 0; i23 < this.radialSamples; i23++) {
            if (this.interior) {
                createShortBuffer.put((short) (i23 + i22));
                createShortBuffer.put((short) (this.vertCount - 1));
                createShortBuffer.put((short) (i23 + 1 + i22));
            } else {
                createShortBuffer.put((short) (i23 + i22));
                createShortBuffer.put((short) (i23 + 1 + i22));
                createShortBuffer.put((short) (this.vertCount - 1));
            }
        }
    }

    public int getRadialSamples() {
        return this.radialSamples;
    }

    public float getRadius() {
        return this.radius;
    }

    public TextureMode getTextureMode() {
        return this.textureMode;
    }

    public int getZSamples() {
        return this.zSamples;
    }

    @Override
    public void read(JmeImporter jmeImporter) throws IOException {
        super.read(jmeImporter);
        InputCapsule capsule = jmeImporter.getCapsule(this);
        this.zSamples = capsule.readInt("zSamples", 0);
        this.radialSamples = capsule.readInt("radialSamples", 0);
        this.radius = capsule.readFloat(TestVFXEffect.f77524P, 0.0f);
        this.useEvenSlices = capsule.readBoolean("useEvenSlices", false);
        this.textureMode = (TextureMode) capsule.readEnum("textureMode", TextureMode.class, TextureMode.Original);
        this.interior = capsule.readBoolean("interior", false);
    }

    public void setTextureMode(TextureMode textureMode) {
        this.textureMode = textureMode;
        setGeometryData();
    }

    public void updateGeometry(int i10, int i11, float f10) {
        if (i10 >= 3) {
            updateGeometry(i10, i11, f10, false, false);
            return;
        }
        throw new IllegalArgumentException("zSamples cannot be smaller than 3");
    }

    @Override
    public void write(JmeExporter jmeExporter) throws IOException {
        super.write(jmeExporter);
        OutputCapsule capsule = jmeExporter.getCapsule(this);
        capsule.write(this.zSamples, "zSamples", 0);
        capsule.write(this.radialSamples, "radialSamples", 0);
        capsule.write(this.radius, TestVFXEffect.f77524P, 0.0f);
        capsule.write(this.useEvenSlices, "useEvenSlices", false);
        capsule.write(this.textureMode, "textureMode", TextureMode.Original);
        capsule.write(this.interior, "interior", false);
    }

    public Sphere(int i10, int i11, float f10) {
        this(i10, i11, f10, false, false);
    }

    public void updateGeometry(int i10, int i11, float f10, boolean z10, boolean z11) {
        if (i10 >= 3) {
            this.zSamples = i10;
            this.radialSamples = i11;
            this.radius = f10;
            this.useEvenSlices = z10;
            this.interior = z11;
            setGeometryData();
            setIndexData();
            setStatic();
            return;
        }
        throw new IllegalArgumentException("zSamples cannot be smaller than 3");
    }

    public Sphere(int i10, int i11, float f10, boolean z10, boolean z11) {
        this.textureMode = TextureMode.Original;
        updateGeometry(i10, i11, f10, z10, z11);
    }
}
