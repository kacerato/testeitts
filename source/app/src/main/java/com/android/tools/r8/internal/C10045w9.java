package com.android.tools.r8.internal;

import com.android.tools.r8.graph.AbstractC4446f6;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.naming.AbstractC10992r0;
import java.util.ListIterator;

public final class C10045w9 extends W9 {

    public final com.android.tools.r8.graph.I2 f53427c;

    public C10045w9(com.android.tools.r8.graph.I2 i22) {
        this.f53427c = i22;
    }

    @Override
    public final int B() {
        return -1;
    }

    @Override
    public final int C() {
        return 204;
    }

    @Override
    public final boolean E() {
        return false;
    }

    @Override
    public final void a(C4798y c4798y, com.android.tools.r8.graph.H5 h52, C4724u1 c4724u1, AbstractC5308Hz abstractC5308Hz, AbstractC5308Hz abstractC5308Hz2, AbstractC9723uD abstractC9723uD, AbstractC10992r0 abstractC10992r0, RR rr, EX ex) {
        String a10 = rr.a(this.f53427c).a(abstractC10992r0);
        ex.a(C9663tt0.a(a10, 0, a10.length()));
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
        return this.f53427c.a(((C10045w9) w92).f53427c, abstractC8953pf);
    }

    @Override
    public final void a(AbstractC9213rA abstractC9213rA) {
        this.f53427c.a(abstractC9213rA);
    }

    @Override
    public final void a(C6063Va c6063Va) {
        c6063Va.a(this);
    }

    @Override
    public final void a(AbstractC4446f6 abstractC4446f6, ListIterator listIterator) {
        abstractC4446f6.a(this.f53427c);
    }

    @Override
    public final void a(C6382aB c6382aB, C9775ub c9775ub, C7607hb c7607hb) {
        com.android.tools.r8.graph.M2 m22 = c6382aB.f46457p.b().f37941R2;
        c9775ub.getClass();
        c6382aB.a(c9775ub.a(new C9108qb(m22)).f51280a, this.f53427c);
    }

    @Override
    public final H9 a(H9 h92, C4798y c4798y, O8 o82) {
        return h92.a(o82, c4798y.b().f37941R2);
    }
}
