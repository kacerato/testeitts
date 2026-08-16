package com.itsmagic.engine.Engines.Engine.Vertex;

import JAVARuntime.Vertex;
import K8.f;
import aa.C3593a;
import aa.C3595c;
import aa.d;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Transform.Transform;
import com.itsmagic.engine.Engines.Engine.Vector.AABB;
import com.itsmagic.engine.Engines.Engine.Vector.Vector2;
import com.itsmagic.engine.Engines.Engine.Vector.Vector3;
import com.itsmagic.engine.Engines.Native.Base.NativeFloatBuffer;
import com.itsmagic.engine.Engines.Native.Base.NativeIntBuffer;
import java.io.Serializable;
import vc.n;
import vc.p;
import vc.q;

public class BVHMesh extends f implements Serializable {

    public static final int f79910q = 6;

    public static final int f79911r = 4;

    public static final ThreadLocal<float[]> f79912s;

    public NativeIntBuffer f79917g;

    public NativeFloatBuffer f79913b = null;

    public NativeFloatBuffer f79914c = null;

    public NativeFloatBuffer f79915d = null;

    public NativeFloatBuffer f79916e = null;

    public transient NativeFloatBuffer f79918i = null;

    public transient NativeIntBuffer f79919j = null;

    public transient NativeIntBuffer f79920k = null;

    public transient int f79921l = 0;

    public transient int f79922m = 0;

    public transient boolean f79923n = true;

    public transient AABB f79924o = null;

    public final Object f79925p = new Object();

    public class a extends ThreadLocal<float[]> {
        @Override
        public float[] initialValue() {
            return new float[16];
        }
    }

    static {
        System.loadLibrary("vertex");
        f79912s = new a();
    }

    public static native void nativeBuildBVH(long verticesPointer, long indicesPointer, long outNodeBoundsPointer, long outNodeMetaPointer, long outTriangleOrderPointer, long outAabbPointer, long outInfoPointer);

    public static native void nativeTraceRayBVH(long verticesPointer, long indicesPointer, long uvsPointer, long nodeBoundsPointer, long nodeMetaPointer, long triangleOrderPointer, int nodeCount, long matrixPointer, float rayOriginX, float rayOriginY, float rayOriginZ, float rayDirX, float rayDirY, float rayDirZ, float maxDistance, boolean backfaceCulling, int rayMode, long aabbMinPointer, long aabbMaxPointer, long outBufferPointer);

    public NativeFloatBuffer A() {
        return this.f79913b;
    }

    public int B() {
        NativeFloatBuffer nativeFloatBuffer = this.f79913b;
        if (nativeFloatBuffer == null) {
            return 0;
        }
        return nativeFloatBuffer.capacity() / 3;
    }

    public q C() {
        return new q(this.f79913b);
    }

    public boolean D() {
        boolean z10;
        synchronized (this.f79925p) {
            try {
                z10 = !this.f79923n && this.f79921l > 0 && this.f79922m > 0;
            } finally {
            }
        }
        return z10;
    }

    public void E() {
        synchronized (this.f79925p) {
            this.f79920k = null;
            this.f79919j = null;
            this.f79918i = null;
            this.f79921l = 0;
            this.f79922m = 0;
            this.f79913b = null;
            this.f79914c = null;
            this.f79915d = null;
            this.f79916e = null;
            this.f79917g = null;
            this.f79924o = null;
            this.f79923n = false;
        }
    }

    public final void F() {
        i();
        this.f79923n = true;
        this.f79924o = null;
    }

    public void G() {
        synchronized (this.f79925p) {
            this.f79924o = null;
        }
    }

    public void H(NativeFloatBuffer verticesBuffer, NativeIntBuffer trianglesBuffer) {
        synchronized (this.f79925p) {
            this.f79913b = verticesBuffer;
            this.f79917g = trianglesBuffer;
            F();
            d();
        }
    }

    public void I(NativeFloatBuffer buffer) {
        synchronized (this.f79925p) {
            this.f79915d = buffer;
            F();
        }
    }

