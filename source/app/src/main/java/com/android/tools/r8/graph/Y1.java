package com.android.tools.r8.graph;

import java.util.function.Consumer;

public final class Y1 extends AbstractC4423e2 {

    public final C4554l1 f36976a;

    public final C4554l1 f36977b;

    public final C4554l1 f36978c;

    public final C4554l1 f36979d;

    public final C4554l1 f36980e;

    public final C4554l1 f36981f;

    public final C4554l1 f36982g;

    public Y1(C4724u1 c4724u1) {
        M2 m22 = c4724u1.f37928P3;
        this.f36976a = c4724u1.a(m22, m22, "DAYS");
        M2 m23 = c4724u1.f37928P3;
        this.f36977b = c4724u1.a(m23, m23, "HOURS");
        M2 m24 = c4724u1.f37928P3;
        this.f36978c = c4724u1.a(m24, m24, "MICROSECONDS");
        M2 m25 = c4724u1.f37928P3;
        this.f36979d = c4724u1.a(m25, m25, "MILLISECONDS");
        M2 m26 = c4724u1.f37928P3;
        this.f36980e = c4724u1.a(m26, m26, "MINUTES");
        M2 m27 = c4724u1.f37928P3;
        this.f36981f = c4724u1.a(m27, m27, "NANOSECONDS");
        M2 m28 = c4724u1.f37928P3;
        this.f36982g = c4724u1.a(m28, m28, "SECONDS");
    }

    @Override
    public final void a(Consumer consumer) {
        consumer.accept(this.f36976a);
        consumer.accept(this.f36977b);
        consumer.accept(this.f36978c);
        consumer.accept(this.f36979d);
        consumer.accept(this.f36980e);
        consumer.accept(this.f36981f);
        consumer.accept(this.f36982g);
    }
}
