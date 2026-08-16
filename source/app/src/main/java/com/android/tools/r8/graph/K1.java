package com.android.tools.r8.graph;

import java.util.function.Consumer;

public final class K1 extends C1 {

    public final C4554l1 f36520a;

    public final A2 f36521b;

    public final A2 f36522c;

    public final A2 f36523d;

    public final A2 f36524e;

    public K1(C4724u1 c4724u1) {
        this.f36520a = c4724u1.a(c4724u1.f37996Z1, c4724u1.f38180w2, "TYPE");
        this.f36521b = c4724u1.a(c4724u1.f37996Z1, c4724u1.a(c4724u1.f37877I1, new M2[0]), "floatValue");
        this.f36522c = c4724u1.a(c4724u1.f37996Z1, c4724u1.a(c4724u1.f38052g2, new M2[0]), "toString");
        M2 m22 = c4724u1.f37996Z1;
        this.f36523d = c4724u1.a(m22, c4724u1.a(m22, c4724u1.f37877I1), "valueOf");
        this.f36524e = c4724u1.a(c4724u1.f37996Z1, c4724u1.a(c4724u1.f37884J1, c4724u1.f37877I1), "hashCode");
    }

    @Override
    public final void a(Consumer consumer) {
        consumer.accept(this.f36520a);
    }

    @Override
    public final C4554l1 a() {
        return this.f36520a;
    }
}
