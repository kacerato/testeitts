package Jb;

import com.google.android.filament.SurfaceOrientation;
import com.itsmagic.engine.Engines.Native.Base.NativeFloatBuffer;
import com.itsmagic.engine.Engines.Native.Base.NativeIntBuffer;
import com.itsmagic.engine.Engines.Native.Base.NativeShortBuffer;

public class a {

    public NativeFloatBuffer f10384a;

    public NativeFloatBuffer f10385b;

    public NativeFloatBuffer f10386c;

    public NativeIntBuffer f10387d;

    public NativeShortBuffer f10388e;

    public a(NativeFloatBuffer verticesBuffer, NativeFloatBuffer normalsBuffer, NativeFloatBuffer tangentsBuffer, NativeIntBuffer trianglesBuffer) {
        this.f10384a = verticesBuffer;
        this.f10385b = normalsBuffer;
        this.f10386c = tangentsBuffer;
        this.f10387d = trianglesBuffer;
        a();
    }

    public final void a() {
        int c10 = c();
        int capacity = this.f10387d.capacity() / 3;
        if (c10 == 0 || capacity == 0) {
            return;
        }
        SurfaceOrientation a10 = new SurfaceOrientation.a().o(c10).h(capacity).d(this.f10384a.getNativeAllocationPointer(), this.f10384a.getNativeAllocationSizeInBytes()).b(this.f10385b.getNativeAllocationPointer(), this.f10385b.getNativeAllocationSizeInBytes()).f(this.f10386c.getNativeAllocationPointer(), this.f10386c.getNativeAllocationSizeInBytes()).k(this.f10387d.getNativeAllocationPointer(), this.f10387d.capacity() * 4).a();
        NativeShortBuffer nativeShortBuffer = new NativeShortBuffer(c10 * 4);
        this.f10388e = nativeShortBuffer;
        a10.v(nativeShortBuffer.getNativeAllocationPointer(), this.f10388e.capacity() * 2);
        a10.r();
    }

    public NativeShortBuffer b() {
        return this.f10388e;
    }

    public final int c() {
        NativeFloatBuffer nativeFloatBuffer = this.f10384a;
        if (nativeFloatBuffer == null) {
            return 0;
        }
        return nativeFloatBuffer.capacity() / 3;
    }
}
