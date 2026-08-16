package com.google.android.filament;

import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Size;
import org.tukaani.xz.BCJCoder;

public class IndirectLight {

    public long f59961a;

    public static class a {

        public final C0934a f59962a;

        public final long f59963b;

        public static class C0934a {

            public final long f59964a;

            public C0934a(long j10) {
                this.f59964a = j10;
            }

            public void finalize() {
                try {
                    super.finalize();
                } catch (Throwable unused) {
                }
                IndirectLight.nDestroyBuilder(this.f59964a);
            }
        }

        public a() {
            long c10 = IndirectLight.c();
            this.f59963b = c10;
            this.f59962a = new C0934a(c10);
        }

        @NonNull
        public IndirectLight a(@NonNull Engine engine) {
            long nBuilderBuild = IndirectLight.nBuilderBuild(this.f59963b, engine.getNativeObject());
            if (nBuilderBuild != 0) {
                return new IndirectLight(nBuilderBuild);
            }
            throw new IllegalStateException("Couldn't create IndirectLight");
        }

        @NonNull
        public a b(float f10) {
            IndirectLight.nIntensity(this.f59963b, f10);
            return this;
        }

        @NonNull
        public a c(@IntRange(from = 1, to = 3) int i10, @NonNull float[] fArr) {
            if (i10 != 1) {
                if (i10 != 2) {
                    if (i10 != 3) {
                        throw new IllegalArgumentException("bands must be 1, 2 or 3");
                    }
                    if (fArr.length < 27) {
                        throw new ArrayIndexOutOfBoundsException("3 bands SH, array must be at least 9 x float3");
                    }
                } else if (fArr.length < 12) {
                    throw new ArrayIndexOutOfBoundsException("2 bands SH, array must be at least 4 x float3");
                }
            } else if (fArr.length < 3) {
                throw new ArrayIndexOutOfBoundsException("1 band SH, array must be at least 1 x float3");
            }
            IndirectLight.nIrradiance(this.f59963b, i10, fArr);
            return this;
        }

        @NonNull
        public a d(@NonNull Texture texture) {
            IndirectLight.nIrradianceAsTexture(this.f59963b, texture.getNativeObject());
            return this;
        }

        @NonNull
        public a e(@IntRange(from = 1, to = 3) int i10, @NonNull float[] fArr) {
            if (i10 != 1) {
                if (i10 != 2) {
                    if (i10 != 3) {
                        throw new IllegalArgumentException("bands must be 1, 2 or 3");
                    }
                    if (fArr.length < 27) {
                        throw new ArrayIndexOutOfBoundsException("3 bands SH, array must be at least 9 x float3");
                    }
                } else if (fArr.length < 12) {
                    throw new ArrayIndexOutOfBoundsException("2 bands SH, array must be at least 4 x float3");
                }
            } else if (fArr.length < 3) {
                throw new ArrayIndexOutOfBoundsException("1 band SH, array must be at least 1 x float3");
            }
            IndirectLight.nRadiance(this.f59963b, i10, fArr);
            return this;
        }

        @NonNull
        public a f(@NonNull Texture texture) {
            IndirectLight.nBuilderReflections(this.f59963b, texture.getNativeObject());
            return this;
        }

        @NonNull
        public a g(@NonNull @Size(min = 9) float[] fArr) {
            IndirectLight.nRotation(this.f59963b, fArr[0], fArr[1], fArr[2], fArr[3], fArr[4], fArr[5], fArr[6], fArr[7], fArr[8]);
            return this;
        }
    }

    public IndirectLight(long j10) {
        this.f59961a = j10;
    }

    public static long c() {
        return nCreateBuilder();
    }

    @NonNull
    @Size(min = 4)
    public static float[] l(@Nullable @Size(min = 4) float[] fArr, @NonNull float[] fArr2, float f10, float f11, float f12) {
        if (fArr2.length < 27) {
            throw new ArrayIndexOutOfBoundsException("3 bands SH required, array must be at least 9 x float3");
        }
        float[] g10 = c.g(fArr);
        nGetColorEstimateStatic(g10, fArr2, f10, f11, f12);
        return g10;
    }

