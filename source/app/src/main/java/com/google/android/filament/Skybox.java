package com.google.android.filament;

import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.Size;

public class Skybox {

    public long f60082a;

    public static class a {

        public final C0940a f60083a;

        public final long f60084b;

        public static class C0940a {

            public final long f60085a;

            public C0940a(long j10) {
                this.f60085a = j10;
            }

            public void finalize() {
                try {
                    super.finalize();
                } catch (Throwable unused) {
                }
                Skybox.nDestroyBuilder(this.f60085a);
            }
        }

        public a() {
            long g10 = Skybox.g();
            this.f60084b = g10;
            this.f60083a = new C0940a(g10);
        }

        @NonNull
        public Skybox a(@NonNull Engine engine) {
            long nBuilderBuild = Skybox.nBuilderBuild(this.f60084b, engine.getNativeObject());
            if (nBuilderBuild != 0) {
                return new Skybox(nBuilderBuild);
            }
            throw new IllegalStateException("Couldn't create Skybox");
        }

        @NonNull
        public a b(float f10, float f11, float f12, float f13) {
            Skybox.nBuilderColor(this.f60084b, f10, f11, f12, f13);
            return this;
        }

        @NonNull
        public a c(@NonNull @Size(min = 4) float[] fArr) {
            Skybox.nBuilderColor(this.f60084b, fArr[0], fArr[1], fArr[2], fArr[3]);
            return this;
        }

        @NonNull
        public a d(@NonNull Texture texture) {
            Skybox.nBuilderEnvironment(this.f60084b, texture.getNativeObject());
            return this;
        }

        @NonNull
        public a e(float f10) {
            Skybox.nBuilderIntensity(this.f60084b, f10);
            return this;
        }

        @NonNull
        public a f(@IntRange(from = 0, to = 7) int i10) {
            Skybox.nBuilderPriority(this.f60084b, i10);
            return this;
        }

        @NonNull
        public a g(boolean z10) {
            Skybox.nBuilderShowSun(this.f60084b, z10);
            return this;
        }
    }

    public Skybox(long j10) {
        this.f60082a = j10;
    }

    public static long g() {
        return nCreateBuilder();
    }

    public static native long nBuilderBuild(long j10, long j11);

    public static native void nBuilderColor(long j10, float f10, float f11, float f12, float f13);

    public static native void nBuilderEnvironment(long j10, long j11);

    public static native void nBuilderIntensity(long j10, float f10);

    public static native void nBuilderPriority(long j10, int i10);

    public static native void nBuilderShowSun(long j10, boolean z10);

    private static native long nCreateBuilder();

    public static native void nDestroyBuilder(long j10);

    private static native float nGetIntensity(long j10);

    private static native int nGetLayerMask(long j10);

    private static native long nGetTexture(long j10);

    private static native void nSetColor(long j10, float f10, float f11, float f12, float f13);

    private static native void nSetLayerMask(long j10, int i10, int i11);

    public void i() {
        this.f60082a = 0L;
    }

    public float j() {
        return nGetIntensity(l());
    }

    public int k() {
        return nGetLayerMask(l());
    }

    public long l() {
        long j10 = this.f60082a;
        if (j10 != 0) {
            return j10;
        }
        throw new IllegalStateException("Calling method on destroyed Skybox");
    }

    @Nullable
    public Texture m() {
        long nGetTexture = nGetTexture(l());
        if (nGetTexture == 0) {
            return null;
        }
        return new Texture(nGetTexture);
    }

    public void n(float f10, float f11, float f12, float f13) {
        nSetColor(l(), f10, f11, f12, f13);
    }

    public void o(@NonNull @Size(min = 4) float[] fArr) {
        nSetColor(l(), fArr[0], fArr[1], fArr[2], fArr[3]);
    }

    public void p(@IntRange(from = 0, to = 255) int i10, @IntRange(from = 0, to = 255) int i11) {
        nSetLayerMask(l(), i10 & 255, i11 & 255);
    }
}
