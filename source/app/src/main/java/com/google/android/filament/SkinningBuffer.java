package com.google.android.filament;

import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import java.nio.Buffer;
import java.nio.BufferOverflowException;

public class SkinningBuffer {

    public long f60078a;

    public static class a {

        public final C0939a f60079a;

        public final long f60080b;

        public static class C0939a {

            public final long f60081a;

            public C0939a(long j10) {
                this.f60081a = j10;
            }

            public void finalize() {
                try {
                    super.finalize();
                } catch (Throwable unused) {
                }
                SkinningBuffer.nDestroyBuilder(this.f60081a);
            }
        }

        public a() {
            long d10 = SkinningBuffer.d();
            this.f60080b = d10;
            this.f60079a = new C0939a(d10);
        }

        @NonNull
        public a a(@IntRange(from = 1) int i10) {
            SkinningBuffer.nBuilderBoneCount(this.f60080b, i10);
            return this;
        }

        @NonNull
        public SkinningBuffer b(@NonNull Engine engine) {
            long nBuilderBuild = SkinningBuffer.nBuilderBuild(this.f60080b, engine.getNativeObject());
            if (nBuilderBuild != 0) {
                return new SkinningBuffer(nBuilderBuild);
            }
            throw new IllegalStateException("Couldn't create SkinningBuffer");
        }

        @NonNull
        public a c(boolean z10) {
            SkinningBuffer.nBuilderInitialize(this.f60080b, z10);
            return this;
        }
    }

    public static long d() {
        return nCreateBuilder();
    }

    public static native void nBuilderBoneCount(long j10, int i10);

    public static native long nBuilderBuild(long j10, long j11);

    public static native void nBuilderInitialize(long j10, boolean z10);

    private static native long nCreateBuilder();

    public static native void nDestroyBuilder(long j10);

    private static native int nGetBoneCount(long j10);

    private static native int nSetBonesAsMatrices(long j10, long j11, Buffer buffer, int i10, int i11, int i12);

    private static native int nSetBonesAsMatricesDirect(long j10, long j11, long j12, int i10, int i11, int i12);

    private static native int nSetBonesAsQuaternions(long j10, long j11, Buffer buffer, int i10, int i11, int i12);

    public void f() {
        this.f60078a = 0L;
    }

    public int g() {
        return nGetBoneCount(this.f60078a);
    }

    public long h() {
        long j10 = this.f60078a;
        if (j10 != 0) {
            return j10;
        }
        throw new IllegalStateException("Calling method on destroyed IndexBuffer");
    }

    public void i(@NonNull Engine engine, long j10, @IntRange(from = 0) int i10, @IntRange(from = 0, to = 255) int i11, @IntRange(from = 0) int i12) {
        if (nSetBonesAsMatricesDirect(this.f60078a, engine.getNativeObject(), j10, i10, i11, i12) < 0) {
            throw new BufferOverflowException();
        }
    }

    @Deprecated
    public void j(@NonNull Engine engine, @NonNull Buffer buffer, @IntRange(from = 0, to = 255) int i10, @IntRange(from = 0) int i11) {
        if (nSetBonesAsMatrices(this.f60078a, engine.getNativeObject(), buffer, buffer.remaining(), i10, i11) < 0) {
            throw new BufferOverflowException();
        }
    }

    public void k(@NonNull Engine engine, @NonNull Buffer buffer, @IntRange(from = 0, to = 255) int i10, @IntRange(from = 0) int i11) {
        if (nSetBonesAsQuaternions(this.f60078a, engine.getNativeObject(), buffer, buffer.remaining(), i10, i11) < 0) {
            throw new BufferOverflowException();
        }
    }

    public SkinningBuffer(long j10) {
        this.f60078a = j10;
    }
}
