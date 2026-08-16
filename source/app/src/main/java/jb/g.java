package Jb;

import com.google.android.filament.SurfaceOrientation;
import com.itsmagic.engine.Engines.Native.Base.NativeFloatBuffer;
import com.itsmagic.engine.Engines.Native.Base.NativeIntBuffer;
import com.itsmagic.engine.Engines.Native.Base.NativeShortBuffer;

public class g {

    public NativeFloatBuffer f10441a;

    public NativeFloatBuffer f10442b;

    public NativeFloatBuffer f10443c;

    public NativeIntBuffer f10444d;

    public NativeShortBuffer f10445e;

    public g(NativeFloatBuffer verticesBuffer, NativeFloatBuffer uvsBuffer, NativeFloatBuffer normalsBuffer, NativeIntBuffer trianglesBuffer) {
        this.f10441a = verticesBuffer;
        this.f10442b = uvsBuffer;
        this.f10443c = normalsBuffer;
        this.f10444d = trianglesBuffer;
        a();
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x00f7  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x00fc  */
    /* JADX WARN: Removed duplicated region for block: B:37:0x00ef  */
    /* JADX WARN: Removed duplicated region for block: B:39:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void a() {
        NativeFloatBuffer nativeFloatBuffer;
        SurfaceOrientation.a k10;
        NativeFloatBuffer nativeFloatBuffer2;
        int c10 = c();
        int capacity = this.f10444d.capacity() / 3;
        if (c10 == 0 || capacity == 0) {
            return;
        }
        NativeFloatBuffer nativeFloatBuffer3 = this.f10442b;
        SurfaceOrientation surfaceOrientation = null;
        try {
            if (nativeFloatBuffer3 != null) {
                try {
                    if (nativeFloatBuffer3.capacity() >= c10 * 2) {
                        nativeFloatBuffer = null;
                        k10 = new SurfaceOrientation.a().o(c10).h(capacity).d(this.f10441a.getNativeAllocationPointer(), this.f10441a.getNativeAllocationSizeInBytes()).m(this.f10442b.getNativeAllocationPointer(), this.f10442b.getNativeAllocationSizeInBytes()).k(this.f10444d.getNativeAllocationPointer(), this.f10444d.capacity() * 4);
                        nativeFloatBuffer2 = this.f10443c;
                        if (nativeFloatBuffer2 != null && nativeFloatBuffer2.capacity() >= this.f10441a.capacity()) {
                            k10.b(this.f10443c.getNativeAllocationPointer(), this.f10443c.getNativeAllocationSizeInBytes());
                        }
                        surfaceOrientation = k10.a();
                        NativeShortBuffer nativeShortBuffer = new NativeShortBuffer(c10 * 4);
                        this.f10445e = nativeShortBuffer;
                        surfaceOrientation.v(nativeShortBuffer.getNativeAllocationPointer(), this.f10445e.capacity() * 2);
                        surfaceOrientation.r();
                        if (nativeFloatBuffer == null) {
                            this.f10442b = nativeFloatBuffer3;
                            nativeFloatBuffer.destroyImmediate();
                            return;
                        }
                        return;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    nativeFloatBuffer = null;
                    if (surfaceOrientation != null) {
                        surfaceOrientation.r();
                    }
                    if (nativeFloatBuffer != null) {
                        this.f10442b = nativeFloatBuffer3;
                        nativeFloatBuffer.destroyImmediate();
                    }
                    throw th;
                }
            }
            NativeFloatBuffer nativeFloatBuffer4 = this.f10442b;
            int min = nativeFloatBuffer4 != null ? Math.min(c10, nativeFloatBuffer4.capacity() / 2) : 0;
            NativeFloatBuffer nativeFloatBuffer5 = this.f10442b;
            if (nativeFloatBuffer5 != null && min > 0) {
                nativeFloatBuffer.put(nativeFloatBuffer5, min * 2);
            }
            while (min < c10) {
                int i10 = min * 3;
                float f10 = this.f10441a.get(i10);
                float f11 = this.f10441a.get(i10 + 2);
                int i11 = min * 2;
                nativeFloatBuffer.set(i11, f10);
                nativeFloatBuffer.set(i11 + 1, f11);
                min++;
            }
            nativeFloatBuffer.position(0);
            this.f10442b = nativeFloatBuffer;
            k10 = new SurfaceOrientation.a().o(c10).h(capacity).d(this.f10441a.getNativeAllocationPointer(), this.f10441a.getNativeAllocationSizeInBytes()).m(this.f10442b.getNativeAllocationPointer(), this.f10442b.getNativeAllocationSizeInBytes()).k(this.f10444d.getNativeAllocationPointer(), this.f10444d.capacity() * 4);
            nativeFloatBuffer2 = this.f10443c;
            if (nativeFloatBuffer2 != null) {
                k10.b(this.f10443c.getNativeAllocationPointer(), this.f10443c.getNativeAllocationSizeInBytes());
            }
            surfaceOrientation = k10.a();
            NativeShortBuffer nativeShortBuffer2 = new NativeShortBuffer(c10 * 4);
            this.f10445e = nativeShortBuffer2;
            surfaceOrientation.v(nativeShortBuffer2.getNativeAllocationPointer(), this.f10445e.capacity() * 2);
            surfaceOrientation.r();
            if (nativeFloatBuffer == null) {
            }
        } catch (Throwable th3) {
            th = th3;
            if (surfaceOrientation != null) {
            }
            if (nativeFloatBuffer != null) {
            }
            throw th;
        }
        nativeFloatBuffer = new NativeFloatBuffer(c10 * 2);
    }

    public NativeShortBuffer b() {
        return this.f10445e;
    }

    public final int c() {
        NativeFloatBuffer nativeFloatBuffer = this.f10441a;
        if (nativeFloatBuffer == null) {
            return 0;
        }
        return nativeFloatBuffer.capacity() / 3;
    }
}
