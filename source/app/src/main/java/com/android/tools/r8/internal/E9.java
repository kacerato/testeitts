package com.android.tools.r8.internal;

import com.android.tools.r8.graph.AbstractC4446f6;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.naming.AbstractC10992r0;
import java.util.ListIterator;

public final class E9 extends W9 {

    public static final boolean f39768e = true;

    public final com.android.tools.r8.graph.J2 f39769c;

    public final ZY f39770d;

    public E9(com.android.tools.r8.graph.J2 j22, ZY zy) {
        this.f39769c = j22;
        this.f39770d = zy;
    }

    @Override
    public final int B() {
        return -1;
    }

    @Override
    public final int C() {
        return 202;
    }

    @Override
    public final boolean E() {
        return false;
    }

    @Override
    public final int a(W9 w92, AbstractC8953pf abstractC8953pf, com.android.tools.r8.graph.O o10) {
        return abstractC8953pf.a(this.f39769c, ((E9) w92).f39769c);
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
        abstractC9213rA.a(this.f39769c);
    }

    @Override
    public final void a(C4798y c4798y, com.android.tools.r8.graph.H5 h52, C4724u1 c4724u1, AbstractC5308Hz abstractC5308Hz, AbstractC5308Hz abstractC5308Hz2, AbstractC9723uD abstractC9723uD, AbstractC10992r0 abstractC10992r0, RR rr, EX ex) {
        throw new C5417Jv0("CfDexItemBasedConstString instructions should always be rewritten into CfConstString");
    }

    @Override
    public final void a(C6063Va c6063Va) {
        c6063Va.a(this);
    }

    @Override
    public final void a(AbstractC4446f6 abstractC4446f6, ListIterator listIterator) {
        if (this.f39770d.e()) {
            if (!f39768e) {
                com.android.tools.r8.graph.J2 j22 = this.f39769c;
                j22.getClass();
                if (!(j22 instanceof com.android.tools.r8.graph.M2)) {
                    throw new AssertionError();
                }
            }
            abstractC4446f6.f(this.f39769c.o0());
        }
    }

    @Override
    public final void a(C6382aB c6382aB, C9775ub c9775ub, C7607hb c7607hb) {
        com.android.tools.r8.graph.M2 m22 = c6382aB.f46457p.b().f38052g2;
        c9775ub.getClass();
        int i10 = c9775ub.a(new C9108qb(m22)).f51280a;
        c6382aB.a(new C9820uq(c6382aB.a(i10, 2, AbstractC8999pu0.a((C4798y<?>) c6382aB.f46457p, C8854p10.b())), this.f39769c, this.f39770d));
    }

    @Override
    public final H9 a(H9 h92, C4798y c4798y, O8 o82) {
        return h92.a(o82, c4798y.b().f38052g2);
    }
}
