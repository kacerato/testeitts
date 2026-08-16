package com.jme3.environment.generation;

import com.jme3.app.Application;
import com.jme3.environment.util.CubeMapWrapper;
import com.jme3.environment.util.EnvMapUtils;
import com.jme3.math.ColorRGBA;
import com.jme3.math.FastMath;
import com.jme3.math.Vector3f;
import com.jme3.math.Vector4f;
import com.jme3.texture.TextureCubeMap;
import java.util.concurrent.Callable;
import java.util.logging.Logger;

public class PrefilteredEnvMapFaceGenerator extends RunnableWithProgress {
    private static final Logger log = Logger.getLogger(PrefilteredEnvMapFaceGenerator.class.getName());

    Vector3f f81572H;

    Vector4f f81573Xi;
    private final Application app;

    ColorRGBA f81574c;
    private int face;
    private EnvMapUtils.FixSeamsMethod fixSeamsMethod;
    private EnvMapUtils.GenerationType genType;
    private TextureCubeMap sourceMap;
    private TextureCubeMap store;
    private int targetMapSize;
    Vector3f tmp;
    Vector3f tmp1;
    Vector3f tmp2;
    Vector3f tmp3;

    public PrefilteredEnvMapFaceGenerator(Application application, int i10, JobProgressListener<Integer> jobProgressListener) {
        super(jobProgressListener);
        this.face = 0;
        this.f81573Xi = new Vector4f();
        this.f81572H = new Vector3f();
        this.tmp = new Vector3f();
        this.f81574c = new ColorRGBA();
        this.tmp1 = new Vector3f();
        this.tmp2 = new Vector3f();
        this.tmp3 = new Vector3f();
        this.app = application;
        this.face = i10;
    }

    private float computeMipLevel(float f10, int i10, float f11, float f12) {
        float f13 = 1.0E-5f + f12;
        return Math.min(Math.max((((float) (Math.log((1.0f / (i10 * ((ggx(f13, f10) * f13) / (f12 * 4.0f)))) / (12.566371f / ((6.0f * f11) * f11))) / Math.log(2.0d))) * 0.5f) + 1.0f, 0.0f), (float) (Math.log(f11) / Math.log(2.0d)));
    }

    private TextureCubeMap generatePrefilteredEnvMap(TextureCubeMap textureCubeMap, int i10, EnvMapUtils.FixSeamsMethod fixSeamsMethod, TextureCubeMap textureCubeMap2) {
        try {
            int length = textureCubeMap2.getImage().getMipMapSizes().length;
            setEnd(length);
            if (!textureCubeMap.getImage().hasMipmaps() || textureCubeMap.getImage().getMipMapSizes().length < length) {
                throw new IllegalArgumentException("The input cube map must have at least " + length + "mip maps");
            }
            CubeMapWrapper cubeMapWrapper = new CubeMapWrapper(textureCubeMap);
            CubeMapWrapper cubeMapWrapper2 = new CubeMapWrapper(textureCubeMap2);
            Vector3f vector3f = new Vector3f();
            Vector3f vector3f2 = new Vector3f();
            ColorRGBA colorRGBA = new ColorRGBA();
            int i11 = i10;
            int i12 = 0;
            while (i12 < length) {
                float roughnessFromMip = EnvMapUtils.getRoughnessFromMip(i12, length);
                int sampleFromMip = EnvMapUtils.getSampleFromMip(i12, length);
                int i13 = 0;
                while (i13 < i11) {
                    int i14 = 0;
                    while (i14 < i11) {
                        vector3f2.set(0.0f, 0.0f, 0.0f);
                        int i15 = i14;
                        int i16 = i13;
                        int i17 = i12;
                        EnvMapUtils.getVectorFromCubemapFaceTexCoord(i14, i13, i11, this.face, vector3f, fixSeamsMethod);
                        prefilterEnvMapTexel(cubeMapWrapper, roughnessFromMip, vector3f, sampleFromMip, i17, vector3f2);
                        colorRGBA.set(Math.max(vector3f2.f81611x, 1.0E-4f), Math.max(vector3f2.f81612y, 1.0E-4f), Math.max(vector3f2.f81613z, 1.0E-4f), 1.0f);
                        cubeMapWrapper2.setPixel(i15, i16, this.face, i17, colorRGBA);
                        i14 = i15 + 1;
                        i13 = i16;
                        i12 = i17;
                        i11 = i11;
                    }
                    i13++;
                }
                i11 /= 2;
                progress();
                i12++;
            }
            return textureCubeMap2;
        } catch (Exception e10) {
            e10.printStackTrace();
            throw e10;
        }
    }

