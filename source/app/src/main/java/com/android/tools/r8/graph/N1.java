package com.android.tools.r8.graph;

import java.util.function.Consumer;

public final class N1 extends C1 {

    public final C4554l1 f36629a;

    public final A2 f36630b;

    public final A2 f36631c;

    public final A2 f36632d;

    public N1(C4724u1 c4724u1) {
        this.f36629a = c4724u1.a(c4724u1.f38004a2, c4724u1.f38180w2, "TYPE");
        this.f36630b = c4724u1.a(c4724u1.f38004a2, c4724u1.a(c4724u1.f37884J1, new M2[0]), "intValue");
        this.f36631c = c4724u1.a(c4724u1.f38004a2, c4724u1.a(c4724u1.f38052g2, new M2[0]), "toString");
        M2 m22 = c4724u1.f38004a2;
        this.f36632d = c4724u1.a(m22, c4724u1.a(m22, c4724u1.f37884J1), "valueOf");
    }

    @Override
    public final void a(Consumer consumer) {
        consumer.accept(this.f36629a);
    }

    @Override
    public final C4554l1 a() {
        return this.f36629a;
    }
}
