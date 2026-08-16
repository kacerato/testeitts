package com.google.android.filament;

import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Size;

public class LightManager {

    public static final d[] f59969b = d.values();

    public static final float f59970c = 0.022f;

    public static final float f59971d = 0.0707f;

    public static final float f59972e = 0.0878f;

    public static final float f59973f = 0.1171f;

    public long f59974a;

    public static class a {

        public final C0936a f59975a;

        public final long f59976b;

        public static class C0936a {

            public final long f59977a;

            public C0936a(long j10) {
                this.f59977a = j10;
            }

            public void finalize() {
                try {
                    super.finalize();
                } catch (Throwable unused) {
                }
                LightManager.nDestroyBuilder(this.f59977a);
            }
        }

        public a(@NonNull d dVar) {
            long nCreateBuilder = LightManager.nCreateBuilder(dVar.ordinal());
            this.f59976b = nCreateBuilder;
            this.f59975a = new C0936a(nCreateBuilder);
        }

        public void a(@NonNull Engine engine, @g int i10) {
            if (LightManager.nBuilderBuild(this.f59976b, engine.getNativeObject(), i10)) {
                return;
            }
            throw new IllegalStateException("Couldn't create Light component for entity " + i10 + ", see log.");
        }

        @NonNull
        public a b(boolean z10) {
            LightManager.nBuilderCastLight(this.f59976b, z10);
            return this;
        }

        @NonNull
        public a c(boolean z10) {
            LightManager.nBuilderCastShadows(this.f59976b, z10);
            return this;
        }

        @NonNull
        public a d(float f10, float f11, float f12) {
            LightManager.nBuilderColor(this.f59976b, f10, f11, f12);
            return this;
        }

        @NonNull
        public a e(float f10, float f11, float f12) {
            LightManager.nBuilderDirection(this.f59976b, f10, f11, f12);
            return this;
        }

        @NonNull
        public a f(float f10) {
            LightManager.nBuilderFalloff(this.f59976b, f10);
            return this;
        }

        @NonNull
        public a g(float f10) {
            LightManager.nBuilderIntensity(this.f59976b, f10);
            return this;
        }

        @NonNull
        public a h(float f10, float f11) {
            LightManager.nBuilderIntensity(this.f59976b, f10, f11);
            return this;
        }

        @NonNull
        public a i(float f10) {
            LightManager.nBuilderIntensityCandela(this.f59976b, f10);
            return this;
        }

        @NonNull
        public a j(@IntRange(from = 0, to = 7) int i10, boolean z10) {
            LightManager.nBuilderLightChannel(this.f59976b, i10, z10);
            return this;
        }

        @NonNull
        public a k(float f10, float f11, float f12) {
            LightManager.nBuilderPosition(this.f59976b, f10, f11, f12);
            return this;
        }

        @NonNull
        public a l(@NonNull c cVar) {
            LightManager.nBuilderShadowOptions(this.f59976b, cVar.f59978a, cVar.f59979b, cVar.f59980c, cVar.f59981d, cVar.f59982e, cVar.f59983f, cVar.f59984g, cVar.f59985h, cVar.f59986i, cVar.f59987j, cVar.f59988k, cVar.f59989l, cVar.f59990m, cVar.f59991n, cVar.f59992o, cVar.f59993p, cVar.f59994q, cVar.f59995r, cVar.f59996s);
            return this;
        }

        @NonNull
        public a m(float f10, float f11) {
            LightManager.nBuilderSpotLightCone(this.f59976b, f10, f11);
            return this;
        }

        @NonNull
        public a n(float f10) {
            LightManager.nBuilderAngularRadius(this.f59976b, f10);
            return this;
        }

        @NonNull
        public a o(float f10) {
            LightManager.nBuilderHaloFalloff(this.f59976b, f10);
            return this;
        }

        @NonNull
        public a p(float f10) {
            LightManager.nBuilderHaloSize(this.f59976b, f10);
            return this;
        }
    }

    public static class b {
        public static void a(@NonNull @Size(min = 1) float[] fArr, @IntRange(from = 1, to = 4) int i10, float f10, float f11) {
            int i11 = i10 - 1;
            if (fArr.length < i11) {
                throw new ArrayIndexOutOfBoundsException(String.format("splitPositions array length must be at least %d", Integer.valueOf(i11)));
            }
            LightManager.nComputeLogSplits(fArr, i10, f10, f11);
        }

        public static void b(@NonNull @Size(min = 1) float[] fArr, @IntRange(from = 1, to = 4) int i10, float f10, float f11, float f12) {
            int i11 = i10 - 1;
            if (fArr.length < i11) {
                throw new ArrayIndexOutOfBoundsException(String.format("splitPositions array length must be at least %d", Integer.valueOf(i11)));
            }
            LightManager.nComputePracticalSplits(fArr, i10, f10, f11, f12);
        }

