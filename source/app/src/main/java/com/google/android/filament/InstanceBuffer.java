package com.google.android.filament;

import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import java.nio.Buffer;
import java.nio.BufferOverflowException;

public class InstanceBuffer {

    public long f59965a;

    public static class a {

        public final C0935a f59966a;

        public final long f59967b;

        public static class C0935a {

            public final long f59968a;

            public C0935a(long j10) {
                this.f59968a = j10;
            }

            public void finalize() {
                try {
                    super.finalize();
                } catch (Throwable unused) {
                }
                InstanceBuffer.nDestroyBuilder(this.f59968a);
            }
        }

        public a(@IntRange(from = 1) int i10) {
            long nCreateBuilder = InstanceBuffer.nCreateBuilder(i10);
            this.f59967b = nCreateBuilder;
            this.f59966a = new C0935a(nCreateBuilder);
        }

        @NonNull
        public InstanceBuffer a(@NonNull Engine engine) {
            long nBuilderBuild = InstanceBuffer.nBuilderBuild(this.f59967b, engine.getNativeObject());
            if (nBuilderBuild != 0) {
                return new InstanceBuffer(nBuilderBuild);
            }
            throw new IllegalStateException("Couldn't create InstanceBuffer");
        }

        @NonNull
        public a b(long j10, @IntRange(from = 0) int i10, @IntRange(from = 1) int i11) {
            if (InstanceBuffer.nBuilderLocalTransformsDirect(this.f59967b, j10, i10, i11) >= 0) {
                return this;
            }
            throw new BufferOverflowException();
        }

        @NonNull
        public a c(@NonNull Buffer buffer, @IntRange(from = 1) int i10) {
            if (InstanceBuffer.nBuilderLocalTransforms(this.f59967b, buffer, buffer.remaining(), i10) >= 0) {
                return this;
            }
            throw new BufferOverflowException();
        }
    }

    public static native long nBuilderBuild(long j10, long j11);

    public static native int nBuilderLocalTransforms(long j10, Buffer buffer, int i10, int i11);

    public static native int nBuilderLocalTransformsDirect(long j10, long j11, int i10, int i11);

    public static native long nCreateBuilder(int i10);

    public static native void nDestroyBuilder(long j10);

    private static native int nGetInstanceCount(long j10);

    private static native int nSetLocalTransforms(long j10, Buffer buffer, int i10, int i11, int i12);

    private static native int nSetLocalTransformsDirect(long j10, long j11, int i10, int i11, int i12);

    public void f() {
        this.f59965a = 0L;
    }

    public int g() {
        return nGetInstanceCount(h());
    }

    public long h() {
        long j10 = this.f59965a;
        if (j10 != 0) {
            return j10;
        }
        throw new IllegalStateException("Calling method on destroyed InstanceBuffer");
    }

    public void i(long j10, @IntRange(from = 0) int i10, @IntRange(from = 1) int i11, @IntRange(from = 0) int i12) {
        if (nSetLocalTransformsDirect(this.f59965a, j10, i10, i11, i12) < 0) {
            throw new BufferOverflowException();
        }
    }

    public void j(@NonNull Buffer buffer, @IntRange(from = 1) int i10, @IntRange(from = 0) int i11) {
        if (nSetLocalTransforms(this.f59965a, buffer, buffer.remaining(), i10, i11) < 0) {
            throw new BufferOverflowException();
        }
    }

    public InstanceBuffer(long j10) {
        this.f59965a = j10;
    }
}
