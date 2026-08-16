package com.google.android.filament;

import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import java.nio.Buffer;

public class Stream {

    public static final b[] f60086c = b.values();

    public long f60087a;

    public long f60088b;

    public static class a {

        public final C0941a f60089a;

        public final long f60090b;

        public static class C0941a {

            public final long f60091a;

            public C0941a(long j10) {
                this.f60091a = j10;
            }

            public void finalize() {
                try {
                    super.finalize();
                } catch (Throwable unused) {
                }
                Stream.nDestroyBuilder(this.f60091a);
            }
        }

        public a() {
            long e10 = Stream.e();
            this.f60090b = e10;
            this.f60089a = new C0941a(e10);
        }

        @NonNull
        public Stream a(@NonNull Engine engine) {
            long nBuilderBuild = Stream.nBuilderBuild(this.f60090b, engine.getNativeObject());
            if (nBuilderBuild != 0) {
                return new Stream(nBuilderBuild, engine);
            }
            throw new IllegalStateException("Couldn't create Stream");
        }

        @NonNull
        public a b(int i10) {
            Stream.nBuilderHeight(this.f60090b, i10);
            return this;
        }

        @NonNull
        public a c(@NonNull Object obj) {
            if (o.a().i(obj)) {
                Stream.nBuilderStreamSource(this.f60090b, obj);
                return this;
            }
            throw new IllegalArgumentException("Invalid stream source: " + obj);
        }

        @NonNull
        public a d(int i10) {
            Stream.nBuilderWidth(this.f60090b, i10);
            return this;
        }
    }

    public enum b {
        NATIVE,
        ACQUIRED
    }

    public Stream(long j10, Engine engine) {
        this.f60087a = j10;
        this.f60088b = engine.getNativeObject();
    }

    public static long e() {
        return nCreateBuilder();
    }

    public static native long nBuilderBuild(long j10, long j11);

    public static native void nBuilderHeight(long j10, int i10);

    public static native void nBuilderStreamSource(long j10, Object obj);

    public static native void nBuilderWidth(long j10, int i10);

    private static native long nCreateBuilder();

    public static native void nDestroyBuilder(long j10);

    private static native int nGetStreamType(long j10);

    private static native long nGetTimestamp(long j10);

    private static native int nReadPixels(long j10, long j11, int i10, int i11, int i12, int i13, Buffer buffer, int i14, int i15, int i16, int i17, int i18, int i19, int i20, Object obj, Runnable runnable);

    private static native void nSetAcquiredImage(long j10, long j11, Object obj, Object obj2, Runnable runnable);

    private static native void nSetDimensions(long j10, int i10, int i11);

    public void g() {
        this.f60087a = 0L;
    }

    public long h() {
        long j10 = this.f60087a;
        if (j10 != 0) {
            return j10;
        }
        throw new IllegalStateException("Calling method on destroyed Stream");
    }

    public b i() {
        return f60086c[nGetStreamType(h())];
    }

    public long j() {
        return nGetTimestamp(h());
    }

    public void k(Object obj, Object obj2, Runnable runnable) {
        nSetAcquiredImage(h(), this.f60088b, obj, obj2, runnable);
    }

    public void l(@IntRange(from = 0) int i10, @IntRange(from = 0) int i11) {
        nSetDimensions(h(), i10, i11);
    }
}
