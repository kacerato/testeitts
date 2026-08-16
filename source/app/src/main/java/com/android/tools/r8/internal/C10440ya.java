package com.android.tools.r8.internal;

import com.android.tools.r8.graph.AbstractC4446f6;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.naming.AbstractC10992r0;
import java.util.ListIterator;

public final class C10440ya extends W9 implements InterfaceC5081Eb {

    public final com.android.tools.r8.graph.M2 f54041c;

    public final int f54042d;

    public C10440ya(int i10, com.android.tools.r8.graph.M2 m22) {
        this.f54041c = m22;
        this.f54042d = i10;
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
    public final W9 a(com.android.tools.r8.graph.M2 m22) {
        return new C10440ya(this.f54042d, m22);
    }

    @Override
    public final com.android.tools.r8.graph.M2 getType() {
        return this.f54041c;
    }

    @Override
    public final InterfaceC5081Eb x() {
        return this;
    }

    @Override
    public final int y() {
        throw new C5417Jv0();
    }

    @Override
    public final boolean z() {
        return true;
    }

    @Override
    public final int a(W9 w92, AbstractC8953pf abstractC8953pf, com.android.tools.r8.graph.O o10) {
        com.android.tools.r8.graph.M2 m22 = this.f54041c;
        com.android.tools.r8.graph.M2 m23 = ((C10440ya) w92).f54041c;
        m22.getClass();
        return abstractC8953pf.a(m22, m23);
    }

    @Override
    public final void a(AbstractC9213rA abstractC9213rA) {
        com.android.tools.r8.graph.M2 m22 = this.f54041c;
        m22.getClass();
        abstractC9213rA.a(m22);
    }

    @Override
    public final void a(C4798y c4798y, com.android.tools.r8.graph.H5 h52, C4724u1 c4724u1, AbstractC5308Hz abstractC5308Hz, AbstractC5308Hz abstractC5308Hz2, AbstractC9723uD abstractC9723uD, AbstractC10992r0 abstractC10992r0, RR rr, EX ex) {
        throw new C5417Jv0();
    }

    @Override
    public final void a(AbstractC4446f6 abstractC4446f6, ListIterator listIterator) {
        abstractC4446f6.f(this.f54041c);
    }

    @Override
    public final void a(C6382aB c6382aB, C9775ub c9775ub, C7607hb c7607hb) {
        com.android.tools.r8.graph.M2 m22 = this.f54041c;
        c9775ub.getClass();
        int i10 = c9775ub.a(new C9108qb(m22)).f51280a;
        com.android.tools.r8.graph.M2 m23 = this.f54041c;
        int i11 = this.f54042d;
        c6382aB.getClass();
        c6382aB.a(c6382aB.f46462u.g(), new C9937vZ(m23, i11, c6382aB.a(i10, 2, AbstractC8999pu0.a(m23, C8854p10.b(), (C4798y<?>) c6382aB.f46457p))));
    }

    @Override
    public final H9 a(H9 h92, C4798y c4798y, O8 o82) {
        return h92.a(o82, this.f54041c);
    }

    @Override
    public final void a(C6063Va c6063Va) {
        c6063Va.a();
        c6063Va.f45094e.append("newunboxedenum ");
        c6063Va.a(this.f54041c);
    }
}