        public static void c(@NonNull @Size(min = 1) float[] fArr, @IntRange(from = 1, to = 4) int i10) {
            int i11 = i10 - 1;
            if (fArr.length < i11) {
                throw new ArrayIndexOutOfBoundsException(String.format("splitPositions array length must be at least %d", Integer.valueOf(i11)));
            }
            LightManager.nComputeUniformSplits(fArr, i10);
        }
    }

    public static class c {

        public int f59978a = 1024;

        @IntRange(from = 1, to = 4)
        public int f59979b = 1;

        @NonNull
        @Size(min = 3)
        public float[] f59980c = {0.125f, 0.25f, 0.5f};

        public float f59981d = 0.001f;

        public float f59982e = 1.0f;

        public float f59983f = 0.0f;

        public float f59984g = 1.0f;

        public float f59985h = 100.0f;

        public boolean f59986i = false;

        public boolean f59987j = false;

        public float f59988k = 0.5f;

        public float f59989l = 2.0f;

        public boolean f59990m = false;

        public int f59991n = 8;

        public float f59992o = 0.3f;

        public boolean f59993p = false;

        public float f59994q = 0.0f;

        public float f59995r = 0.02f;

        @NonNull
        @Size(max = 4, min = 4)
        public float[] f59996s = {0.0f, 0.0f, 0.0f, 1.0f};
    }

    public enum d {
        SUN,
        DIRECTIONAL,
        POINT,
        FOCUSED_SPOT,
        SPOT
    }

    public LightManager(long j10) {
        this.f59974a = j10;
    }

    public static native void nBuilderAngularRadius(long j10, float f10);

    public static native boolean nBuilderBuild(long j10, long j11, int i10);

    public static native void nBuilderCastLight(long j10, boolean z10);

    public static native void nBuilderCastShadows(long j10, boolean z10);

    public static native void nBuilderColor(long j10, float f10, float f11, float f12);

    public static native void nBuilderDirection(long j10, float f10, float f11, float f12);

    public static native void nBuilderFalloff(long j10, float f10);

    public static native void nBuilderHaloFalloff(long j10, float f10);

    public static native void nBuilderHaloSize(long j10, float f10);

    public static native void nBuilderIntensity(long j10, float f10);

    public static native void nBuilderIntensity(long j10, float f10, float f11);

    public static native void nBuilderIntensityCandela(long j10, float f10);

    public static native void nBuilderLightChannel(long j10, int i10, boolean z10);

    public static native void nBuilderPosition(long j10, float f10, float f11, float f12);

    public static native void nBuilderShadowOptions(long j10, int i10, int i11, float[] fArr, float f10, float f11, float f12, float f13, float f14, boolean z10, boolean z11, float f15, float f16, boolean z12, int i12, float f17, boolean z13, float f18, float f19, float[] fArr2);

    public static native void nBuilderSpotLightCone(long j10, float f10, float f11);

    public static native void nComputeLogSplits(float[] fArr, int i10, float f10, float f11);

    public static native void nComputePracticalSplits(float[] fArr, int i10, float f10, float f11, float f12);

    public static native void nComputeUniformSplits(float[] fArr, int i10);

    public static native long nCreateBuilder(int i10);

    private static native void nDestroy(long j10, int i10);

    public static native void nDestroyBuilder(long j10);

    private static native void nGetColor(long j10, int i10, float[] fArr);

    private static native int nGetComponentCount(long j10);

    private static native void nGetDirection(long j10, int i10, float[] fArr);

    private static native float nGetFalloff(long j10, int i10);

    private static native float nGetInnerConeAngle(long j10, int i10);

    private static native int nGetInstance(long j10, int i10);

    private static native float nGetIntensity(long j10, int i10);

    private static native boolean nGetLightChannel(long j10, int i10, int i11);

    private static native float nGetOuterConeAngle(long j10, int i10);

    private static native void nGetPosition(long j10, int i10, float[] fArr);

    private static native float nGetSunAngularRadius(long j10, int i10);

    private static native float nGetSunHaloFalloff(long j10, int i10);

    private static native float nGetSunHaloSize(long j10, int i10);

    private static native int nGetType(long j10, int i10);

    private static native boolean nHasComponent(long j10, int i10);

    private static native boolean nIsShadowCaster(long j10, int i10);

    private static native void nSetColor(long j10, int i10, float f10, float f11, float f12);

    private static native void nSetDirection(long j10, int i10, float f10, float f11, float f12);

    private static native void nSetFalloff(long j10, int i10, float f10);

    private static native void nSetIntensity(long j10, int i10, float f10);

    private static native void nSetIntensity(long j10, int i10, float f10, float f11);

    private static native void nSetIntensityCandela(long j10, int i10, float f10);

