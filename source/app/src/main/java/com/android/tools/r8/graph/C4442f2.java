package com.android.tools.r8.graph;

import java.util.function.Consumer;

public final class C4442f2 extends C1 {

    public final C4554l1 f37170a;

    public final A2 f37171b;

    public final A2 f37172c;

    public final A2 f37173d;

    public final A2 f37174e;

    public C4442f2(C4724u1 c4724u1) {
        this.f37170a = c4724u1.a(c4724u1.f38012b2, c4724u1.f38180w2, "TYPE");
        M2 m22 = c4724u1.f38012b2;
        M2 m23 = c4724u1.f37884J1;
        M2 m24 = c4724u1.f37891K1;
        c4724u1.a(m22, c4724u1.a(m23, m24, m24), "compare");
        this.f37171b = c4724u1.a(c4724u1.f38012b2, c4724u1.a(c4724u1.f37891K1, new M2[0]), "longValue");
        this.f37172c = c4724u1.a(c4724u1.f38012b2, c4724u1.a(c4724u1.f38052g2, new M2[0]), "toString");
        M2 m25 = c4724u1.f38012b2;
        this.f37173d = c4724u1.a(m25, c4724u1.a(m25, c4724u1.f37891K1), "valueOf");
        this.f37174e = c4724u1.a(c4724u1.f38012b2, c4724u1.a(c4724u1.f37884J1, c4724u1.f37891K1), "hashCode");
    }

    @Override
    public final void a(Consumer consumer) {
        consumer.accept(this.f37170a);
    }

    @Override
    public final C4554l1 a() {
        return this.f37170a;
    }
}
