package com.android.tools.r8.graph;

import java.util.function.Consumer;

public final class V1 extends AbstractC4423e2 {

    public final C4554l1 f36882a;

    public final C4554l1 f36883b;

    public V1(C4724u1 c4724u1) {
        M2 m22 = c4724u1.f37893K3;
        this.f36882a = c4724u1.a(m22, m22, "LITTLE_ENDIAN");
        M2 m23 = c4724u1.f37893K3;
        this.f36883b = c4724u1.a(m23, m23, "BIG_ENDIAN");
    }

    @Override
    public final void a(Consumer consumer) {
        consumer.accept(this.f36882a);
        consumer.accept(this.f36883b);
    }
}
