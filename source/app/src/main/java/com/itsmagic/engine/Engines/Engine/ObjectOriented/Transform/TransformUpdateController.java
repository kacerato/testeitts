package com.itsmagic.engine.Engines.Engine.ObjectOriented.Transform;

import K8.a;
import Lc.g;
import Mc.b;
import com.itsmagic.engine.Engines.Engine.ObjectOriented.Transform.Transform;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.LongBuffer;
import p6.d;

public final class TransformUpdateController {

    public static final int f79444a = 500;

    public static ByteBuffer f79449f;

    public static LongBuffer f79450g;

    public static ByteBuffer f79451h;

    public static LongBuffer f79452i;

    public static boolean f79453j;

    public static int f79454k;

    public static final b<Transform> f79445b = new b<>(512);

    public static final b<Transform> f79446c = new b<>(512);

    public static final g<Transform> f79447d = new g<>(512);

    public static final g<Transform.D> f79448e = new g<>(128);

    public static long f79455l = 1;

    static {
        System.loadLibrary("native-transform");
    }

    public static void A() {
        a.G();
    }

    public static long a() {
        A();
        long j10 = f79455l;
        f79455l = 1 + j10;
        return j10;
    }

    public static long b() {
        A();
        return nativeCreateTransform();
    }

    public static void c(long handle) {
        A();
        if (handle != 0) {
            nativeDestroyTransform(handle);
            f79447d.e(handle);
        }
    }

    public static void d(int required) {
        LongBuffer longBuffer = f79452i;
        int i10 = 0;
        int capacity = longBuffer != null ? longBuffer.capacity() : 0;
        if (required > capacity) {
            i10 = capacity;
            while (i10 < required) {
                i10 += 500;
            }
        } else {
            int i11 = capacity;
            while (true) {
                int i12 = i11 - 500;
                if (i12 < required || i12 < 500) {
                    break;
                } else {
                    i11 -= 500;
                }
            }
            if (required != 0) {
                i10 = i11;
            }
        }
        if (i10 == capacity) {
            LongBuffer longBuffer2 = f79452i;
            if (longBuffer2 != null) {
                longBuffer2.clear();
                return;
            }
            return;
        }
        if (i10 <= 0) {
            f79451h = null;
            f79452i = null;
        } else {
            ByteBuffer order = ByteBuffer.allocateDirect(i10 * 8).order(ByteOrder.nativeOrder());
            f79451h = order;
            f79452i = order.asLongBuffer();
        }
    }

    public static void e(int required) {
        LongBuffer longBuffer = f79450g;
        int i10 = 0;
        int capacity = longBuffer != null ? longBuffer.capacity() : 0;
        if (required > capacity) {
            i10 = capacity;
            while (i10 < required) {
                i10 += 500;
            }
        } else {
            int i11 = capacity;
            while (true) {
                int i12 = i11 - 500;
                if (i12 < required || i12 < 500) {
                    break;
                } else {
                    i11 -= 500;
                }
            }
            if (required != 0) {
                i10 = i11;
            }
        }
        if (i10 == capacity) {
            LongBuffer longBuffer2 = f79450g;
            if (longBuffer2 != null) {
                longBuffer2.clear();
                return;
            }
            return;
        }
        if (i10 <= 0) {
            f79449f = null;
            f79450g = null;
        } else {
            ByteBuffer order = ByteBuffer.allocateDirect(i10 * 8).order(ByteOrder.nativeOrder());
            f79449f = order;
            f79450g = order.asLongBuffer();
        }
    }

    public static long f(long handle, float[] outMatrix) {
        A();
        return nativeFetchGlobalMatrix(handle, a.k(), outMatrix);
    }

    public static void g(long registrationId, float[] outMatrix) {
        A();
        nativeFetchHierarchyObserverMatrix(registrationId, a.k(), outMatrix);
    }

    public static long h(long handle, float[] outMatrix) {
        A();
        return nativeFetchLocalMatrix(handle, a.k(), outMatrix);
    }

