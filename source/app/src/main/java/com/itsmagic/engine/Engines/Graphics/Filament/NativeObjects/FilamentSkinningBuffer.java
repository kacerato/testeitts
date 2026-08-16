package com.itsmagic.engine.Engines.Graphics.Filament.NativeObjects;

import M9.c;
import androidx.annotation.Keep;
import com.google.android.filament.SkinningBuffer;
import com.itsmagic.engine.Engines.Engine.GC.SGC;
import com.itsmagic.engine.Engines.Engine.GC.SGCListenerObject;
import com.itsmagic.engine.Engines.Graphics.Filament.Exceptions.FilamentContractViolationError;
import com.itsmagic.engine.Engines.Native.Base.NativeFloatBuffer;
import java.nio.Buffer;

public class FilamentSkinningBuffer extends SGCListenerObject {

    public static final c f80113c = new a();

    public boolean f80114b;

    @Keep
    private int boneCount;

    @Keep
    private final SkinningBuffer skinningBuffer;

    public class a implements c {
        @Override
        public void a(long pointer) {
            Qb.c.m(pointer);
        }
    }

    public FilamentSkinningBuffer(int boneCount) {
        Qb.a.d();
        K8.a.G();
        if (boneCount > 256) {
            throw new IndexOutOfBoundsException("Can`t be more than 256 bones");
        }
        SkinningBuffer b10 = new SkinningBuffer.a().a(boneCount).b(Qb.a.f());
        this.skinningBuffer = b10;
        this.boneCount = boneCount;
        SGC.put(this, b10.h(), f80113c, false);
    }

    @Override
    public M9.a destroyChannel() {
        return M9.a.GPU;
    }

    public void destroyImmediate() {
        Qb.a.d();
        K8.a.G();
        if (this.f80114b) {
            throw new RuntimeException();
        }
        if (FilamentRenderable.isUsed(this)) {
            throw new FilamentContractViolationError("SkinningBuffer still used by a renderable");
        }
        this.f80114b = true;
        SGC.destroyImmediate(this);
    }

    @Override
    public int destroyPriority() {
        return 50;
    }

    public SkinningBuffer e() {
        return this.skinningBuffer;
    }

    public void f(NativeFloatBuffer matrices, int boneCount, int offset) {
        K8.a.G();
        if (this.f80114b) {
            throw new RuntimeException();
        }
        if (matrices == null) {
            throw new NullPointerException("matrices can't be null");
        }
        if (matrices.getPrecision() != NativeFloatBuffer.b.FLOAT32) {
            throw new IllegalArgumentException("NativeFloatBuffer for skinning matrices must use FLOAT32 precision");
        }
        if (boneCount > 256) {
            throw new IndexOutOfBoundsException("Can`t be more than 256 bones");
        }
        this.boneCount = boneCount;
        this.skinningBuffer.i(Qb.a.f(), matrices.getNativeAllocationPointer(), matrices.getNativeAllocationSizeInBytes(), boneCount, offset);
    }

    public int getBoneCount() {
        return this.boneCount;
    }

    @Deprecated
    public void h(Buffer matrices, int boneCount, int offset) {
        K8.a.G();
        if (this.f80114b) {
            throw new RuntimeException();
        }
        if (boneCount > 256) {
            throw new IndexOutOfBoundsException("Can`t be more than 256 bones");
        }
        this.boneCount = boneCount;
        this.skinningBuffer.j(Qb.a.f(), matrices, boneCount, offset);
    }
}
