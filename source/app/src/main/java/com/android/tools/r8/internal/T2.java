package com.android.tools.r8.internal;

import com.android.tools.r8.graph.AbstractC4479h1;
import com.android.tools.r8.graph.AbstractC4497i0;
import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4725u2;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.synthesis.S;
import java.util.ArrayList;
import java.util.Collection;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.IntConsumer;

public final class T2 implements X9 {

    public static final boolean f44374e = true;

    public final C4798y f44375b;

    public final com.android.tools.r8.androidapi.a f44376c;

    public final com.android.tools.r8.graph.O2 f44377d;

    public T2(C4798y c4798y, com.android.tools.r8.androidapi.a aVar) {
        this.f44375b = c4798y;
        this.f44376c = aVar;
        this.f44377d = new com.android.tools.r8.graph.O2(new com.android.tools.r8.graph.M2[]{c4798y.b().f38068i2});
    }

    public static AbstractC4497i0 a(boolean z10, final C4554l1 c4554l1, F9 f92, com.android.tools.r8.graph.H5 h52, com.android.tools.r8.graph.A2 a22) {
        C6053Uv a10 = new C6053Uv().a(z10, new Consumer() {
            @Override
            public final void accept(Object obj) {
                T2.b(C4554l1.this, (C6053Uv) obj);
            }
        }, new Consumer() {
            @Override
            public final void accept(Object obj) {
                T2.a(C4554l1.this, (C6053Uv) obj);
            }
        }).a(f92.H(), new C6416aP0(), new C6583bP0());
        a10.f44904d = h52.getReference();
        return a10.a();
    }

    public static void b(C4554l1 c4554l1, C6053Uv c6053Uv) {
        c6053Uv.f44901a = c4554l1;
        c6053Uv.f44902b = AbstractC9530t40.f52517a;
    }

    public final AbstractC4497i0 c(com.android.tools.r8.graph.E0 e02, com.android.tools.r8.graph.A2 a22) {
        return new C9059qE(this.f44375b, a22.s0(), e02.getType()).b();
    }

    @Override
    public final void b(IntConsumer intConsumer) {
        intConsumer.accept(200);
    }

    public final com.android.tools.r8.androidapi.f b(com.android.tools.r8.graph.H5 h52, W9 w92) {
        C8699o50 a10;
        Function function;
        if (h52.d().F0() && !this.f44375b.f38408a.g().a(h52.p(), new com.android.tools.r8.synthesis.I() {
            @Override
            public final S.b a(com.android.tools.r8.synthesis.S s10) {
                S.b bVar;
                bVar = s10.f58151D;
                return bVar;
            }
        })) {
            return this.f44375b.f38405T;
        }
        final com.android.tools.r8.graph.J2 a11 = a(w92);
        if (a11 != null && a11.S().I0()) {
            com.android.tools.r8.graph.E0 g10 = this.f44375b.g(a11.S());
            if (g10 == null) {
                return this.f44375b.f38405T;
            }
            if (a11 instanceof com.android.tools.r8.graph.M2) {
                com.android.tools.r8.androidapi.a aVar = this.f44376c;
                int i10 = com.android.tools.r8.androidapi.f.f35602a;
                a10 = C8699o50.a(g10, aVar.a(a11, com.android.tools.r8.androidapi.h.f35609b));
            } else {
                C4798y c4798y = this.f44375b;
                a10 = G2.a(c4798y, c4798y.g(), g10, a11.m0());
            }
            com.android.tools.r8.androidapi.f fVar = (com.android.tools.r8.androidapi.f) a10.b();
            if (!this.f44375b.f38405T.d(fVar) && ((!fVar.q() || !fVar.F().a().e(C2.G)) && !fVar.U())) {
                boolean z10 = f44374e;
                if (!z10 && !fVar.q()) {
                    throw new AssertionError();
                }
                com.android.tools.r8.graph.E0 e02 = (com.android.tools.r8.graph.E0) a10.a();
                if (e02 == null || !e02.f0()) {
                    if (z10) {
                        return this.f44375b.f38405T;
                    }
                    throw new AssertionError((Object) "When computed a known api level we should always have a library class");
                }
                if (G2.a(h52.getHolder(), fVar)) {
                    return this.f44375b.f38405T;
                }
                if (e02.isInterface() || w92.F() || (w92 instanceof V9) || (w92 instanceof C9544t9)) {
                    return fVar;
                }
                C4725u2 G10 = e02.G();
                if (a11.r0()) {
                    function = new Function() {
                        @Override
                        public final Object apply(Object obj) {
                            AbstractC4479h1 b10;
                            b10 = ((com.android.tools.r8.graph.E0) obj).b(com.android.tools.r8.graph.J2.this.n0());
                            return b10;
                        }
                    };
                } else {
                    function = new Function() {
                        @Override
                        public final Object apply(Object obj) {
                            return T2.b(com.android.tools.r8.graph.J2.this, (com.android.tools.r8.graph.E0) obj);
                        }
                    };
                }
                AbstractC4479h1 a12 = a(G10, function);
                if (a12 == null || !a12.H0()) {
                    return this.f44375b.f38405T;
                }
                return fVar;
            }
            return this.f44375b.f38405T;
        }
        return this.f44375b.f38405T;
    }

