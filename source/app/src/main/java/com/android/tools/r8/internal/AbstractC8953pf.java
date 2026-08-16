package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4554l1;
import java.util.Iterator;
import java.util.List;

public abstract class AbstractC8953pf {
    public abstract int a(double d10, double d11);

    public abstract int a(float f10, float f11);

    public abstract int a(int i10, int i11);

    public abstract int a(long j10, long j11);

    public abstract int a(com.android.tools.r8.graph.J2 j22, com.android.tools.r8.graph.J2 j23);

    public abstract int a(com.android.tools.r8.graph.L2 l22, com.android.tools.r8.graph.L2 l23);

    public abstract int a(com.android.tools.r8.graph.M2 m22, com.android.tools.r8.graph.M2 m23);

    public abstract <S> int a(S s10, S s11, InterfaceC5638Nq0<S> interfaceC5638Nq0);

    public abstract int a(Iterator it, Iterator it2, InterfaceC5465Kq0 interfaceC5465Kq0);

    public final int a(List list, List list2) {
        return a(list.iterator(), list2.iterator(), new VM0());
    }

    public abstract int a(boolean z10, boolean z11);

    public int a(C4554l1 c4554l1, C4554l1 c4554l12) {
        return a(c4554l1, c4554l12, (InterfaceC5638Nq0<C4554l1>) c4554l1.m());
    }

    public int a(com.android.tools.r8.graph.A2 a22, com.android.tools.r8.graph.A2 a23) {
        return a(a22, a23, (InterfaceC5638Nq0<com.android.tools.r8.graph.A2>) a22.m());
    }
}