    private float ggx(float f10, float f11) {
        float f12 = f11 / (((f10 * f10) * ((f11 * f11) - 1.0f)) + 1.0f);
        return f12 * f12 * 0.31830987f;
    }

    private void init() {
        this.f81573Xi.set(0.0f, 0.0f, 0.0f, 0.0f);
        this.f81572H.set(0.0f, 0.0f, 0.0f);
        this.tmp.set(0.0f, 0.0f, 0.0f);
        this.f81574c.set(1.0f, 1.0f, 1.0f, 1.0f);
        this.tmp1.set(0.0f, 0.0f, 0.0f);
        this.tmp2.set(0.0f, 0.0f, 0.0f);
        this.tmp3.set(0.0f, 0.0f, 0.0f);
        reset();
    }

    private Vector3f prefilterEnvMapTexel(CubeMapWrapper cubeMapWrapper, float f10, Vector3f vector3f, int i10, int i11, Vector3f vector3f2) {
        int i12 = this.genType == EnvMapUtils.GenerationType.HighQuality ? i10 == 1 ? 1 : 18 : 1;
        float f11 = 6.2831855f / i12;
        float cos = f11 * ((FastMath.cos((((float) (FastMath.abs(vector3f.f81613z + vector3f.f81611x) * 256.0d)) * 0.5f) % 6.2831855f) * 0.5f) + 0.5f);
        float f12 = f10 * f10;
        float f13 = f12 * f12;
        Vector3f vector3f3 = Vector3f.UNIT_X;
        if (FastMath.abs(vector3f.f81613z) < 0.999d) {
            vector3f3 = Vector3f.UNIT_Y;
        }
        Vector3f normalizeLocal = this.tmp1.set(vector3f3).crossLocal(vector3f).normalizeLocal();
        Vector3f crossLocal = this.tmp2.set(vector3f).crossLocal(normalizeLocal);
        float f14 = 0.0f;
        Vector3f vector3f4 = new Vector3f(0.0f, 0.0f, 1.0f);
        Vector3f vector3f5 = new Vector3f();
        int i13 = 0;
        float f15 = 0.0f;
        while (i13 < i10) {
            Vector4f hammersleyPoint = EnvMapUtils.getHammersleyPoint(i13, i10, this.f81573Xi);
            this.f81573Xi = hammersleyPoint;
            int i14 = i13;
            Vector3f importanceSampleGGX = importanceSampleGGX(hammersleyPoint, f13, this.f81572H);
            this.f81572H = importanceSampleGGX;
            importanceSampleGGX.normalizeLocal();
            Vector3f vector3f6 = this.f81572H;
            float f16 = vector3f6.f81613z;
            Vector3f vector3f7 = vector3f5;
            Vector3f subtractLocal = vector3f6.multLocal(f16 * 2.0f).subtractLocal(vector3f4);
            float f17 = subtractLocal.f81613z;
            float f18 = i11;
            if (i11 != 0) {
                f18 = computeMipLevel(f10, i10, this.targetMapSize, f16);
            }
            float f19 = f18;
            Vector3f vector3f8 = vector3f4;
            Vector3f vector3f9 = normalizeLocal;
            float f20 = f13;
            toWorld(subtractLocal, vector3f, normalizeLocal, crossLocal, vector3f7);
            f15 += samplePixel(cubeMapWrapper, vector3f7, f17, f19, vector3f2);
            for (int i15 = 1; i15 < i12; i15++) {
                rotateDirection((i15 * f11) + cos, subtractLocal, vector3f7);
                subtractLocal.set(vector3f7);
                toWorld(subtractLocal, vector3f, vector3f9, crossLocal, vector3f7);
                f15 += samplePixel(cubeMapWrapper, vector3f7, f17, f19, vector3f2);
            }
            i13 = i14 + 1;
            f14 = 0.0f;
            vector3f5 = vector3f7;
            vector3f4 = vector3f8;
            normalizeLocal = vector3f9;
            f13 = f20;
        }
        if (f15 > f14) {
            vector3f2.divideLocal(f15);
        }
        return vector3f2;
    }