    public static void i(long ancestorHandle, long childHandle, float[] outMatrix) {
        A();
        nativeFetchRelativeMatrix(ancestorHandle, childHandle, a.k(), outMatrix);
    }

    /* JADX WARN: Finally extract failed */
    public static int j() {
        b<Transform> bVar;
        int i10;
        LongBuffer longBuffer;
        LongBuffer longBuffer2;
        A();
        if (!a.r() || f79453j) {
            return 0;
        }
        f79453j = true;
        f79454k = 0;
        try {
            p6.g L12 = d.E1() ? d.L1("Transform sync") : null;
            int i11 = 0;
            while (true) {
                try {
                    bVar = f79445b;
                    if (i11 >= bVar.size()) {
                        break;
                    }
                    bVar.get(i11).X3();
                    i11++;
                } finally {
                }
            }
            bVar.clear();
            d.J1(L12);
            L12 = d.E1() ? d.L1("Matrix calc") : null;
            try {
                f79454k = nativeFlushObserved(a.k());
                d.J1(L12);
                L12 = d.E1() ? d.L1("Extract handlers") : null;
                int nativeGetChangedObservedCount = nativeGetChangedObservedCount();
                e(nativeGetChangedObservedCount);
                if (nativeGetChangedObservedCount <= 0 || (longBuffer2 = f79450g) == null) {
                    i10 = 0;
                } else {
                    longBuffer2.clear();
                    i10 = nativeFillChangedObservedBuffer(f79450g);
                }
                int nativeGetChangedHierarchyObserverCount = nativeGetChangedHierarchyObserverCount();
                d(nativeGetChangedHierarchyObserverCount);
                if (nativeGetChangedHierarchyObserverCount > 0 && (longBuffer = f79452i) != null) {
                    longBuffer.clear();
                    nativeGetChangedHierarchyObserverCount = nativeFillChangedHierarchyObserverBuffer(f79452i);
                }
                if (i10 <= 0 && nativeGetChangedHierarchyObserverCount <= 0) {
                    return f79454k;
                }
                L12 = d.E1() ? d.L1("Transform listeners") : null;
                for (int i12 = 0; i12 < i10; i12++) {
                    try {
                        Transform u10 = f79447d.u(f79450g.get(i12));
                        if (u10 != null) {
                            try {
                                if (u10.O1()) {
                                    u10.M();
                                }
                            } catch (Throwable th2) {
                                th2.printStackTrace();
                            }
                        }
                    } catch (Throwable th3) {
                        throw th3;
                    }
                }
                for (int i13 = 0; i13 < nativeGetChangedHierarchyObserverCount; i13++) {
                    Transform.D u11 = f79448e.u(f79452i.get(i13));
                    if (u11 != null) {
                        try {
                            u11.f();
                        } catch (Throwable th4) {
                            th4.printStackTrace();
                        }
                    }
                }
                d.J1(L12);
                return f79454k;
            } finally {
                d.J1(L12);
            }
        } finally {
            f79453j = false;
        }
    }

    public static void k(long handle) {
        A();
        if (handle != 0) {
            nativeForceInvalidateGlobal(handle, a.k());
        }
    }

    public static void l(long handle) {
        A();
        if (handle != 0) {
            nativeForceInvalidateLocal(handle, a.k());
        }
    }

    public static void m(long handle) {
        A();
        if (handle != 0) {
            nativeKillMatrix(handle, a.k());
        }
    }

    public static void n(Transform.D registration) {
        if (registration == null) {
            throw new NullPointerException("registration can`t be null");
        }
        A();
        f79448e.td(registration.j(), registration);
        nativeRegisterHierarchyObserver(registration.j(), registration.h(), registration.m(), registration.n(), registration.o(), registration.p(), registration.i(), registration.k(), registration.l());
    }

    private static native long nativeCreateTransform();

    private static native void nativeDestroyTransform(long handle);

    private static native long nativeFetchGlobalMatrix(long handle, int frameId, float[] outMatrix);

