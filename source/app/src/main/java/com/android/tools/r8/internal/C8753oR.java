package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.internal.C8106kb;
import com.android.tools.r8.synthesis.S;
import java.util.AbstractCollection;
import java.util.ArrayDeque;
import java.util.Collection;
import java.util.Deque;
import java.util.Set;
import java.util.concurrent.ConcurrentHashMap;
import java.util.function.Consumer;
import java.util.function.IntConsumer;

public final class C8753oR implements X9 {

    public final C4798y f51244b;

    public final Set f51245c = ConcurrentHashMap.newKeySet();

    public C8753oR(C4798y c4798y) {
        this.f51244b = c4798y;
    }

    @Override
    public final void a(IntConsumer intConsumer) {
        intConsumer.accept(186);
    }

    @Override
    public final void a(com.android.tools.r8.graph.H5 h52, AbstractC7103ea abstractC7103ea) {
        for (W9 w92 : h52.d().Q0().V().E0()) {
            if (w92.N()) {
                com.android.tools.r8.graph.A2 V10 = w92.j().V();
                com.android.tools.r8.graph.L2 t02 = V10.t0();
                com.android.tools.r8.graph.L2 l22 = this.f51244b.b().f38091l1;
                t02.getClass();
                if (t02.b(l22.f36562f)) {
                    this.f51245c.add(V10);
                }
            }
        }
    }

    @Override
    public final C6473am a(com.android.tools.r8.graph.H5 h52, W9 w92) {
        C4798y c4798y = this.f51244b;
        w92.getClass();
        if ((w92 instanceof C7604ha) && C8085kR.b(w92.k().V(), c4798y, c4798y.g(), h52) != null) {
            return a(w92);
        }
        return C6473am.f46625a;
    }

    public final C6204Xl a(final W9 w92) {
        return new C6204Xl(AbstractC9365s5.a(new InterfaceC6147Wl() {
            @Override
            public final Collection a(B60 b60, InterfaceC8175ky interfaceC8175ky, QT qt, D9 d92, AbstractC7103ea abstractC7103ea, com.android.tools.r8.graph.H5 h52, C5035Df c5035Df, Y9 y92, C4724u1 c4724u1) {
                return C8753oR.this.a(w92, b60, interfaceC8175ky, qt, d92, abstractC7103ea, h52, c5035Df, y92, c4724u1);
            }
        }));
    }

    public final Collection a(W9 w92, B60 b60, InterfaceC8175ky interfaceC8175ky, QT qt, final D9 d92, final AbstractC7103ea abstractC7103ea, final com.android.tools.r8.graph.H5 h52, final C5035Df c5035Df, final Y9 y92, C4724u1 c4724u1) {
        return a(w92.k(), interfaceC8175ky, qt, d92, abstractC7103ea, h52, c5035Df, new InterfaceC8586nR() {
            @Override
            public final Collection a(B60 b602, C7437ga c7437ga, InterfaceC8175ky interfaceC8175ky2, QT qt2) {
                Collection a10;
                a10 = Y9.this.a(c7437ga, b602, interfaceC8175ky2, qt2, d92, abstractC7103ea, h52, c5035Df);
                return a10;
            }
        });
    }

    public final AbstractCollection a(C7604ha c7604ha, final InterfaceC8175ky interfaceC8175ky, QT qt, D9 d92, AbstractC7103ea abstractC7103ea, com.android.tools.r8.graph.H5 h52, C5035Df c5035Df, InterfaceC8586nR interfaceC8586nR) {
        C7753iR a10 = a(c7604ha, h52, c5035Df, interfaceC8586nR, !(((H00) d92).f40647a < 65000));
        if (a10 == null) {
            return null;
        }
        abstractC7103ea.a(a10, h52);
        if (a10.f48945f != null) {
            if (!C7753iR.f48939i && a10.f48945f == null) {
                throw new AssertionError();
            }
            C7437ga c7437ga = new C7437ga(184, a10.f48945f, false);
            int i10 = AbstractC7552hC.f48487c;
            return new C5920Sm0(c7437ga);
        }
        com.android.tools.r8.graph.O2 o22 = a10.f48943d.f49631g;
        final ArrayDeque arrayDeque = new ArrayDeque((o22.size() * 2) + 3);
        arrayDeque.add(new C10106wa(a10.f48942c));
        arrayDeque.add(new C8106kb(C8106kb.a.Dup));
        o22.forEach(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C8753oR.a(InterfaceC8175ky.this, arrayDeque, (com.android.tools.r8.graph.M2) obj);
            }
        });
        arrayDeque.add(new C7437ga(183, a10.f48944e, false));
        qt.a(2);
        return arrayDeque;
    }

    public static void a(InterfaceC8175ky interfaceC8175ky, Deque deque, com.android.tools.r8.graph.M2 m22) {
        EnumC5477Kw0 a10 = EnumC5477Kw0.a(m22);
        int a11 = interfaceC8175ky.a(a10.c());
        deque.addFirst(new C10443yb(a10, a11));
        deque.addLast(new C8938pa(a10, a11));
    }

    public final C7753iR a(C7604ha c7604ha, final com.android.tools.r8.graph.H5 h52, C5035Df c5035Df, final InterfaceC8586nR interfaceC8586nR, final boolean z10) {
        com.android.tools.r8.graph.D0 V10 = c7604ha.V();
        C4798y c4798y = this.f51244b;
        final C8085kR b10 = C8085kR.b(V10, c4798y, c4798y.g(), h52);
        if (b10 == null) {
            return null;
        }
        final C7 c72 = new C7();
        com.android.tools.r8.graph.H2 a10 = this.f51244b.f38408a.g().a(new com.android.tools.r8.synthesis.I() {
            @Override
            public final S.b a(com.android.tools.r8.synthesis.S s10) {
                S.b bVar;
                bVar = s10.f58191r;
                return bVar;
            }
        }, c5035Df.a(), this.f51244b, new Consumer() {
            @Override
            public final void accept(Object obj) {
                C8753oR.this.a(c72, h52, b10, interfaceC8586nR, z10, (com.android.tools.r8.synthesis.W) obj);
            }
        });
        C7753iR c7753iR = (C7753iR) c72.a();
        c7753iR.getClass();
        boolean z11 = C7753iR.f48939i;
        if (!z11 && c7753iR.f48947h != null) {
            throw new AssertionError();
        }
        if (!z11 && c7753iR.f48942c != a10.f36245e) {
            throw new AssertionError();
        }
        c7753iR.f48947h = a10;
        return c7753iR;
    }

    public final void a(C7 c72, com.android.tools.r8.graph.H5 h52, C8085kR c8085kR, InterfaceC8586nR interfaceC8586nR, boolean z10, com.android.tools.r8.synthesis.W w10) {
        c72.a((C7) new C7753iR(w10, this.f51244b, this, h52, c8085kR, interfaceC8586nR, z10));
    }
}
