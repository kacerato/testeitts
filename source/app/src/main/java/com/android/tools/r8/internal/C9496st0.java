package com.android.tools.r8.internal;

import com.android.tools.r8.graph.AbstractC4497i0;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.synthesis.S;
import java.util.Collection;
import java.util.Objects;
import java.util.function.BiConsumer;
import java.util.function.BiFunction;
import java.util.function.Consumer;
import java.util.function.IntConsumer;

public final class C9496st0 implements X9 {

    public final C4798y f52479b;

    public final C4724u1 f52480c;

    public final com.android.tools.r8.graph.I2 f52481d;

    public final com.android.tools.r8.graph.A2 f52482e;

    public final com.android.tools.r8.graph.A2 f52483f;

    public C9496st0(C4798y c4798y) {
        this.f52479b = c4798y;
        C4724u1 b10 = c4798y.b();
        this.f52480c = b10;
        this.f52481d = b10.a(b10.f37905M1, b10.f38173v3, b10.f38068i2);
        C4724u1.e eVar = b10.f37908M4;
        this.f52482e = eVar.f38265a;
        this.f52483f = eVar.f38267c;
    }

    @Override
    public final void a(IntConsumer intConsumer) {
        AbstractC4962Ca.b(intConsumer);
    }

    public final C6204Xl b() {
        C4724u1 b10 = this.f52479b.b();
        com.android.tools.r8.graph.M2 m22 = b10.f37905M1;
        com.android.tools.r8.graph.M2 m23 = b10.f38173v3;
        final com.android.tools.r8.graph.I2 a10 = b10.a(m22, m23, m23);
        return new C6204Xl(AbstractC9365s5.a(new InterfaceC6147Wl() {
            @Override
            public final Collection a(B60 b60, InterfaceC8175ky interfaceC8175ky, QT qt, D9 d92, AbstractC7103ea abstractC7103ea, com.android.tools.r8.graph.H5 h52, C5035Df c5035Df, Y9 y92, C4724u1 c4724u1) {
                return C9496st0.this.a(a10, b60, interfaceC8175ky, qt, d92, abstractC7103ea, h52, c5035Df, y92, c4724u1);
            }
        }));
    }

    public final C6204Xl d() {
        C4724u1 b10 = this.f52479b.b();
        final com.android.tools.r8.graph.I2 a10 = b10.a(b10.a(1, b10.f38173v3), b10.f38173v3);
        return new C6204Xl(AbstractC9365s5.a(new InterfaceC6147Wl() {
            @Override
            public final Collection a(B60 b60, InterfaceC8175ky interfaceC8175ky, QT qt, D9 d92, AbstractC7103ea abstractC7103ea, com.android.tools.r8.graph.H5 h52, C5035Df c5035Df, Y9 y92, C4724u1 c4724u1) {
                return C9496st0.this.b(a10, b60, interfaceC8175ky, qt, d92, abstractC7103ea, h52, c5035Df, y92, c4724u1);
            }
        }));
    }

    public final Collection a(com.android.tools.r8.graph.I2 i22, B60 b60, InterfaceC8175ky interfaceC8175ky, QT qt, D9 d92, AbstractC7103ea abstractC7103ea, com.android.tools.r8.graph.H5 h52, C5035Df c5035Df, Y9 y92, C4724u1 c4724u1) {
        com.android.tools.r8.synthesis.I i10 = new com.android.tools.r8.synthesis.I() {
            @Override
            public final S.b a(com.android.tools.r8.synthesis.S s10) {
                S.b bVar;
                bVar = s10.f58150C;
                return bVar;
            }
        };
        BiFunction biFunction = new BiFunction() {
            @Override
            public final Object apply(Object obj, Object obj2) {
                return I5.N1((C4724u1) obj, (com.android.tools.r8.graph.A2) obj2);
            }
        };
        Objects.requireNonNull(abstractC7103ea);
        return a(i10, i22, biFunction, c5035Df, new C9831ut1(abstractC7103ea), c5035Df.f39582c);
    }

    public final C6204Xl c() {
        return new C6204Xl(AbstractC9365s5.a(new InterfaceC6147Wl() {
            @Override
            public final Collection a(B60 b60, InterfaceC8175ky interfaceC8175ky, QT qt, D9 d92, AbstractC7103ea abstractC7103ea, com.android.tools.r8.graph.H5 h52, C5035Df c5035Df, Y9 y92, C4724u1 c4724u1) {
                return C9496st0.this.a(b60, interfaceC8175ky, qt, d92, abstractC7103ea, h52, c5035Df, y92, c4724u1);
            }
        }));
    }

