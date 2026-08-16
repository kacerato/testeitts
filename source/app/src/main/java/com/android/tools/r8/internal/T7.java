package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import java.util.Collection;
import java.util.function.IntConsumer;

public final class T7 implements X9 {

    public final C4724u1 f44391b;

    public T7(C4798y c4798y) {
        this.f44391b = c4798y.b();
    }

    @Override
    public final void a(IntConsumer intConsumer) {
        AbstractC4962Ca.b(intConsumer);
    }

    @Override
    public final C6473am a(com.android.tools.r8.graph.H5 h52, W9 w92) {
        if (!w92.L()) {
            return C6473am.f46625a;
        }
        C7437ga j10 = w92.j();
        com.android.tools.r8.graph.A2 V10 = j10.V();
        if (V10.w0() <= 1 && (V10.w0() != 1 || V10.k(0).L0())) {
            com.android.tools.r8.graph.M2 z02 = V10.z0();
            C4724u1 c4724u1 = this.f44391b;
            if (z02 != c4724u1.f38101m3 && c4724u1.f38109n3.contains(V10.f38297f) && this.f44391b.f38109n3.contains(V10.z0())) {
                for (com.android.tools.r8.graph.A2 a22 : this.f44391b.f37866G4.f36219a) {
                    if (a22.f38298g == V10.f38298g && a22.x0().equals(V10.x0())) {
                        break;
                    }
                }
            }
        }
        a22 = null;
        if (a22 == null) {
            return C6473am.f46625a;
        }
        C4724u1 c4724u12 = this.f44391b;
        return a(new C7437ga(j10.W(), this.f44391b.a(V10.f38297f, c4724u12.a(c4724u12.f38101m3, V10.y0().f36441f.f36675b), V10.f38298g), j10.X()), V10);
    }

    public static C6204Xl a(final C7437ga c7437ga, final com.android.tools.r8.graph.A2 a22) {
        return new C6204Xl(AbstractC9365s5.a(new InterfaceC6147Wl() {
            @Override
            public final Collection a(B60 b60, InterfaceC8175ky interfaceC8175ky, QT qt, D9 d92, AbstractC7103ea abstractC7103ea, com.android.tools.r8.graph.H5 h52, C5035Df c5035Df, Y9 y92, C4724u1 c4724u1) {
                Collection a10;
                a10 = AbstractC7552hC.a(C7437ga.this, new C7710i9(a22.z0()));
                return a10;
            }
        }));
    }
}
