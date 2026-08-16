package com.google.android.filament.filamat;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;

public class MaterialBuilder {

    public static Class<?> f60336c;

    public static Method f60337d;

    public final b f60338a;

    public final long f60339b;

    public enum a {
        OPAQUE,
        TRANSPARENT,
        ADD,
        MASKED,
        FADE,
        MULTIPLY,
        SCREEN
    }

    public static class b {

        public final long f60340a;

        public b(long j10) {
            this.f60340a = j10;
        }

        public void finalize() {
            try {
                super.finalize();
            } catch (Throwable unused) {
            }
            MaterialBuilder.nDestroyMaterialBuilder(this.f60340a);
        }
    }

    public enum c {
        NONE,
        FRONT,
        BACK,
        FRONT_AND_BACK
    }

    public enum d {
        SMOOTH,
        FLAT
    }

    public enum e {
        SURFACE,
        POST_PROCESS
    }

    public enum f {
        NONE,
        PREPROCESSOR,
        SIZE,
        PERFORMANCE
    }

    public enum g {
        LOW,
        MEDIUM,
        HIGH,
        DEFAULT
    }

    public enum h {
        DESKTOP,
        MOBILE,
        ALL
    }

    public enum i {
        DEFAULT,
        SCREEN_SPACE
    }

    public enum j {
        NONE,
        CUBEMAP,
        SCREEN_SPACE
    }

    public enum k {
        SOLID,
        THIN
    }

    public enum l {
        INT,
        UINT,
        FLOAT,
        SHADOW
    }

    public enum m {
        SAMPLER_2D,
        SAMPLER_2D_ARRAY,
        SAMPLER_CUBEMAP,
        SAMPLER_EXTERNAL,
        SAMPLER_3D
    }

    public enum n {
        UNLIT,
        LIT,
        SUBSURFACE,
        CLOTH,
        SPECULAR_GLOSSINESS
    }

    public enum o {
        NONE,
        SIMPLE,
        BENT_NORMALS
    }

    public enum p {
        OPENGL(1),
        VULKAN(2),
        METAL(4),
        WEBGPU(8),
        ALL(21);

        final int number;

        p(int i10) {
            this.number = i10;
        }
    }

    public enum q {
        DEFAULT,
        TWO_PASSES_ONE_SIDE,
        TWO_PASSES_TWO_SIDES
    }

    public enum r {
        BOOL,
        BOOL2,
        BOOL3,
        BOOL4,
        FLOAT,
        FLOAT2,
        FLOAT3,
        FLOAT4,
        INT,
        INT2,
        INT3,
        INT4,
        UINT,
        UINT2,
        UINT3,
        UINT4,
        MAT3,
        MAT4
    }

    public enum s {
        CUSTOM0,
        CUSTOM1,
        CUSTOM2,
        CUSTOM3
    }

    public enum t {
        POSITION,
        TANGENTS,
        COLOR,
        UV0,
        UV1,
        BONE_INDICES,
        BONE_WEIGHTS,
        UNUSED,
        CUSTOM0,
        CUSTOM1,
        CUSTOM2,
        CUSTOM3,
        CUSTOM4,
        CUSTOM5,
        CUSTOM6,
        CUSTOM7
    }

    public enum u {
        OBJECT,
        WORLD,
        VIEW,
        DEVICE
    }

    static {
        System.loadLibrary("filamat-jni");
        try {
            Class<?> cls = Class.forName("com.google.android.filament.Engine");
            f60336c = cls;
            f60337d = cls.getDeclaredMethod("getNativeJobSystem", null);
        } catch (ClassNotFoundException | NoSuchMethodException unused) {
        }
    }

    public MaterialBuilder() {
        long nCreateMaterialBuilder = nCreateMaterialBuilder();
        this.f60339b = nCreateMaterialBuilder;
        this.f60338a = new b(nCreateMaterialBuilder);
    }

    public static void G() {
        nMaterialBuilderShutdown();
    }

    private static native long nBuilderBuild(long j10, long j11);

    private static native long nCreateMaterialBuilder();

    public static native void nDestroyMaterialBuilder(long j10);

    private static native void nDestroyPackage(long j10);

    private static native byte[] nGetPackageBytes(long j10);