    public static AbstractC4497i0 a(boolean z10, C4724u1 c4724u1, com.android.tools.r8.graph.A2 a22, com.android.tools.r8.graph.E0 e02, com.android.tools.r8.graph.A2 a23) {
        if (z10) {
            C6842cy b10 = new C6842cy(c4724u1).b(a22, e02.isInterface());
            b10.f47222b = a22;
            b10.f47225e = false;
            return b10.a();
        }
        C6842cy a10 = new C6842cy(c4724u1).a(a22, e02.isInterface());
        a10.f47222b = a22;
        a10.f47225e = true;
        return a10.a();
    }

    @Override
    public final void a(final IntConsumer intConsumer) {
        AbstractC4962Ca.a(intConsumer);
        AbstractC4962Ca.b(new IntConsumer() {
            @Override
            public final void accept(int i10) {
                T2.a(IntConsumer.this, i10);
            }
        });
        intConsumer.accept(192);
        intConsumer.accept(193);
    }

    public static void a(IntConsumer intConsumer, int i10) {
        if (i10 != 183) {
            intConsumer.accept(i10);
        }
    }

    public static void a(C4554l1 c4554l1, C6053Uv c6053Uv) {
        c6053Uv.f44901a = c4554l1;
        c6053Uv.f44902b = AbstractC9530t40.f52518b;
    }

    @Override
    public final C6473am a(final com.android.tools.r8.graph.H5 h52, final W9 w92) {
        final com.android.tools.r8.androidapi.f b10 = b(h52, w92);
        if (this.f44375b.f38405T.d(b10)) {
            return C6473am.f46625a;
        }
        return new C6204Xl(AbstractC9365s5.a(new InterfaceC6147Wl() {
            @Override
            public final Collection a(B60 b60, InterfaceC8175ky interfaceC8175ky, QT qt, D9 d92, AbstractC7103ea abstractC7103ea, com.android.tools.r8.graph.H5 h53, C5035Df c5035Df, Y9 y92, C4724u1 c4724u1) {
                return T2.this.a(w92, b10, h52, b60, interfaceC8175ky, qt, d92, abstractC7103ea, h53, c5035Df, y92, c4724u1);
            }
        }));
    }

    public final Collection a(W9 w92, com.android.tools.r8.androidapi.f fVar, com.android.tools.r8.graph.H5 h52, B60 b60, InterfaceC8175ky interfaceC8175ky, QT qt, D9 d92, AbstractC7103ea abstractC7103ea, com.android.tools.r8.graph.H5 h53, C5035Df c5035Df, Y9 y92, C4724u1 c4724u1) {
        C5209Gf a10 = c5035Df.a();
        if (!f44374e && !w92.L() && !w92.I() && !w92.F() && !(w92 instanceof V9) && !(w92 instanceof C9544t9)) {
            throw new AssertionError(w92);
        }
        com.android.tools.r8.graph.H5 a11 = a(a10, w92, fVar, c4724u1, h52);
        abstractC7103ea.b(a11, h52);
        return new C5920Sm0(new C7437ga(184, a11.getReference(), false));
    }

    public static com.android.tools.r8.graph.J2 a(W9 w92) {
        if (w92.I()) {
            return w92.f().getField();
        }
        if (w92.F()) {
            return w92.b().getType();
        }
        if (w92 instanceof V9) {
            return w92.i().getType();
        }
        if (w92 instanceof C9544t9) {
            return w92.c().getType();
        }
        if (!w92.L() || w92.j().N()) {
            return null;
        }
        return w92.j().V();
    }

