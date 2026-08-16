package com.android.tools.r8.internal;

import java.util.Iterator;

public abstract class AbstractC9286rf extends AbstractC8953pf {

    public static final boolean f52084a = true;

    @Override
    public final int a(boolean z10, boolean z11) {
        return Boolean.compare(z10, z11);
    }

    @Override
    public final int a(int i10, int i11) {
        return Integer.compare(i10, i11);
    }

    @Override
    public final int a(long j10, long j11) {
        return Long.compare(j10, j11);
    }

    @Override
    public final int a(float f10, float f11) {
        return Float.compare(f10, f11);
    }

    @Override
    public final int a(double d10, double d11) {
        return Double.compare(d10, d11);
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x002a, code lost:
    
        return java.lang.Boolean.compare(r3.hasNext(), r4.hasNext());
     */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final int a(Iterator it, Iterator it2, InterfaceC5465Kq0 interfaceC5465Kq0) {
        int i10 = 0;
        while (i10 == 0 && it.hasNext() && it2.hasNext()) {
            i10 = interfaceC5465Kq0.a(it.next(), it2.next(), this);
        }
        return i10;
    }

    @Override
    public int a(com.android.tools.r8.graph.L2 l22, com.android.tools.r8.graph.L2 l23) {
        return l22.compareTo(l23);
    }

    @Override
    public final int a(com.android.tools.r8.graph.J2 j22, com.android.tools.r8.graph.J2 j23) {
        int i10;
        j22.getClass();
        boolean z10 = j22 instanceof com.android.tools.r8.graph.M2;
        int i11 = 3;
        if (z10) {
            i10 = 1;
        } else if (j22.p0()) {
            i10 = 2;
        } else {
            if (!com.android.tools.r8.graph.J2.f36495e && !j22.r0()) {
                throw new AssertionError();
            }
            i10 = 3;
        }
        j23.getClass();
        if (j23 instanceof com.android.tools.r8.graph.M2) {
            i11 = 1;
        } else if (j23.p0()) {
            i11 = 2;
        } else if (!com.android.tools.r8.graph.J2.f36495e && !j23.r0()) {
            throw new AssertionError();
        }
        int compare = Integer.compare(i10, i11);
        if (compare != 0) {
            return compare;
        }
        if (!f52084a && j22.getClass() != j23.getClass()) {
            throw new AssertionError();
        }
        if (z10) {
            return a(j22.o0(), j23.o0());
        }
        if (j22.p0()) {
            return a(j22.l0(), j23.l0());
        }
        return a(j22.n0(), j23.n0());
    }

    @Override
    public final int a(Object obj, Object obj2, InterfaceC5638Nq0 interfaceC5638Nq0) {
        C9120qf c9120qf = new C9120qf(obj, obj2, this);
        interfaceC5638Nq0.a(c9120qf);
        return c9120qf.f51841d;
    }
}
