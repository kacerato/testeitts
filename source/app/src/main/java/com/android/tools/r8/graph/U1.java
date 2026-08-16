package com.android.tools.r8.graph;

import java.util.function.Consumer;

public final class U1 extends AbstractC4423e2 {

    public final C4554l1 f36857a;

    public final C4554l1 f36858b;

    public U1(C4724u1 c4724u1) {
        M2 m22 = c4724u1.f37886J3;
        this.f36857a = c4724u1.a(m22, m22, "ONE");
        M2 m23 = c4724u1.f37886J3;
        this.f36858b = c4724u1.a(m23, m23, "ZERO");
    }

    @Override
    public final void a(Consumer consumer) {
        consumer.accept(this.f36857a);
        consumer.accept(this.f36858b);
    }
}
