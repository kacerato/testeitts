package com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects;

import M9.c;
import androidx.annotation.Keep;
import com.google.android.filament.InstanceBuffer;
import com.itsmagic.engine.Engines.Engine.GC.SGC;
import com.itsmagic.engine.Engines.Engine.GC.SGCListenerObject;
import com.itsmagic.engine.Engines.Graphics.Filament.Exceptions.FilamentContractViolationError;
import com.itsmagic.engine.Engines.Native.Base.NativeFloatBuffer;

public class FilamentInstanceBuffer extends SGCListenerObject {

    public static final c f80087c = new a();

    public boolean f80088b;

    @Keep
    private final InstanceBuffer instanceBuffer;

    @Keep
    private final int instanceCount;

    public class a implements c {
        @Override
        public void a(long pointer) {
            Qb.c.h(pointer);
        }
    }

    public FilamentInstanceBuffer(int instanceCount) {
        Qb.a.d();
        K8.a.G();
        if (instanceCount > 0) {
            InstanceBuffer a10 = new InstanceBuffer.a(instanceCount).a(Qb.a.f());
            this.instanceBuffer = a10;
            this.instanceCount = instanceCount;
            SGC.put(this, a10.h(), f80087c, false);
            return;
        }
        throw new IndexOutOfBoundsException("instanceCount must be > 0");
    }

    public static void i(NativeFloatBuffer matrices, int count) {
        if (matrices == null) {
            throw new NullPointerException("matrices can't be null");
        }
        if (count <= 0) {
            throw new IndexOutOfBoundsException("count must be > 0");
        }
        if (matrices.getPrecision() != NativeFloatBuffer.b.FLOAT32) {
            throw new IllegalArgumentException("NativeFloatBuffer for instance matrices must use FLOAT32 precision");
        }
        if (matrices.capacity() < count * 16) {
            throw new IndexOutOfBoundsException("Instance matrix buffer is too small");
        }
    }

    @Override
    public M9.a destroyChannel() {
        return M9.a.GPU;
    }

    public void destroyImmediate() {
        Qb.a.d();
        K8.a.G();
        if (this.f80088b) {
            throw new RuntimeException();
        }
        if (FilamentRenderable.isUsed(this)) {
            throw new FilamentContractViolationError("InstanceBuffer still used by a renderable");
        }
        this.f80088b = true;
        SGC.destroyImmediate(this);
    }

    @Override
    public int destroyPriority() {
        return 50;
    }

    public InstanceBuffer e() {
        return this.instanceBuffer;
    }

    public int f() {
        return this.instanceCount;
    }

    public void h(NativeFloatBuffer matrices, int count, int offset) {
        K8.a.G();
        if (this.f80088b) {
            throw new RuntimeException();
        }
        i(matrices, count);
        if (offset < 0 || offset + count > this.instanceCount) {
            throw new IndexOutOfBoundsException("Instance transform upload exceeds buffer capacity");
        }
        this.instanceBuffer.i(matrices.getNativeAllocationPointer(), matrices.getNativeAllocationSizeInBytes(), count, offset);
    }

    public FilamentInstanceBuffer(NativeFloatBuffer matrices, int instanceCount) {
        Qb.a.d();
        K8.a.G();
        i(matrices, instanceCount);
        InstanceBuffer a10 = new InstanceBuffer.a(instanceCount).b(matrices.getNativeAllocationPointer(), matrices.getNativeAllocationSizeInBytes(), instanceCount).a(Qb.a.f());
        this.instanceBuffer = a10;
        this.instanceCount = instanceCount;
        SGC.put(this, a10.h(), f80087c, false);
    }
}
