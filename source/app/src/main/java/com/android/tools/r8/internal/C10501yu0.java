package com.android.tools.r8.internal;

import com.android.tools.r8.graph.AbstractC4497i0;
import com.android.tools.r8.graph.C4460g1;
import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.internal.C8106kb;
import com.android.tools.r8.synthesis.S;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.function.Consumer;
import java.util.function.IntConsumer;

public final class C10501yu0 implements X9 {

    public static final boolean f54187g = true;

    public final C4798y f54188b;

    public final com.android.tools.r8.graph.I2 f54189c;

    public final com.android.tools.r8.graph.M2 f54190d;

    public final com.android.tools.r8.graph.A2 f54191e;

    public final C4724u1 f54192f;

    public C10501yu0(C4798y c4798y) {
        this.f54188b = c4798y;
        C4724u1 b10 = c4798y.b();
        this.f54192f = b10;
        com.android.tools.r8.graph.M2 m22 = b10.f37884J1;
        this.f54189c = b10.a(m22, b10.f38068i2, m22, b10.f38092l2);
        com.android.tools.r8.graph.M2 d10 = b10.d("Ljava/lang/MatchException;");
        this.f54190d = d10;
        this.f54191e = b10.a(d10, b10.a(b10.f37905M1, b10.f38052g2, b10.f38173v3), b10.f38067i1);
    }

    @Override
    public final void a(IntConsumer intConsumer) {
        intConsumer.accept(186);
        intConsumer.accept(183);
        intConsumer.accept(187);
    }

    public final Collection b(B60 b60, InterfaceC8175ky interfaceC8175ky, QT qt, D9 d92, AbstractC7103ea abstractC7103ea, com.android.tools.r8.graph.H5 h52, C5035Df c5035Df, Y9 y92, C4724u1 c4724u1) {
        C4724u1 c4724u12 = this.f54192f;
        return new C5920Sm0(new C7437ga(183, c4724u12.a(c4724u12.f38157t3, c4724u12.a(c4724u12.f37905M1, c4724u12.f38052g2, c4724u12.f38173v3), c4724u12.f38067i1), false));
    }

    @Override
    public final C6473am a(final com.android.tools.r8.graph.H5 h52, W9 w92) {
        w92.getClass();
        if (!(w92 instanceof C7604ha)) {
            if ((w92 instanceof C10106wa) && w92.p().getType().a(this.f54190d)) {
                return new C6204Xl(AbstractC9365s5.a(new InterfaceC6147Wl() {
                    @Override
                    public final Collection a(B60 b60, InterfaceC8175ky interfaceC8175ky, QT qt, D9 d92, AbstractC7103ea abstractC7103ea, com.android.tools.r8.graph.H5 h53, C5035Df c5035Df, Y9 y92, C4724u1 c4724u1) {
                        return C10501yu0.this.a(b60, interfaceC8175ky, qt, d92, abstractC7103ea, h53, c5035Df, y92, c4724u1);
                    }
                }));
            }
            if (w92.N() && w92.j().V().a(this.f54191e)) {
                return new C6204Xl(AbstractC9365s5.a(new InterfaceC6147Wl() {
                    @Override
                    public final Collection a(B60 b60, InterfaceC8175ky interfaceC8175ky, QT qt, D9 d92, AbstractC7103ea abstractC7103ea, com.android.tools.r8.graph.H5 h53, C5035Df c5035Df, Y9 y92, C4724u1 c4724u1) {
                        return C10501yu0.this.b(b60, interfaceC8175ky, qt, d92, abstractC7103ea, h53, c5035Df, y92, c4724u1);
                    }
                }));
            }
            return C6473am.f46625a;
        }
        final com.android.tools.r8.graph.D0 V10 = w92.k().V();
        if (AbstractC4893Au0.b(V10, this.f54192f)) {
            return new C6204Xl(AbstractC9365s5.a(new InterfaceC6147Wl() {
                @Override
                public final Collection a(B60 b60, InterfaceC8175ky interfaceC8175ky, QT qt, D9 d92, AbstractC7103ea abstractC7103ea, com.android.tools.r8.graph.H5 h53, C5035Df c5035Df, Y9 y92, C4724u1 c4724u1) {
                    return C10501yu0.this.a(V10, h52, b60, interfaceC8175ky, qt, d92, abstractC7103ea, h53, c5035Df, y92, c4724u1);
                }
            }));
        }
        if (AbstractC4893Au0.a(V10, this.f54192f)) {
            final com.android.tools.r8.graph.M2 m22 = V10.f36213f.f36441f.f36675b[0];
            return new C6204Xl(AbstractC9365s5.a(new InterfaceC6147Wl() {
                @Override
                public final Collection a(B60 b60, InterfaceC8175ky interfaceC8175ky, QT qt, D9 d92, AbstractC7103ea abstractC7103ea, com.android.tools.r8.graph.H5 h53, C5035Df c5035Df, Y9 y92, C4724u1 c4724u1) {
                    return C10501yu0.this.a(V10, h52, m22, b60, interfaceC8175ky, qt, d92, abstractC7103ea, h53, c5035Df, y92, c4724u1);
                }
            }));
        }
        return C6473am.f46625a;
    }

