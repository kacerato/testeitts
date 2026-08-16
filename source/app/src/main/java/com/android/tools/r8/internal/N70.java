package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4725u2;
import com.android.tools.r8.graph.C4798y;
import java.util.function.Consumer;

public final class N70 implements InterfaceC6358a3 {

    public final C9957vg f42506a;

    public N70(C9957vg c9957vg) {
        this.f42506a = c9957vg;
    }

    @Override
    public final void a(com.android.tools.r8.graph.H2 h22, C4725u2 c4725u2) {
    }

    @Override
    public final boolean isEmpty() {
        return false;
    }

    @Override
    public final void a(final com.android.tools.r8.graph.H2 h22, C4725u2 c4725u2, com.android.tools.r8.graph.H2 h23) {
        this.f42506a.a(new Consumer() {
            @Override
            public final void accept(Object obj) {
                N70.a(com.android.tools.r8.graph.H2.this, (K70) obj);
            }
        }, h23);
    }

    public static void a(com.android.tools.r8.graph.H2 h22, K70 k70) {
        k70.a(h22.getType()).a(h22.h(h22.L0()).getReference());
    }

    @Override
    public final void a(C4798y c4798y) {
        this.f42506a.a(c4798y);
    }
}
