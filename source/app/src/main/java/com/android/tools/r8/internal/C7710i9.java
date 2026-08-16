package com.android.tools.r8.internal;

import com.android.tools.r8.graph.AbstractC4446f6;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.naming.AbstractC10992r0;
import java.util.ListIterator;

public class C7710i9 extends W9 implements InterfaceC5081Eb {

    public final com.android.tools.r8.graph.M2 f48854c;

    public final boolean f48855d;

    public C7710i9(com.android.tools.r8.graph.M2 m22) {
        this.f48854c = m22;
        this.f48855d = false;
    }

    @Override
    public final int B() {
        return 192;
    }

    @Override
    public final boolean F() {
        return true;
    }

    @Override
    public final boolean U() {
        return true;
    }

    public W9 a(com.android.tools.r8.graph.M2 m22) {
        return new C7710i9(m22, this.f48855d);
    }

    @Override
    public final C7710i9 b() {
        return this;
    }

    @Override
    public com.android.tools.r8.graph.M2 getType() {
        return this.f48854c;
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

    public C7710i9(com.android.tools.r8.graph.M2 m22, boolean z10) {
        this.f48854c = m22;
        this.f48855d = z10;
    }

    @Override
    public final int a(W9 w92, AbstractC8953pf abstractC8953pf, com.android.tools.r8.graph.O o10) {
        com.android.tools.r8.graph.M2 m22 = this.f48854c;
        com.android.tools.r8.graph.M2 m23 = ((C7710i9) w92).f48854c;
        m22.getClass();
        return abstractC8953pf.a(m22, m23);
    }

    @Override
    public final void a(AbstractC9213rA abstractC9213rA) {
        com.android.tools.r8.graph.M2 m22 = this.f48854c;
        m22.getClass();
        abstractC9213rA.a(m22);
    }

    @Override
    public final void a(C4798y c4798y, com.android.tools.r8.graph.H5 h52, C4724u1 c4724u1, AbstractC5308Hz abstractC5308Hz, AbstractC5308Hz abstractC5308Hz2, AbstractC9723uD abstractC9723uD, AbstractC10992r0 abstractC10992r0, RR rr, EX ex) {
        ex.c(192, abstractC10992r0.d(abstractC5308Hz.c(abstractC5308Hz2, this.f48854c)));
    }

    @Override
    public final void a(C6063Va c6063Va) {
        c6063Va.a(this);
    }

    @Override
    public void a(AbstractC4446f6 abstractC4446f6, ListIterator listIterator) {
        abstractC4446f6.a(this.f48854c, this.f48855d);
    }

    @Override
    public final void a(C6382aB c6382aB, C9775ub c9775ub, C7607hb c7607hb) {
        c9775ub.a();
        a(c6382aB, c9775ub.a(new C9108qb(this.f48854c)));
    }

    public void a(C6382aB c6382aB, C8774ob c8774ob) {
        c6382aB.a(c8774ob.f51280a, this.f48854c, false);
    }

    @Override
    public final H9 a(H9 h92, C4798y c4798y, O8 o82) {
        return h92.a(c4798y, o82, c4798y.b().f38068i2).a(o82, this.f48854c);
    }
}
