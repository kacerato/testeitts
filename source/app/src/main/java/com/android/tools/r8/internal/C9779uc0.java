package com.android.tools.r8.internal;

import com.android.tools.r8.graph.AbstractC4497i0;
import com.android.tools.r8.graph.C4460g1;
import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4593n2;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.internal.C8106kb;
import com.android.tools.r8.synthesis.S;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.IdentityHashMap;
import java.util.Iterator;
import java.util.List;
import java.util.function.BiFunction;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.IntConsumer;
import java.util.function.Supplier;

public class C9779uc0 implements X9 {

    public static final boolean f52896f = true;

    public final C4798y f52897b;

    public final C4724u1 f52898c;

    public final AbstractC7552hC f52899d;

    public final com.android.tools.r8.graph.I2 f52900e;

    public C9779uc0(C4798y c4798y) {
        this.f52897b = c4798y;
        C4724u1 b10 = c4798y.b();
        this.f52898c = b10;
        this.f52899d = AbstractC7552hC.a(b10.f37849E1, b10.f37884J1, b10.f37891K1, b10.f37877I1, b10.f37870H1, b10.f38068i2);
        com.android.tools.r8.graph.M2 m22 = b10.f38052g2;
        this.f52900e = b10.a(m22, b10.f38092l2, b10.f38180w2, m22);
    }

    public static void a(C4724u1 c4724u1) {
        synchronized (c4724u1) {
            c4724u1.a(c4724u1.d(c4724u1.b("[Ljava/lang/Object;")));
        }
        c4724u1.c("[Ljava/lang/String;");
        C6611bc0.a(c4724u1);
        C6444ac0.a(c4724u1);
        C6777cc0.a(c4724u1);
    }

    public final void b(final C10113wc0 c10113wc0, Z70 z70, com.android.tools.r8.graph.H5 h52, AbstractC7103ea abstractC7103ea) {
        final com.android.tools.r8.graph.H2 h22 = c10113wc0.f53533e;
        com.android.tools.r8.graph.M2 m22 = h22.f36245e;
        C4724u1 c4724u1 = this.f52898c;
        final com.android.tools.r8.graph.A2 a10 = c4724u1.a(m22, c4724u1.a(c4724u1.f38092l2, new com.android.tools.r8.graph.M2[0]), "$record$getFieldsAsObjects");
        if (!f52896f && h22.e(a10) != null) {
            throw new AssertionError();
        }
        abstractC7103ea.y(z70.a(new Supplier() {
            @Override
            public final Object get() {
                return C9779uc0.this.a(h22, c10113wc0, a10);
            }
        }, a10), h52);
    }

    public final void c(C10113wc0 c10113wc0, Z70 z70, com.android.tools.r8.graph.H5 h52, AbstractC7103ea abstractC7103ea) {
        final com.android.tools.r8.graph.H2 h22 = c10113wc0.f53533e;
        com.android.tools.r8.graph.M2 m22 = h22.f36245e;
        C4724u1 c4724u1 = this.f52898c;
        final com.android.tools.r8.graph.A2 a10 = c4724u1.a(m22, c4724u1.a(c4724u1.f37884J1, new com.android.tools.r8.graph.M2[0]), "$record$hashCode");
        if (!f52896f && h22.e(a10) != null) {
            throw new AssertionError();
        }
        final C8699o50 a11 = a(h22.k1());
        abstractC7103ea.h(z70.a(new Supplier() {
            @Override
            public final Object get() {
                return C9779uc0.this.c(h22, a11, a10);
            }
        }, a10), h52);
    }

    public final void a(com.android.tools.r8.graph.I2 i22, final BiFunction biFunction, com.android.tools.r8.synthesis.N n10) {
        n10.f58115e = i22;
        n10.f58119i = com.android.tools.r8.graph.L4.b(4105, false);
        n10.f58117g = new com.android.tools.r8.synthesis.M() {
            @Override
            public final AbstractC4497i0 a(com.android.tools.r8.graph.A2 a22) {
                return C9779uc0.this.a(biFunction, a22);
            }
        };
        n10.f58127q = false;
    }

