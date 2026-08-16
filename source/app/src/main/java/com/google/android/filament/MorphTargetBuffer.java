package com.google.android.filament;

import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import java.nio.BufferOverflowException;

public class MorphTargetBuffer {

    public long f60036a;

    public static class a {

        public final C0937a f60037a;

        public final long f60038b;

        public static class C0937a {

            public final long f60039a;

            public C0937a(long j10) {
                this.f60039a = j10;
            }

            public void finalize() {
                try {
                    super.finalize();
                } catch (Throwable unused) {
                }
                MorphTargetBuffer.nDestroyBuilder(this.f60039a);
            }
        }

        public a() {
            long g10 = MorphTargetBuffer.g();
            this.f60038b = g10;
            this.f60037a = new C0937a(g10);
        }

        @NonNull
        public MorphTargetBuffer a(@NonNull Engine engine) {
            long nBuilderBuild = MorphTargetBuffer.nBuilderBuild(this.f60038b, engine.getNativeObject());
            if (nBuilderBuild != 0) {
                return new MorphTargetBuffer(nBuilderBuild);
            }
            throw new IllegalStateException("Couldn't create MorphTargetBuffer");
        }

        @NonNull
        public a b(@IntRange(from = 1) int i10) {
            MorphTargetBuffer.nBuilderCount(this.f60038b, i10);
            return this;
        }

        @NonNull
        public a c(boolean z10) {
            MorphTargetBuffer.nBuilderEnableCustomMorphing(this.f60038b, z10);
            return this;
        }

        @NonNull
        public a d(@IntRange(from = 1) int i10) {
            MorphTargetBuffer.nBuilderVertexCount(this.f60038b, i10);
            return this;
        }

        @NonNull
        public a e(boolean z10) {
            MorphTargetBuffer.nBuilderWithPositions(this.f60038b, z10);
            return this;
        }

        @NonNull
        public a f(boolean z10) {
            MorphTargetBuffer.nBuilderWithTangents(this.f60038b, z10);
            return this;
        }
    }

    public static long g() {
        return nCreateBuilder();
    }

    public static native long nBuilderBuild(long j10, long j11);

    public static native void nBuilderCount(long j10, int i10);

    public static native void nBuilderEnableCustomMorphing(long j10, boolean z10);

    public static native void nBuilderVertexCount(long j10, int i10);

    public static native void nBuilderWithPositions(long j10, boolean z10);

    public static native void nBuilderWithTangents(long j10, boolean z10);

    private static native long nCreateBuilder();

    public static native void nDestroyBuilder(long j10);

    private static native int nGetCount(long j10);

    private static native int nGetVertexCount(long j10);

    private static native boolean nHasPositions(long j10);

    private static native boolean nHasTangents(long j10);

    private static native boolean nIsCustomMorphingEnabled(long j10);

    private static native int nSetPositionsAt(long j10, long j11, int i10, float[] fArr, int i11);

    private static native int nSetTangentsAt(long j10, long j11, int i10, short[] sArr, int i11);

    public void i() {
        this.f60036a = 0L;
    }

    public int j() {
        return nGetCount(this.f60036a);
    }

    public long k() {
        long j10 = this.f60036a;
        if (j10 != 0) {
            return j10;
        }
        throw new IllegalStateException("Calling method on destroyed MorphTargetBuffer");
    }

    public int l() {
        return nGetVertexCount(this.f60036a);
    }

    public boolean m() {
        return nHasPositions(this.f60036a);
    }

    public boolean n() {
        return nHasTangents(this.f60036a);
    }

    public boolean o() {
        return nIsCustomMorphingEnabled(this.f60036a);
    }

    public void p(@NonNull Engine engine, @IntRange(from = 0) int i10, @NonNull float[] fArr, @IntRange(from = 0, to = 125) int i11) {
        if (nSetPositionsAt(this.f60036a, engine.getNativeObject(), i10, fArr, i11) < 0) {
            throw new BufferOverflowException();
        }
    }

    public void q(@NonNull Engine engine, @IntRange(from = 0) int i10, @NonNull short[] sArr, @IntRange(from = 0, to = 125) int i11) {
        if (nSetTangentsAt(this.f60036a, engine.getNativeObject(), i10, sArr, i11) < 0) {
            throw new BufferOverflowException();
        }
    }

    public MorphTargetBuffer(long j10) {
        this.f60036a = j10;
    }
}
