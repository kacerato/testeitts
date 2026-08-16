package com.google.android.filament;

import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.nio.Buffer;
import java.nio.BufferOverflowException;

public class IndexBuffer {

    public long f59957a;

    public static class a {

        public final C0933a f59958a;

        public final long f59959b;

        public static class C0933a {

            public final long f59960a;

            public C0933a(long j10) {
                this.f59960a = j10;
            }

            public void finalize() {
                try {
                    super.finalize();
                } catch (Throwable unused) {
                }
                IndexBuffer.nDestroyBuilder(this.f59960a);
            }
        }

        public enum b {
            USHORT,
            UINT
        }

        public a() {
            long d10 = IndexBuffer.d();
            this.f59959b = d10;
            this.f59958a = new C0933a(d10);
        }

        @NonNull
        public a a(@NonNull b bVar) {
            IndexBuffer.nBuilderBufferType(this.f59959b, bVar.ordinal());
            return this;
        }

        @NonNull
        public IndexBuffer b(@NonNull Engine engine) {
            long nBuilderBuild = IndexBuffer.nBuilderBuild(this.f59959b, engine.getNativeObject());
            if (nBuilderBuild != 0) {
                return new IndexBuffer(nBuilderBuild);
            }
            throw new IllegalStateException("Couldn't create IndexBuffer");
        }

        @NonNull
        public a c(@IntRange(from = 1) int i10) {
            IndexBuffer.nBuilderIndexCount(this.f59959b, i10);
            return this;
        }
    }

    public static long d() {
        return nCreateBuilder();
    }

    public static native void nBuilderBufferType(long j10, int i10);

    public static native long nBuilderBuild(long j10, long j11);

    public static native void nBuilderIndexCount(long j10, int i10);

    private static native long nCreateBuilder();

    public static native void nDestroyBuilder(long j10);

    private static native int nGetIndexCount(long j10);

    private static native int nSetBuffer(long j10, long j11, Buffer buffer, int i10, int i11, int i12, Object obj, Runnable runnable);

    private static native int nSetBufferDirect(long j10, long j11, long j12, int i10, int i11, int i12, Object obj, Runnable runnable);

    public void f() {
        this.f59957a = 0L;
    }

    @IntRange(from = 0)
    public int g() {
        return nGetIndexCount(h());
    }

    public long h() {
        long j10 = this.f59957a;
        if (j10 != 0) {
            return j10;
        }
        throw new IllegalStateException("Calling method on destroyed IndexBuffer");
    }

    public void i(@NonNull Engine engine, long j10, @IntRange(from = 0) int i10) {
        k(engine, j10, i10, 0, i10, null, null);
    }

    public void j(@NonNull Engine engine, long j10, @IntRange(from = 0) int i10, @IntRange(from = 0) int i11, @IntRange(from = 0) int i12) {
        k(engine, j10, i10, i11, i12, null, null);
    }

    public void k(@NonNull Engine engine, long j10, @IntRange(from = 0) int i10, @IntRange(from = 0) int i11, @IntRange(from = 0) int i12, @Nullable Object obj, @Nullable Runnable runnable) {
        if (nSetBufferDirect(h(), engine.getNativeObject(), j10, i10, i11, i12 == 0 ? i10 : i12, obj, runnable) < 0) {
            throw new BufferOverflowException();
        }
    }

    @Deprecated
    public void l(@NonNull Engine engine, @NonNull Buffer buffer) {
        n(engine, buffer, 0, 0, null, null);
    }

    @Deprecated
    public void m(@NonNull Engine engine, @NonNull Buffer buffer, @IntRange(from = 0) int i10, @IntRange(from = 0) int i11) {
        n(engine, buffer, i10, i11, null, null);
    }

    @Deprecated
    public void n(@NonNull Engine engine, @NonNull Buffer buffer, @IntRange(from = 0) int i10, @IntRange(from = 0) int i11, @Nullable Object obj, @Nullable Runnable runnable) {
        if (nSetBuffer(h(), engine.getNativeObject(), buffer, buffer.remaining(), i10, i11 == 0 ? buffer.remaining() : i11, obj, runnable) < 0) {
            throw new BufferOverflowException();
        }
    }

    public IndexBuffer(long j10) {
        this.f59957a = j10;
    }
}
