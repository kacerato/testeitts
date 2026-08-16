package com.google.android.filament;

import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.nio.Buffer;
import java.nio.BufferOverflowException;

public class BufferObject {

    public long f59909a;

    public static class a {

        public final b f59910a;

        public final long f59911b;

        public enum EnumC0931a {
            VERTEX
        }

        public static class b {

            public final long f59912a;

            public b(long j10) {
                this.f59912a = j10;
            }

            public void finalize() {
                try {
                    super.finalize();
                } catch (Throwable unused) {
                }
                BufferObject.nDestroyBuilder(this.f59912a);
            }
        }

        public a() {
            long d10 = BufferObject.d();
            this.f59911b = d10;
            this.f59910a = new b(d10);
        }

        @NonNull
        public a a(@NonNull EnumC0931a enumC0931a) {
            BufferObject.nBuilderBindingType(this.f59911b, enumC0931a.ordinal());
            return this;
        }

        @NonNull
        public BufferObject b(@NonNull Engine engine) {
            long nBuilderBuild = BufferObject.nBuilderBuild(this.f59911b, engine.getNativeObject());
            if (nBuilderBuild != 0) {
                return new BufferObject(nBuilderBuild);
            }
            throw new IllegalStateException("Couldn't create BufferObject");
        }

        @NonNull
        public a c(@IntRange(from = 1) int i10) {
            BufferObject.nBuilderSize(this.f59911b, i10);
            return this;
        }
    }

    public static long d() {
        return nCreateBuilder();
    }

    public static native void nBuilderBindingType(long j10, int i10);

    public static native long nBuilderBuild(long j10, long j11);

    public static native void nBuilderSize(long j10, int i10);

    private static native long nCreateBuilder();

    public static native void nDestroyBuilder(long j10);

    private static native int nGetByteCount(long j10);

    private static native int nSetBuffer(long j10, long j11, Buffer buffer, int i10, int i11, int i12, Object obj, Runnable runnable);

    public void f() {
        this.f59909a = 0L;
    }

    @IntRange(from = 0)
    public int g() {
        return nGetByteCount(h());
    }

    public long h() {
        long j10 = this.f59909a;
        if (j10 != 0) {
            return j10;
        }
        throw new IllegalStateException("Calling method on destroyed BufferObject");
    }

    public void i(@NonNull Engine engine, @NonNull Buffer buffer) {
        k(engine, buffer, 0, 0, null, null);
    }

    public void j(@NonNull Engine engine, @NonNull Buffer buffer, @IntRange(from = 0) int i10, @IntRange(from = 0) int i11) {
        k(engine, buffer, i10, i11, null, null);
    }

    public void k(@NonNull Engine engine, @NonNull Buffer buffer, @IntRange(from = 0) int i10, @IntRange(from = 0) int i11, @Nullable Object obj, @Nullable Runnable runnable) {
        if (nSetBuffer(h(), engine.getNativeObject(), buffer, buffer.remaining(), i10, i11 == 0 ? buffer.remaining() : i11, obj, runnable) < 0) {
            throw new BufferOverflowException();
        }
    }

    public BufferObject(long j10) {
        this.f59909a = j10;
    }
}
