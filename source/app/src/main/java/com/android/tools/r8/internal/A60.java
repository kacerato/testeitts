package com.android.tools.r8.internal;

import com.android.tools.r8.internal.B60;

public final class A60 extends B60 {

    public static final boolean f38532i = true;

    public final com.android.tools.r8.graph.A2 f38533h;

    public A60(int i10, com.android.tools.r8.graph.A2 a22, B60 b60, boolean z10, com.android.tools.r8.graph.A2 a23) {
        super(i10, a22, b60, z10, true);
        this.f38533h = a23;
        if (!f38532i && a23 == null) {
            throw new AssertionError();
        }
    }

    @Override
    public final B60 E() {
        return this;
    }

    @Override
    public final B60.a b() {
        com.android.tools.r8.graph.A2 a22 = this.f38533h;
        C10538z60 c10538z60 = new C10538z60();
        c10538z60.f54285h = a22;
        C10538z60 c10538z602 = (C10538z60) ((C10538z60) c10538z60.a(this.f38807b)).a(this.f38808c);
        c10538z602.f38814c = this.f38809d;
        c10538z602.f38815d = this.f38810e;
        c10538z602.f38816e = this.f38811f;
        return c10538z602;
    }

    @Override
    public final int d() {
        return 3;
    }

    @Override
    public final InterfaceC5638Nq0<B60> m() {
        return new InterfaceC5638Nq0() {
            @Override
            public final void a(AbstractC5754Pq0 abstractC5754Pq0) {
                B60.a(abstractC5754Pq0);
            }
        };
    }
}