    public final Collection a(B60 b60, InterfaceC8175ky interfaceC8175ky, QT qt, D9 d92, final AbstractC7103ea abstractC7103ea, com.android.tools.r8.graph.H5 h52, C5035Df c5035Df, Y9 y92, C4724u1 c4724u1) {
        com.android.tools.r8.synthesis.I i10 = new com.android.tools.r8.synthesis.I() {
            @Override
            public final S.b a(com.android.tools.r8.synthesis.S s10) {
                S.b bVar;
                bVar = s10.f58161N;
                return bVar;
            }
        };
        com.android.tools.r8.graph.I2 i22 = this.f52481d;
        BiFunction biFunction = new BiFunction() {
            @Override
            public final Object apply(Object obj, Object obj2) {
                return I5.r((C4724u1) obj, (com.android.tools.r8.graph.A2) obj2);
            }
        };
        Objects.requireNonNull(abstractC7103ea);
        return a(i10, i22, biFunction, c5035Df, new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                AbstractC7103ea.this.e((com.android.tools.r8.graph.H5) obj, (com.android.tools.r8.graph.H5) obj2);
            }
        }, c5035Df.f39582c);
    }

    public final Collection b(com.android.tools.r8.graph.I2 i22, B60 b60, InterfaceC8175ky interfaceC8175ky, QT qt, D9 d92, AbstractC7103ea abstractC7103ea, com.android.tools.r8.graph.H5 h52, C5035Df c5035Df, Y9 y92, C4724u1 c4724u1) {
        com.android.tools.r8.synthesis.I i10 = new com.android.tools.r8.synthesis.I() {
            @Override
            public final S.b a(com.android.tools.r8.synthesis.S s10) {
                S.b bVar;
                bVar = s10.f58150C;
                return bVar;
            }
        };
        BiFunction biFunction = new BiFunction() {
            @Override
            public final Object apply(Object obj, Object obj2) {
                return I5.O1((C4724u1) obj, (com.android.tools.r8.graph.A2) obj2);
            }
        };
        Objects.requireNonNull(abstractC7103ea);
        return a(i10, i22, biFunction, c5035Df, new C9831ut1(abstractC7103ea), c5035Df.f39582c);
    }

    public final void a(com.android.tools.r8.graph.I2 i22, final BiFunction biFunction, com.android.tools.r8.synthesis.N n10) {
        n10.f58127q = false;
        n10.f58115e = i22;
        n10.f58119i = com.android.tools.r8.graph.L4.b(4105, false);
        n10.f58117g = new com.android.tools.r8.synthesis.M() {
            @Override
            public final AbstractC4497i0 a(com.android.tools.r8.graph.A2 a22) {
                return C9496st0.this.a(biFunction, a22);
            }
        };
    }

    public final C5920Sm0 a(com.android.tools.r8.synthesis.I i10, final com.android.tools.r8.graph.I2 i22, final BiFunction biFunction, C5035Df c5035Df, BiConsumer biConsumer, com.android.tools.r8.graph.H5 h52) {
        com.android.tools.r8.graph.H5 b10 = this.f52479b.f38408a.g().b(i10, c5035Df.a(), this.f52479b, new Consumer() {
            @Override
            public final void accept(Object obj) {
                C9496st0.this.a(i22, biFunction, (com.android.tools.r8.synthesis.N) obj);
            }
        });
        biConsumer.accept(b10, h52);
        return new C5920Sm0(new C7437ga(184, b10.getReference(), false));
    }

    public final AbstractC4497i0 a(BiFunction biFunction, com.android.tools.r8.graph.A2 a22) {
        return (AbstractC4497i0) biFunction.apply(this.f52479b.b(), a22);
    }

    public final boolean a(com.android.tools.r8.graph.M2 m22) {
        while (m22 != null) {
            C4724u1 c4724u1 = this.f52480c;
            if (m22 == c4724u1.f38068i2) {
                return false;
            }
            if (m22 == c4724u1.f38173v3) {
                return true;
            }
            com.android.tools.r8.graph.E0 g10 = this.f52479b.g(m22);
            if (g10 != null) {
                m22 = g10.f36247g;
            } else {
                throw new C5325If("Class or interface " + m22.j0() + " required for desugaring of try-with-resources is not found.");
            }
        }
        return false;
    }

    @Override
    public final C6473am a(com.android.tools.r8.graph.H5 h52, W9 w92) {
        if (w92.O()) {
            com.android.tools.r8.graph.A2 V10 = w92.j().V();
            com.android.tools.r8.graph.L2 l22 = V10.f38298g;
            C4724u1 c4724u1 = this.f52480c;
            if (l22 == c4724u1.f38143r5 && V10.f36127i == c4724u1.f38151s5) {
                return c();
            }
        }
        C8570nJ E10 = this.f52479b.E();
        E10.getClass();
        if (!E10.c(C2.K)) {
            com.android.tools.r8.graph.A2 a22 = this.f52482e;
            if (w92.L()) {
                com.android.tools.r8.graph.A2 V11 = w92.j().V();
                if (V11.f38298g == a22.f38298g && V11.f36127i == a22.f36127i && a(V11.f38297f)) {
                    return b();
                }
            }
            com.android.tools.r8.graph.A2 a23 = this.f52483f;
            if (w92.L()) {
                com.android.tools.r8.graph.A2 V12 = w92.j().V();
                if (V12.f38298g == a23.f38298g && V12.f36127i == a23.f36127i && a(V12.f38297f)) {
                    return d();
                }
            }
        }
        return C6473am.f46625a;
    }
}
