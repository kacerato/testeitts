package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.naming.AbstractC10992r0;

public class W8 extends W9 {

    public static final boolean f45312c = true;

    @Override
    public final int B() {
        return 190;
    }

    @Override
    public final void a(AbstractC9213rA abstractC9213rA) {
    }

    @Override
    public final int y() {
        return 1;
    }

    @Override
    public final void a(C4798y c4798y, com.android.tools.r8.graph.H5 h52, C4724u1 c4724u1, AbstractC5308Hz abstractC5308Hz, AbstractC5308Hz abstractC5308Hz2, AbstractC9723uD abstractC9723uD, AbstractC10992r0 abstractC10992r0, RR rr, EX ex) {
        ex.a(190);
    }

    @Override
    public final int a(W9 w92, AbstractC8953pf abstractC8953pf, com.android.tools.r8.graph.O o10) {
        com.android.tools.r8.graph.O.a(this, w92);
        return 0;
    }

    @Override
    public final void a(C6063Va c6063Va) {
        c6063Va.h();
    }

    @Override
    public final void a(C6382aB c6382aB, C9775ub c9775ub, C7607hb c7607hb) {
        C8774ob a10 = c9775ub.a();
        if (!f45312c && !a10.f51281b.a()) {
            throw new AssertionError();
        }
        int i10 = c9775ub.a(new C9108qb(c6382aB.f46457p.b().f37884J1)).f51280a;
        c6382aB.a(new P3(c6382aB.a(i10, 2, AbstractC8999pu0.k()), c6382aB.b(a10.f51280a, EnumC5592Mw0.f42461b)));
    }

    @Override
    public final H9 a(H9 h92, C4798y c4798y, O8 o82) {
        return h92.g().a(o82, c4798y.b().f37884J1);
    }
}
