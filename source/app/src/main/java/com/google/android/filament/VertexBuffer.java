package com.google.android.filament;

import androidx.annotation.IntRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import java.nio.Buffer;
import java.nio.BufferOverflowException;

public class VertexBuffer {

    public long f60174a;

    public enum a {
        BYTE,
        BYTE2,
        BYTE3,
        BYTE4,
        UBYTE,
        UBYTE2,
        UBYTE3,
        UBYTE4,
        SHORT,
        SHORT2,
        SHORT3,
        SHORT4,
        USHORT,
        USHORT2,
        USHORT3,
        USHORT4,
        INT,
        UINT,
        FLOAT,
        FLOAT2,
        FLOAT3,
        FLOAT4,
        HALF,
        HALF2,
        HALF3,
        HALF4
    }

    public static class b {

        public final a f60175a;

        public final long f60176b;

        public static class a {

            public final long f60177a;

            public a(long j10) {
                this.f60177a = j10;
            }

            public void finalize() {
                try {
                    super.finalize();
                } catch (Throwable unused) {
                }
                VertexBuffer.nDestroyBuilder(this.f60177a);
            }
        }

        public b() {
            long g10 = VertexBuffer.g();
            this.f60176b = g10;
            this.f60175a = new a(g10);
        }

        @NonNull
        public b a(@NonNull c cVar, @IntRange(from = 0) int i10, @NonNull a aVar) {
            return b(cVar, i10, aVar, 0, 0);
        }

        @NonNull
        public b b(@NonNull c cVar, @IntRange(from = 0) int i10, @NonNull a aVar, @IntRange(from = 0) int i11, @IntRange(from = 0) int i12) {
            VertexBuffer.nBuilderAttribute(this.f60176b, cVar.ordinal(), i10, aVar.ordinal(), i11, i12);
            return this;
        }

        @NonNull
        public b c(@IntRange(from = 0) int i10) {
            VertexBuffer.nBuilderBufferCount(this.f60176b, i10);
            return this;
        }

        @NonNull
        public VertexBuffer d(@NonNull Engine engine) {
            long nBuilderBuild = VertexBuffer.nBuilderBuild(this.f60176b, engine.getNativeObject());
            if (nBuilderBuild != 0) {
                return new VertexBuffer(nBuilderBuild);
            }
            throw new IllegalStateException("Couldn't create VertexBuffer");
        }

        @NonNull
        public b e(boolean z10) {
            VertexBuffer.nBuilderEnableBufferObjects(this.f60176b, z10);
            return this;
        }

        @NonNull
        public b f(@NonNull c cVar) {
            VertexBuffer.nBuilderNormalized(this.f60176b, cVar.ordinal(), true);
            return this;
        }

        @NonNull
        public b g(@NonNull c cVar, boolean z10) {
            VertexBuffer.nBuilderNormalized(this.f60176b, cVar.ordinal(), z10);
            return this;
        }

        @NonNull
        public b h(@IntRange(from = 1) int i10) {
            VertexBuffer.nBuilderVertexCount(this.f60176b, i10);
            return this;
        }
    }

    public enum c {
        POSITION,
        TANGENTS,
        COLOR,
        UV0,
        UV1,
        BONE_INDICES,
        BONE_WEIGHTS,
        UNUSED,
        CUSTOM0,
        CUSTOM1,
        CUSTOM2,
        CUSTOM3,
        CUSTOM4,
        CUSTOM5,
        CUSTOM6,
        CUSTOM7
    }

    public static long g() {
        return nCreateBuilder();
    }

    public static native void nBuilderAttribute(long j10, int i10, int i11, int i12, int i13, int i14);

    public static native void nBuilderBufferCount(long j10, int i10);

    public static native long nBuilderBuild(long j10, long j11);

    public static native void nBuilderEnableBufferObjects(long j10, boolean z10);

    public static native void nBuilderNormalized(long j10, int i10, boolean z10);

    public static native void nBuilderVertexCount(long j10, int i10);

    private static native long nCreateBuilder();

    public static native void nDestroyBuilder(long j10);

    private static native int nGetVertexCount(long j10);

    private static native int nSetBufferAt(long j10, long j11, int i10, Buffer buffer, int i11, int i12, int i13, Object obj, Runnable runnable);

    private static native int nSetBufferAtDirect(long j10, long j11, int i10, long j12, int i11, int i12, int i13, Object obj, Runnable runnable);

    private static native void nSetBufferObjectAt(long j10, long j11, int i10, long j12);

    public void i() {
        this.f60174a = 0L;
    }

    public long j() {
        long j10 = this.f60174a;
        if (j10 != 0) {
            return j10;
        }
        throw new IllegalStateException("Calling method on destroyed VertexBuffer");
    }

    @IntRange(from = 0)
    public int k() {
        return nGetVertexCount(j());
    }

    public void l(@NonNull Engine engine, int i10, long j10, @IntRange(from = 0) int i11) {
        n(engine, i10, j10, i11, 0, i11, null, null);
    }

    public void m(@NonNull Engine engine, int i10, long j10, @IntRange(from = 0) int i11, @IntRange(from = 0) int i12, @IntRange(from = 0) int i13) {
        n(engine, i10, j10, i11, i12, i13, null, null);
    }

    public void n(@NonNull Engine engine, int i10, long j10, @IntRange(from = 0) int i11, @IntRange(from = 0) int i12, @IntRange(from = 0) int i13, @Nullable Object obj, @Nullable Runnable runnable) {
        if (nSetBufferAtDirect(j(), engine.getNativeObject(), i10, j10, i11, i12, i13 == 0 ? i11 : i13, obj, runnable) < 0) {
            throw new BufferOverflowException();
        }
    }

    @Deprecated
    public void o(@NonNull Engine engine, int i10, @NonNull Buffer buffer) {
        q(engine, i10, buffer, 0, 0, null, null);
    }

    @Deprecated
    public void p(@NonNull Engine engine, int i10, @NonNull Buffer buffer, @IntRange(from = 0) int i11, @IntRange(from = 0) int i12) {
        q(engine, i10, buffer, i11, i12, null, null);
    }

    @Deprecated
    public void q(@NonNull Engine engine, int i10, @NonNull Buffer buffer, @IntRange(from = 0) int i11, @IntRange(from = 0) int i12, @Nullable Object obj, @Nullable Runnable runnable) {
        if (nSetBufferAt(j(), engine.getNativeObject(), i10, buffer, buffer.remaining(), i11, i12 == 0 ? buffer.remaining() : i12, obj, runnable) < 0) {
            throw new BufferOverflowException();
        }
    }

    public void r(@NonNull Engine engine, int i10, @NonNull BufferObject bufferObject) {
        nSetBufferObjectAt(j(), engine.getNativeObject(), i10, bufferObject.h());
    }

    public VertexBuffer(long j10) {
        this.f60174a = j10;
    }
}