    public static AbstractC4479h1 b(com.android.tools.r8.graph.J2 j22, com.android.tools.r8.graph.E0 e02) {
        return e02.f36251k.f37700b.a(j22.l0());
    }

    public final AbstractC4479h1 a(C4725u2 c4725u2, final Function function) {
        AbstractC4479h1 abstractC4479h1 = (AbstractC4479h1) function.apply(c4725u2);
        if (abstractC4479h1 != null) {
            return abstractC4479h1;
        }
        AbstractC6333Zs0 a10 = this.f44375b.g().a(c4725u2, new InterfaceC7495gt0() {
            @Override
            public final Object a(Object obj, Object obj2, Object obj3) {
                return T2.a(Function.this, (com.android.tools.r8.graph.M2) obj, (com.android.tools.r8.graph.E0) obj2, (com.android.tools.r8.graph.E0) obj3);
            }
        });
        if (a10.c()) {
            return (AbstractC4479h1) a10.a().e();
        }
        return null;
    }

    public final AbstractC4497i0 b(com.android.tools.r8.graph.E0 e02, com.android.tools.r8.graph.A2 a22) {
        return new C8124kh(this.f44375b, a22.s0(), e02.getType()).b();
    }

    public static AbstractC6333Zs0 a(Function function, com.android.tools.r8.graph.M2 m22, com.android.tools.r8.graph.E0 e02, com.android.tools.r8.graph.E0 e03) {
        AbstractC4479h1 abstractC4479h1 = (AbstractC4479h1) function.apply(e02);
        if (abstractC4479h1 != null) {
            return new C6162Ws0(abstractC4479h1);
        }
        return C6276Ys0.f46097c;
    }

    public final com.android.tools.r8.graph.H5 a(C5209Gf c5209Gf, final W9 w92, final com.android.tools.r8.androidapi.f fVar, final C4724u1 c4724u1, final com.android.tools.r8.graph.H5 h52) {
        com.android.tools.r8.graph.J2 a10 = a(w92);
        boolean z10 = f44374e;
        if (!z10 && a10 == null) {
            throw new AssertionError();
        }
        final com.android.tools.r8.graph.E0 g10 = this.f44375b.g(a10.S());
        if (!z10 && g10 == null) {
            throw new AssertionError();
        }
        return this.f44375b.f38408a.g().b(new com.android.tools.r8.synthesis.I() {
            @Override
            public final S.b a(com.android.tools.r8.synthesis.S s10) {
                return T2.a(com.android.tools.r8.graph.E0.this, s10);
            }
        }, c5209Gf, this.f44375b, new Consumer() {
            @Override
            public final void accept(Object obj) {
                T2.this.a(fVar, w92, c4724u1, h52, (com.android.tools.r8.synthesis.N) obj);
            }
        });
    }

    public static S.b a(com.android.tools.r8.graph.E0 e02, com.android.tools.r8.synthesis.S s10) {
        if (e02.w1()) {
            return s10.f58168U;
        }
        return s10.f58169V;
    }

    public final void a(com.android.tools.r8.androidapi.f fVar, W9 w92, C4724u1 c4724u1, com.android.tools.r8.graph.H5 h52, com.android.tools.r8.synthesis.N n10) {
        boolean z10 = com.android.tools.r8.graph.L4.f36564f;
        com.android.tools.r8.graph.K4 k42 = (com.android.tools.r8.graph.K4) new com.android.tools.r8.graph.K4().a(true);
        k42.f37168a.z();
        k42.f37168a.y();
        ((com.android.tools.r8.graph.L4) k42.f37168a).N();
        n10.f58119i = (com.android.tools.r8.graph.L4) k42.f37168a;
        n10.f58123m = fVar;
        n10.f58124n = fVar;
        if (w92.L()) {
            a(n10, w92.j(), c4724u1);
            return;
        }
        if (w92.F()) {
            a(n10, w92.b(), c4724u1);
            return;
        }
        if (w92 instanceof V9) {
            a(n10, w92.i(), c4724u1);
        } else if (w92 instanceof C9544t9) {
            a(n10, w92.c(), c4724u1);
        } else {
            a(n10, w92.f(), c4724u1, h52);
        }
    }