    @NonNull
    @Size(min = 3)
    public static float[] n(@NonNull float[] fArr, @Nullable @Size(min = 3) float[] fArr2) {
        if (fArr.length < 27) {
            throw new ArrayIndexOutOfBoundsException("3 bands SH required, array must be at least 9 x float3");
        }
        float[] e10 = c.e(fArr2);
        nGetDirectionEstimateStatic(fArr, e10);
        return e10;
    }

    public static native long nBuilderBuild(long j10, long j11);

    public static native void nBuilderReflections(long j10, long j11);

    private static native long nCreateBuilder();

    public static native void nDestroyBuilder(long j10);

    private static native void nGetColorEstimate(long j10, float[] fArr, float f10, float f11, float f12);

    private static native void nGetColorEstimateStatic(float[] fArr, float[] fArr2, float f10, float f11, float f12);

    private static native void nGetDirectionEstimate(long j10, float[] fArr);

    private static native void nGetDirectionEstimateStatic(float[] fArr, float[] fArr2);

    private static native float nGetIntensity(long j10);

    private static native long nGetIrradianceTexture(long j10);

    private static native long nGetReflectionsTexture(long j10);

    private static native void nGetRotation(long j10, float[] fArr);

    public static native void nIntensity(long j10, float f10);

    public static native void nIrradiance(long j10, int i10, float[] fArr);

    public static native void nIrradianceAsTexture(long j10, long j11);

    public static native void nRadiance(long j10, int i10, float[] fArr);

    public static native void nRotation(long j10, float f10, float f11, float f12, float f13, float f14, float f15, float f16, float f17, float f18);

    private static native void nSetIntensity(long j10, float f10);

    private static native void nSetRotation(long j10, float f10, float f11, float f12, float f13, float f14, float f15, float f16, float f17, float f18);

    public void j() {
        this.f59961a = 0L;
    }

    @NonNull
    @Size(min = 4)
    @Deprecated
    public float[] k(@Nullable @Size(min = 4) float[] fArr, float f10, float f11, float f12) {
        float[] g10 = c.g(fArr);
        nGetColorEstimate(q(), g10, f10, f11, f12);
        return g10;
    }

    @NonNull
    @Size(min = 3)
    @Deprecated
    public float[] m(@Nullable @Size(min = 3) float[] fArr) {
        float[] e10 = c.e(fArr);
        nGetDirectionEstimate(q(), e10);
        return e10;
    }

    public float o() {
        return nGetIntensity(q());
    }

    @Nullable
    public Texture p() {
        long nGetIrradianceTexture = nGetIrradianceTexture(q());
        if (nGetIrradianceTexture == 0) {
            return null;
        }
        return new Texture(nGetIrradianceTexture);
    }

    public long q() {
        long j10 = this.f59961a;
        if (j10 != 0) {
            return j10;
        }
        throw new IllegalStateException("Calling method on destroyed IndirectLight");
    }

    @Nullable
    public Texture r() {
        long nGetReflectionsTexture = nGetReflectionsTexture(q());
        if (nGetReflectionsTexture == 0) {
            return null;
        }
        return new Texture(nGetReflectionsTexture);
    }

    @NonNull
    @Size(min = BCJCoder.SPARC_FILTER_ID)
    public float[] s(@Nullable @Size(min = 9) float[] fArr) {
        float[] i10 = c.i(fArr);
        nGetRotation(q(), i10);
        return i10;
    }

    public void t(float f10) {
        nSetIntensity(q(), f10);
    }

    public void u(@NonNull @Size(min = 9) float[] fArr) {
        c.j(fArr);
        nSetRotation(q(), fArr[0], fArr[1], fArr[2], fArr[3], fArr[4], fArr[5], fArr[6], fArr[7], fArr[8]);
    }
}
