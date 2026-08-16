package com.android.tools.r8.graph;

import java.util.function.Consumer;

public final class C4800y1 extends AbstractC4423e2 {

    public final C4554l1 f38439a;

    public final C4554l1 f38440b;

    public final C4554l1 f38441c;

    public final C4554l1 f38442d;

    public final C4554l1 f38443e;

    public C4800y1(C4724u1 c4724u1) {
        this.f38439a = c4724u1.a(c4724u1.f38086k4, c4724u1.f38078j4, "TRANSLATION_Z");
        this.f38440b = c4724u1.a(c4724u1.f38086k4, c4724u1.f37947S1, "EMPTY_STATE_SET");
        this.f38441c = c4724u1.a(c4724u1.f38086k4, c4724u1.f37947S1, "ENABLED_STATE_SET");
        this.f38442d = c4724u1.a(c4724u1.f38086k4, c4724u1.f37947S1, "PRESSED_ENABLED_STATE_SET");
        this.f38443e = c4724u1.a(c4724u1.f38086k4, c4724u1.f37947S1, "SELECTED_STATE_SET");
    }

    @Override
    public final void a(Consumer consumer) {
        consumer.accept(this.f38439a);
        consumer.accept(this.f38440b);
        consumer.accept(this.f38441c);
        consumer.accept(this.f38442d);
        consumer.accept(this.f38443e);
    }
}
