package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.naming.AbstractC10992r0;
import java.util.function.BiFunction;
import java.util.function.ToIntFunction;

public final class R9 extends W9 {

    public final int f43819c;

    public final int f43820d;

    public R9(int i10, int i11) {
        this.f43819c = i10;
        this.f43820d = i11;
    }

    public static void a(AbstractC5754Pq0 abstractC5754Pq0) {
        abstractC5754Pq0.a(new ToIntFunction() {
            @Override
            public final int applyAsInt(Object obj) {
                return ((R9) obj).W();
            }
        }).a(new ToIntFunction() {
            @Override
            public final int applyAsInt(Object obj) {
                return ((R9) obj).V();
            }
        });
    }

    @Override
    public final int B() {
        return 132;
    }

    public final int V() {
        return this.f43820d;
    }

    public final int W() {
        return this.f43819c;
    }

    @Override
    public final int y() {
        return (this.f43819c >= 256 || this.f43820d >= 256) ? 6 : 3;
    }

    @Override
    public final int a(W9 w92, AbstractC8953pf abstractC8953pf, com.android.tools.r8.graph.O o10) {
        return abstractC8953pf.a(this, (R9) w92, new C6761cV0());
    }

    @Override
    public final void a(AbstractC9213rA abstractC9213rA) {
        C6761cV0 c6761cV0 = new C6761cV0();
        C9547tA c9547tA = (C9547tA) abstractC9213rA;
        c9547tA.getClass();
        c6761cV0.a(new C9380sA(this, c9547tA));
    }

    @Override
    public final void a(C4798y c4798y, com.android.tools.r8.graph.H5 h52, C4724u1 c4724u1, AbstractC5308Hz abstractC5308Hz, AbstractC5308Hz abstractC5308Hz2, AbstractC9723uD abstractC9723uD, AbstractC10992r0 abstractC10992r0, RR rr, EX ex) {
        ex.a(this.f43819c, this.f43820d);
    }

    @Override
    public final void a(C6063Va c6063Va) {
        c6063Va.a(this);
    }

    @Override
    public final H9 a(H9 h92, C4798y c4798y, O8 o82) {
        return h92.a(c4798y, o82, this.f43819c, EnumC5477Kw0.f41825c, new BiFunction() {
            @Override
            public final Object apply(Object obj, Object obj2) {
                return (H9) C5480Ky.a((H9) obj, (InterfaceC8008jy) obj2);
            }
        });
    }

    @Override
    public final void a(C6382aB c6382aB, C9775ub c9775ub, C7607hb c7607hb) {
        int i10 = c9775ub.f52885a.a(this.f43819c).f51280a;
        c6382aB.b(T10.f44369e, i10, i10, this.f43820d);
    }
}
