package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;
import java.util.function.Consumer;

public final class O70 implements F3 {

    public final C9957vg f42786a;

    public O70(C9957vg c9957vg) {
        this.f42786a = c9957vg;
    }

    @Override
    public final void a(final com.android.tools.r8.graph.H2 h22, com.android.tools.r8.graph.H5 h52) {
        C9957vg c9957vg = this.f42786a;
        Consumer consumer = new Consumer() {
            @Override
            public final void accept(Object obj) {
                O70.a(com.android.tools.r8.graph.H2.this, (K70) obj);
            }
        };
        c9957vg.getClass();
        c9957vg.a(h52.getReference(), consumer);
    }

    public static void a(com.android.tools.r8.graph.H2 h22, K70 k70) {
        k70.getClass();
        k70.a(h22.getReference());
    }

    @Override
    public final void a(C4798y c4798y) {
        this.f42786a.a(c4798y);
    }
}