    private Vector3f rotateDirection(float f10, Vector3f vector3f, Vector3f vector3f2) {
        float sin = FastMath.sin(f10);
        float cos = FastMath.cos(f10);
        float f11 = vector3f.f81611x * cos;
        float f12 = vector3f.f81612y;
        vector3f2.f81611x = f11 + (f12 * sin);
        vector3f2.f81612y = ((-vector3f.f81611x) * sin) + (f12 * cos);
        vector3f2.f81613z = vector3f.f81613z * ((1.0f - cos) + cos);
        return vector3f2;
    }

    private float samplePixel(CubeMapWrapper cubeMapWrapper, Vector3f vector3f, float f10, float f11, Vector3f vector3f2) {
        if (f10 <= 0.0f) {
            return 0.0f;
        }
        cubeMapWrapper.getPixel(vector3f, f11, this.f81574c);
        vector3f2.setX(vector3f2.f81611x + (this.f81574c.f81598r * f10));
        vector3f2.setY(vector3f2.f81612y + (this.f81574c.f81597g * f10));
        vector3f2.setZ(vector3f2.f81613z + (this.f81574c.f81596b * f10));
        return f10;
    }

    private void toWorld(Vector3f vector3f, Vector3f vector3f2, Vector3f vector3f3, Vector3f vector3f4, Vector3f vector3f5) {
        vector3f5.set(vector3f3).multLocal(vector3f.f81611x);
        this.tmp.set(vector3f4).multLocal(vector3f.f81612y);
        vector3f5.addLocal(this.tmp);
        this.tmp.set(vector3f2).multLocal(vector3f.f81613z);
        vector3f5.addLocal(this.tmp);
    }

    public Vector3f importanceSampleGGX(Vector4f vector4f, float f10, Vector3f vector3f) {
        if (vector3f == null) {
            vector3f = new Vector3f();
        }
        float f11 = vector4f.f81615x;
        float sqrt = FastMath.sqrt((1.0f - f11) / (((f10 - 1.0f) * f11) + 1.0f));
        float sqrt2 = FastMath.sqrt(1.0f - (sqrt * sqrt));
        float f12 = vector4f.f81617z * sqrt2;
        float f13 = sqrt2 * vector4f.f81614w;
        vector3f.f81611x = f12;
        vector3f.f81612y = f13;
        vector3f.f81613z = sqrt;
        return vector3f;
    }

    @Override
    public void run() {
        this.app.enqueue(new Callable<Void>() {
            @Override
            public Void call() throws Exception {
                PrefilteredEnvMapFaceGenerator.this.listener.start();
                return null;
            }
        });
        this.store = generatePrefilteredEnvMap(this.sourceMap, this.targetMapSize, this.fixSeamsMethod, this.store);
        this.app.enqueue(new Callable<Void>() {
            @Override
            public Void call() throws Exception {
                PrefilteredEnvMapFaceGenerator prefilteredEnvMapFaceGenerator = PrefilteredEnvMapFaceGenerator.this;
                prefilteredEnvMapFaceGenerator.listener.done(Integer.valueOf(prefilteredEnvMapFaceGenerator.face));
                return null;
            }
        });
    }

    public void setGenerationParam(TextureCubeMap textureCubeMap, int i10, EnvMapUtils.FixSeamsMethod fixSeamsMethod, EnvMapUtils.GenerationType generationType, TextureCubeMap textureCubeMap2) {
        this.sourceMap = textureCubeMap;
        this.targetMapSize = i10;
        this.fixSeamsMethod = fixSeamsMethod;
        this.store = textureCubeMap2;
        this.genType = generationType;
        init();
    }
}
