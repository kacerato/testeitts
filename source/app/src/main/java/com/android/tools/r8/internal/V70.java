package com.android.tools.r8.internal;

import java.util.function.Consumer;

public final class V70 implements InterfaceC8101kZ {

    public final C9957vg f44961c;

    public final InterfaceC8101kZ f44962d;

    public V70(C9957vg c9957vg, InterfaceC8101kZ interfaceC8101kZ) {
        this.f44961c = c9957vg;
        this.f44962d = interfaceC8101kZ;
    }

    @Override
    public final void a(com.android.tools.r8.graph.H5 h52, final com.android.tools.r8.graph.H5 h53, final com.android.tools.r8.graph.E0 e02, com.android.tools.r8.graph.H0 h02) {
        h02.getClass();
        if (h02 instanceof com.android.tools.r8.graph.H5) {
            C9957vg c9957vg = this.f44961c;
            com.android.tools.r8.graph.H5 H10 = h02.H();
            Consumer consumer = new Consumer() {
                @Override
                public final void accept(Object obj) {
                    V70.a(com.android.tools.r8.graph.E0.this, h53, (K70) obj);
                }
            };
            c9957vg.getClass();
            c9957vg.a(H10.getReference(), consumer);
        } else {
            this.f44961c.a(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    V70.a(com.android.tools.r8.graph.E0.this, h53, (L70) obj);
                }
            });
        }
        this.f44962d.a(h52, h53, e02, h02);
    }

    @Override
    public final void b(com.android.tools.r8.graph.F5 f52, com.android.tools.r8.graph.H5 h52, com.android.tools.r8.graph.H0 h02) {
        this.f44961c.a(h52, h02);
        this.f44962d.b(f52, h52, h02);
    }

    public static void a(com.android.tools.r8.graph.E0 e02, com.android.tools.r8.graph.H5 h52, K70 k70) {
        k70.a(e02.getReference()).a((com.android.tools.r8.graph.J2) h52.getReference());
    }

    public static void a(com.android.tools.r8.graph.E0 e02, com.android.tools.r8.graph.H5 h52, L70 l70) {
        l70.getClass();
        l70.a(e02.getType());
        l70.f().a(h52.getReference(), new C7891jE0());
    }

    @Override
    public final void a(com.android.tools.r8.graph.F5 f52, com.android.tools.r8.graph.H5 h52, com.android.tools.r8.graph.H0 h02) {
        this.f44961c.a(h52, h02);
        this.f44962d.a(f52, h52, h02);
    }

    @Override
    public final void a(com.android.tools.r8.graph.H5 h52, com.android.tools.r8.graph.H5 h53, com.android.tools.r8.graph.H0 h02) {
        this.f44961c.a(h53, h02);
        this.f44962d.a(h52, h53, h02);
    }
}