    public final Collection a(B60 b60, InterfaceC8175ky interfaceC8175ky, QT qt, D9 d92, AbstractC7103ea abstractC7103ea, com.android.tools.r8.graph.H5 h52, C5035Df c5035Df, Y9 y92, C4724u1 c4724u1) {
        return new C5920Sm0(new C10106wa(this.f54192f.f38157t3));
    }

    public final Collection a(final com.android.tools.r8.graph.D0 d02, final com.android.tools.r8.graph.H5 h52, B60 b60, InterfaceC8175ky interfaceC8175ky, QT qt, D9 d92, AbstractC7103ea abstractC7103ea, com.android.tools.r8.graph.H5 h53, C5035Df c5035Df, Y9 y92, C4724u1 c4724u1) {
        return a(qt, abstractC7103ea, h53, c5035Df, new Consumer() {
            @Override
            public final void accept(Object obj) {
                C10501yu0.this.b(d02, h52, (List) obj);
            }
        });
    }

    public final void a(final com.android.tools.r8.graph.H5 h52, com.android.tools.r8.synthesis.N n10) {
        n10.f58127q = false;
        n10.f58115e = this.f54189c;
        n10.f58119i = com.android.tools.r8.graph.L4.b(4105, false);
        n10.f58117g = new com.android.tools.r8.synthesis.M() {
            @Override
            public final AbstractC4497i0 a(com.android.tools.r8.graph.A2 a22) {
                return C10501yu0.this.a(h52, a22);
            }
        };
    }

    public final Collection a(final com.android.tools.r8.graph.D0 d02, final com.android.tools.r8.graph.H5 h52, final com.android.tools.r8.graph.M2 m22, B60 b60, InterfaceC8175ky interfaceC8175ky, QT qt, D9 d92, AbstractC7103ea abstractC7103ea, com.android.tools.r8.graph.H5 h53, C5035Df c5035Df, Y9 y92, C4724u1 c4724u1) {
        return a(qt, abstractC7103ea, h53, c5035Df, new Consumer() {
            @Override
            public final void accept(Object obj) {
                C10501yu0.this.b(d02, h52, m22, (List) obj);
            }
        });
    }

