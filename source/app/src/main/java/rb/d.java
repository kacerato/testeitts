package Rb;

import M9.f;
import com.google.android.filament.IndexBuffer;
import com.itsmagic.engine.Engines.Engine.GC.SGC;
import com.itsmagic.engine.Engines.Engine.GC.SGCListenerObject;
import com.itsmagic.engine.Engines.Graphics.Filament.Exceptions.FilamentContractViolationError;
import com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects.FilamentRenderable;
import com.itsmagic.engine.Engines.Native.Base.NativeByteBuffer;
import com.itsmagic.engine.Engines.Native.Base.NativeFloatBuffer;
import com.itsmagic.engine.Engines.Native.Base.NativeIntBuffer;
import com.itsmagic.engine.Engines.Native.Base.NativeShortBuffer;
import java.nio.ByteBuffer;
import java.nio.FloatBuffer;
import java.nio.ShortBuffer;

public class d extends SGCListenerObject implements Runnable, M9.e {

    public static final M9.c f22696g = new a();

    public final IndexBuffer f22697b;

    public boolean f22698c;

    public Runnable f22699d = null;

    public long f22700e;

    public class a implements M9.c {
        @Override
        public void a(long pointer) {
            Qb.c.f(pointer);
        }
    }

    public d(IndexBuffer.a builder) {
        K8.a.G();
        Qb.a.d();
        IndexBuffer b10 = builder.b(Qb.a.f());
        this.f22697b = b10;
        SGC.put(this, b10.h(), f22696g, false);
    }

    public static long e(ByteBuffer buffer) {
        if (buffer == null) {
            return 0L;
        }
        return buffer.remaining();
    }

    public static long f(FloatBuffer buffer) {
        if (buffer == null) {
            return 0L;
        }
        return buffer.remaining() * 4;
    }

    public static long h(ShortBuffer buffer) {
        if (buffer == null) {
            return 0L;
        }
        return buffer.remaining() * 2;
    }

    public static long z(FloatBuffer buffer, int destOffsetInBytes, int countInBytes) {
        return Math.max(0L, destOffsetInBytes) + (countInBytes > 0 ? countInBytes : f(buffer));
    }

    @Override
    public M9.a destroyChannel() {
        return M9.a.GPU;
    }

    public void destroyImmediate() {
        Qb.a.d();
        K8.a.G();
        if (this.f22698c) {
            throw new RuntimeException();
        }
        if (FilamentRenderable.isUsed(this)) {
            throw new FilamentContractViolationError("Stills in use");
        }
        this.f22698c = true;
        SGC.destroyImmediate(this);
    }

    @Override
    public int destroyPriority() {
        return 50;
    }

    @Override
    public M9.d gpuUsageType() {
        return M9.d.MODEL;
    }

    @Override
    public long gpuUsedBytes() {
        if (this.f22698c || this.f22697b == null) {
            return 0L;
        }
        return this.f22700e;
    }

    public IndexBuffer i() {
        return this.f22697b;
    }

    public void j(NativeByteBuffer value) {
        if (value == null) {
            throw new NullPointerException("value can't be null");
        }
        Qb.a.d();
        K8.a.G();
        int capacity = value.capacity();
        y(capacity);
        this.f22697b.i(Qb.a.f(), value.getNativeAllocationPointer(), capacity);
    }

    public void k(NativeByteBuffer value, Runnable post) {
        if (value == null) {
            throw new NullPointerException("value can't be null");
        }
        Qb.a.d();
        K8.a.G();
        if (this.f22699d != null) {
            throw new RuntimeException("Double setBufferAt call, await callback");
        }
        this.f22699d = post;
        int capacity = value.capacity();
        y(capacity);
        this.f22697b.k(Qb.a.f(), value.getNativeAllocationPointer(), capacity, 0, capacity, Qb.e.a(), this);
    }

    public void l(NativeFloatBuffer value) {
        if (value == null) {
            throw new NullPointerException("value can't be null");
        }
        Qb.a.d();
        K8.a.G();
        int nativeAllocationSizeInBytes = value.getNativeAllocationSizeInBytes();
        y(nativeAllocationSizeInBytes);
        this.f22697b.i(Qb.a.f(), value.getNativeAllocationPointer(), nativeAllocationSizeInBytes);
    }