    public final void a(com.android.tools.r8.synthesis.N n10, C7437ga c7437ga, final C4724u1 c4724u1) {
        com.android.tools.r8.graph.I2 y02;
        C4516j1 b10;
        final com.android.tools.r8.graph.A2 V10 = c7437ga.V();
        final com.android.tools.r8.graph.E0 g10 = this.f44375b.g(V10.s0());
        boolean z10 = f44374e;
        if (!z10 && g10 == null) {
            throw new AssertionError();
        }
        final boolean z11 = c7437ga.P() || c7437ga.M();
        if (!z10 && (b10 = g10.b(V10)) != null && b10.r1() != z11) {
            throw new AssertionError();
        }
        c4724u1.getClass();
        if (z11) {
            y02 = V10.y0().b(c4724u1, V10.s0());
        } else {
            y02 = V10.y0();
        }
        n10.f58115e = y02;
        n10.f58117g = new com.android.tools.r8.synthesis.M() {
            @Override
            public final AbstractC4497i0 a(com.android.tools.r8.graph.A2 a22) {
                return T2.a(z11, c4724u1, V10, g10, a22);
            }
        };
    }

    public final void a(com.android.tools.r8.synthesis.N n10, final F9 f92, C4724u1 c4724u1, final com.android.tools.r8.graph.H5 h52) {
        final C4554l1 field = f92.getField();
        com.android.tools.r8.graph.E0 g10 = this.f44375b.g(field.s0());
        if (!f44374e && g10 == null) {
            throw new AssertionError();
        }
        final boolean z10 = (f92 instanceof U9) || (f92 instanceof T9);
        com.android.tools.r8.graph.M2 type = f92.H() ? field.getType() : c4724u1.f37905M1;
        ArrayList arrayList = new ArrayList();
        if (z10) {
            arrayList.add(g10.getType());
        }
        if (f92.J()) {
            arrayList.add(field.getType());
        }
        n10.f58115e = c4724u1.a(type, arrayList);
        n10.f58117g = new com.android.tools.r8.synthesis.M() {
            @Override
            public final AbstractC4497i0 a(com.android.tools.r8.graph.A2 a22) {
                return T2.a(z10, field, f92, h52, a22);
            }
        };
    }

    public final void a(com.android.tools.r8.synthesis.N n10, C7710i9 c7710i9, C4724u1 c4724u1) {
        final com.android.tools.r8.graph.E0 g10 = this.f44375b.g(c7710i9.getType());
        if (!f44374e && g10 == null) {
            throw new AssertionError();
        }
        n10.f58115e = c4724u1.a(g10.getType(), this.f44377d);
        n10.f58117g = new com.android.tools.r8.synthesis.M() {
            @Override
            public final AbstractC4497i0 a(com.android.tools.r8.graph.A2 a22) {
                return T2.this.a(g10, a22);
            }
        };
    }

    public final AbstractC4497i0 a(com.android.tools.r8.graph.E0 e02, com.android.tools.r8.graph.A2 a22) {
        return new C8276lc(this.f44375b, a22.s0(), e02.getType()).b();
    }

    public final void a(com.android.tools.r8.synthesis.N n10, V9 v92, C4724u1 c4724u1) {
        final com.android.tools.r8.graph.E0 g10 = this.f44375b.g(v92.getType());
        if (!f44374e && g10 == null) {
            throw new AssertionError();
        }
        n10.f58115e = c4724u1.a(c4724u1.f37849E1, this.f44377d);
        n10.f58117g = new com.android.tools.r8.synthesis.M() {
            @Override
            public final AbstractC4497i0 a(com.android.tools.r8.graph.A2 a22) {
                return T2.this.c(g10, a22);
            }
        };
    }

    public final void a(com.android.tools.r8.synthesis.N n10, C9544t9 c9544t9, C4724u1 c4724u1) {
        final com.android.tools.r8.graph.E0 g10 = this.f44375b.g(c9544t9.getType());
        if (!f44374e && g10 == null) {
            throw new AssertionError();
        }
        n10.f58115e = c4724u1.a(c4724u1.f38180w2, new com.android.tools.r8.graph.M2[0]);
        n10.f58117g = new com.android.tools.r8.synthesis.M() {
            @Override
            public final AbstractC4497i0 a(com.android.tools.r8.graph.A2 a22) {
                return T2.this.b(g10, a22);
            }
        };
    }
}
