package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import java.util.Collection;
import java.util.function.IntConsumer;

public final class C7972jm implements X9 {

    public final C4798y f49344b;

    public final C8139km f49345c;

    public C7972jm(C4798y c4798y) {
        this.f49344b = c4798y;
        this.f49345c = new C8139km(c4798y);
    }

    @Override
    public final void a(final IntConsumer intConsumer) {
        AbstractC4962Ca.a(intConsumer);
        AbstractC4962Ca.b(intConsumer);
        AbstractC4962Ca.a(new IntConsumer() {
            @Override
            public final void accept(int i10) {
                C7972jm.a(IntConsumer.this, i10);
            }
        }, MH.a());
    }

    @Override
    public final void b(IntConsumer intConsumer) {
        AbstractC4962Ca.a(MH.a(), intConsumer);
    }

    public static void a(IntConsumer intConsumer, int i10) {
        if (i10 != 188) {
            intConsumer.accept(i10);
        }
    }

    public static C6204Xl a(final W9 w92) {
        return new C6204Xl(AbstractC9365s5.a(new InterfaceC6147Wl() {
            @Override
            public final Collection a(B60 b60, InterfaceC8175ky interfaceC8175ky, QT qt, D9 d92, AbstractC7103ea abstractC7103ea, com.android.tools.r8.graph.H5 h52, C5035Df c5035Df, Y9 y92, C4724u1 c4724u1) {
                return C7972jm.a(W9.this, b60, interfaceC8175ky, qt, d92, abstractC7103ea, h52, c5035Df, y92, c4724u1);
            }
        }));
    }

    public static Collection a(W9 w92, B60 b60, InterfaceC8175ky interfaceC8175ky, QT qt, D9 d92, AbstractC7103ea abstractC7103ea, com.android.tools.r8.graph.H5 h52, C5035Df c5035Df, Y9 y92, C4724u1 c4724u1) {
        int i10 = AbstractC7552hC.f48487c;
        return new C5920Sm0(w92);
    }

    @Override
    public final C6473am a(com.android.tools.r8.graph.H5 h52, W9 w92) {
        W9 w93 = null;
        if (this.f49344b.b().f38117o3.contains(h52.p())) {
            if (w92.U()) {
                InterfaceC5081Eb x10 = w92.x();
                C8139km c8139km = this.f49345c;
                com.android.tools.r8.graph.M2 type = x10.getType();
                if (c8139km.f49757a.E().x().b().a(type)) {
                    type = C7139em.a(c8139km.f49757a, type);
                }
                if (type != x10.getType()) {
                    w93 = x10.a(type);
                }
            } else if (w92.I()) {
                F9 f10 = w92.f();
                C4554l1 a10 = this.f49345c.a(h52, f10.getField());
                if (a10 != null) {
                    w93 = f10.a(a10);
                }
            } else if (w92.L()) {
                C7437ga j10 = w92.j();
                C8139km c8139km2 = this.f49345c;
                com.android.tools.r8.graph.A2 V10 = j10.V();
                boolean X10 = j10.X();
                com.android.tools.r8.graph.M2 s02 = V10.s0();
                if (c8139km2.f49757a.E().x().b().a(s02)) {
                    s02 = C7139em.a(c8139km2.f49757a, s02);
                }
                com.android.tools.r8.graph.A2 a11 = C7139em.a(V10, s02, c8139km2.f49757a);
                if (a11 == V10) {
                    a11 = null;
                } else {
                    c8139km2.a(c8139km2.f49757a.g().b(V10, X10), V10, h52);
                }
                if (a11 != null) {
                    w93 = new C7437ga(j10.W(), a11, j10.X());
                }
            }
        }
        if (w93 == null) {
            return C6473am.f46625a;
        }
        return a(w93);
    }
}
