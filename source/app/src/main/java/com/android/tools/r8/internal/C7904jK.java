package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4724u1;
import java.util.Collection;
import java.util.function.IntConsumer;

public final class C7904jK implements X9 {

    public static final boolean f49213b = true;

    @Override
    public final void a(IntConsumer intConsumer) {
        intConsumer.accept(185);
        intConsumer.accept(182);
    }

    @Override
    public final C6473am a(com.android.tools.r8.graph.H5 h52, W9 w92) {
        C4516j1 c4516j1;
        if (!w92.P() && !w92.M()) {
            return C6473am.f46625a;
        }
        C7437ga j10 = w92.j();
        com.android.tools.r8.graph.A2 V10 = j10.V();
        com.android.tools.r8.graph.A2 V11 = j10.V();
        if (V11.s0() != h52.p() || (c4516j1 = h52.getHolder().f36252l.f36638b.a(V11)) == null || c4516j1.w0()) {
            c4516j1 = null;
        } else if (!f49213b && V11.f38297f != c4516j1.B0()) {
            throw new AssertionError();
        }
        if (c4516j1 == null) {
            return C6473am.f46625a;
        }
        return a(j10, V10);
    }

    public static C6204Xl a(final C7437ga c7437ga, final com.android.tools.r8.graph.A2 a22) {
        return new C6204Xl(AbstractC9365s5.a(new InterfaceC6147Wl() {
            @Override
            public final Collection a(B60 b60, InterfaceC8175ky interfaceC8175ky, QT qt, D9 d92, AbstractC7103ea abstractC7103ea, com.android.tools.r8.graph.H5 h52, C5035Df c5035Df, Y9 y92, C4724u1 c4724u1) {
                return C7904jK.a(com.android.tools.r8.graph.A2.this, c7437ga, b60, interfaceC8175ky, qt, d92, abstractC7103ea, h52, c5035Df, y92, c4724u1);
            }
        }));
    }

    public static Collection a(com.android.tools.r8.graph.A2 a22, C7437ga c7437ga, B60 b60, InterfaceC8175ky interfaceC8175ky, QT qt, D9 d92, AbstractC7103ea abstractC7103ea, com.android.tools.r8.graph.H5 h52, C5035Df c5035Df, Y9 y92, C4724u1 c4724u1) {
        C7437ga c7437ga2 = new C7437ga(183, a22, c7437ga.X());
        int i10 = AbstractC7552hC.f48487c;
        return new C5920Sm0(c7437ga2);
    }
}
