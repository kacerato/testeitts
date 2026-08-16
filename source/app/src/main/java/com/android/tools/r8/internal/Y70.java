package com.android.tools.r8.internal;

import java.util.function.Consumer;

public abstract class Y70 {
    public static void a(com.android.tools.r8.graph.H2 h22, K70 k70) {
        k70.getClass();
        k70.a(h22.getReference());
        h22.l(new C10258xS0(k70));
    }

    public static void a(final com.android.tools.r8.graph.H2 h22, com.android.tools.r8.graph.D5 d52, C9957vg c9957vg, C9362s4 c9362s4) {
        if (c9362s4.f52267b) {
            Consumer consumer = new Consumer() {
                @Override
                public final void accept(Object obj) {
                    Y70.a(com.android.tools.r8.graph.H2.this, (K70) obj);
                }
            };
            c9957vg.getClass();
            if (d52.e0()) {
                c9957vg.a(consumer, d52.d0());
            } else {
                if (!C9957vg.f53181d && !d52.N()) {
                    throw new AssertionError();
                }
                c9957vg.a(d52.H().getReference(), consumer);
            }
        }
    }
}
