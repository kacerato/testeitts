package com.android.tools.r8.internal;

import com.android.tools.r8.graph.AbstractC4497i0;
import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.synthesis.S;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.function.Consumer;
import java.util.function.IntConsumer;

public final class L40 implements X9 {

    public final C4798y f41858b;

    public L40(C4798y c4798y) {
        this.f41858b = c4798y;
    }

    @Override
    public final void a(IntConsumer intConsumer) {
        intConsumer.accept(182);
    }

    @Override
    public final C6473am a(com.android.tools.r8.graph.H5 h52, W9 w92) {
        if (!h52.getHolder().isInterface()) {
            return C6473am.f46625a;
        }
        C4516j1 d10 = h52.d();
        if (!d10.w0() && !d10.n1()) {
            return C6473am.f46625a;
        }
        if (!w92.P()) {
            return C6473am.f46625a;
        }
        C7437ga j10 = w92.j();
        C4724u1 b10 = this.f41858b.b();
        com.android.tools.r8.graph.A2 V10 = j10.V();
        b10.getClass();
        if (V10.s0().E0()) {
            com.android.tools.r8.graph.I2 y02 = V10.y0();
            if (b10.f38050g0.g(V10.t0()) && y02.n0().isEmpty() && b10.f38068i2.a(y02.o0())) {
                return new C6204Xl(AbstractC9365s5.a(new InterfaceC6147Wl() {
                    @Override
                    public final Collection a(B60 b60, InterfaceC8175ky interfaceC8175ky, QT qt, D9 d92, AbstractC7103ea abstractC7103ea, com.android.tools.r8.graph.H5 h53, C5035Df c5035Df, Y9 y92, C4724u1 c4724u1) {
                        return L40.this.a(b60, interfaceC8175ky, qt, d92, abstractC7103ea, h53, c5035Df, y92, c4724u1);
                    }
                }));
            }
        }
        return C6473am.f46625a;
    }

    public final Collection a(B60 b60, InterfaceC8175ky interfaceC8175ky, QT qt, D9 d92, AbstractC7103ea abstractC7103ea, com.android.tools.r8.graph.H5 h52, C5035Df c5035Df, Y9 y92, final C4724u1 c4724u1) {
        com.android.tools.r8.graph.H5 b10 = this.f41858b.f38408a.g().b(new com.android.tools.r8.synthesis.I() {
            @Override
            public final S.b a(com.android.tools.r8.synthesis.S s10) {
                S.b bVar;
                bVar = s10.f58153F;
                return bVar;
            }
        }, c5035Df.a(), this.f41858b, new Consumer() {
            @Override
            public final void accept(Object obj) {
                L40.this.a(c4724u1, (com.android.tools.r8.synthesis.N) obj);
            }
        });
        abstractC7103ea.d(b10, h52);
        return Collections.singletonList(new C7437ga(184, b10.getReference(), false));
    }

    public final void a(C4724u1 c4724u1, com.android.tools.r8.synthesis.N n10) {
        com.android.tools.r8.graph.M2 m22 = c4724u1.f38068i2;
        n10.f58115e = c4724u1.a(m22, m22);
        n10.f58119i = com.android.tools.r8.graph.L4.b(4105, false);
        n10.f58117g = new com.android.tools.r8.synthesis.M() {
            @Override
            public final AbstractC4497i0 a(com.android.tools.r8.graph.A2 a22) {
                return L40.this.a(a22);
            }
        };
    }

    public final AbstractC4497i0 a(com.android.tools.r8.graph.A2 a22) {
        com.android.tools.r8.graph.M2 s02 = a22.s0();
        EnumC5477Kw0 enumC5477Kw0 = EnumC5477Kw0.f41824b;
        AbstractC7552hC a10 = AbstractC7552hC.a(new C8938pa(enumC5477Kw0, 0), new C7437ga(182, this.f41858b.b().f37859F4.f38224b, false), new C6440ab(enumC5477Kw0));
        List list = Collections.EMPTY_LIST;
        return new com.android.tools.r8.graph.G(s02, 1, 1, a10, list, list);
    }
}
