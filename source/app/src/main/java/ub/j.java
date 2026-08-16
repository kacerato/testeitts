package ub;

import android.graphics.Bitmap;
import com.google.gson.annotations.Expose;
import com.itsmagic.engine.Engines.Engine.Texture.Noise.FastNoiseLite;
import com.itsmagic.engine.Engines.Engine.Texture.Noise.NoiseData;
import com.itsmagic.engine.Engines.Engine.Texture.Utils.TextureConfig;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.lang.reflect.Field;

public class j extends n {

    public final NoiseData f118760p;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public j(NoiseData noiseData) {
        super(r0, r0, r1, true);
        int[] iArr = TextureConfig.f79814s;
        TextureConfig textureConfig = noiseData.textureConfig;
        int i10 = iArr[textureConfig.maxResolutionID];
        this.f118760p = noiseData;
    }

    public static void z0(NoiseData data, String inProjectFile) {
        TextureConfig textureConfig = data.textureConfig;
        j jVar = new j(data);
        jVar.U0();
        Bitmap createBitmap = Bitmap.createBitmap(jVar.getWidth(), jVar.getHeight(), Bitmap.Config.ARGB_8888);
        int width = jVar.getWidth();
        int height = jVar.getHeight();
        for (int i10 = 0; i10 < width; i10++) {
            for (int i11 = 0; i11 < height; i11++) {
                createBitmap.setPixel(i10, i11, jVar.i(i10, i11).intColor);
            }
        }
        try {
            FileOutputStream fileOutputStream = new FileOutputStream(new File(com.itsmagic.engine.Core.Components.ProjectController.a.R() + "/" + (Tc.b.O(inProjectFile) + ".texture")));
            try {
                if (textureConfig.y()) {
                    createBitmap.compress(Bitmap.CompressFormat.PNG, textureConfig.s(), fileOutputStream);
                } else {
                    createBitmap.compress(Bitmap.CompressFormat.JPEG, textureConfig.s(), fileOutputStream);
                }
                fileOutputStream.close();
            } finally {
            }
        } catch (IOException e10) {
            e10.printStackTrace();
        }
    }

    public FastNoiseLite.CellularDistanceFunction B0() {
        return this.f118760p.mCellularDistanceFunction;
    }

    public float C0() {
        return this.f118760p.mCellularJitterModifier;
    }

    public FastNoiseLite.CellularReturnType D0() {
        return this.f118760p.mCellularReturnType;
    }

    public float E0() {
        return this.f118760p.mDomainWarpAmp;
    }

    public FastNoiseLite.DomainWarpType F0() {
        return this.f118760p.mDomainWarpType;
    }

    public float G0() {
        return this.f118760p.mFractalBounding;
    }

    public FastNoiseLite.FractalType H0() {
        return this.f118760p.mFractalType;
    }

    public float I0() {
        return this.f118760p.mFrequency;
    }

    public float J0() {
        return this.f118760p.mGain;
    }

    public float K0() {
        return this.f118760p.mLacunarity;
    }

    public NoiseData L0() {
        return this.f118760p;
    }

    public FastNoiseLite.NoiseType M0() {
        return this.f118760p.mNoiseType;
    }

    public int N0() {
        return this.f118760p.mOctaves;
    }

    public float O0() {
        return this.f118760p.mPingPongStrength;
    }

    public FastNoiseLite.RotationType3D P0() {
        return this.f118760p.mRotationType3D;
    }

    public int Q0() {
        return this.f118760p.mSeed;
    }

    public float R0() {
        return this.f118760p.mWeightedStrength;
    }