    public final ArrayList a(QT qt, AbstractC7103ea abstractC7103ea, com.android.tools.r8.graph.H5 h52, C5035Df c5035Df, final Consumer consumer) {
        qt.a(3);
        com.android.tools.r8.graph.H2 a10 = this.f54188b.f38408a.g().a(new com.android.tools.r8.synthesis.I() {
            @Override
            public final S.b a(com.android.tools.r8.synthesis.S s10) {
                S.b bVar;
                bVar = s10.f58193t;
                return bVar;
            }
        }, c5035Df.a(), this.f54188b, new Consumer() {
            @Override
            public final void accept(Object obj) {
                C10501yu0.this.a(consumer, (com.android.tools.r8.synthesis.W) obj);
            }
        });
        abstractC7103ea.a(a10, h52);
        ArrayList arrayList = new ArrayList();
        Iterator<C4516j1> it = a10.z1().iterator();
        arrayList.add(new C7437ga(184, it.next().getReference(), false));
        if (!f54187g && it.hasNext()) {
            throw new AssertionError();
        }
        a(arrayList, c5035Df, h52, abstractC7103ea);
        return arrayList;
    }

    public final void a(Consumer consumer, com.android.tools.r8.synthesis.W w10) {
        new C6988dr0(w10, this.f54188b, consumer);
    }

    public final void a(ArrayList arrayList, C5035Df c5035Df, final com.android.tools.r8.graph.H5 h52, AbstractC7103ea abstractC7103ea) {
        com.android.tools.r8.graph.H5 b10 = this.f54188b.f38408a.g().b(new com.android.tools.r8.synthesis.I() {
            @Override
            public final S.b a(com.android.tools.r8.synthesis.S s10) {
                S.b bVar;
                bVar = s10.f58199z;
                return bVar;
            }
        }, c5035Df.a(), this.f54188b, new Consumer() {
            @Override
            public final void accept(Object obj) {
                C10501yu0.this.a(h52, (com.android.tools.r8.synthesis.N) obj);
            }
        });
        abstractC7103ea.c(b10, h52);
        arrayList.add(new C7437ga(184, b10.getReference(), false));
    }

