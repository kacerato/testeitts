package com.android.tools.r8.internal;

import java.util.function.Consumer;

public abstract class AbstractC10643zm {
    public abstract void a(com.android.tools.r8.graph.M2 m22, com.android.tools.r8.graph.M2 m23);

    public abstract void a(Consumer consumer);

    public abstract boolean a();

    public final boolean a(com.android.tools.r8.graph.M2 m22) {
        return c(m22) != null;
    }

    public abstract com.android.tools.r8.graph.M2 b(com.android.tools.r8.graph.M2 m22);

    public abstract com.android.tools.r8.graph.M2 c(com.android.tools.r8.graph.M2 m22);

    public final boolean a(com.android.tools.r8.graph.I2 i22) {
        return a(i22.o0()) || AbstractC9907vK.b(i22.n0(), new V60() {
            @Override
            public final boolean apply(Object obj) {
                return AbstractC10643zm.this.a((com.android.tools.r8.graph.M2) obj);
            }
        });
    }
}
