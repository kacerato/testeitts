package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.naming.AbstractC10992r0;

public class A9 extends W9 {

    public final com.android.tools.r8.graph.L2 f38547c;

    public A9(com.android.tools.r8.graph.L2 l22) {
        this.f38547c = l22;
    }

    @Override
    public final int B() {
        return -1;
    }

    @Override
    public final int C() {
        return 201;
    }

    @Override
    public final boolean E() {
        return false;
    }

    public com.android.tools.r8.graph.L2 V() {
        return this.f38547c;
    }

    @Override
    public final int a(W9 w92, AbstractC8953pf abstractC8953pf, com.android.tools.r8.graph.O o10) {
        com.android.tools.r8.graph.L2 l22 = this.f38547c;
        com.android.tools.r8.graph.L2 l23 = w92.e().f38547c;
        l22.getClass();
        return abstractC8953pf.a(l22, l23);
    }

    @Override
    public final A9 e() {
        return this;
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
        this.f38547c.a(abstractC9213rA);
    }

    @Override
    public final void a(C4798y c4798y, com.android.tools.r8.graph.H5 h52, C4724u1 c4724u1, AbstractC5308Hz abstractC5308Hz, AbstractC5308Hz abstractC5308Hz2, AbstractC9723uD abstractC9723uD, AbstractC10992r0 abstractC10992r0, RR rr, EX ex) {
        ex.a(this.f38547c.toString());
    }

    @Override
    public final void a(C6063Va c6063Va) {
        c6063Va.a(this);
    }

    @Override
    public final void a(C6382aB c6382aB, C9775ub c9775ub, C7607hb c7607hb) {
        com.android.tools.r8.graph.M2 m22 = c6382aB.f46457p.b().f38052g2;
        c9775ub.getClass();
        int i10 = c9775ub.a(new C9108qb(m22)).f51280a;
        c6382aB.a(new C9960vh(c6382aB.a(i10, 2, AbstractC8999pu0.a((C4798y<?>) c6382aB.f46457p, C8854p10.b())), this.f38547c));
    }

    @Override
    public final H9 a(H9 h92, C4798y c4798y, O8 o82) {
        return h92.a(o82, c4798y.b().f38052g2);
    }
}
