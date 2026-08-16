package com.android.tools.r8.internal;

import com.android.tools.r8.graph.AbstractC4446f6;
import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.naming.AbstractC10992r0;
import java.util.ListIterator;

public final class S9 extends W9 {

    public final com.android.tools.r8.graph.M2 f44137c;

    public S9(com.android.tools.r8.graph.M2 m22) {
        this.f44137c = m22;
    }

    @Override
    public final int B() {
        return -1;
    }

    @Override
    public final int C() {
        return 200;
    }

    @Override
    public final boolean E() {
        return false;
    }

    @Override
    public final int a(W9 w92, AbstractC8953pf abstractC8953pf, com.android.tools.r8.graph.O o10) {
        com.android.tools.r8.graph.M2 m22 = this.f44137c;
        com.android.tools.r8.graph.M2 m23 = ((S9) w92).f44137c;
        m22.getClass();
        return abstractC8953pf.a(m22, m23);
    }

    @Override
    public final int y() {
        return 3;
    }

    @Override
    public final boolean z() {
        return true;
    }

    @Override
    public final void a(AbstractC9213rA abstractC9213rA) {
        com.android.tools.r8.graph.M2 m22 = this.f44137c;
        m22.getClass();
        abstractC9213rA.a(m22);
    }

    @Override
    public final void a(C4798y c4798y, com.android.tools.r8.graph.H5 h52, C4724u1 c4724u1, AbstractC5308Hz abstractC5308Hz, AbstractC5308Hz abstractC5308Hz2, AbstractC9723uD abstractC9723uD, AbstractC10992r0 abstractC10992r0, RR rr, EX ex) {
        C4554l1 a10 = abstractC9723uD.a(abstractC5308Hz.c(abstractC5308Hz2, this.f44137c));
        ex.a(178, abstractC10992r0.d(a10.f38297f), abstractC10992r0.a(a10).toString(), abstractC10992r0.c(a10.f37449i).toString());
    }

    @Override
    public final void a(AbstractC4446f6 abstractC4446f6, ListIterator listIterator) {
        abstractC4446f6.b(this.f44137c);
    }

    @Override
    public final void a(C6382aB c6382aB, C9775ub c9775ub, C7607hb c7607hb) {
        com.android.tools.r8.graph.M2 m22 = c6382aB.f46457p.b().f37884J1;
        c9775ub.getClass();
        c6382aB.a(c6382aB.f46462u.g(), new C9389sD(this.f44137c, c6382aB.a(c9775ub.a(new C9108qb(m22)).f51280a, 2, AbstractC8999pu0.k())));
    }

    @Override
    public final H9 a(H9 h92, C4798y c4798y, O8 o82) {
        return h92.a(o82, c4798y.b().f37884J1);
    }

    @Override
    public final void a(C6063Va c6063Va) {
        c6063Va.a();
        c6063Va.f45094e.append("initclass ");
        c6063Va.b(this.f44137c);
    }
}