    public void m(NativeFloatBuffer value, Runnable post) {
        if (value == null) {
            throw new NullPointerException("value can't be null");
        }
        Qb.a.d();
        K8.a.G();
        if (this.f22699d != null) {
            throw new RuntimeException("Double setBufferAt call, await callback");
        }
        this.f22699d = post;
        int nativeAllocationSizeInBytes = value.getNativeAllocationSizeInBytes();
        y(nativeAllocationSizeInBytes);
        this.f22697b.k(Qb.a.f(), value.getNativeAllocationPointer(), nativeAllocationSizeInBytes, 0, nativeAllocationSizeInBytes, Qb.e.a(), this);
    }

    public void n(NativeIntBuffer value) {
        if (value == null) {
            throw new NullPointerException("value can't be null");
        }
        Qb.a.d();
        K8.a.G();
        int capacity = value.capacity() * 4;
        y(capacity);
        this.f22697b.i(Qb.a.f(), value.getNativeAllocationPointer(), capacity);
    }

    @Override
    public f nativeUsageType() {
        return null;
    }

    @Override
    public long nativeUsedBytes() {
        return 0L;
    }

    public void o(NativeIntBuffer value, Runnable post) {
        if (value == null) {
            throw new NullPointerException("value can't be null");
        }
        Qb.a.d();
        K8.a.G();
        if (this.f22699d != null) {
            throw new RuntimeException("Double setBufferAt call, await callback");
        }
        this.f22699d = post;
        int capacity = value.capacity() * 4;
        y(capacity);
        this.f22697b.k(Qb.a.f(), value.getNativeAllocationPointer(), capacity, 0, capacity, Qb.e.a(), this);
    }

    public void p(NativeShortBuffer value) {
        if (value == null) {
            throw new NullPointerException("value can't be null");
        }
        Qb.a.d();
        K8.a.G();
        int capacity = value.capacity() * 2;
        y(capacity);
        this.f22697b.i(Qb.a.f(), value.getNativeAllocationPointer(), capacity);
    }

    public void q(NativeShortBuffer value, Runnable post) {
        if (value == null) {
            throw new NullPointerException("value can't be null");
        }
        Qb.a.d();
        K8.a.G();
        if (this.f22699d != null) {
            throw new RuntimeException("Double setBufferAt call, await callback");
        }
        this.f22699d = post;
        int capacity = value.capacity() * 2;
        y(capacity);
        this.f22697b.k(Qb.a.f(), value.getNativeAllocationPointer(), capacity, 0, capacity, Qb.e.a(), this);
    }

    @Deprecated
    public void r(ByteBuffer posUv) {
        Qb.a.d();
        K8.a.G();
        y(e(posUv));
        this.f22697b.l(Qb.a.f(), posUv);
    }

    @Override
    public void run() {
        Runnable runnable = this.f22699d;
        if (runnable != null) {
            runnable.run();
            this.f22699d = null;
        }
    }

    @Deprecated
    public void s(ByteBuffer posUv, Runnable post) {
        Qb.a.d();
        K8.a.G();
        if (this.f22699d != null) {
            throw new RuntimeException("Double setBufferAt call, await callback");
        }
        this.f22699d = post;
        y(e(posUv));
        this.f22697b.n(Qb.a.f(), posUv, 0, 0, Qb.e.a(), this);
    }

    @Deprecated
    public void u(FloatBuffer posUv) {
        Qb.a.d();
        K8.a.G();
        y(f(posUv));
        this.f22697b.l(Qb.a.f(), posUv);
    }

    @Deprecated
    public void v(FloatBuffer posUv, int destOffsetInBytes, int countInBytes, Runnable post) {
        Qb.a.d();
        K8.a.G();
        if (this.f22699d != null) {
            throw new RuntimeException("Double setBufferAt call, await callback");
        }
        this.f22699d = post;
        y(z(posUv, destOffsetInBytes, countInBytes));
        this.f22697b.n(Qb.a.f(), posUv, destOffsetInBytes, countInBytes, Qb.e.a(), this);
    }

    @Deprecated
    public void w(FloatBuffer posUv, Runnable post) {
        Qb.a.d();
        K8.a.G();
        if (this.f22699d != null) {
            throw new RuntimeException("Double setBufferAt call, await callback");
        }
        this.f22699d = post;
        y(f(posUv));
        this.f22697b.n(Qb.a.f(), posUv, 0, 0, Qb.e.a(), this);
    }

    @Deprecated
    public void x(ShortBuffer posUv) {
        Qb.a.d();
        K8.a.G();
        y(h(posUv));
        this.f22697b.l(Qb.a.f(), posUv);
    }

    public final void y(long bytes) {
        this.f22700e = Math.max(this.f22700e, bytes);
    }
}
