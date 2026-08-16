package com.android.tools.r8.graph;

import java.util.function.Consumer;

public final class X1 extends AbstractC4423e2 {

    public final C4554l1 f36949a;

    public final C4554l1 f36950b;

    public final C4554l1 f36951c;

    public final A2 f36952d;

    public final A2 f36953e;

    public final A2 f36954f;

    public X1(C4724u1 c4724u1) {
        this.f36949a = c4724u1.a(c4724u1.f37900L3, c4724u1.f37942R3, "EMPTY_LIST");
        this.f36950b = c4724u1.a(c4724u1.f37900L3, c4724u1.f37949S3, "EMPTY_MAP");
        this.f36951c = c4724u1.a(c4724u1.f37900L3, c4724u1.f37956T3, "EMPTY_SET");
        this.f36952d = c4724u1.a(c4724u1.f37900L3, c4724u1.a(c4724u1.f37942R3, new M2[0]), "emptyList");
        this.f36953e = c4724u1.a(c4724u1.f37900L3, c4724u1.a(c4724u1.f37949S3, new M2[0]), "emptyMap");
        this.f36954f = c4724u1.a(c4724u1.f37900L3, c4724u1.a(c4724u1.f37956T3, new M2[0]), "emptySet");
    }

    @Override
    public final void a(Consumer consumer) {
        consumer.accept(this.f36949a);
        consumer.accept(this.f36950b);
        consumer.accept(this.f36951c);
    }
}
