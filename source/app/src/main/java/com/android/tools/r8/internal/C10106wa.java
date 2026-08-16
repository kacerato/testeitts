package com.android.tools.r8.internal;

import com.android.tools.r8.graph.AbstractC4446f6;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.naming.AbstractC10992r0;
import java.util.ListIterator;

public class C10106wa extends W9 implements InterfaceC5081Eb {

    public final com.android.tools.r8.graph.M2 f53523c;

    public C8103ka f53524d;

    public C10106wa(com.android.tools.r8.graph.M2 m22) {
        this.f53523c = m22;
        this.f53524d = null;
    }

    @Override
    public final int B() {
        return 187;
    }

    @Override
    public final boolean U() {
        return true;
    }

    @Override
    public final H9 a(H9 h92, C4798y c4798y, O8 o82) {
        if (this.f53524d == null) {
            this.f53524d = new C8103ka();
        }
        C8103ka c8103ka = this.f53524d;
        com.android.tools.r8.graph.M2 m22 = this.f53523c;
        int i10 = InterfaceC8008jy.f49436a;
        return h92.a(o82, new C7167ev0(m22, c8103ka));
    }

    @Override
    public com.android.tools.r8.graph.M2 getType() {
        return this.f53523c;
    }

    @Override
    public final C10106wa p() {
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

    public C10106wa(com.android.tools.r8.graph.M2 m22, C8103ka c8103ka) {
        this.f53523c = m22;
        this.f53524d = c8103ka;
    }

    @Override
    public final W9 a(com.android.tools.r8.graph.M2 m22) {
        return new C10106wa(m22, this.f53524d);
    }

    @Override
    public final int a(W9 w92, AbstractC8953pf abstractC8953pf, com.android.tools.r8.graph.O o10) {
        com.android.tools.r8.graph.M2 m22 = this.f53523c;
        com.android.tools.r8.graph.M2 m23 = ((C10106wa) w92).f53523c;
        m22.getClass();
        return abstractC8953pf.a(m22, m23);
    }

    @Override
    public final void a(AbstractC9213rA abstractC9213rA) {
        com.android.tools.r8.graph.M2 m22 = this.f53523c;
        m22.getClass();
        abstractC9213rA.a(m22);
    }

    @Override
    public final void a(C4798y c4798y, com.android.tools.r8.graph.H5 h52, C4724u1 c4724u1, AbstractC5308Hz abstractC5308Hz, AbstractC5308Hz abstractC5308Hz2, AbstractC9723uD abstractC9723uD, AbstractC10992r0 abstractC10992r0, RR rr, EX ex) {
        ex.c(187, abstractC10992r0.d(abstractC5308Hz.c(abstractC5308Hz2, getType())));
    }

    @Override
    public final void a(C6063Va c6063Va) {
        c6063Va.a(this);
    }

    @Override
    public final void a(AbstractC4446f6 abstractC4446f6, ListIterator listIterator) {
        abstractC4446f6.d(this.f53523c);
    }

    @Override
    public final void a(C6382aB c6382aB, C9775ub c9775ub, C7607hb c7607hb) {
        com.android.tools.r8.graph.M2 m22 = this.f53523c;
        c9775ub.getClass();
        int i10 = c9775ub.a(new C9108qb(m22)).f51280a;
        com.android.tools.r8.graph.M2 m23 = this.f53523c;
        c6382aB.getClass();
        c6382aB.a(c6382aB.f46462u.g(), new C9603tZ(m23, c6382aB.a(i10, 2, AbstractC8999pu0.a(m23, C8854p10.b(), (C4798y<?>) c6382aB.f46457p))));
    }
}
