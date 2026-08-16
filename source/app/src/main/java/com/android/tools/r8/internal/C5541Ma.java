package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.naming.AbstractC10992r0;
import java.util.function.Function;
import java.util.function.ToIntFunction;

public class C5541Ma extends W9 {

    public final C8103ka f42320c;

    public final B60 f42321d;

    public C5541Ma(C8103ka c8103ka, B60 b60) {
        this.f42320c = c8103ka;
        this.f42321d = b60;
    }

    @Override
    public final boolean A() {
        return false;
    }

    @Override
    public final int B() {
        return -1;
    }

    @Override
    public final int C() {
        return 210;
    }

    @Override
    public final boolean E() {
        return false;
    }

    public B60 V() {
        return this.f42321d;
    }

    @Override
    public final H9 a(H9 h92, C4798y c4798y, O8 o82) {
        return h92;
    }

    @Override
    public final C5541Ma q() {
        return this;
    }

    @Override
    public final int y() {
        return 0;
    }

    @Override
    public final int a(W9 w92, AbstractC8953pf abstractC8953pf, final com.android.tools.r8.graph.O o10) {
        return abstractC8953pf.a(this, (C5541Ma) w92, (InterfaceC5638Nq0<C5541Ma>) new InterfaceC5638Nq0() {
            @Override
            public final void a(AbstractC5754Pq0 abstractC5754Pq0) {
                C5541Ma.a(com.android.tools.r8.graph.O.this, abstractC5754Pq0);
            }
        });
    }

    public static void a(com.android.tools.r8.graph.O o10, AbstractC5754Pq0 abstractC5754Pq0) {
        AbstractC5754Pq0 a10 = abstractC5754Pq0.a(new ToIntFunction() {
            @Override
            public final int applyAsInt(Object obj) {
                int f10;
                f10 = ((C5541Ma) obj).f42321d.f();
                return f10;
            }
        });
        Function function = new Function() {
            @Override
            public final Object apply(Object obj) {
                C8103ka c8103ka;
                c8103ka = ((C5541Ma) obj).f42320c;
                return c8103ka;
            }
        };
        InterfaceC5407Jq0 a11 = o10.a();
        a10.a(function, a11, a11);
    }

    @Override
    public final void a(AbstractC9213rA abstractC9213rA) {
        ((C9547tA) abstractC9213rA).f52553a.a(this.f42321d.f());
    }

    @Override
    public final void a(C4798y c4798y, com.android.tools.r8.graph.H5 h52, C4724u1 c4724u1, AbstractC5308Hz abstractC5308Hz, AbstractC5308Hz abstractC5308Hz2, AbstractC9723uD abstractC9723uD, AbstractC10992r0 abstractC10992r0, RR rr, EX ex) {
        ex.b(this.f42321d.f(), this.f42320c.V());
    }

    @Override
    public final void a(C6063Va c6063Va) {
        c6063Va.a(this);
    }

    @Override
    public final void a(C6382aB c6382aB, C9775ub c9775ub, C7607hb c7607hb) {
        B60 b10 = c7607hb.f48610t.b(this.f42321d);
        c9775ub.getClass();
        if (!C9775ub.f52884c && b10 == null) {
            throw new AssertionError();
        }
        c9775ub.f52886b = b10;
        c6382aB.a(b10);
    }
}
