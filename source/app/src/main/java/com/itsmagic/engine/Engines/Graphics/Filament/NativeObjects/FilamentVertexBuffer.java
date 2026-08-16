package com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects;

import M9.c;
import M9.d;
import M9.e;
import M9.f;
import androidx.annotation.Keep;
import com.google.android.filament.VertexBuffer;
import com.itsmagic.engine.Engines.Engine.GC.SGC;
import com.itsmagic.engine.Engines.Engine.GC.SGCListenerObject;
import com.itsmagic.engine.Engines.Graphics.Filament.Exceptions.FilamentContractViolationError;
import com.itsmagic.engine.Engines.Native.Base.NativeByteBuffer;
import com.itsmagic.engine.Engines.Native.Base.NativeFloatBuffer;
import com.itsmagic.engine.Engines.Native.Base.NativeShortBuffer;
import java.nio.ByteBuffer;
import java.nio.FloatBuffer;
import java.nio.ShortBuffer;

public class FilamentVertexBuffer extends SGCListenerObject implements Runnable, e {

    public static final c f80128e = new a();

    public boolean f80129b;

    public Runnable f80130c = null;

    public long[] f80131d = new long[1];

    @Keep
    private final VertexBuffer vertexBuffer;

    public class a implements c {
        @Override
        public void a(long pointer) {
            Qb.c.p(pointer);
        }
    }

    public FilamentVertexBuffer(VertexBuffer.b builder) {
        K8.a.G();
        Qb.a.d();
        VertexBuffer d10 = builder.d(Qb.a.f());
        this.vertexBuffer = d10;
        SGC.put(this, d10.j(), f80128e, false);
    }

    private static long e(ByteBuffer buffer) {
        if (buffer == null) {
            return 0L;
        }
        return buffer.remaining();
    }

    private static long f(FloatBuffer buffer) {
        if (buffer == null) {
            return 0L;
        }
        return buffer.remaining() * 4;
    }

    private static long h(ShortBuffer buffer) {
        if (buffer == null) {
            return 0L;
        }
        return buffer.remaining() * 2;
    }

    public static long z(ByteBuffer buffer, int destOffsetInBytes, int countInBytes) {
        return Math.max(0L, destOffsetInBytes) + (countInBytes > 0 ? countInBytes : e(buffer));
    }

    @Override
    public M9.a destroyChannel() {
        return M9.a.GPU;
    }

    public void destroyImmediate() {
        Qb.a.d();
        K8.a.G();
        if (this.f80129b) {
            throw new RuntimeException();
        }
        if (FilamentRenderable.isUsed(this)) {
            throw new FilamentContractViolationError("Stills in use");
        }
        this.f80129b = true;
        SGC.destroyImmediate(this);
    }

    @Override
    public int destroyPriority() {
        return 50;
    }

    @Override
    public d gpuUsageType() {
        return d.MODEL;
    }

    @Override
    public long gpuUsedBytes() {
        long j10 = 0;
        if (!this.f80129b && this.vertexBuffer != null) {
            for (long j11 : this.f80131d) {
                j10 += j11;
            }
        }
        return j10;
    }

    public final void i(int bufferIndex) {
        long[] jArr = this.f80131d;
        if (bufferIndex < jArr.length) {
            return;
        }
        long[] jArr2 = new long[bufferIndex + 1];
        System.arraycopy(jArr, 0, jArr2, 0, jArr.length);
        this.f80131d = jArr2;
    }

    public VertexBuffer j() {
        return this.vertexBuffer;
    }

    public void k(int i10, NativeByteBuffer value) {
        if (value == null) {
            throw new NullPointerException("value can't be null");
        }
        Qb.a.d();
        K8.a.G();
        int capacity = value.capacity();
        y(i10, capacity);
        this.vertexBuffer.l(Qb.a.f(), i10, value.getNativeAllocationPointer(), capacity);
    }

    public void l(int i10, NativeByteBuffer value, Runnable post) {
        if (value == null) {
            throw new NullPointerException("value can't be null");
        }
        Qb.a.d();
        K8.a.G();
        if (this.f80130c != null) {
            throw new RuntimeException("Double setBufferAt call, await callback");
        }
        this.f80130c = post;
        int capacity = value.capacity();
        y(i10, capacity);
        this.vertexBuffer.n(Qb.a.f(), i10, value.getNativeAllocationPointer(), capacity, 0, capacity, Qb.e.a(), this);
    }

    public void m(int i10, NativeFloatBuffer value) {
        if (value == null) {
            throw new NullPointerException("value can't be null");
        }
        Qb.a.d();
        K8.a.G();
        int nativeAllocationSizeInBytes = value.getNativeAllocationSizeInBytes();
        y(i10, nativeAllocationSizeInBytes);
        this.vertexBuffer.l(Qb.a.f(), i10, value.getNativeAllocationPointer(), nativeAllocationSizeInBytes);
    }

