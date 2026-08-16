package com.android.tools.r8.shaking;

import com.android.tools.r8.internal.C8085kR;
import java.util.function.Consumer;

public final class C11111a1 extends AbstractC11128b1 {

    public final C8085kR f57167a;

    public C11111a1(C8085kR c8085kR) {
        this.f57167a = c8085kR;
    }

    @Override
    public final void a(com.android.tools.r8.graph.M2 m22, Consumer consumer, Consumer consumer2) {
        consumer2.accept(this.f57167a);
    }

    @Override
    public final C8085kR b() {
        return this.f57167a;
    }
}