    public final AbstractC4497i0 a(com.android.tools.r8.graph.H5 h52, com.android.tools.r8.graph.A2 a22) {
        C4724u1 c4724u1 = this.f54192f;
        C8103ka c8103ka = new C8103ka();
        C8103ka c8103ka2 = new C8103ka();
        C8103ka c8103ka3 = new C8103ka();
        C8103ka c8103ka4 = new C8103ka();
        C8103ka c8103ka5 = new C8103ka();
        C8103ka c8103ka6 = new C8103ka();
        C8103ka c8103ka7 = new C8103ka();
        C8103ka c8103ka8 = new C8103ka();
        C8103ka c8103ka9 = new C8103ka();
        C8103ka c8103ka10 = new C8103ka();
        C8103ka c8103ka11 = new C8103ka();
        C8103ka c8103ka12 = new C8103ka();
        C8103ka c8103ka13 = new C8103ka();
        com.android.tools.r8.graph.M2 m22 = a22.f38297f;
        EnumC5477Kw0 enumC5477Kw0 = EnumC5477Kw0.f41824b;
        C8938pa c8938pa = new C8938pa(enumC5477Kw0, 0);
        O9 o92 = new O9(NB.f42532g, enumC5477Kw0, c8103ka3);
        EnumC5477Kw0 enumC5477Kw02 = EnumC5477Kw0.f41825c;
        C10546z9 c10546z9 = new C10546z9(-1L, enumC5477Kw02);
        C6440ab c6440ab = new C6440ab(enumC5477Kw02);
        DD b10 = InterfaceC8008jy.b(c4724u1.f38068i2);
        NH nh2 = NH.f42550c;
        G9 g92 = new G9(new C10564zF(new int[]{0, 1, 2}, new InterfaceC8008jy[]{b10, nh2, InterfaceC8008jy.b(c4724u1.d("[Ljava/lang/Object;"))}));
        C8938pa c8938pa2 = new C8938pa(enumC5477Kw02, 1);
        C10443yb c10443yb = new C10443yb(enumC5477Kw02, 3);
        G9 g93 = new G9(new C10564zF(new int[]{0, 1, 2, 3}, new InterfaceC8008jy[]{InterfaceC8008jy.b(c4724u1.f38068i2), nh2, InterfaceC8008jy.b(c4724u1.d("[Ljava/lang/Object;")), nh2}));
        C8938pa c8938pa3 = new C8938pa(enumC5477Kw02, 3);
        C8938pa c8938pa4 = new C8938pa(enumC5477Kw0, 2);
        W8 w82 = new W8();
        Q9 q92 = new Q9(NB.f42528c, enumC5477Kw02, c8103ka12);
        C8938pa c8938pa5 = new C8938pa(enumC5477Kw0, 2);
        C8938pa c8938pa6 = new C8938pa(enumC5477Kw02, 3);
        X8 x82 = new X8(YV.f45995b);
        C10443yb c10443yb2 = new C10443yb(enumC5477Kw0, 4);
        C8938pa c8938pa7 = new C8938pa(enumC5477Kw0, 4);
        V9 v92 = new V9(c4724u1.f38180w2);
        NB nb2 = NB.f42527b;
        O9 o93 = new O9(nb2, enumC5477Kw02, c8103ka9);
        C8938pa c8938pa8 = new C8938pa(enumC5477Kw0, 4);
        C7710i9 c7710i9 = new C7710i9(c4724u1.f38180w2);
        C8938pa c8938pa9 = new C8938pa(enumC5477Kw0, 0);
        C7437ga c7437ga = new C7437ga(182, c4724u1.a(c4724u1.f38180w2, c4724u1.a(c4724u1.f37849E1, c4724u1.f38068i2), c4724u1.b("isInstance")), false);
        O9 o94 = new O9(nb2, enumC5477Kw02, c8103ka11);
        C8938pa c8938pa10 = new C8938pa(enumC5477Kw02, 3);
        C6440ab c6440ab2 = new C6440ab(enumC5477Kw02);
        G9 g94 = new G9(new C10564zF(new int[]{0, 1, 2, 3, 4}, new InterfaceC8008jy[]{InterfaceC8008jy.b(c4724u1.f38068i2), nh2, InterfaceC8008jy.b(c4724u1.d("[Ljava/lang/Object;")), nh2, InterfaceC8008jy.b(c4724u1.f38068i2)}));
        C8938pa c8938pa11 = new C8938pa(enumC5477Kw0, 0);
        C8938pa c8938pa12 = new C8938pa(enumC5477Kw0, 4);
        com.android.tools.r8.graph.M2 m23 = c4724u1.f38068i2;
        AbstractC7552hC a10 = AbstractC7552hC.a(c8103ka, c8938pa, o92, c8103ka2, c10546z9, c6440ab, c8103ka3, g92, c8938pa2, c10443yb, c8103ka4, g93, c8938pa3, c8938pa4, w82, q92, c8103ka5, c8938pa5, c8938pa6, x82, c10443yb2, c8103ka6, c8938pa7, v92, o93, c8103ka7, c8938pa8, c7710i9, c8938pa9, c7437ga, o94, c8103ka8, c8938pa10, c6440ab2, c8103ka9, g94, c8938pa11, c8938pa12, new C7437ga(182, c4724u1.a(m23, c4724u1.a(c4724u1.f37849E1, m23), c4724u1.b("equals")), false), new O9(nb2, enumC5477Kw02, c8103ka11), c8103ka10, new C8938pa(enumC5477Kw02, 3), new C6440ab(enumC5477Kw02), c8103ka11, new G9(new C10564zF(new int[]{0, 1, 2, 3}, new InterfaceC8008jy[]{InterfaceC8008jy.b(c4724u1.f38068i2), nh2, InterfaceC8008jy.b(c4724u1.d("[Ljava/lang/Object;")), nh2})), new R9(3, 1), new M9(c8103ka4), c8103ka12, new G9(new C10564zF(new int[]{0, 1, 2}, new InterfaceC8008jy[]{InterfaceC8008jy.b(c4724u1.f38068i2), nh2, InterfaceC8008jy.b(c4724u1.d("[Ljava/lang/Object;"))})), new C10546z9(-2L, enumC5477Kw02), new C6440ab(enumC5477Kw02), c8103ka13);
        C6190Xe0 c6190Xe0 = C6190Xe0.f45779e;
        com.android.tools.r8.graph.G g10 = new com.android.tools.r8.graph.G(m22, 2, 5, a10, c6190Xe0, c6190Xe0);
        return this.f54188b.E().J() ? g10.a(a22, true, h52.getReference(), false, this.f54192f) : g10;
    }