    public final com.android.tools.r8.graph.H5 b(com.android.tools.r8.graph.H2 h22, C8699o50 c8699o50, com.android.tools.r8.graph.A2 a22) {
        return a(h22, new C6444ac0(this.f52897b, h22.f36245e, (List) c8699o50.a()), a22);
    }

    public final com.android.tools.r8.graph.H5 c(com.android.tools.r8.graph.H2 h22, C8699o50 c8699o50, com.android.tools.r8.graph.A2 a22) {
        return a(h22, new C6777cc0(this.f52897b, h22.f36245e, (List) c8699o50.a(), false), a22);
    }

    @Override
    public final void a(IntConsumer intConsumer) {
        AbstractC4962Ca.b(intConsumer);
        intConsumer.accept(186);
    }

    @Override
    public final void a(AbstractC7103ea abstractC7103ea, Z70 z70, com.android.tools.r8.graph.H5 h52) {
        for (W9 w92 : h52.d().Q0().V().E0()) {
            w92.getClass();
            if ((w92 instanceof C7604ha) && a(h52, w92).a()) {
                C10113wc0 a10 = AbstractC10280xc0.a(w92.k().V(), this.f52897b);
                com.android.tools.r8.graph.L2 l22 = a10.f53529a;
                C4724u1 c4724u1 = this.f52898c;
                if (l22 == c4724u1.f38098m0) {
                    b(a10, z70, h52, abstractC7103ea);
                } else if (l22 == c4724u1.f37987Y) {
                    if (a10.f53533e.k1().size() >= 32) {
                        c(a10, z70, h52, abstractC7103ea);
                    }
                } else if (l22 == c4724u1.f37980X) {
                    a(a10, z70, h52, abstractC7103ea);
                } else {
                    throw new C5417Jv0("Invoke dynamic needs record desugaring but could not be desugared.");
                }
            }
        }
    }

    @Override
    public final C6473am a(com.android.tools.r8.graph.H5 h52, W9 w92) {
        w92.getClass();
        if (w92 instanceof C7604ha) {
            C7604ha k10 = w92.k();
            if (AbstractC10280xc0.a(k10.V(), this.f52897b, h52)) {
                return a(w92);
            }
            return C6473am.f46625a;
        }
        if (w92.L()) {
            C7437ga j10 = w92.j();
            boolean b10 = j10.b(h52.p());
            com.android.tools.r8.graph.A2 V10 = j10.V();
            if (a(V10, b10) != V10) {
                com.android.tools.r8.graph.A2 a10 = a(j10.V(), b10);
                if (f52896f || a10 != j10.V()) {
                    return a(j10, a10);
                }
                throw new AssertionError();
            }
            return C6473am.f46625a;
        }
        return C6473am.f46625a;
    }

    public final C6204Xl a(final W9 w92) {
        return new C6204Xl(AbstractC9365s5.a(new InterfaceC6147Wl() {
            @Override
            public final Collection a(B60 b60, InterfaceC8175ky interfaceC8175ky, QT qt, D9 d92, AbstractC7103ea abstractC7103ea, com.android.tools.r8.graph.H5 h52, C5035Df c5035Df, Y9 y92, C4724u1 c4724u1) {
                return C9779uc0.this.a(w92, b60, interfaceC8175ky, qt, d92, abstractC7103ea, h52, c5035Df, y92, c4724u1);
            }
        }));
    }

    public final com.android.tools.r8.graph.H5 a(com.android.tools.r8.graph.H2 h22, C10113wc0 c10113wc0, com.android.tools.r8.graph.A2 a22) {
        return a(h22, new C6611bc0(this.f52897b, this.f52898c.f38084k2, c10113wc0.f53532d), a22);
    }

