package com.android.tools.r8.graph;

import java.util.function.Consumer;

public final class P1 extends AbstractC4423e2 {

    public final C4554l1 f36693a;

    public final C4554l1 f36694b;

    public P1(C4724u1 c4724u1) {
        this.f36693a = c4724u1.a(c4724u1.f37879I3, c4724u1.f38052g2, "pathSeparator");
        this.f36694b = c4724u1.a(c4724u1.f37879I3, c4724u1.f38052g2, "separator");
    }

    @Override
    public final void a(Consumer consumer) {
        consumer.accept(this.f36693a);
        consumer.accept(this.f36694b);
    }
}
