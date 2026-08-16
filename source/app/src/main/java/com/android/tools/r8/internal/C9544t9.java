package com.android.tools.r8.internal;

import com.android.tools.r8.graph.AbstractC4446f6;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.naming.AbstractC10992r0;
import java.util.ListIterator;

public class C9544t9 extends W9 implements InterfaceC5081Eb {

    public static final boolean f52550e = true;

    public final com.android.tools.r8.graph.M2 f52551c;

    public final boolean f52552d;

    public C9544t9(com.android.tools.r8.graph.M2 m22, boolean z10) {
        boolean z11 = f52550e;
        if (!z11 && m22.P0()) {
            throw new AssertionError();
        }
        if (!z11 && m22.S0()) {
            throw new AssertionError();
        }
        this.f52551c = m22;
        this.f52552d = z10;
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
    public final boolean U() {
        return true;
    }

    @Override
    public final int a(W9 w92, AbstractC8953pf abstractC8953pf, com.android.tools.r8.graph.O o10) {
        com.android.tools.r8.graph.M2 m22 = this.f52551c;
        com.android.tools.r8.graph.M2 m23 = ((C9544t9) w92).f52551c;
        m22.getClass();
        return abstractC8953pf.a(m22, m23);
    }

    @Override
    public final C9544t9 c() {
        return this;
    }

    @Override
    public com.android.tools.r8.graph.M2 getType() {
        return this.f52551c;
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
    public final void a(AbstractC9213rA abstractC9213rA) {
        com.android.tools.r8.graph.M2 m22 = this.f52551c;
        m22.getClass();
        abstractC9213rA.a(m22);
    }

    @Override
    public final W9 a(com.android.tools.r8.graph.M2 m22) {
        return new C9544t9(m22, false);
    }

    @Override
    public final void a(C4798y c4798y, com.android.tools.r8.graph.H5 h52, C4724u1 c4724u1, AbstractC5308Hz abstractC5308Hz, AbstractC5308Hz abstractC5308Hz2, AbstractC9723uD abstractC9723uD, AbstractC10992r0 abstractC10992r0, RR rr, EX ex) {
        ex.a(C9663tt0.d(a(abstractC5308Hz, abstractC5308Hz2, abstractC10992r0)));
    }

    @Override
    public final void a(C6063Va c6063Va) {
        c6063Va.a(this);
    }

    public final String a(AbstractC5308Hz abstractC5308Hz, AbstractC5308Hz abstractC5308Hz2, AbstractC10992r0 abstractC10992r0) {
        com.android.tools.r8.graph.M2 c10 = abstractC5308Hz.c(abstractC5308Hz2, this.f52551c);
        char W02 = c10.W0();
        if (W02 != 'L' && W02 != '[') {
            throw new C5417Jv0("Unexpected type in const-class: " + ((Object) c10));
        }
        return abstractC10992r0.d(c10);
    }

    @Override
    public final void a(AbstractC4446f6 abstractC4446f6, ListIterator listIterator) {
        abstractC4446f6.a(this.f52551c, listIterator, this.f52552d);
    }

    @Override
    public final void a(C6382aB c6382aB, C9775ub c9775ub, C7607hb c7607hb) {
        com.android.tools.r8.graph.M2 m22 = c6382aB.f46457p.b().f38180w2;
        c9775ub.getClass();
        c6382aB.a(c9775ub.a(new C9108qb(m22)).f51280a, this.f52551c);
    }

    @Override
    public final H9 a(H9 h92, C4798y c4798y, O8 o82) {
        return h92.a(o82, c4798y.b().f38180w2);
    }
}
