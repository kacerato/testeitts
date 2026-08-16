package com.android.tools.r8.internal;

import com.android.tools.r8.graph.AbstractC4446f6;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.naming.AbstractC10992r0;
import java.util.ListIterator;

public class V9 extends W9 implements InterfaceC5081Eb {

    public final com.android.tools.r8.graph.M2 f44984c;

    public V9(com.android.tools.r8.graph.M2 m22) {
        this.f44984c = m22;
    }

    @Override
    public final int B() {
        return 193;
    }

    @Override
    public final boolean U() {
        return true;
    }

    @Override
    public final W9 a(com.android.tools.r8.graph.M2 m22) {
        return new V9(m22);
    }

    @Override
    public com.android.tools.r8.graph.M2 getType() {
        return this.f44984c;
    }

    @Override
    public final V9 i() {
        return this;
    }

    @Override
    public final InterfaceC5081Eb x() {
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
    public final int a(W9 w92, AbstractC8953pf abstractC8953pf, com.android.tools.r8.graph.O o10) {
        com.android.tools.r8.graph.M2 m22 = this.f44984c;
        com.android.tools.r8.graph.M2 m23 = w92.i().f44984c;
        m22.getClass();
        return abstractC8953pf.a(m22, m23);
    }

    @Override
    public final void a(AbstractC9213rA abstractC9213rA) {
        com.android.tools.r8.graph.M2 m22 = this.f44984c;
        m22.getClass();
        abstractC9213rA.a(m22);
    }

    @Override
    public final void a(C4798y c4798y, com.android.tools.r8.graph.H5 h52, C4724u1 c4724u1, AbstractC5308Hz abstractC5308Hz, AbstractC5308Hz abstractC5308Hz2, AbstractC9723uD abstractC9723uD, AbstractC10992r0 abstractC10992r0, RR rr, EX ex) {
        ex.c(193, abstractC10992r0.d(abstractC5308Hz.c(abstractC5308Hz2, getType())));
    }

    @Override
    public final void a(C6063Va c6063Va) {
        c6063Va.a(this);
    }

    @Override
    public final void a(AbstractC4446f6 abstractC4446f6, ListIterator listIterator) {
        abstractC4446f6.c(this.f44984c);
    }

    @Override
    public final void a(C6382aB c6382aB, C9775ub c9775ub, C7607hb c7607hb) {
        int i10 = c9775ub.a().f51280a;
        int i11 = c9775ub.a(new C9108qb(c6382aB.f46457p.b().f37849E1)).f51280a;
        com.android.tools.r8.graph.M2 m22 = this.f44984c;
        c6382aB.a(c6382aB.f46462u.g(), new C8391mE(c6382aB.a(i11, 2, AbstractC8999pu0.k()), c6382aB.b(i10, EnumC5592Mw0.f42461b), m22));
    }

    @Override
    public final H9 a(H9 h92, C4798y c4798y, O8 o82) {
        C4724u1 b10 = c4798y.b();
        return h92.a(c4798y, o82, b10.f38068i2).a(o82, b10.f37884J1);
    }
}
