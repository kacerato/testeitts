package com.android.tools.r8.graph;

import java.util.function.Consumer;

public final class C4366b2 extends AbstractC4423e2 {

    public final C4554l1 f37067a;

    public final C4554l1 f37068b;

    public final C4554l1 f37069c;

    public final C4554l1 f37070d;

    public final C4554l1 f37071e;

    public final C4554l1 f37072f;

    public C4366b2(C4724u1 c4724u1) {
        M2 m22 = c4724u1.f37998Z3;
        this.f37067a = c4724u1.a(m22, m22, "CONFIG");
        M2 m23 = c4724u1.f37998Z3;
        this.f37068b = c4724u1.a(m23, m23, "FINE");
        M2 m24 = c4724u1.f37998Z3;
        this.f37069c = c4724u1.a(m24, m24, "FINER");
        M2 m25 = c4724u1.f37998Z3;
        this.f37070d = c4724u1.a(m25, m25, "FINEST");
        M2 m26 = c4724u1.f37998Z3;
        this.f37071e = c4724u1.a(m26, m26, "SEVERE");
        M2 m27 = c4724u1.f37998Z3;
        this.f37072f = c4724u1.a(m27, m27, "WARNING");
    }

    @Override
    public final void a(Consumer consumer) {
        consumer.accept(this.f37067a);
        consumer.accept(this.f37068b);
        consumer.accept(this.f37069c);
        consumer.accept(this.f37070d);
        consumer.accept(this.f37071e);
        consumer.accept(this.f37072f);
    }
}