    private static native void nativeFetchHierarchyObserverMatrix(long registrationId, int frameId, float[] outMatrix);

    private static native long nativeFetchLocalMatrix(long handle, int frameId, float[] outMatrix);

    private static native void nativeFetchRelativeMatrix(long ancestorHandle, long childHandle, int frameId, float[] outMatrix);

    private static native int nativeFillChangedHierarchyObserverBuffer(LongBuffer buffer);

    private static native int nativeFillChangedObservedBuffer(LongBuffer buffer);

    private static native int nativeFlushObserved(int frameId);

    private static native void nativeForceInvalidateGlobal(long handle, int frameId);

    private static native void nativeForceInvalidateLocal(long handle, int frameId);

    private static native int nativeGetChangedHierarchyObserverCount();

    private static native int nativeGetChangedObservedCount();

    private static native void nativeKillMatrix(long handle, int frameId);

    private static native void nativeRegisterHierarchyObserver(long registrationId, long observedHandle, long scopeParentHandle, boolean ignoreScaleOfScopeParent, boolean normalizeLikeColliderShape, boolean preserveChildScaleWhenScopeParentMatches, float positionTolerance, float rotationToleranceDegrees, float scaleTolerance);

    private static native void nativeSetObserved(long handle, boolean observed);

    private static native void nativeSyncTransform(long handle, int frameId, long parentHandle, int state, boolean ignoreParent, boolean group, float px, float py, float pz, float rw, float rx, float ry, float rz, float sx, float sy, float sz);

    private static native void nativeUnregisterHierarchyObserver(long registrationId);

    private static native long nativeUpdateGlobalState(long handle, int frameId);

    private static native long nativeUpdateLocalState(long handle, int frameId);

    public static void o(Transform transform) {
        if (transform == null) {
            throw new NullPointerException("Transform can`t be null");
        }
        A();
        long T10 = transform.T();
        f79446c.add(transform);
        f79447d.td(T10, transform);
        nativeSetObserved(T10, true);
        p(transform);
    }

    public static void p(Transform transform) {
        if (transform == null) {
            throw new NullPointerException("Transform can`t be null");
        }
        A();
        f79445b.add(transform);
    }

    public static void q(Transform transform) {
        if (transform == null) {
            throw new NullPointerException("Transform can`t be null");
        }
        b<Transform> bVar = f79445b;
        synchronized (bVar) {
            bVar.add(transform);
        }
    }

    public static long r(Transform transform) {
        if (transform == null) {
            throw new NullPointerException("Transform can`t be null");
        }
        A();
        return transform.W3();
    }

    public static void s(long handle, int modifiedFrameId, long parentHandle, int state, boolean ignoreParent, boolean group, float px, float py, float pz, float rw, float rx, float ry, float rz, float sx, float sy, float sz) {
        A();
        nativeSyncTransform(handle, modifiedFrameId, parentHandle, state, ignoreParent, group, px, py, pz, rw, rx, ry, rz, sx, sy, sz);
    }

    public static int t(long packed) {
        return (int) (packed >> 32);
    }

    public static int u(long packed) {
        return (int) packed;
    }

    public static void v(Transform.D registration) {
        if (registration == null) {
            throw new NullPointerException("registration can`t be null");
        }
        A();
        f79448e.e(registration.j());
        nativeUnregisterHierarchyObserver(registration.j());
    }

    public static void w(Transform transform) {
        if (transform == null) {
            throw new NullPointerException("Transform can`t be null");
        }
        A();
        f79446c.remove(transform);
        long n02 = transform.n0();
        if (n02 != 0) {
            f79447d.e(n02);
            nativeSetObserved(n02, false);
        }
    }

    public static void x(Transform transform) {
        if (transform == null) {
            throw new NullPointerException("Transform can`t be null");
        }
        A();
        f79445b.remove(transform);
    }

    public static long y(long handle) {
        A();
        return nativeUpdateGlobalState(handle, a.k());
    }

    public static long z(long handle) {
        A();
        return nativeUpdateLocalState(handle, a.k());
    }
}
