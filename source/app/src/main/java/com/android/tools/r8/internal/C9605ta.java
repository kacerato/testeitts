package com.android.tools.r8.internal;

import com.android.tools.r8.ClassFileConsumer;
import com.android.tools.r8.graph.AbstractC4446f6;
import com.android.tools.r8.graph.AbstractC4592n1;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.naming.AbstractC10992r0;
import java.util.ArrayList;
import java.util.ListIterator;
import java.util.function.Function;
import java.util.function.ToIntFunction;

public final class C9605ta extends W9 implements InterfaceC5081Eb {

    public static final boolean f52629e = true;

    public final com.android.tools.r8.graph.M2 f52630c;

    public final int f52631d;

    public C9605ta(int i10, com.android.tools.r8.graph.M2 m22) {
        this.f52630c = m22;
        this.f52631d = i10;
    }

    public static void a(AbstractC5754Pq0 abstractC5754Pq0) {
        abstractC5754Pq0.a(new ToIntFunction() {
            @Override
            public final int applyAsInt(Object obj) {
                return ((C9605ta) obj).V();
            }
        }).e(new Function() {
            @Override
            public final Object apply(Object obj) {
                return ((C9605ta) obj).getType();
            }
        });
    }

    @Override
    public final int B() {
        return 197;
    }

    @Override
    public final boolean U() {
        return true;
    }

    public final int V() {
        return this.f52631d;
    }

    @Override
    public final com.android.tools.r8.graph.M2 getType() {
        return this.f52630c;
    }

    @Override
    public final InterfaceC5081Eb x() {
        return this;
    }

    @Override
    public final int y() {
        return 4;
    }

    @Override
    public final boolean z() {
        return true;
    }

    @Override
    public final void a(C4798y c4798y, com.android.tools.r8.graph.H5 h52, C4724u1 c4724u1, AbstractC5308Hz abstractC5308Hz, AbstractC5308Hz abstractC5308Hz2, AbstractC9723uD abstractC9723uD, AbstractC10992r0 abstractC10992r0, RR rr, EX ex) {
        ex.a(this.f52631d, abstractC10992r0.d(abstractC5308Hz.c(abstractC5308Hz2, this.f52630c)));
    }

    @Override
    public final W9 a(com.android.tools.r8.graph.M2 m22) {
        return new C9605ta(this.f52631d, m22);
    }

    @Override
    public final int a(W9 w92, AbstractC8953pf abstractC8953pf, com.android.tools.r8.graph.O o10) {
        return abstractC8953pf.a(this, (C9605ta) w92, new Pt1());
    }

    @Override
    public final void a(AbstractC9213rA abstractC9213rA) {
        Pt1 pt1 = new Pt1();
        C9547tA c9547tA = (C9547tA) abstractC9213rA;
        c9547tA.getClass();
        pt1.a(new C9380sA(this, c9547tA));
    }

    @Override
    public final void a(C6063Va c6063Va) {
        c6063Va.a(this);
    }

    @Override
    public final void a(AbstractC4446f6 abstractC4446f6, ListIterator listIterator) {
        abstractC4446f6.f(this.f52630c);
    }

    @Override
    public final void a(C6382aB c6382aB, C9775ub c9775ub, C7607hb c7607hb) {
        C8570nJ E10 = c6382aB.f46457p.E();
        if (!f52629e && E10.P()) {
            throw new AssertionError();
        }
        int i10 = this.f52631d;
        c9775ub.getClass();
        int[] iArr = new int[i10];
        for (int i11 = i10 - 1; i11 >= 0; i11--) {
            iArr[i11] = c9775ub.a().f51280a;
        }
        com.android.tools.r8.graph.M2 m22 = this.f52630c;
        int i12 = c9775ub.a(new C9108qb(m22)).f51280a;
        if (!C6382aB.f46438D && !(c6382aB.f46457p.E().f50697l instanceof ClassFileConsumer)) {
            throw new AssertionError();
        }
        ArrayList arrayList = new ArrayList(i10);
        for (int i13 = 0; i13 < i10; i13++) {
            arrayList.add(c6382aB.b(iArr[i13], EnumC5592Mw0.f42462c));
        }
        c6382aB.a(EnumC8071kK.f49586j, (AbstractC4592n1) m22, (com.android.tools.r8.graph.I2) null, arrayList, false);
        c6382aB.c(i12);
    }

    @Override
    public final H9 a(H9 h92, C4798y c4798y, O8 o82) {
        C4724u1 b10 = c4798y.b();
        for (int i10 = 0; i10 < this.f52631d; i10++) {
            h92 = h92.a(c4798y, o82, b10.f37884J1);
        }
        return h92.a(o82, this.f52630c);
    }
}
