package com.android.tools.r8.shaking;

import java.util.function.Consumer;

public final class Z0 extends AbstractC11128b1 {

    public final com.android.tools.r8.graph.H2 f57145a;

    public Z0(com.android.tools.r8.graph.H2 h22) {
        this.f57145a = h22;
    }

    @Override
    public final void a(com.android.tools.r8.graph.M2 m22, Consumer consumer, Consumer consumer2) {
        consumer.accept(this.f57145a);
    }

    @Override
    public final com.android.tools.r8.graph.H2 a() {
        return this.f57145a;
    }
}