    public final void b(com.android.tools.r8.graph.D0 d02, final com.android.tools.r8.graph.H5 h52, final com.android.tools.r8.graph.M2 m22, final List list) {
        a(list, d02, new Consumer() {
            @Override
            public final void accept(Object obj) {
                C10501yu0.this.a(list, m22, h52, (com.android.tools.r8.graph.R2) obj);
            }
        });
    }

    public final void a(List list, com.android.tools.r8.graph.M2 m22, com.android.tools.r8.graph.H5 h52, com.android.tools.r8.graph.R2 r22) {
        C4460g1 b10;
        if (r22.S0()) {
            list.add(new C9544t9((com.android.tools.r8.graph.M2) r22.E0().W0(), false));
            return;
        }
        C4554l1 c4554l1 = null;
        if (r22.R0()) {
            com.android.tools.r8.graph.L2 l22 = (com.android.tools.r8.graph.L2) r22.D0().W0();
            com.android.tools.r8.graph.E0 c10 = this.f54188b.f().c(m22);
            if (c10 != null && (b10 = c10.b(l22)) != null) {
                c4554l1 = b10.getReference();
            }
            if (c4554l1 == null) {
                list.add(new C10212x9());
                return;
            } else {
                list.add(new C9942vb(c4554l1));
                return;
            }
        }
        throw new C5325If(h52.f36317b.f36244d, "Invalid bootstrap arg for enum switch " + ((Object) r22), null);
    }

    public final void b(com.android.tools.r8.graph.D0 d02, final com.android.tools.r8.graph.H5 h52, final List list) {
        a(list, d02, new Consumer() {
            @Override
            public final void accept(Object obj) {
                C10501yu0.this.a(list, h52, (com.android.tools.r8.graph.R2) obj);
            }
        });
    }

    public final void a(List list, com.android.tools.r8.graph.H5 h52, com.android.tools.r8.graph.R2 r22) {
        if (r22.S0()) {
            list.add(new C9544t9((com.android.tools.r8.graph.M2) r22.E0().W0(), false));
            return;
        }
        if (r22.N0()) {
            list.add(new C10546z9(r22.w0().W0(), EnumC5477Kw0.f41825c));
            list.add(new C7437ga(184, this.f54192f.f37828B4.f36632d, false));
            return;
        }
        if (r22.R0()) {
            list.add(new A9((com.android.tools.r8.graph.L2) r22.D0().W0()));
            return;
        }
        if (r22 instanceof com.android.tools.r8.graph.S2) {
            C4554l1 a10 = AbstractC4893Au0.a(r22.r0(), h52, this.f54188b);
            if (a10 == null) {
                list.add(new C10212x9());
                return;
            } else {
                list.add(new C9942vb(a10));
                return;
            }
        }
        throw new C5325If(h52.f36317b.f36244d, "Invalid bootstrap arg for type switch " + ((Object) r22), null);
    }

    public final void a(List list, com.android.tools.r8.graph.D0 d02, Consumer consumer) {
        list.add(new C10546z9(d02.f36215h.size(), EnumC5477Kw0.f41825c));
        list.add(new C10273xa(this.f54192f.f38092l2));
        for (int i10 = 0; i10 < d02.f36215h.size(); i10++) {
            com.android.tools.r8.graph.R2 r22 = (com.android.tools.r8.graph.R2) d02.f36215h.get(i10);
            list.add(new C8106kb(C8106kb.a.Dup));
            list.add(new C10546z9(i10, EnumC5477Kw0.f41825c));
            consumer.accept(r22);
            list.add(new Z8(YV.f45995b));
        }
    }
}