    public void n(int i10, NativeFloatBuffer value, Runnable post) {
        if (value == null) {
            throw new NullPointerException("value can't be null");
        }
        Qb.a.d();
        K8.a.G();
        if (this.f80130c != null) {
            throw new RuntimeException("Double setBufferAt call, await callback");
        }
        this.f80130c = post;
        int nativeAllocationSizeInBytes = value.getNativeAllocationSizeInBytes();
        y(i10, nativeAllocationSizeInBytes);
        this.vertexBuffer.n(Qb.a.f(), i10, value.getNativeAllocationPointer(), nativeAllocationSizeInBytes, 0, nativeAllocationSizeInBytes, Qb.e.a(), this);
    }

    @Override
    public f nativeUsageType() {
        return null;
    }

    @Override
    public long nativeUsedBytes() {
        return 0L;
    }

    public void o(int i10, NativeShortBuffer value) {
        if (value == null) {
            throw new NullPointerException("value can't be null");
        }
        Qb.a.d();
        K8.a.G();
        int capacity = value.capacity() * 2;
        y(i10, capacity);
        this.vertexBuffer.l(Qb.a.f(), i10, value.getNativeAllocationPointer(), capacity);
    }

    public void p(int i10, NativeShortBuffer value, Runnable post) {
        if (value == null) {
            throw new NullPointerException("value can't be null");
        }
        Qb.a.d();
        K8.a.G();
        if (this.f80130c != null) {
            throw new RuntimeException("Double setBufferAt call, await callback");
        }
        this.f80130c = post;
        int capacity = value.capacity() * 2;
        y(i10, capacity);
        this.vertexBuffer.n(Qb.a.f(), i10, value.getNativeAllocationPointer(), capacity, 0, capacity, Qb.e.a(), this);
    }

    @Deprecated
    public void q(int i10, ByteBuffer value) {
        Qb.a.d();
        K8.a.G();
        y(i10, e(value));
        this.vertexBuffer.o(Qb.a.f(), i10, value);
    }

    @Deprecated
    public void r(int i10, ByteBuffer value, int destOffsetInBytes, int countInBytes, Runnable post) {
        Qb.a.d();
        K8.a.G();
        if (this.f80130c != null) {
            throw new RuntimeException("Double setBufferAt call, await callback");
        }
        this.f80130c = post;
        y(i10, z(value, destOffsetInBytes, countInBytes));
        this.vertexBuffer.q(Qb.a.f(), i10, value, destOffsetInBytes, countInBytes, Qb.e.a(), this);
    }

    @Override
    public void run() {
        Runnable runnable = this.f80130c;
        if (runnable != null) {
            runnable.run();
            this.f80130c = null;
        }
    }

    @Deprecated
    public void s(int i10, ByteBuffer value, Runnable post) {
        Qb.a.d();
        K8.a.G();
        if (this.f80130c != null) {
            throw new RuntimeException("Double setBufferAt call, await callback");
        }
        this.f80130c = post;
        y(i10, e(value));
        this.vertexBuffer.q(Qb.a.f(), i10, value, 0, 0, Qb.e.a(), this);
    }

    @Deprecated
    public void u(int i10, FloatBuffer value) {
        Qb.a.d();
        K8.a.G();
        y(i10, f(value));
        this.vertexBuffer.o(Qb.a.f(), i10, value);
    }

    @Deprecated
    public void v(int i10, FloatBuffer value, Runnable post) {
        Qb.a.d();
        K8.a.G();
        if (this.f80130c != null) {
            throw new RuntimeException("Double setBufferAt call, await callback");
        }
        this.f80130c = post;
        y(i10, f(value));
        this.vertexBuffer.q(Qb.a.f(), i10, value, 0, 0, Qb.e.a(), this);
    }

    @Deprecated
    public void w(int i10, ShortBuffer value) {
        Qb.a.d();
        K8.a.G();
        y(i10, h(value));
        this.vertexBuffer.o(Qb.a.f(), i10, value);
    }

    @Deprecated
    public void x(int i10, ShortBuffer value, Runnable post) {
        Qb.a.d();
        K8.a.G();
        if (this.f80130c != null) {
            throw new RuntimeException("Double setBufferAt call, await callback");
        }
        this.f80130c = post;
        y(i10, h(value));
        this.vertexBuffer.q(Qb.a.f(), i10, value, 0, 0, Qb.e.a(), this);
    }

    public final void y(int bufferIndex, long bytes) {
        i(bufferIndex);
        long[] jArr = this.f80131d;
        jArr[bufferIndex] = Math.max(jArr[bufferIndex], bytes);
    }
}
