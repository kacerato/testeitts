package com.android.tools.r8.internal;

import com.android.tools.r8.graph.AbstractC4497i0;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.synthesis.S;
import java.util.Collection;
import java.util.Collections;
import java.util.function.BiFunction;
import java.util.function.Consumer;
import java.util.function.IntConsumer;

public final class C8640nm implements X9 {

    public static final boolean f51065d = true;

    public final C4798y f51066b;

    public final AbstractC8552nC f51067c;

    public C8640nm(C4798y c4798y, AbstractC8552nC abstractC8552nC) {
        this.f51066b = c4798y;
        this.f51067c = abstractC8552nC;
    }

    public static AbstractC8552nC a(C4798y c4798y) {
        C4724u1 b10 = c4798y.b();
        com.android.tools.r8.graph.M2 d10 = b10.d("Landroidx/navigation/NavType;");
        if (c4798y.f().c(d10) != null) {
            C8051kC c8051kC = new C8051kC(4);
            com.android.tools.r8.graph.M2 d11 = b10.d("Landroidx/navigation/NavType$Companion;");
            com.android.tools.r8.graph.M2 m22 = b10.f38052g2;
            com.android.tools.r8.graph.A2 a10 = b10.a(d11, b10.a(d10, m22, m22), b10.b("fromArgType"));
            if (c4798y.b(a10) == null) {
                c4798y.E().f50691j.c("The class " + ((Object) d10) + " is present but not the method " + ((Object) a10) + " which suggests some unsupported set-up where androidx is pre-shrunk without keeping the method " + ((Object) a10) + ".");
                return C6620bf0.f46817i;
            }
            c8051kC.a(a10, new BiFunction() {
                @Override
                public final Object apply(Object obj, Object obj2) {
                    return AbstractC7473gm.a((C4724u1) obj, (com.android.tools.r8.graph.A2) obj2);
                }
            });
            return c8051kC.b();
        }
        return C6620bf0.f46817i;
    }

    @Override
    public final void a(IntConsumer intConsumer) {
        AbstractC4962Ca.b(intConsumer);
    }

    @Override
    public final C6473am a(com.android.tools.r8.graph.H5 h52, final W9 w92) {
        if (this.f51066b.f38408a.g().a(h52.p(), new com.android.tools.r8.synthesis.I() {
            @Override
            public final S.b a(com.android.tools.r8.synthesis.S s10) {
                S.b bVar;
                bVar = s10.f58170W;
                return bVar;
            }
        })) {
            return C6473am.f46625a;
        }
        if (w92.L() && this.f51067c.containsKey(w92.j().V())) {
            return new C6204Xl(AbstractC9365s5.a(new InterfaceC6147Wl() {
                @Override
                public final Collection a(B60 b60, InterfaceC8175ky interfaceC8175ky, QT qt, D9 d92, AbstractC7103ea abstractC7103ea, com.android.tools.r8.graph.H5 h53, C5035Df c5035Df, Y9 y92, C4724u1 c4724u1) {
                    return C8640nm.this.a(w92, b60, interfaceC8175ky, qt, d92, abstractC7103ea, h53, c5035Df, y92, c4724u1);
                }
            }));
        }
        return C6473am.f46625a;
    }

    public final Collection a(W9 w92, B60 b60, InterfaceC8175ky interfaceC8175ky, QT qt, D9 d92, AbstractC7103ea abstractC7103ea, com.android.tools.r8.graph.H5 h52, C5035Df c5035Df, Y9 y92, C4724u1 c4724u1) {
        com.android.tools.r8.graph.A2 a10 = a(w92.j().V(), abstractC7103ea, c5035Df, h52);
        boolean z10 = f51065d;
        if (!z10 && this.f51066b.g(a10.s0()) == null) {
            throw new AssertionError();
        }
        if (z10 || !this.f51066b.g(a10.s0()).isInterface()) {
            return Collections.singletonList(new C7437ga(184, a10, false));
        }
        throw new AssertionError();
    }

    public final void a(com.android.tools.r8.graph.A2 a22, final BiFunction biFunction, com.android.tools.r8.synthesis.N n10) {
        n10.f58127q = false;
        C4724u1 b10 = this.f51066b.b();
        b10.getClass();
        n10.f58115e = a22.y0().b(b10, a22.s0());
        n10.f58119i = com.android.tools.r8.graph.L4.b(4105, false);
        n10.f58117g = new com.android.tools.r8.synthesis.M() {
            @Override
            public final AbstractC4497i0 a(com.android.tools.r8.graph.A2 a23) {
                return C8640nm.this.a(biFunction, a23);
            }
        };
    }

    public final com.android.tools.r8.graph.A2 a(final com.android.tools.r8.graph.A2 a22, AbstractC7103ea abstractC7103ea, C5035Df c5035Df, com.android.tools.r8.graph.H5 h52) {
        final BiFunction biFunction = (BiFunction) this.f51067c.get(a22);
        com.android.tools.r8.graph.H5 b10 = this.f51066b.f38408a.g().b(new com.android.tools.r8.synthesis.I() {
            @Override
            public final S.b a(com.android.tools.r8.synthesis.S s10) {
                S.b bVar;
                bVar = s10.f58170W;
                return bVar;
            }
        }, c5035Df.a(), this.f51066b, new Consumer() {
            @Override
            public final void accept(Object obj) {
                C8640nm.this.a(a22, biFunction, (com.android.tools.r8.synthesis.N) obj);
            }
        });
        abstractC7103ea.x(b10, h52);
        return b10.getReference();
    }

    public final AbstractC4497i0 a(BiFunction biFunction, com.android.tools.r8.graph.A2 a22) {
        return (AbstractC4497i0) biFunction.apply(this.f51066b.b(), a22);
    }
}