    private static native boolean nGetPackageIsValid(long j10);

    private static native void nMaterialBuilderAlphaToCoverage(long j10, boolean z10);

    private static native void nMaterialBuilderBlending(long j10, int i10);

    private static native void nMaterialBuilderClearCoatIorChange(long j10, boolean z10);

    private static native void nMaterialBuilderColorWrite(long j10, boolean z10);

    private static native void nMaterialBuilderColoredPenumbra(long j10, boolean z10);

    private static native void nMaterialBuilderCulling(long j10, int i10);

    private static native void nMaterialBuilderCustomSurfaceShading(long j10, boolean z10);

    private static native void nMaterialBuilderDepthCulling(long j10, boolean z10);

    private static native void nMaterialBuilderDepthWrite(long j10, boolean z10);

    private static native void nMaterialBuilderDoubleSided(long j10, boolean z10);

    private static native void nMaterialBuilderFlipUV(long j10, boolean z10);

    private static native void nMaterialBuilderInit();

    private static native void nMaterialBuilderInterpolation(long j10, int i10);

    private static native void nMaterialBuilderMaskThreshold(long j10, float f10);

    private static native void nMaterialBuilderMaterial(long j10, String str);

    private static native void nMaterialBuilderMaterialDomain(long j10, int i10);

    private static native void nMaterialBuilderMaterialVertex(long j10, String str);

    private static native void nMaterialBuilderMultiBounceAmbientOcclusion(long j10, boolean z10);

    private static native void nMaterialBuilderName(long j10, String str);

    private static native void nMaterialBuilderOptimization(long j10, int i10);

    private static native void nMaterialBuilderPlatform(long j10, int i10);

    private static native void nMaterialBuilderPostLightingBlending(long j10, int i10);

    private static native void nMaterialBuilderReflectionMode(long j10, int i10);

    private static native void nMaterialBuilderRefractionMode(long j10, int i10);

    private static native void nMaterialBuilderRefractionType(long j10, int i10);

    private static native void nMaterialBuilderRequire(long j10, int i10);

    private static native void nMaterialBuilderSamplerParameter(long j10, int i10, int i11, int i12, String str);

    private static native void nMaterialBuilderShading(long j10, int i10);

    private static native void nMaterialBuilderShadowMultiplier(long j10, boolean z10);

    private static native void nMaterialBuilderShutdown();

    private static native void nMaterialBuilderSpecularAmbientOcclusion(long j10, int i10);

    private static native void nMaterialBuilderSpecularAntiAliasing(long j10, boolean z10);

    private static native void nMaterialBuilderSpecularAntiAliasingThreshold(long j10, float f10);

    private static native void nMaterialBuilderSpecularAntiAliasingVariance(long j10, float f10);

    private static native void nMaterialBuilderTargetApi(long j10, int i10);

    private static native void nMaterialBuilderTransparencyMode(long j10, int i10);

    private static native void nMaterialBuilderTransparentShadow(long j10, boolean z10);

    private static native void nMaterialBuilderUniformParameter(long j10, int i10, int i11, String str);

    private static native void nMaterialBuilderUniformParameterArray(long j10, int i10, int i11, int i12, String str);

    private static native void nMaterialBuilderUseLegacyMorphing(long j10);

    private static native void nMaterialBuilderVariable(long j10, int i10, String str);

    private static native void nMaterialBuilderVariantFilter(long j10, int i10);

    private static native void nMaterialBuilderVertexDomain(long j10, int i10);

    public static void o() {
        nMaterialBuilderInit();
    }

    @NonNull
    public MaterialBuilder A(j jVar) {
        nMaterialBuilderRefractionMode(this.f60339b, jVar.ordinal());
        return this;
    }

    @NonNull
    public MaterialBuilder B(k kVar) {
        nMaterialBuilderRefractionType(this.f60339b, kVar.ordinal());
        return this;
    }

    @NonNull
    public MaterialBuilder C(@NonNull t tVar) {
        nMaterialBuilderRequire(this.f60339b, tVar.ordinal());
        return this;
    }