    public final Collection a(W9 w92, B60 b60, InterfaceC8175ky interfaceC8175ky, QT qt, D9 d92, AbstractC7103ea abstractC7103ea, com.android.tools.r8.graph.H5 h52, C5035Df c5035Df, Y9 y92, C4724u1 c4724u1) {
        C7604ha k10 = w92.k();
        C4798y c4798y = this.f52897b;
        if (!AbstractC10280xc0.f53783a && !AbstractC10280xc0.a(k10.V(), c4798y, h52)) {
            throw new AssertionError();
        }
        C10113wc0 a10 = AbstractC10280xc0.a(k10.V(), c4798y);
        com.android.tools.r8.graph.L2 l22 = a10.f53529a;
        C4724u1 c4724u12 = this.f52898c;
        if (l22 == c4724u12.f38098m0) {
            return a(a10, qt, abstractC7103ea, h52, c5035Df);
        }
        if (l22 == c4724u12.f37987Y) {
            return a(a10, interfaceC8175ky, qt, abstractC7103ea, h52, c5035Df);
        }
        if (l22 == c4724u12.f37980X) {
            ArrayList arrayList = new ArrayList();
            com.android.tools.r8.graph.H2 h22 = a10.f53533e;
            com.android.tools.r8.graph.M2 type = h22.getType();
            C4724u1 c4724u13 = this.f52898c;
            com.android.tools.r8.graph.A2 a11 = c4724u13.a(type, c4724u13.a(c4724u13.f37849E1, c4724u13.f38068i2), "$record$equals");
            if (!f52896f && h22.e(a11) == null) {
                throw new AssertionError();
            }
            arrayList.add(new C7437ga(183, a11, false));
            return arrayList;
        }
        throw new C5417Jv0("Invoke dynamic needs record desugaring but could not be desugared.");
    }

    public final void a(C10113wc0 c10113wc0, Z70 z70, com.android.tools.r8.graph.H5 h52, AbstractC7103ea abstractC7103ea) {
        final com.android.tools.r8.graph.H2 h22 = c10113wc0.f53533e;
        com.android.tools.r8.graph.M2 m22 = h22.f36245e;
        C4724u1 c4724u1 = this.f52898c;
        final com.android.tools.r8.graph.A2 a10 = c4724u1.a(m22, c4724u1.a(c4724u1.f37849E1, c4724u1.f38068i2), "$record$equals");
        if (!f52896f && h22.e(a10) != null) {
            throw new AssertionError();
        }
        final C8699o50 a11 = a(h22.k1());
        abstractC7103ea.w(z70.a(new Supplier() {
            @Override
            public final Object get() {
                return C9779uc0.this.b(h22, a11, a10);
            }
        }, a10), h52);
    }

    public static C6204Xl a(final C7437ga c7437ga, final com.android.tools.r8.graph.A2 a22) {
        return new C6204Xl(AbstractC9365s5.a(new InterfaceC6147Wl() {
            @Override
            public final Collection a(B60 b60, InterfaceC8175ky interfaceC8175ky, QT qt, D9 d92, AbstractC7103ea abstractC7103ea, com.android.tools.r8.graph.H5 h52, C5035Df c5035Df, Y9 y92, C4724u1 c4724u1) {
                Collection singletonList;
                singletonList = Collections.singletonList(new C7437ga(r1.W(), a22, C7437ga.this.X()));
                return singletonList;
            }
        }));
    }

    public final com.android.tools.r8.graph.H5 a(com.android.tools.r8.graph.H2 h22, AbstractC8489mr0 abstractC8489mr0, com.android.tools.r8.graph.A2 a22) {
        com.android.tools.r8.graph.L4 b10 = com.android.tools.r8.graph.L4.b(4098, false);
        C4516j1[] c4516j1Arr = C4516j1.f37310u;
        com.android.tools.r8.graph.H5 h52 = new com.android.tools.r8.graph.H5(h22, new C4516j1.a(true).a(a22).a(b10).b().a());
        h52.a(abstractC8489mr0.b(), this.f52897b);
        return h52;
    }

    public final com.android.tools.r8.graph.H5 a(final com.android.tools.r8.graph.I2 i22, final BiFunction biFunction, C5035Df c5035Df) {
        return this.f52897b.f38408a.g().b(new com.android.tools.r8.synthesis.I() {
            @Override
            public final S.b a(com.android.tools.r8.synthesis.S s10) {
                S.b bVar;
                bVar = s10.f58149B;
                return bVar;
            }
        }, c5035Df.a(), this.f52897b, new Consumer() {
            @Override
            public final void accept(Object obj) {
                C9779uc0.this.a(i22, biFunction, (com.android.tools.r8.synthesis.N) obj);
            }
        });
    }