    private static native void nSetLightChannel(long j10, int i10, int i11, boolean z10);

    private static native void nSetPosition(long j10, int i10, float f10, float f11, float f12);

    private static native void nSetShadowCaster(long j10, int i10, boolean z10);

    private static native void nSetSpotLightCone(long j10, int i10, float f10, float f11);

    private static native void nSetSunAngularRadius(long j10, int i10, float f10);

    private static native void nSetSunHaloFalloff(long j10, int i10, float f10);

    private static native void nSetSunHaloSize(long j10, int i10, float f10);

    public float A(@h int i10) {
        return nGetInnerConeAngle(this.f59974a, i10);
    }

    @h
    public int B(@g int i10) {
        return nGetInstance(this.f59974a, i10);
    }

    public float C(@h int i10) {
        return nGetIntensity(this.f59974a, i10);
    }

    public boolean D(@h int i10, @IntRange(from = 0, to = 7) int i11) {
        return nGetLightChannel(this.f59974a, i10, i11);
    }

    public long E() {
        return this.f59974a;
    }

    public float F(@h int i10) {
        return nGetOuterConeAngle(this.f59974a, i10);
    }

    @NonNull
    public float[] G(@h int i10, @Nullable @Size(min = 3) float[] fArr) {
        float[] e10 = com.google.android.filament.c.e(fArr);
        nGetPosition(this.f59974a, i10, e10);
        return e10;
    }

    public float H(@h int i10) {
        return nGetSunAngularRadius(this.f59974a, i10);
    }

    public float I(@h int i10) {
        return nGetSunHaloFalloff(this.f59974a, i10);
    }

    public float J(@h int i10) {
        return nGetSunHaloSize(this.f59974a, i10);
    }

    @NonNull
    public d K(@h int i10) {
        return f59969b[nGetType(this.f59974a, i10)];
    }

    public boolean L(@g int i10) {
        return nHasComponent(this.f59974a, i10);
    }

    public boolean M(@h int i10) {
        d K10 = K(i10);
        return K10 == d.DIRECTIONAL || K10 == d.SUN;
    }

    public boolean N(@h int i10) {
        return K(i10) == d.POINT;
    }

    public boolean O(@h int i10) {
        return nIsShadowCaster(this.f59974a, i10);
    }

    public boolean P(@h int i10) {
        d K10 = K(i10);
        return K10 == d.SPOT || K10 == d.FOCUSED_SPOT;
    }

    public void Q(@h int i10, float f10, float f11, float f12) {
        nSetColor(this.f59974a, i10, f10, f11, f12);
    }

    public void R(@h int i10, float f10, float f11, float f12) {
        nSetDirection(this.f59974a, i10, f10, f11, f12);
    }

    public void S(@h int i10, float f10) {
        nSetFalloff(this.f59974a, i10, f10);
    }

    public void T(@h int i10, float f10) {
        nSetIntensity(this.f59974a, i10, f10);
    }

    public void U(@h int i10, float f10, float f11) {
        nSetIntensity(this.f59974a, i10, f10, f11);
    }

    public void V(@h int i10, float f10) {
        nSetIntensityCandela(this.f59974a, i10, f10);
    }

    public void W(@h int i10, @IntRange(from = 0, to = 7) int i11, boolean z10) {
        nSetLightChannel(this.f59974a, i10, i11, z10);
    }

    public void X(@h int i10, float f10, float f11, float f12) {
        nSetPosition(this.f59974a, i10, f10, f11, f12);
    }

    public void Y(@h int i10, boolean z10) {
        nSetShadowCaster(this.f59974a, i10, z10);
    }

    public void Z(@h int i10, float f10, float f11) {
        nSetSpotLightCone(this.f59974a, i10, f10, f11);
    }

    public void a0(@h int i10, float f10) {
        nSetSunAngularRadius(this.f59974a, i10, f10);
    }

    public void b0(@h int i10, float f10) {
        nSetSunHaloFalloff(this.f59974a, i10, f10);
    }

    public void c0(@h int i10, float f10) {
        nSetSunHaloSize(this.f59974a, i10, f10);
    }

    public void v(@g int i10) {
        nDestroy(this.f59974a, i10);
    }

    @NonNull
    public float[] w(@h int i10, @Nullable @Size(min = 3) float[] fArr) {
        float[] e10 = com.google.android.filament.c.e(fArr);
        nGetColor(this.f59974a, i10, e10);
        return e10;
    }

    public int x() {
        return nGetComponentCount(this.f59974a);
    }

    @NonNull
    public float[] y(@h int i10, @Nullable @Size(min = 3) float[] fArr) {
        float[] e10 = com.google.android.filament.c.e(fArr);
        nGetDirection(this.f59974a, i10, e10);
        return e10;
    }

    public float z(@h int i10) {
        return nGetFalloff(this.f59974a, i10);
    }
}
