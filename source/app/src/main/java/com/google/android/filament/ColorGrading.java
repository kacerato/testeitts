package com.google.android.filament;

import androidx.annotation.NonNull;
import androidx.annotation.Size;
import java.nio.Buffer;

public class ColorGrading {

    public long f59915a;

    public static class a {

        public final C0932a f59916a;

        public final long f59917b;

        public static class C0932a {

            public final long f59918a;

            public C0932a(long j10) {
                this.f59918a = j10;
            }

            public void finalize() {
                try {
                    super.finalize();
                } catch (Throwable unused) {
                }
                ColorGrading.nDestroyBuilder(this.f59918a);
            }
        }

        public a() {
            long u10 = ColorGrading.u();
            this.f59917b = u10;
            this.f59916a = new C0932a(u10);
        }

        @NonNull
        public ColorGrading a(@NonNull Engine engine) {
            long nBuilderBuild = ColorGrading.nBuilderBuild(this.f59917b, engine.getNativeObject());
            if (nBuilderBuild != 0) {
                return new ColorGrading(nBuilderBuild);
            }
            throw new IllegalStateException("Couldn't create ColorGrading");
        }

        public a b(@NonNull @Size(min = 3) float[] fArr, @NonNull @Size(min = 3) float[] fArr2, @NonNull @Size(min = 3) float[] fArr3) {
            com.google.android.filament.c.f(fArr);
            com.google.android.filament.c.f(fArr2);
            com.google.android.filament.c.f(fArr3);
            ColorGrading.nBuilderChannelMixer(this.f59917b, fArr, fArr2, fArr3);
            return this;
        }

        public a c(float f10) {
            ColorGrading.nBuilderContrast(this.f59917b, f10);
            return this;
        }

        public a d(@NonNull @Size(min = 3) float[] fArr, @NonNull @Size(min = 3) float[] fArr2, @NonNull @Size(min = 3) float[] fArr3) {
            com.google.android.filament.c.f(fArr);
            com.google.android.filament.c.f(fArr2);
            com.google.android.filament.c.f(fArr3);
            ColorGrading.nBuilderCurves(this.f59917b, fArr, fArr2, fArr3);
            return this;
        }

        public a e(@NonNull Buffer buffer, int i10) {
            ColorGrading.nBuilderCustomLut(this.f59917b, buffer, i10);
            return this;
        }

        public a f(int i10) {
            ColorGrading.nBuilderDimensions(this.f59917b, i10);
            return this;
        }

        public a g(float f10) {
            ColorGrading.nBuilderExposure(this.f59917b, f10);
            return this;
        }

        @NonNull
        public a h(boolean z10) {
            ColorGrading.nBuilderFastMath(this.f59917b, z10);
            return this;
        }

        public a i(b bVar) {
            ColorGrading.nBuilderFormat(this.f59917b, bVar.ordinal());
            return this;
        }

        public a j(boolean z10) {
            ColorGrading.nBuilderGamutMapping(this.f59917b, z10);
            return this;
        }

        public long k() {
            return this.f59917b;
        }

        public a l(boolean z10) {
            ColorGrading.nBuilderLuminanceScaling(this.f59917b, z10);
            return this;
        }

        public a m(float f10) {
            ColorGrading.nBuilderNightAdaptation(this.f59917b, f10);
            return this;
        }

        public a n(c cVar) {
            ColorGrading.nBuilderQuality(this.f59917b, cVar.ordinal());
            return this;
        }

        public a o(float f10) {
            ColorGrading.nBuilderSaturation(this.f59917b, f10);
            return this;
        }

        public a p(@NonNull @Size(min = 4) float[] fArr, @NonNull @Size(min = 4) float[] fArr2, @NonNull @Size(min = 4) float[] fArr3, @NonNull @Size(min = 4) float[] fArr4) {
            com.google.android.filament.c.h(fArr);
            com.google.android.filament.c.h(fArr2);
            com.google.android.filament.c.h(fArr3);
            com.google.android.filament.c.h(fArr4);
            ColorGrading.nBuilderShadowsMidtonesHighlights(this.f59917b, fArr, fArr2, fArr3, fArr4);
            return this;
        }

        public a q(@NonNull @Size(min = 3) float[] fArr, @NonNull @Size(min = 3) float[] fArr2, @NonNull @Size(min = 3) float[] fArr3) {
            com.google.android.filament.c.f(fArr);
            com.google.android.filament.c.f(fArr2);
            com.google.android.filament.c.f(fArr3);
            ColorGrading.nBuilderSlopeOffsetPower(this.f59917b, fArr, fArr2, fArr3);
            return this;
        }

        public a r(ToneMapper toneMapper) {
            ColorGrading.nBuilderToneMapper(this.f59917b, toneMapper.q());
            return this;
        }

        @Deprecated
        public a s(d dVar) {
            ColorGrading.nBuilderToneMapping(this.f59917b, dVar.ordinal());
            return this;
        }

        public a t(float f10) {
            ColorGrading.nBuilderVibrance(this.f59917b, f10);
            return this;
        }

        public a u(float f10, float f11) {
            ColorGrading.nBuilderWhiteBalance(this.f59917b, f10, f11);
            return this;
        }
    }

    public enum b {
        INTEGER,
        FLOAT
    }

    public enum c {
        LOW,
        MEDIUM,
        HIGH,
        ULTRA
    }

    @Deprecated
    public enum d {
        LINEAR,
        ACES_LEGACY,
        ACES,
        FILMIC,
        DISPLAY_RANGE
    }

    public ColorGrading(long j10) {
        this.f59915a = j10;
    }

    public static native long nBuilderBuild(long j10, long j11);

    public static native void nBuilderChannelMixer(long j10, float[] fArr, float[] fArr2, float[] fArr3);

    public static native void nBuilderContrast(long j10, float f10);

    public static native void nBuilderCurves(long j10, float[] fArr, float[] fArr2, float[] fArr3);

    public static native void nBuilderCustomLut(long j10, Buffer buffer, int i10);

    public static native void nBuilderDimensions(long j10, int i10);

    public static native void nBuilderExposure(long j10, float f10);

    public static native void nBuilderFastMath(long j10, boolean z10);

    public static native void nBuilderFormat(long j10, int i10);

    public static native void nBuilderGamutMapping(long j10, boolean z10);

    public static native void nBuilderLuminanceScaling(long j10, boolean z10);

    public static native void nBuilderNightAdaptation(long j10, float f10);

    public static native void nBuilderQuality(long j10, int i10);

    public static native void nBuilderSaturation(long j10, float f10);

    public static native void nBuilderShadowsMidtonesHighlights(long j10, float[] fArr, float[] fArr2, float[] fArr3, float[] fArr4);

    public static native void nBuilderSlopeOffsetPower(long j10, float[] fArr, float[] fArr2, float[] fArr3);

    public static native void nBuilderToneMapper(long j10, long j11);

    public static native void nBuilderToneMapping(long j10, int i10);

    public static native void nBuilderVibrance(long j10, float f10);

    public static native void nBuilderWhiteBalance(long j10, float f10, float f11);

    private static native long nCreateBuilder();

    public static native void nDestroyBuilder(long j10);

    public static long u() {
        return nCreateBuilder();
    }

    public void w() {
        this.f59915a = 0L;
    }

    public long x() {
        long j10 = this.f59915a;
        if (j10 != 0) {
            return j10;
        }
        throw new IllegalStateException("Calling method on destroyed ColorGrading");
    }
}
