package com.android.tools.r8.graph;

import com.android.tools.r8.graph.D3;
import java.util.function.Consumer;

public final class F3 extends D3.a {
    public F3(E0 e02, H2 h22, C4460g1 c4460g1) {
        super(e02, h22, c4460g1);
    }

    @Override
    public final void a(Consumer consumer, Consumer consumer2, Consumer consumer3) {
        consumer.accept(this);
    }

    @Override
    public final F3 m() {
        return this;
    }

    @Override
    public final F5 o() {
        return r();
    }

    @Override
    public final F5 r() {
        return new F5(this.f36225d, (H2) d());
    }

    @Override
    public final boolean t() {
        return true;
    }

    @Override
    public final boolean u() {
        return true;
    }
}