    @NonNull
    public MaterialBuilder D(@NonNull m mVar, l lVar, g gVar, String str) {
        nMaterialBuilderSamplerParameter(this.f60339b, mVar.ordinal(), lVar.ordinal(), gVar.ordinal(), str);
        return this;
    }

    @NonNull
    public MaterialBuilder E(@NonNull n nVar) {
        nMaterialBuilderShading(this.f60339b, nVar.ordinal());
        return this;
    }

    @NonNull
    public MaterialBuilder F(boolean z10) {
        nMaterialBuilderShadowMultiplier(this.f60339b, z10);
        return this;
    }

    @NonNull
    public MaterialBuilder H(o oVar) {
        nMaterialBuilderSpecularAmbientOcclusion(this.f60339b, oVar.ordinal());
        return this;
    }

    @NonNull
    public MaterialBuilder I(boolean z10) {
        nMaterialBuilderSpecularAntiAliasing(this.f60339b, z10);
        return this;
    }

    @NonNull
    public MaterialBuilder J(float f10) {
        nMaterialBuilderSpecularAntiAliasingThreshold(this.f60339b, f10);
        return this;
    }

    @NonNull
    public MaterialBuilder K(float f10) {
        nMaterialBuilderSpecularAntiAliasingVariance(this.f60339b, f10);
        return this;
    }

    @NonNull
    public MaterialBuilder L(@NonNull p pVar) {
        nMaterialBuilderTargetApi(this.f60339b, pVar.number);
        return this;
    }

    @NonNull
    public MaterialBuilder M(@NonNull q qVar) {
        nMaterialBuilderTransparencyMode(this.f60339b, qVar.ordinal());
        return this;
    }

    @NonNull
    public MaterialBuilder N(boolean z10) {
        nMaterialBuilderTransparentShadow(this.f60339b, z10);
        return this;
    }

    @NonNull
    public MaterialBuilder O(@NonNull r rVar, g gVar, String str) {
        nMaterialBuilderUniformParameter(this.f60339b, rVar.ordinal(), gVar.ordinal(), str);
        return this;
    }

    @NonNull
    public MaterialBuilder P(@NonNull r rVar, String str) {
        nMaterialBuilderUniformParameter(this.f60339b, rVar.ordinal(), g.DEFAULT.ordinal(), str);
        return this;
    }

    @NonNull
    public MaterialBuilder Q(@NonNull r rVar, int i10, g gVar, String str) {
        nMaterialBuilderUniformParameterArray(this.f60339b, rVar.ordinal(), i10, gVar.ordinal(), str);
        return this;
    }

    @NonNull
    public MaterialBuilder R(@NonNull r rVar, int i10, String str) {
        nMaterialBuilderUniformParameterArray(this.f60339b, rVar.ordinal(), i10, g.DEFAULT.ordinal(), str);
        return this;
    }

    @NonNull
    public MaterialBuilder S() {
        nMaterialBuilderUseLegacyMorphing(this.f60339b);
        return this;
    }

    @NonNull
    public MaterialBuilder T(@NonNull s sVar, String str) {
        nMaterialBuilderVariable(this.f60339b, sVar.ordinal(), str);
        return this;
    }

    @NonNull
    public MaterialBuilder U(int i10) {
        nMaterialBuilderVariantFilter(this.f60339b, i10);
        S();
        return this;
    }

    @NonNull
    public MaterialBuilder V(@NonNull u uVar) {
        nMaterialBuilderVertexDomain(this.f60339b, uVar.ordinal());
        return this;
    }

    @NonNull
    public MaterialBuilder b(boolean z10) {
        nMaterialBuilderAlphaToCoverage(this.f60339b, z10);
        return this;
    }

    @NonNull
    public MaterialBuilder c(@NonNull a aVar) {
        nMaterialBuilderBlending(this.f60339b, aVar.ordinal());
        return this;
    }

    @NonNull
    public com.google.android.filament.filamat.b d() {
        return e(null);
    }

