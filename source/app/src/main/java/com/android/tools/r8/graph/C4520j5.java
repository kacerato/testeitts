package com.android.tools.r8.graph;

import com.android.tools.r8.graph.Z4;
import java.util.function.Consumer;

public final class C4520j5 extends Z4.c {
    public C4520j5(E0 e02, I0 i02, C4516j1 c4516j1) {
        super(e02, i02, c4516j1);
    }

    @Override
    public final Z4.c a(E0 e02) {
        return e02 != this.f37020b ? new C4520j5(e02, (I0) d(), q()) : this;
    }

    @Override
    public final C4520j5 m() {
        return this;
    }

    @Override
    public final void a(Consumer consumer, Consumer consumer2, Consumer consumer3, Consumer consumer4) {
        consumer.accept(this);
    }
}
