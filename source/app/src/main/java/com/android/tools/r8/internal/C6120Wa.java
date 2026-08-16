package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.naming.AbstractC10992r0;
import java.util.function.Function;

public final class C6120Wa extends W9 {

    public final C4554l1[] f45472c;

    public C6120Wa(C4554l1[] c4554l1Arr) {
        this.f45472c = c4554l1Arr;
    }

    @Override
    public final int B() {
        return -1;
    }

    @Override
    public final int C() {
        return 211;
    }

    @Override
    public final boolean E() {
        return false;
    }

    @Override
    public final C6120Wa t() {
        return this;
    }

    @Override
    public final int y() {
        throw new C5417Jv0();
    }

    public static void a(AbstractC5754Pq0 abstractC5754Pq0) {
        abstractC5754Pq0.f(new Function() {
            @Override
            public final Object apply(Object obj) {
                C4554l1[] c4554l1Arr;
                c4554l1Arr = ((C6120Wa) obj).f45472c;
                return c4554l1Arr;
            }
        });
    }

    @Override
    public final void a(C4798y c4798y, com.android.tools.r8.graph.H5 h52, C4724u1 c4724u1, AbstractC5308Hz abstractC5308Hz, AbstractC5308Hz abstractC5308Hz2, AbstractC9723uD abstractC9723uD, AbstractC10992r0 abstractC10992r0, RR rr, EX ex) {
        throw new C5417Jv0();
    }

    @Override
    public final void a(C6063Va c6063Va) {
        c6063Va.a(this);
    }

    @Override
    public final int a(W9 w92, AbstractC8953pf abstractC8953pf, com.android.tools.r8.graph.O o10) {
        return abstractC8953pf.a(this, w92.t(), new C7354g11());
    }

    @Override
    public final void a(AbstractC9213rA abstractC9213rA) {
        C7354g11 c7354g11 = new C7354g11();
        C9547tA c9547tA = (C9547tA) abstractC9213rA;
        c9547tA.getClass();
        c7354g11.a(new C9380sA(this, c9547tA));
    }

    @Override
    public final void a(C6382aB c6382aB, C9775ub c9775ub, C7607hb c7607hb) {
        int length = this.f45472c.length;
        int[] iArr = new int[length];
        for (int i10 = length - 1; i10 >= 0; i10--) {
            iArr[i10] = c9775ub.a().f51280a;
        }
        C4554l1[] c4554l1Arr = this.f45472c;
        CH ch2 = new CH(iArr, 0);
        ch2.f39177c = length;
        com.android.tools.r8.graph.M2 m22 = c6382aB.f46457p.b().f38092l2;
        c9775ub.getClass();
        c6382aB.a(c4554l1Arr, ch2, c9775ub.a(new C9108qb(m22)).f51280a);
    }

    @Override
    public final H9 a(H9 h92, C4798y c4798y, O8 o82) {
        C4724u1 b10 = c4798y.b();
        for (C4554l1 c4554l1 : this.f45472c) {
            h92 = h92.a(c4798y, o82, b10.f38068i2);
        }
        return h92.a(o82, b10.f38092l2);
    }
}