    public void J(q buffer) {
        I(buffer != null ? buffer.k() : null);
    }

    public void K(NativeFloatBuffer buffer) {
        synchronized (this.f79925p) {
            this.f79916e = buffer;
            F();
        }
    }

    public void L(q buffer) {
        K(buffer != null ? buffer.k() : null);
    }

    public void M(NativeIntBuffer buffer) {
        synchronized (this.f79925p) {
            this.f79917g = buffer;
            F();
        }
    }

    public void N(n buffer) {
        M(buffer != null ? buffer.f121470a : null);
    }

    public void O(NativeFloatBuffer buffer) {
        synchronized (this.f79925p) {
            this.f79914c = buffer;
            F();
        }
    }

    public void P(p buffer) {
        O(buffer != null ? buffer.h() : null);
    }

    public void Q(NativeFloatBuffer buffer) {
        synchronized (this.f79925p) {
            this.f79913b = buffer;
            F();
        }
    }

    public void S(q buffer) {
        Q(buffer != null ? buffer.k() : null);
    }

    public C3593a T(C3595c ray, Vertex.RayMode rayMode) {
        return U(ray, rayMode, true);
    }

    public C3593a U(C3595c ray, Vertex.RayMode rayMode, boolean backfaceCulling) {
        return V(ray, rayMode, backfaceCulling, null, null, null, null, null, null, null, null);
    }

    public C3593a V(C3595c ray, Vertex.RayMode rayMode, boolean backfaceCulling, Vector3 vertice1, Vector3 vertice2, Vector3 vertice3, Vector3 normal, Vector3 tmp1, Vector3 tmp2, Vector3 tmp3, Vector3 tmp4) {
        C3593a f10;
        synchronized (this.f79925p) {
            f10 = f(null, ray, ray.f31954c, backfaceCulling, rayMode, k());
        }
        return f10;
    }

    public C3593a W(Transform transform, C3595c ray, Vertex.RayMode rayMode) {
        return a0(transform.x1(), ray, rayMode);
    }

    public C3593a X(Transform transform, C3595c ray, Vertex.RayMode rayMode, boolean backfaceCulling) {
        return b0(transform.x1(), ray, rayMode, backfaceCulling);
    }

    public C3593a Y(com.itsmagic.engine.Engines.Engine.Vector.f matrix, C3595c ray, Vertex.RayMode rayMode) {
        float[] fArr = f79912s.get();
        matrix.o(fArr);
        return b0(fArr, ray, rayMode, true);
    }

    public C3593a Z(com.itsmagic.engine.Engines.Engine.Vector.f matrix, C3595c ray, Vertex.RayMode rayMode, boolean backfaceCulling) {
        float[] fArr = f79912s.get();
        matrix.o(fArr);
        return b0(fArr, ray, rayMode, backfaceCulling);
    }

    public C3593a a0(float[] matrix, C3595c ray, Vertex.RayMode rayMode) {
        return b0(matrix, ray, rayMode, true);
    }

    public void apply() {
        synchronized (this.f79925p) {
            d();
        }
    }

    public C3593a b0(float[] matrix, C3595c ray, Vertex.RayMode rayMode, boolean backfaceCulling) {
        return c0(matrix, ray, rayMode, backfaceCulling, false);
    }