    public void U0() {
        FastNoiseLite fastNoiseLite = new FastNoiseLite();
        for (Field field : NoiseData.class.getDeclaredFields()) {
            if (field.getAnnotation(Expose.class) != null) {
                try {
                    field.setAccessible(true);
                    Field declaredField = FastNoiseLite.class.getDeclaredField(field.getName());
                    declaredField.setAccessible(true);
                    declaredField.set(fastNoiseLite, field.get(this.f118760p));
                } catch (NoSuchFieldException unused) {
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
        }
        int width = getWidth();
        int height = getHeight();
        FastNoiseLite.a aVar = new FastNoiseLite.a(0.0f, 0.0f);
        FastNoiseLite.a aVar2 = new FastNoiseLite.a(0.0f, 0.0f);
        FastNoiseLite fastNoiseLite2 = new FastNoiseLite();
        fastNoiseLite2.SetFractalType(this.f118760p.domainWarpFractalType);
        fastNoiseLite2.SetFractalGain(this.f118760p.dw_gain);
        fastNoiseLite2.SetFractalLacunarity(this.f118760p.dw_lacunarity);
        fastNoiseLite2.SetFractalLacunarity(this.f118760p.dw_octaves);
        for (int i10 = 0; i10 < width; i10++) {
            for (int i11 = 0; i11 < height; i11++) {
                float f10 = i10 / (width - 1.0f);
                float f11 = i11 / (height - 1.0f);
                aVar.f79768a = f10;
                aVar.f79769b = f11;
                if (this.f118760p.enableDomainWarp) {
                    FastNoiseLite.a aVar3 = new FastNoiseLite.a(f10, f11);
                    fastNoiseLite.DomainWarp(aVar3);
                    float GetNoise = fastNoiseLite2.GetNoise(aVar3.f79768a, aVar3.f79769b);
                    float f12 = this.f118760p.dw_frequency;
                    aVar2.f79768a = GetNoise * f12;
                    aVar2.f79769b = GetNoise * f12;
                } else {
                    aVar2.f79768a = 0.0f;
                    aVar2.f79769b = 0.0f;
                }
                super.Y(i10, i11, this.f118760p.getColoRamp().k((fastNoiseLite.GetNoise(aVar.f79768a + aVar2.f79768a, aVar.f79769b + aVar2.f79769b) + 1.0f) / 2.0f));
            }
        }
    }

    public void V0(FastNoiseLite.CellularDistanceFunction mCellularDistanceFunction) {
        this.f118760p.mCellularDistanceFunction = mCellularDistanceFunction;
    }

    public void W0(float mCellularJitterModifier) {
        this.f118760p.mCellularJitterModifier = mCellularJitterModifier;
    }

    public void X0(FastNoiseLite.CellularReturnType mCellularReturnType) {
        this.f118760p.mCellularReturnType = mCellularReturnType;
    }

    public void Y0(float mDomainWarpAmp) {
        this.f118760p.mDomainWarpAmp = mDomainWarpAmp;
    }

    public void Z0(FastNoiseLite.DomainWarpType mDomainWarpType) {
        this.f118760p.mDomainWarpType = mDomainWarpType;
    }

    public void a1(float mFractalBounding) {
        this.f118760p.mFractalBounding = mFractalBounding;
    }

    public void b1(FastNoiseLite.FractalType mFractalType) {
        this.f118760p.mFractalType = mFractalType;
    }

    public void c1(float mFrequency) {
        this.f118760p.mFrequency = mFrequency;
    }

    public void d1(float mGain) {
        this.f118760p.mGain = mGain;
    }

    public void e1(float mLacunarity) {
        this.f118760p.mLacunarity = mLacunarity;
    }

    public void f1(FastNoiseLite.NoiseType mNoiseType) {
        this.f118760p.mNoiseType = mNoiseType;
    }

    public void g1(int mOctaves) {
        this.f118760p.mOctaves = mOctaves;
    }

    public void h1(float mPingPongStrength) {
        this.f118760p.mPingPongStrength = mPingPongStrength;
    }

    public void i1(FastNoiseLite.RotationType3D mRotationType3D) {
        this.f118760p.mRotationType3D = mRotationType3D;
    }

    public void j1(int mSeed) {
        this.f118760p.mSeed = mSeed;
    }

    public void k1(float mWeightedStrength) {
        this.f118760p.mWeightedStrength = mWeightedStrength;
    }
}