    @NonNull
    public com.google.android.filament.filamat.b e(@Nullable Object obj) {
        long j10;
        Class<?> cls;
        Method method;
        if (obj != null && (cls = f60336c) != null && cls.isInstance(obj) && (method = f60337d) != null) {
            try {
                j10 = ((Long) method.invoke(obj, null)).longValue();
            } catch (IllegalAccessException | InvocationTargetException unused) {
            }
            long nBuilderBuild = nBuilderBuild(this.f60339b, j10);
            com.google.android.filament.filamat.b bVar = new com.google.android.filament.filamat.b(ByteBuffer.wrap(nGetPackageBytes(nBuilderBuild)), nGetPackageIsValid(nBuilderBuild));
            nDestroyPackage(nBuilderBuild);
            return bVar;
        }
        j10 = 0;
        long nBuilderBuild2 = nBuilderBuild(this.f60339b, j10);
        com.google.android.filament.filamat.b bVar2 = new com.google.android.filament.filamat.b(ByteBuffer.wrap(nGetPackageBytes(nBuilderBuild2)), nGetPackageIsValid(nBuilderBuild2));
        nDestroyPackage(nBuilderBuild2);
        return bVar2;
    }

    @NonNull
    public MaterialBuilder f(boolean z10) {
        nMaterialBuilderClearCoatIorChange(this.f60339b, z10);
        return this;
    }

    @NonNull
    public MaterialBuilder g(boolean z10) {
        nMaterialBuilderColorWrite(this.f60339b, z10);
        return this;
    }

    @NonNull
    public MaterialBuilder h(boolean z10) {
        nMaterialBuilderColoredPenumbra(this.f60339b, z10);
        return this;
    }

    @NonNull
    public MaterialBuilder i(@NonNull c cVar) {
        nMaterialBuilderCulling(this.f60339b, cVar.ordinal());
        return this;
    }

    @NonNull
    public MaterialBuilder j(boolean z10) {
        nMaterialBuilderCustomSurfaceShading(this.f60339b, z10);
        return this;
    }

    @NonNull
    public MaterialBuilder k(boolean z10) {
        nMaterialBuilderDepthCulling(this.f60339b, z10);
        return this;
    }

    @NonNull
    public MaterialBuilder l(boolean z10) {
        nMaterialBuilderDepthWrite(this.f60339b, z10);
        return this;
    }

    @NonNull
    public MaterialBuilder m(boolean z10) {
        nMaterialBuilderDoubleSided(this.f60339b, z10);
        return this;
    }

    @NonNull
    public MaterialBuilder n(boolean z10) {
        nMaterialBuilderFlipUV(this.f60339b, z10);
        return this;
    }

    @NonNull
    public MaterialBuilder p(@NonNull d dVar) {
        nMaterialBuilderInterpolation(this.f60339b, dVar.ordinal());
        return this;
    }

    @NonNull
    public MaterialBuilder q(float f10) {
        nMaterialBuilderMaskThreshold(this.f60339b, f10);
        return this;
    }

    @NonNull
    public MaterialBuilder r(@NonNull String str) {
        nMaterialBuilderMaterial(this.f60339b, str);
        return this;
    }

    @NonNull
    public MaterialBuilder s(e eVar) {
        nMaterialBuilderMaterialDomain(this.f60339b, eVar.ordinal());
        return this;
    }

    @NonNull
    public MaterialBuilder t(@NonNull String str) {
        nMaterialBuilderMaterialVertex(this.f60339b, str);
        return this;
    }

    @NonNull
    public MaterialBuilder u(boolean z10) {
        nMaterialBuilderMultiBounceAmbientOcclusion(this.f60339b, z10);
        return this;
    }

    @NonNull
    public MaterialBuilder v(@NonNull String str) {
        nMaterialBuilderName(this.f60339b, str);
        return this;
    }

    @NonNull
    public MaterialBuilder w(@NonNull f fVar) {
        nMaterialBuilderOptimization(this.f60339b, fVar.ordinal());
        return this;
    }

    @NonNull
    public MaterialBuilder x(@NonNull h hVar) {
        nMaterialBuilderPlatform(this.f60339b, hVar.ordinal());
        return this;
    }

    @NonNull
    public MaterialBuilder y(@NonNull a aVar) {
        nMaterialBuilderPostLightingBlending(this.f60339b, aVar.ordinal());
        return this;
    }

    @NonNull
    public MaterialBuilder z(i iVar) {
        nMaterialBuilderReflectionMode(this.f60339b, iVar.ordinal());
        return this;
    }
}
