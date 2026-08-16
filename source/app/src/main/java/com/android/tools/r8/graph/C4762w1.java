package com.android.tools.r8.graph;

import java.util.function.Consumer;

public final class C4762w1 extends AbstractC4423e2 {

    public final C4554l1 f38322a;

    public final C4554l1 f38323b;

    public C4762w1(C4724u1 c4724u1) {
        this.f38322a = c4724u1.a(c4724u1.f38062h4, c4724u1.f37884J1, "S_IRUSR");
        this.f38323b = c4724u1.a(c4724u1.f38062h4, c4724u1.f37884J1, "S_IXUSR");
    }

    @Override
    public final void a(Consumer consumer) {
        consumer.accept(this.f38322a);
        consumer.accept(this.f38323b);
    }
}