    public final AbstractC4497i0 a(BiFunction biFunction, com.android.tools.r8.graph.A2 a22) {
        return (AbstractC4497i0) biFunction.apply(this.f52897b.b(), a22);
    }

    public final C8699o50 a(List list) {
        com.android.tools.r8.graph.M2 a10;
        IdentityHashMap identityHashMap = new IdentityHashMap();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            C4460g1 c4460g1 = (C4460g1) it.next();
            if (c4460g1.getType().F0()) {
                a10 = c4460g1.getType();
            } else {
                a10 = EnumC5477Kw0.a(c4460g1.getType()).a(this.f52898c);
            }
            ((List) identityHashMap.computeIfAbsent(a10, new Function() {
                @Override
                public final Object apply(Object obj) {
                    return C9779uc0.a((com.android.tools.r8.graph.M2) obj);
                }
            })).add(c4460g1.getReference());
        }
        C8699o50 c8699o50 = new C8699o50(new ArrayList(), new ArrayList());
        for (com.android.tools.r8.graph.M2 m22 : this.f52899d) {
            List list2 = (List) identityHashMap.get(m22);
            if (list2 != null) {
                Iterator it2 = list2.iterator();
                while (it2.hasNext()) {
                    ((List) c8699o50.a()).add((C4554l1) it2.next());
                    ((List) c8699o50.b()).add(m22);
                }
            }
        }
        boolean z10 = f52896f;
        if (!z10 && ((List) c8699o50.a()).size() != list.size()) {
            throw new AssertionError();
        }
        if (z10 || ((List) c8699o50.b()).size() == list.size()) {
            return c8699o50;
        }
        throw new AssertionError();
    }

    public static List a(com.android.tools.r8.graph.M2 m22) {
        return new ArrayList();
    }

    public final ArrayList a(C10113wc0 c10113wc0, InterfaceC8175ky interfaceC8175ky, QT qt, AbstractC7103ea abstractC7103ea, com.android.tools.r8.graph.H5 h52, C5035Df c5035Df) {
        ArrayList arrayList = new ArrayList();
        final com.android.tools.r8.graph.H2 h22 = c10113wc0.f53533e;
        com.android.tools.r8.graph.M2 type = h22.getType();
        C4724u1 c4724u1 = this.f52898c;
        com.android.tools.r8.graph.A2 a10 = c4724u1.a(type, c4724u1.a(c4724u1.f37884J1, new com.android.tools.r8.graph.M2[0]), "$record$hashCode");
        if (h22.k1().isEmpty()) {
            qt.a(1);
            arrayList.add(new C10546z9(0, EnumC5477Kw0.f41825c));
            return arrayList;
        }
        if (h22.k1().size() < 32) {
            final C8699o50 a11 = a(h22.k1());
            EnumC5477Kw0 enumC5477Kw0 = EnumC5477Kw0.f41824b;
            int a12 = interfaceC8175ky.a(enumC5477Kw0.c());
            arrayList.add(new C8106kb(C8106kb.a.Dup));
            arrayList.add(new C10443yb(enumC5477Kw0, a12));
            C4554l1 c4554l1 = (C4554l1) ((List) a11.a()).get(0);
            int B02 = c4554l1.getType().B0();
            arrayList.add(new T9(c4554l1));
            for (int i10 = 1; i10 < ((List) a11.a()).size(); i10++) {
                arrayList.add(new C8938pa(EnumC5477Kw0.f41824b, a12));
                C4554l1 c4554l12 = (C4554l1) ((List) a11.a()).get(i10);
                arrayList.add(new T9(c4554l12));
                B02 += c4554l12.getType().B0();
            }
            qt.a(B02);
            com.android.tools.r8.graph.H5 b10 = this.f52897b.f38408a.g().b(new com.android.tools.r8.synthesis.I() {
                @Override
                public final S.b a(com.android.tools.r8.synthesis.S s10) {
                    S.b bVar;
                    bVar = s10.f58149B;
                    return bVar;
                }
            }, c5035Df.a(), this.f52897b, new Consumer() {
                @Override
                public final void accept(Object obj) {
                    C9779uc0.this.a(a11, h22, (com.android.tools.r8.synthesis.N) obj);
                }
            });
            abstractC7103ea.h(b10, h52);
            arrayList.add(new C7437ga(184, b10.getReference(), false));
            return arrayList;
        }
        if (!f52896f && h22.e(a10) == null) {
            throw new AssertionError();
        }
        arrayList.add(new C7437ga(183, a10, false));
        return arrayList;
    }

    public final void a(final C8699o50 c8699o50, final com.android.tools.r8.graph.H2 h22, com.android.tools.r8.synthesis.N n10) {
        C4724u1 c4724u1 = this.f52898c;
        n10.f58115e = c4724u1.a(c4724u1.f37884J1, new ArrayList((Collection) c8699o50.b()));
        n10.f58119i = com.android.tools.r8.graph.L4.b(4105, false);
        n10.f58117g = new com.android.tools.r8.synthesis.M() {
            @Override
            public final AbstractC4497i0 a(com.android.tools.r8.graph.A2 a22) {
                return C9779uc0.this.a(h22, c8699o50, a22);
            }
        };
        n10.f58127q = false;
    }

    public final AbstractC4497i0 a(com.android.tools.r8.graph.H2 h22, C8699o50 c8699o50, com.android.tools.r8.graph.A2 a22) {
        return new C6777cc0(this.f52897b, h22.getType(), (List) c8699o50.a(), true).b();
    }

    public final ArrayList a(C10113wc0 c10113wc0, QT qt, AbstractC7103ea abstractC7103ea, com.android.tools.r8.graph.H5 h52, C5035Df c5035Df) {
        qt.a(2);
        com.android.tools.r8.graph.M2 type = c10113wc0.f53533e.getType();
        C4724u1 c4724u1 = this.f52898c;
        com.android.tools.r8.graph.A2 a10 = c4724u1.a(type, c4724u1.a(c4724u1.f38092l2, new com.android.tools.r8.graph.M2[0]), "$record$getFieldsAsObjects");
        if (!f52896f && c10113wc0.f53533e.e(a10) == null) {
            throw new AssertionError();
        }
        ArrayList arrayList = new ArrayList();
        arrayList.add(new C7437ga(183, a10, false));
        arrayList.add(new C9544t9(c10113wc0.f53533e.getType(), true));
        if (this.f52897b.m()) {
            arrayList.add(new E9(c10113wc0.f53533e.getType(), AbstractC9112qc0.a(c10113wc0.f53531c, c10113wc0.f53532d)));
        } else {
            arrayList.add(new A9(c10113wc0.f53531c));
        }
        com.android.tools.r8.graph.H5 a11 = a(this.f52900e, new BiFunction() {
            @Override
            public final Object apply(Object obj, Object obj2) {
                return AbstractC7110ec0.a((C4724u1) obj, (com.android.tools.r8.graph.A2) obj2);
            }
        }, c5035Df);
        abstractC7103ea.f(a11, h52);
        arrayList.add(new C7437ga(184, a11.getReference(), false));
        return arrayList;
    }

    public final com.android.tools.r8.graph.A2 a(com.android.tools.r8.graph.A2 a22, boolean z10) {
        C4724u1 c4724u1 = this.f52898c;
        C4593n2 c4593n2 = c4724u1.f37873H4;
        com.android.tools.r8.graph.A2 a23 = c4593n2.f37503b;
        if (a22 != a23 && a22 != c4593n2.f37504c && a22 != c4593n2.f37505d) {
            return a22;
        }
        if (z10) {
            throw new C5325If("Rewrite invoke-super to abstract method error.");
        }
        if (a22 == a23) {
            return c4724u1.f37859F4.f38225c;
        }
        if (a22 == c4593n2.f37505d) {
            return c4724u1.f37859F4.f38230h;
        }
        if (f52896f || a22 == c4593n2.f37504c) {
            return c4724u1.f37859F4.f38227e;
        }
        throw new AssertionError();
    }
}