    public C3593a c0(float[] matrix, C3595c ray, Vertex.RayMode rayMode, boolean backfaceCulling, boolean noAABB) {
        AABB k10;
        C3593a f10;
        synchronized (this.f79925p) {
            if (noAABB) {
                k10 = null;
            } else {
                try {
                    k10 = k();
                    if (k10 != null && matrix != null) {
                        k10 = k10.d(matrix);
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            f10 = f(matrix, ray, ray.f31954c, backfaceCulling, rayMode, k10);
        }
        return f10;
    }

    public final void d() {
        i();
        this.f79923n = false;
        if (this.f79913b == null || this.f79917g == null) {
            this.f79924o = null;
            return;
        }
        int B10 = B();
        int w10 = w();
        if (B10 <= 0 || w10 <= 0) {
            this.f79924o = null;
            return;
        }
        int max = Math.max(1, w10 * 2);
        NativeFloatBuffer nativeFloatBuffer = new NativeFloatBuffer(max * 6);
        NativeIntBuffer nativeIntBuffer = new NativeIntBuffer(max * 4);
        NativeIntBuffer nativeIntBuffer2 = new NativeIntBuffer(w10);
        NativeFloatBuffer nativeFloatBuffer2 = new NativeFloatBuffer(10);
        NativeIntBuffer nativeIntBuffer3 = new NativeIntBuffer(2);
        try {
            nativeBuildBVH(NativeFloatBuffer.getCriticalDirectCppPointer(this.f79913b, 0L), NativeIntBuffer.getCriticalDirectCppPointer(this.f79917g, 0L), NativeFloatBuffer.getCriticalDirectCppPointer(nativeFloatBuffer, 0L), NativeIntBuffer.getCriticalDirectCppPointer(nativeIntBuffer, 0L), NativeIntBuffer.getCriticalDirectCppPointer(nativeIntBuffer2, 0L), NativeFloatBuffer.getCriticalDirectCppPointer(nativeFloatBuffer2, 0L), NativeIntBuffer.getCriticalDirectCppPointer(nativeIntBuffer3, 0L));
            int i10 = nativeIntBuffer3.get(0);
            int i11 = nativeIntBuffer3.get(1);
            if (i10 > 0 && i11 > 0) {
                this.f79918i = nativeFloatBuffer;
                this.f79919j = nativeIntBuffer;
                this.f79920k = nativeIntBuffer2;
                this.f79921l = i10;
                this.f79922m = i11;
                AABB aabb = new AABB();
                aabb.s(nativeFloatBuffer2);
                this.f79924o = aabb;
                if (nativeIntBuffer3.validate()) {
                    nativeIntBuffer3.destroyImmediate();
                }
                if (nativeFloatBuffer2.validate()) {
                    nativeFloatBuffer2.destroyImmediate();
                    return;
                }
                return;
            }
            this.f79924o = null;
        } finally {
            if (nativeIntBuffer3.validate()) {
                nativeIntBuffer3.destroyImmediate();
            }
            if (nativeFloatBuffer2.validate()) {
                nativeFloatBuffer2.destroyImmediate();
            }
            if (nativeIntBuffer2.validate()) {
                nativeIntBuffer2.destroyImmediate();
            }
            if (nativeIntBuffer.validate()) {
                nativeIntBuffer.destroyImmediate();
            }
            if (nativeFloatBuffer.validate()) {
                nativeFloatBuffer.destroyImmediate();
            }
        }
    }

    public void e() {
        k();
    }

    /* JADX WARN: Removed duplicated region for block: B:60:0x01f8  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0203  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x020e  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x0219  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final C3593a f(float[] matrix, C3595c ray, float maxDistance, boolean backfaceCulling, Vertex.RayMode rayMode, AABB aabb) {
        NativeFloatBuffer nativeFloatBuffer;
        NativeFloatBuffer nativeFloatBuffer2;
        NativeFloatBuffer nativeFloatBuffer3;
        long criticalDirectCppPointer;
        NativeFloatBuffer nativeFloatBuffer4;
        long j10;
        long j11;
        NativeFloatBuffer nativeFloatBuffer5;
        NativeFloatBuffer nativeFloatBuffer6 = null;
        if (!j()) {
            return null;
        }
        try {
            nativeFloatBuffer = new NativeFloatBuffer(16);
            if (matrix != null) {
                try {
                    nativeFloatBuffer2 = new NativeFloatBuffer(16);
                    try {
                        nativeFloatBuffer2.set(matrix);
                        criticalDirectCppPointer = NativeFloatBuffer.getCriticalDirectCppPointer(nativeFloatBuffer2, 0L);
                    } catch (Throwable th2) {
                        th = th2;
                        nativeFloatBuffer3 = null;
                        if (nativeFloatBuffer6 != null && nativeFloatBuffer6.validate()) {
                            nativeFloatBuffer6.destroyImmediate();
                        }
                        if (nativeFloatBuffer3 != null && nativeFloatBuffer3.validate()) {
                            nativeFloatBuffer3.destroyImmediate();
                        }
                        if (nativeFloatBuffer2 != null && nativeFloatBuffer2.validate()) {
                            nativeFloatBuffer2.destroyImmediate();
                        }
                        if (nativeFloatBuffer != null && nativeFloatBuffer.validate()) {
                            nativeFloatBuffer.destroyImmediate();
                        }
                        throw th;
                    }
                } catch (Throwable th3) {
                    th = th3;
                    nativeFloatBuffer2 = null;
                    nativeFloatBuffer3 = nativeFloatBuffer2;
                    if (nativeFloatBuffer6 != null) {
                    }
                    if (nativeFloatBuffer3 != null) {
                    }
                    if (nativeFloatBuffer2 != null) {
                    }
                    if (nativeFloatBuffer != null) {
                    }
                    throw th;
                }
            } else {
                nativeFloatBuffer2 = null;
                criticalDirectCppPointer = 0;
            }
            if (aabb != null) {
                Vector3 z10 = aabb.z();
                Vector3 u10 = aabb.u();
                NativeFloatBuffer nativeFloatBuffer7 = new NativeFloatBuffer(3);
                try {
                    nativeFloatBuffer5 = new NativeFloatBuffer(3);
                } catch (Throwable th4) {
                    th = th4;
                    nativeFloatBuffer3 = nativeFloatBuffer7;
                }
                try {
                    nativeFloatBuffer7.set(0, z10.getX(), z10.getY(), z10.getZ());
                    nativeFloatBuffer5.set(0, u10.getX(), u10.getY(), u10.getZ());
                    j10 = NativeFloatBuffer.getCriticalDirectCppPointer(nativeFloatBuffer7, 0L);
                    nativeFloatBuffer3 = nativeFloatBuffer7;
                    nativeFloatBuffer4 = nativeFloatBuffer5;
                    j11 = NativeFloatBuffer.getCriticalDirectCppPointer(nativeFloatBuffer5, 0L);
                } catch (Throwable th5) {
                    th = th5;
                    nativeFloatBuffer3 = nativeFloatBuffer7;
                    nativeFloatBuffer6 = nativeFloatBuffer5;
                    if (nativeFloatBuffer6 != null) {
                        nativeFloatBuffer6.destroyImmediate();
                    }
                    if (nativeFloatBuffer3 != null) {
                        nativeFloatBuffer3.destroyImmediate();
                    }
                    if (nativeFloatBuffer2 != null) {
                        nativeFloatBuffer2.destroyImmediate();
                    }
                    if (nativeFloatBuffer != null) {
                        nativeFloatBuffer.destroyImmediate();
                    }
                    throw th;
                }
            } else {
                nativeFloatBuffer3 = null;
                nativeFloatBuffer4 = null;
                j10 = 0;
                j11 = 0;
            }
        } catch (Throwable th6) {
            th = th6;
            nativeFloatBuffer = null;
            nativeFloatBuffer2 = null;
        }
        try {
            d dVar = ray.f31953b;
            Vector3 vector3 = dVar.f31957b;
            Vector3 vector32 = dVar.f31958c;
            nativeTraceRayBVH(NativeFloatBuffer.getCriticalDirectCppPointer(this.f79913b, 0L), NativeIntBuffer.getCriticalDirectCppPointer(this.f79917g, 0L), NativeFloatBuffer.getCriticalDirectCppPointer(this.f79914c, 0L), NativeFloatBuffer.getCriticalDirectCppPointer(this.f79918i, 0L), NativeIntBuffer.getCriticalDirectCppPointer(this.f79919j, 0L), NativeIntBuffer.getCriticalDirectCppPointer(this.f79920k, 0L), this.f79921l, criticalDirectCppPointer, vector3.getX(), vector3.getY(), vector3.getZ(), vector32.getX(), vector32.getY(), vector32.getZ(), maxDistance, backfaceCulling, rayMode.ordinal(), j10, j11, NativeFloatBuffer.getCriticalDirectCppPointer(nativeFloatBuffer, 0L));
            if (nativeFloatBuffer.get(0) <= 0.0f) {
                if (nativeFloatBuffer4 != null && nativeFloatBuffer4.validate()) {
                    nativeFloatBuffer4.destroyImmediate();
                }
                if (nativeFloatBuffer3 != null && nativeFloatBuffer3.validate()) {
                    nativeFloatBuffer3.destroyImmediate();
                }
                if (nativeFloatBuffer2 != null && nativeFloatBuffer2.validate()) {
                    nativeFloatBuffer2.destroyImmediate();
                }
                if (nativeFloatBuffer.validate()) {
                    nativeFloatBuffer.destroyImmediate();
                }
                return null;
            }
            C3593a c3593a = new C3593a();
            c3593a.v(new Vector3(nativeFloatBuffer.get(1), nativeFloatBuffer.get(2), nativeFloatBuffer.get(3)));
            c3593a.s(new Vector3(nativeFloatBuffer.get(4), nativeFloatBuffer.get(5), nativeFloatBuffer.get(6)));
            c3593a.setDistance(nativeFloatBuffer.get(7));
            c3593a.D(new Vector2(nativeFloatBuffer.get(8), nativeFloatBuffer.get(9)));
            c3593a.A(new Vector2(nativeFloatBuffer.get(10), nativeFloatBuffer.get(11)));
            c3593a.B(new Vector2(nativeFloatBuffer.get(12), nativeFloatBuffer.get(13)));
            c3593a.C(new Vector2(nativeFloatBuffer.get(14), nativeFloatBuffer.get(15)));
            c3593a.u(ray.f31953b.f31958c.m1249clone());
            if (nativeFloatBuffer4 != null && nativeFloatBuffer4.validate()) {
                nativeFloatBuffer4.destroyImmediate();
            }
            if (nativeFloatBuffer3 != null && nativeFloatBuffer3.validate()) {
                nativeFloatBuffer3.destroyImmediate();
            }
            if (nativeFloatBuffer2 != null && nativeFloatBuffer2.validate()) {
                nativeFloatBuffer2.destroyImmediate();
            }
            if (nativeFloatBuffer.validate()) {
                nativeFloatBuffer.destroyImmediate();
            }
            return c3593a;
        } catch (Throwable th7) {
            th = th7;
            nativeFloatBuffer6 = nativeFloatBuffer4;
            if (nativeFloatBuffer6 != null) {
            }
            if (nativeFloatBuffer3 != null) {
            }
            if (nativeFloatBuffer2 != null) {
            }
            if (nativeFloatBuffer != null) {
            }
            throw th;
        }
    }

    public void h() {
        synchronized (this.f79925p) {
            try {
                i();
                NativeFloatBuffer nativeFloatBuffer = this.f79913b;
                if (nativeFloatBuffer != null && nativeFloatBuffer.validate()) {
                    this.f79913b.destroyImmediate();
                }
                NativeFloatBuffer nativeFloatBuffer2 = this.f79914c;
                if (nativeFloatBuffer2 != null && nativeFloatBuffer2.validate()) {
                    this.f79914c.destroyImmediate();
                }
                NativeFloatBuffer nativeFloatBuffer3 = this.f79915d;
                if (nativeFloatBuffer3 != null && nativeFloatBuffer3.validate()) {
                    this.f79915d.destroyImmediate();
                }
                NativeFloatBuffer nativeFloatBuffer4 = this.f79916e;
                if (nativeFloatBuffer4 != null && nativeFloatBuffer4.validate()) {
                    this.f79916e.destroyImmediate();
                }
                NativeIntBuffer nativeIntBuffer = this.f79917g;
                if (nativeIntBuffer != null && nativeIntBuffer.validate()) {
                    this.f79917g.destroyImmediate();
                }
                this.f79913b = null;
                this.f79914c = null;
                this.f79915d = null;
                this.f79916e = null;
                this.f79917g = null;
                this.f79924o = null;
                this.f79923n = false;
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final void i() {
        NativeIntBuffer nativeIntBuffer = this.f79920k;
        if (nativeIntBuffer != null && nativeIntBuffer.validate()) {
            this.f79920k.destroyImmediate();
        }
        NativeIntBuffer nativeIntBuffer2 = this.f79919j;
        if (nativeIntBuffer2 != null && nativeIntBuffer2.validate()) {
            this.f79919j.destroyImmediate();
        }
        NativeFloatBuffer nativeFloatBuffer = this.f79918i;
        if (nativeFloatBuffer != null && nativeFloatBuffer.validate()) {
            this.f79918i.destroyImmediate();
        }
        this.f79920k = null;
        this.f79919j = null;
        this.f79918i = null;
        this.f79921l = 0;
        this.f79922m = 0;
    }

    public final boolean j() {
        if (this.f79923n) {
            d();
        }
        return (this.f79921l <= 0 || this.f79922m <= 0 || this.f79918i == null || this.f79919j == null || this.f79920k == null) ? false : true;
    }

    /* JADX WARN: Finally extract failed */
    public AABB k() {
        AABB aabb;
        NativeFloatBuffer nativeFloatBuffer;
        synchronized (this.f79925p) {
            try {
                if (this.f79924o == null && (nativeFloatBuffer = this.f79913b) != null && nativeFloatBuffer.capacity() >= 3) {
                    NativeFloatBuffer nativeFloatBuffer2 = new NativeFloatBuffer(10);
                    try {
                        Vertex.U(this.f79913b, nativeFloatBuffer2);
                        AABB aabb2 = new AABB();
                        aabb2.s(nativeFloatBuffer2);
                        this.f79924o = aabb2;
                        if (nativeFloatBuffer2.validate()) {
                            nativeFloatBuffer2.destroyImmediate();
                        }
                    } catch (Throwable th2) {
                        if (nativeFloatBuffer2.validate()) {
                            nativeFloatBuffer2.destroyImmediate();
                        }
                        throw th2;
                    }
                }
                aabb = this.f79924o;
            } catch (Throwable th3) {
                throw th3;
            }
        }
        return aabb;
    }

    public NativeFloatBuffer l() {
        NativeFloatBuffer nativeFloatBuffer;
        synchronized (this.f79925p) {
            nativeFloatBuffer = this.f79918i;
        }
        return nativeFloatBuffer;
    }

    public int m() {
        int i10;
        synchronized (this.f79925p) {
            i10 = this.f79921l;
        }
        return i10;
    }

    public NativeIntBuffer n() {
        NativeIntBuffer nativeIntBuffer;
        synchronized (this.f79925p) {
            nativeIntBuffer = this.f79919j;
        }
        return nativeIntBuffer;
    }

    public int o() {
        int i10;
        synchronized (this.f79925p) {
            i10 = this.f79922m;
        }
        return i10;
    }

    public NativeIntBuffer p() {
        NativeIntBuffer nativeIntBuffer;
        synchronized (this.f79925p) {
            nativeIntBuffer = this.f79920k;
        }
        return nativeIntBuffer;
    }

    public NativeFloatBuffer q() {
        return this.f79915d;
    }

    public q r() {
        return new q(this.f79915d);
    }

    public NativeFloatBuffer s() {
        return this.f79916e;
    }

    public q u() {
        return new q(this.f79916e);
    }

    public NativeIntBuffer v() {
        return this.f79917g;
    }

    public int w() {
        NativeIntBuffer nativeIntBuffer = this.f79917g;
        if (nativeIntBuffer == null) {
            return 0;
        }
        return nativeIntBuffer.capacity() / 3;
    }

    public n x() {
        return new n(this.f79917g);
    }

    public NativeFloatBuffer y() {
        return this.f79914c;
    }

    public p z() {
        return new p(this.f79914c);
    }
}
