package com.android.tools.r8.shaking;

import java.util.Objects;
import java.util.function.BiConsumer;

public final class I {

    public final N f56547a;

    public I(N n10) {
        this.f56547a = n10;
    }

    public final com.android.tools.r8.graph.E0 a(com.android.tools.r8.graph.M2 m22, com.android.tools.r8.graph.D5 d52) {
        final N n10 = this.f56547a;
        Objects.requireNonNull(n10);
        BiConsumer biConsumer = new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                N.this.b((com.android.tools.r8.graph.E0) obj, (com.android.tools.r8.graph.E5) obj2);
            }
        };
        final N n11 = this.f56547a;
        Objects.requireNonNull(n11);
        return n10.a(m22, d52, biConsumer, new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                N.this.a((com.android.tools.r8.graph.M2) obj, (com.android.tools.r8.graph.E5) obj2);
            }
        });
    }
}
