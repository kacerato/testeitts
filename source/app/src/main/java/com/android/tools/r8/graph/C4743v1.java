package com.android.tools.r8.graph;

import java.util.function.Consumer;

public final class C4743v1 extends AbstractC4423e2 {

    public final C4554l1 f38294a;

    public final C4554l1 f38295b;

    public C4743v1(C4724u1 c4724u1) {
        this.f38294a = c4724u1.a(c4724u1.f38046f4, c4724u1.f38054g4, "CREATOR");
        M2 m22 = c4724u1.f38046f4;
        this.f38295b = c4724u1.a(m22, m22, "EMPTY");
    }

    @Override
    public final void a(Consumer consumer) {
        consumer.accept(this.f38294a);
        consumer.accept(this.f38295b);
    }
}
