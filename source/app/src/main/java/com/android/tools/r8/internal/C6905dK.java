package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import java.util.Collection;
import java.util.function.IntConsumer;

public final class C6905dK implements X9 {

    public final C4724u1 f47375b;

    public C6905dK(C4798y c4798y) {
        this.f47375b = c4798y.b();
    }

    @Override
    public final void a(IntConsumer intConsumer) {
        intConsumer.accept(183);
    }

    @Override
    public final C6473am a(com.android.tools.r8.graph.H5 h52, W9 w92) {
        if (!w92.N()) {
            return C6473am.f46625a;
        }
        C7437ga j10 = w92.j();
        if (j10.N()) {
            if (!j10.V().b(this.f47375b)) {
                com.android.tools.r8.graph.A2 V10 = j10.V();
                if (V10.s0() != h52.p()) {
                    return C6473am.f46625a;
                }
                com.android.tools.r8.graph.H5 e10 = h52.getHolder().e(V10);
                if (e10 != null && !e10.getAccessFlags().h() && !e10.d().w0() && (!j10.X() || !e10.F())) {
                    if (e10.getAccessFlags().e()) {
                        return a(j10);
                    }
                    return a(j10, e10);
                }
                return C6473am.f46625a;
            }
        }
        return C6473am.f46625a;
    }

    public static C6204Xl a(final C7437ga c7437ga) {
        return new C6204Xl(AbstractC9365s5.a(new InterfaceC6147Wl() {
            @Override
            public final Collection a(B60 b60, InterfaceC8175ky interfaceC8175ky, QT qt, D9 d92, AbstractC7103ea abstractC7103ea, com.android.tools.r8.graph.H5 h52, C5035Df c5035Df, Y9 y92, C4724u1 c4724u1) {
                return C6905dK.a(C7437ga.this, b60, interfaceC8175ky, qt, d92, abstractC7103ea, h52, c5035Df, y92, c4724u1);
            }
        }));
    }

    public static Collection a(C7437ga c7437ga, B60 b60, InterfaceC8175ky interfaceC8175ky, QT qt, D9 d92, AbstractC7103ea abstractC7103ea, com.android.tools.r8.graph.H5 h52, C5035Df c5035Df, Y9 y92, C4724u1 c4724u1) {
        C7437ga c7437ga2 = new C7437ga(182, c7437ga.V(), c7437ga.X());
        int i10 = AbstractC7552hC.f48487c;
        return new C5920Sm0(c7437ga2);
    }

    public final C6204Xl a(final C7437ga c7437ga, final com.android.tools.r8.graph.H5 h52) {
        return new C6204Xl(AbstractC9365s5.a(new InterfaceC6147Wl() {
            @Override
            public final Collection a(B60 b60, InterfaceC8175ky interfaceC8175ky, QT qt, D9 d92, AbstractC7103ea abstractC7103ea, com.android.tools.r8.graph.H5 h53, C5035Df c5035Df, Y9 y92, C4724u1 c4724u1) {
                return C6905dK.this.a(h52, c7437ga, b60, interfaceC8175ky, qt, d92, abstractC7103ea, h53, c5035Df, y92, c4724u1);
            }
        }));
    }

    public final Collection a(com.android.tools.r8.graph.H5 h52, C7437ga c7437ga, B60 b60, InterfaceC8175ky interfaceC8175ky, QT qt, D9 d92, AbstractC7103ea abstractC7103ea, com.android.tools.r8.graph.H5 h53, C5035Df c5035Df, Y9 y92, C4724u1 c4724u1) {
        com.android.tools.r8.graph.A2 a10 = a(h52);
        com.android.tools.r8.graph.H2 holder = h52.getHolder();
        synchronized (holder.b0()) {
            try {
                if (holder.e(a10) == null) {
                    com.android.tools.r8.graph.H5 a11 = h52.d().a(holder, a10, this.f47375b);
                    C6842cy c6842cy = new C6842cy(this.f47375b);
                    boolean isInterface = holder.isInterface();
                    c6842cy.f47223c = a10;
                    c6842cy.f47226f = EnumC6509ay.f46667e;
                    c6842cy.f47227g = Boolean.valueOf(isInterface);
                    c6842cy.f47222b = h52.getReference();
                    c6842cy.f47225e = false;
                    com.android.tools.r8.graph.G a12 = c6842cy.a();
                    holder.a(a11.d());
                    abstractC7103ea.a(new C6572bK(a11, h52, a12));
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return new C5920Sm0(new C7437ga(183, a10, c7437ga.X()));
    }

    public final com.android.tools.r8.graph.A2 a(com.android.tools.r8.graph.H5 h52) {
        com.android.tools.r8.graph.A2 reference = h52.getReference();
        return this.f47375b.a(reference.f38297f, reference.f36127i, this.f47375b.b("$invoke$special$" + h52.getReference().t0().toString()));
    }
}
