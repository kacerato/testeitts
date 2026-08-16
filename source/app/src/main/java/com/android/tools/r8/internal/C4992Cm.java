package com.android.tools.r8.internal;

import com.android.tools.r8.DiagnosticsLevel;
import com.android.tools.r8.FeatureSplit;
import com.android.tools.r8.graph.AbstractC4497i0;
import com.android.tools.r8.graph.C4421e0;
import com.android.tools.r8.graph.C4460g1;
import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4537k3;
import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.InterfaceC4440f0;
import com.android.tools.r8.origin.Origin;
import com.android.tools.r8.position.MethodPosition;
import com.android.tools.r8.position.Position;
import com.android.tools.r8.synthesis.AbstractC11582m;
import com.android.tools.r8.synthesis.C11579l;
import com.android.tools.r8.synthesis.C11591p;
import com.android.tools.r8.synthesis.S;
import com.android.tools.r8.utils.StringDiagnostic;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.function.BiConsumer;
import java.util.function.BiFunction;
import java.util.function.Consumer;
import java.util.function.Supplier;
import yd.C16181m;

public final class C4992Cm implements InterfaceC7875j9 {

    public static final boolean f39352f = true;

    public final C4798y f39353b;

    public final C4724u1 f39354c;

    public final C8473mm f39355d;

    public final C7640hm f39356e;

    public C4992Cm(C4798y c4798y) {
        this.f39353b = c4798y;
        this.f39354c = c4798y.b();
        this.f39355d = new C8473mm(c4798y);
        this.f39356e = new C7640hm(c4798y, this);
    }

    public static AbstractC4497i0 a(com.android.tools.r8.graph.G g10, com.android.tools.r8.graph.A2 a22) {
        return g10;
    }

    public final boolean b(com.android.tools.r8.graph.M2 m22) {
        return this.f39353b.f38408a.g().a(m22, new com.android.tools.r8.synthesis.I() {
            @Override
            public final S.b a(com.android.tools.r8.synthesis.S s10) {
                S.b bVar;
                bVar = s10.f58187n;
                return bVar;
            }
        }) || this.f39353b.f38408a.g().a(m22, new com.android.tools.r8.synthesis.I() {
            @Override
            public final S.b a(com.android.tools.r8.synthesis.S s10) {
                S.b bVar;
                bVar = s10.f58188o;
                return bVar;
            }
        });
    }

    public static void a(com.android.tools.r8.synthesis.W w10) {
    }

    public static void a(C11591p c11591p) {
    }

    public static void a(com.android.tools.r8.synthesis.N n10) {
        n10.f58119i = com.android.tools.r8.graph.L4.b(4105, false);
        n10.f58117g = null;
    }

    public final boolean a(com.android.tools.r8.graph.M2 m22, com.android.tools.r8.graph.A2 a22, com.android.tools.r8.graph.A2 a23, com.android.tools.r8.graph.H5 h52) {
        if (m22.E0()) {
            if (f39352f || a22 == null) {
                return a(m22.a(this.f39353b.b()), a22, a23, h52);
            }
            throw new AssertionError();
        }
        if (a22 != null) {
            return true;
        }
        if (!this.f39353b.E().x().b().a(m22)) {
            return false;
        }
        if (this.f39353b.E().x().a().h().containsKey(m22) || this.f39353b.E().x().a().m().containsKey(m22)) {
            return true;
        }
        a(m22, a23, h52);
        return false;
    }

    public static C5209Gf b(C4861Af c4861Af, com.android.tools.r8.graph.H2 h22) {
        int i10 = c4861Af.f40267b;
        c4861Af.f40267b = i10 + 1;
        C5209Gf c5209Gf = new C5209Gf(c4861Af, h22, i10);
        if (!C4861Af.f38673d) {
            c4861Af.f40266a.a(c5209Gf);
        }
        return c5209Gf;
    }

    public final C4516j1 b(com.android.tools.r8.graph.G g10, com.android.tools.r8.graph.A2 a22) {
        com.android.tools.r8.androidapi.f a10;
        com.android.tools.r8.graph.L4 b10 = com.android.tools.r8.graph.L4.b(4097, false);
        if (this.f39353b.m()) {
            int i10 = com.android.tools.r8.androidapi.f.f35602a;
            a10 = com.android.tools.r8.androidapi.g.f35607b;
        } else {
            com.android.tools.r8.androidapi.a aVar = this.f39353b.f38404S;
            C4724u1 c4724u1 = this.f39354c;
            int i11 = com.android.tools.r8.androidapi.f.f35602a;
            com.android.tools.r8.androidapi.h hVar = com.android.tools.r8.androidapi.h.f35609b;
            aVar.getClass();
            a10 = aVar.a(a22.a(c4724u1));
        }
        C4516j1[] c4516j1Arr = C4516j1.f37310u;
        C4516j1.a a11 = new C4516j1.a(true).a(a22).a(b10).a(g10);
        a11.f37340l = a10;
        if (g10 == null) {
            a10 = com.android.tools.r8.androidapi.g.f35607b;
        }
        a11.f37341m = a10;
        return a11.a();
    }

    public final com.android.tools.r8.graph.A2 a(com.android.tools.r8.graph.A2 a22, final InterfaceC5166Fm interfaceC5166Fm) {
        if (!this.f39353b.g().a(a22, false).w()) {
            com.android.tools.r8.synthesis.J g10 = this.f39353b.f38408a.g();
            com.android.tools.r8.graph.L2 t02 = a22.t0();
            com.android.tools.r8.graph.I2 y02 = a22.y0();
            com.android.tools.r8.synthesis.I i10 = new com.android.tools.r8.synthesis.I() {
                @Override
                public final S.b a(com.android.tools.r8.synthesis.S s10) {
                    S.b bVar;
                    bVar = s10.f58178e;
                    return bVar;
                }
            };
            com.android.tools.r8.graph.M2 s02 = a22.s0();
            C4798y c4798y = this.f39353b;
            Consumer consumer = new Consumer() {
                @Override
                public final void accept(Object obj) {
                    C4992Cm.a((C11591p) obj);
                }
            };
            Objects.requireNonNull(interfaceC5166Fm);
            Consumer consumer2 = new Consumer() {
                @Override
                public final void accept(Object obj) {
                    InterfaceC5166Fm.this.b((com.android.tools.r8.graph.I0) obj);
                }
            };
            C4421e0 a10 = com.android.tools.r8.synthesis.J.a(t02, y02, i10.a(g10.f58085b), c4798y, new Consumer() {
                @Override
                public final void accept(Object obj) {
                    C4992Cm.a((com.android.tools.r8.synthesis.N) obj);
                }
            }, g10.a(i10.a(g10.f58085b), consumer, consumer2, new C11579l(s02, s02, com.android.tools.r8.origin.c.a(), FeatureSplit.BASE), c4798y));
            if (!f39352f && a10.getReference() != a22) {
                throw new AssertionError();
            }
        }
        return a22;
    }

    @Override
    public final String b() {
        return "$wrapper";
    }

    public final void a(final AbstractC8710o9 abstractC8710o9, final C4861Af c4861Af, com.android.tools.r8.graph.H2 h22, Iterable iterable) {
        final com.android.tools.r8.graph.H2 a10 = a(h22, EnumC4934Bm.f39013b);
        C4460g1 a11 = a(a10);
        BiFunction biFunction = new BiFunction() {
            @Override
            public final Object apply(Object obj, Object obj2) {
                return C4992Cm.this.a(abstractC8710o9, c4861Af, a10, (com.android.tools.r8.graph.A2) obj, (C4554l1) obj2);
            }
        };
        ArrayList arrayList = new ArrayList();
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            arrayList.add((C4516j1) biFunction.apply((com.android.tools.r8.graph.A2) it.next(), a11.getReference()));
        }
        a10.a(arrayList);
        a10.a(a(a11));
        com.android.tools.r8.graph.H2 a12 = a(h22, EnumC4934Bm.f39014c);
        C4460g1 a13 = a(a12);
        BiFunction biFunction2 = new BiFunction() {
            @Override
            public final Object apply(Object obj, Object obj2) {
                return C4992Cm.this.b(abstractC8710o9, c4861Af, a10, (com.android.tools.r8.graph.A2) obj, (C4554l1) obj2);
            }
        };
        ArrayList arrayList2 = new ArrayList();
        Iterator it2 = iterable.iterator();
        while (it2.hasNext()) {
            arrayList2.add((C4516j1) biFunction2.apply((com.android.tools.r8.graph.A2) it2.next(), a13.getReference()));
        }
        a12.a(arrayList2);
        a12.a(a(a13));
    }

    public static C5209Gf a(C4861Af c4861Af, com.android.tools.r8.graph.H2 h22) {
        int i10 = c4861Af.f40267b;
        c4861Af.f40267b = i10 + 1;
        C5209Gf c5209Gf = new C5209Gf(c4861Af, h22, i10);
        if (!C4861Af.f38673d) {
            c4861Af.f40266a.a(c5209Gf);
        }
        return c5209Gf;
    }

    public final com.android.tools.r8.graph.A2 a(boolean z10, InterfaceC5166Fm interfaceC5166Fm, com.android.tools.r8.graph.H5 h52, Supplier supplier, com.android.tools.r8.graph.M2 m22, com.android.tools.r8.graph.A2 a22) {
        com.android.tools.r8.graph.A2 a23;
        if (a22 != null) {
            if (f39352f || !m22.E0()) {
                return a(a22, interfaceC5166Fm);
            }
            throw new AssertionError();
        }
        com.android.tools.r8.graph.M2 a10 = z10 ? m22 : C7139em.a(this.f39353b, m22);
        com.android.tools.r8.graph.M2 a11 = z10 ? C7139em.a(this.f39353b, m22) : m22;
        if (m22.E0()) {
            return a(a10, a11, interfaceC5166Fm, h52, supplier, a(a10 == m22, interfaceC5166Fm, h52, supplier, m22.a(1, this.f39354c), (com.android.tools.r8.graph.A2) null));
        }
        com.android.tools.r8.graph.A2 a12 = a(m22, a10, a11);
        if (a12 != null) {
            return a12;
        }
        com.android.tools.r8.graph.E0 a13 = a(m22);
        if (a13.o1()) {
            C8473mm c8473mm = this.f39355d;
            com.android.tools.r8.graph.E0 a14 = c8473mm.a(a13, interfaceC5166Fm);
            C4724u1 c4724u1 = c8473mm.f50420b;
            com.android.tools.r8.graph.A2 a15 = c4724u1.a(a14.f36245e, c4724u1.a(a11, a10), c8473mm.f50420b.f38114o0);
            if (C8473mm.f50418c || a14.f36252l.f36638b.a(a15) != null) {
                return a15;
            }
            throw new AssertionError();
        }
        boolean z11 = f39352f;
        if (!z11 && !this.f39353b.E().x().a().m().containsKey(m22)) {
            throw new AssertionError(m22);
        }
        C4876Am a16 = a(a13, interfaceC5166Fm);
        if (m22 == a10) {
            a23 = a16.f38713a;
        } else {
            a23 = a16.f38714b;
        }
        if (!z11 && a10 != a23.k(0)) {
            throw new AssertionError();
        }
        if (z11 || a11 == a23.z0()) {
            return a23;
        }
        throw new AssertionError();
    }

    public final C4516j1 b(AbstractC8710o9 abstractC8710o9, final C4861Af c4861Af, final com.android.tools.r8.graph.H2 h22, com.android.tools.r8.graph.A2 a22, C4554l1 c4554l1) {
        boolean isInterface;
        com.android.tools.r8.graph.M2 s02;
        C7640hm c7640hm = this.f39356e;
        Supplier supplier = new Supplier() {
            @Override
            public final Object get() {
                return C4992Cm.b(C4861Af.this, h22);
            }
        };
        com.android.tools.r8.graph.A2 a10 = c7640hm.f48711b.a(c4554l1.s0(), a22.f36127i, a22.f38298g);
        com.android.tools.r8.graph.E0 g10 = c7640hm.f48710a.g(a22.s0());
        if (g10 == null) {
            if (!C7640hm.f48709d) {
                C10261xU a11 = X2.a(c7640hm.f48710a);
                if (!a11.f53766c.b(a22.s0())) {
                    throw new AssertionError();
                }
            }
            isInterface = true;
        } else {
            isInterface = g10.isInterface();
        }
        boolean z10 = isInterface;
        com.android.tools.r8.graph.H5 r10 = c7640hm.f48710a.g().b(a22, z10).r();
        com.android.tools.r8.graph.A2 b10 = c7640hm.b(a22, false, abstractC8710o9, r10, supplier);
        com.android.tools.r8.graph.A2[] a12 = c7640hm.a(a22, true, abstractC8710o9, r10, supplier);
        if (c7640hm.f48710a.E().x().b().a(a22.s0())) {
            s02 = C7139em.a(c7640hm.f48710a, a22.s0());
        } else {
            s02 = a22.s0();
        }
        return c7640hm.f48712c.b(new C7014e(c7640hm.f48710a, c4554l1.s0(), c7640hm.a(a22, true, b10, a12, s02), z10, b10, a12, c4554l1).b(), a10);
    }

    public final com.android.tools.r8.graph.A2 a(final com.android.tools.r8.graph.M2 m22, final com.android.tools.r8.graph.M2 m23, InterfaceC5282Hm interfaceC5282Hm, com.android.tools.r8.graph.H5 h52, Supplier supplier, final com.android.tools.r8.graph.A2 a22) {
        com.android.tools.r8.graph.H5 b10 = this.f39353b.f38408a.g().b(new com.android.tools.r8.synthesis.I() {
            @Override
            public final S.b a(com.android.tools.r8.synthesis.S s10) {
                S.b bVar;
                bVar = s10.f58167T;
                return bVar;
            }
        }, (C5209Gf) supplier.get(), this.f39353b, new Consumer() {
            @Override
            public final void accept(Object obj) {
                C4992Cm.this.a(m23, m22, a22, (com.android.tools.r8.synthesis.N) obj);
            }
        });
        interfaceC5282Hm.z(b10, h52);
        return b10.getReference();
    }

    public final void a(final com.android.tools.r8.graph.M2 m22, final com.android.tools.r8.graph.M2 m23, final com.android.tools.r8.graph.A2 a22, com.android.tools.r8.synthesis.N n10) {
        n10.f58115e = this.f39354c.a(m22, m23);
        n10.f58119i = com.android.tools.r8.graph.L4.b(4105, false);
        n10.f58117g = new com.android.tools.r8.synthesis.M() {
            @Override
            public final AbstractC4497i0 a(com.android.tools.r8.graph.A2 a23) {
                return C4992Cm.this.a(m23, m22, a22, a23);
            }
        };
    }

    public final AbstractC4497i0 a(com.android.tools.r8.graph.M2 m22, com.android.tools.r8.graph.M2 m23, com.android.tools.r8.graph.A2 a22, com.android.tools.r8.graph.A2 a23) {
        return new C9187r10(this.f39353b, a23.s0(), m22, m23, a22).b();
    }

    public final com.android.tools.r8.graph.A2 a(boolean z10, InterfaceC5224Gm interfaceC5224Gm, com.android.tools.r8.graph.H5 h52, Supplier supplier, com.android.tools.r8.graph.M2 m22, com.android.tools.r8.graph.A2 a22) {
        com.android.tools.r8.graph.A2 a23;
        if (a22 != null) {
            if (f39352f || !m22.E0()) {
                return a22;
            }
            throw new AssertionError();
        }
        com.android.tools.r8.graph.M2 a10 = z10 ? m22 : C7139em.a(this.f39353b, m22);
        com.android.tools.r8.graph.M2 a11 = z10 ? C7139em.a(this.f39353b, m22) : m22;
        if (m22.E0()) {
            return a(a10, a11, interfaceC5224Gm, h52, supplier, a(a10 == m22, interfaceC5224Gm, h52, supplier, m22.a(1, this.f39354c), (com.android.tools.r8.graph.A2) null));
        }
        com.android.tools.r8.graph.A2 a12 = a(m22, a10, a11);
        if (a12 != null) {
            return a12;
        }
        com.android.tools.r8.graph.E0 a13 = a(m22);
        if (a13.o1()) {
            return this.f39355d.a(a13, a10, a11);
        }
        C4876Am a14 = a(a13);
        if (m22 == a10) {
            a23 = a14.f38713a;
        } else {
            a23 = a14.f38714b;
        }
        if (f39352f || a10 == a23.k(0)) {
            return a23;
        }
        throw new AssertionError();
    }

    public final com.android.tools.r8.graph.A2 a(com.android.tools.r8.graph.M2 m22, com.android.tools.r8.graph.M2 m23, com.android.tools.r8.graph.M2 m24) {
        com.android.tools.r8.graph.A2 a22;
        C9796ui c9796ui = this.f39353b.E().x().a().h().get(m22);
        if (c9796ui == null) {
            return null;
        }
        if (m22 == m23) {
            a22 = c9796ui.f52924a;
        } else {
            a22 = c9796ui.f52925b;
        }
        if (!f39352f && (m22 != m23 ? m22 != a22.k(0) : m22 != a22.z0())) {
            throw new AssertionError();
        }
        return this.f39354c.a(a22.s0(), this.f39354c.a(m24, m23), a22.t0());
    }

    public final void a(com.android.tools.r8.graph.M2 m22, com.android.tools.r8.graph.A2 a22, com.android.tools.r8.graph.H5 h52) {
        Origin unknown;
        com.android.tools.r8.graph.M2 c10 = this.f39353b.E().x().b().c(m22);
        if (h52 != null) {
            unknown = h52.f36317b.f36244d;
        } else {
            unknown = Origin.unknown();
        }
        Position methodPosition = h52 != null ? new MethodPosition(h52.w()) : Position.UNKNOWN;
        StringDiagnostic stringDiagnostic = new StringDiagnostic("Invoke to " + ((Object) a22.f38297f) + C16181m.f130230g + ((Object) a22.f38298g) + " may not work correctly at runtime (No conversion registered for type " + ((Object) c10) + ").", unknown, methodPosition);
        if (!this.f39353b.E().x().f45396a.f53764a) {
            C5094Ef0 c5094Ef0 = this.f39353b.E().f50691j;
            synchronized (c5094Ef0) {
                c5094Ef0.a(DiagnosticsLevel.INFO, stringDiagnostic);
            }
        } else {
            C5094Ef0 c5094Ef02 = this.f39353b.E().f50691j;
            c5094Ef02.a(null, stringDiagnostic);
            throw c5094Ef02.f39969c;
        }
    }

    public final com.android.tools.r8.graph.E0 a(com.android.tools.r8.graph.M2 m22) {
        boolean z10 = f39352f;
        if (!z10 && m22.E0()) {
            throw new AssertionError();
        }
        com.android.tools.r8.graph.E0 g10 = this.f39353b.g(m22);
        if (!z10 && g10 == null) {
            throw new AssertionError();
        }
        if (!z10 && !g10.f0() && !this.f39353b.E().x().f45396a.f53764a) {
            throw new AssertionError();
        }
        if (z10 || !g10.f36246f.e() || g10.o1()) {
            return g10;
        }
        throw new AssertionError();
    }

    public final C4876Am a(com.android.tools.r8.graph.E0 e02, InterfaceC5166Fm interfaceC5166Fm) {
        boolean z10 = f39352f;
        if (!z10 && interfaceC5166Fm == null) {
            throw new AssertionError();
        }
        if (e02.e0()) {
            return a(e02);
        }
        if (!z10 && !e02.v1()) {
            throw new AssertionError();
        }
        Collection collection = this.f39353b.E().x().a().m().get(e02.f36245e).f46668a;
        if (!z10 && collection == null) {
            throw new AssertionError();
        }
        InterfaceC4440f0 z11 = e02.z();
        com.android.tools.r8.graph.M2 m22 = e02.f36245e;
        com.android.tools.r8.graph.M2 a10 = C7139em.a(this.f39353b, m22);
        EnumC4934Bm enumC4934Bm = EnumC4934Bm.f39013b;
        final C7640hm c7640hm = this.f39356e;
        Objects.requireNonNull(c7640hm);
        List list = (List) collection;
        com.android.tools.r8.graph.I0 a11 = a(enumC4934Bm, a10, m22, z11, interfaceC5166Fm, list, new BiFunction() {
            @Override
            public final Object apply(Object obj, Object obj2) {
                return C7640hm.this.b((com.android.tools.r8.graph.A2) obj, (C4554l1) obj2);
            }
        });
        EnumC4934Bm enumC4934Bm2 = EnumC4934Bm.f39014c;
        final C7640hm c7640hm2 = this.f39356e;
        Objects.requireNonNull(c7640hm2);
        return new C4876Am(a(a11, a10, m22), a(a(enumC4934Bm2, m22, a10, z11, interfaceC5166Fm, list, new BiFunction() {
            @Override
            public final Object apply(Object obj, Object obj2) {
                return C7640hm.this.a((com.android.tools.r8.graph.A2) obj, (C4554l1) obj2);
            }
        }), m22, a10));
    }

    public final C4876Am a(com.android.tools.r8.graph.E0 e02) {
        if (!f39352f && !this.f39353b.E().x().f45396a.f53764a) {
            throw new AssertionError();
        }
        com.android.tools.r8.graph.H2 a10 = a(e02, EnumC4934Bm.f39013b);
        com.android.tools.r8.graph.H2 a11 = a(e02, EnumC4934Bm.f39014c);
        C4554l1 reference = a(a10).getReference();
        C4554l1 reference2 = a(a11).getReference();
        return new C4876Am(a(a10, reference2.f37449i, reference.f37449i), a(a11, reference.f37449i, reference2.f37449i));
    }

    public final com.android.tools.r8.graph.H2 a(com.android.tools.r8.graph.E0 e02, EnumC4934Bm enumC4934Bm) {
        if (e02.o1()) {
            return this.f39353b.f38408a.g().a(new com.android.tools.r8.synthesis.I() {
                @Override
                public final S.b a(com.android.tools.r8.synthesis.S s10) {
                    S.b bVar;
                    bVar = s10.f58190q;
                    return bVar;
                }
            }, e02, this.f39353b);
        }
        return this.f39353b.f38408a.g().a(enumC4934Bm.a(), e02, this.f39353b);
    }

    public final com.android.tools.r8.graph.A2 a(com.android.tools.r8.graph.E0 e02, com.android.tools.r8.graph.M2 m22, com.android.tools.r8.graph.M2 m23) {
        C4724u1 c4724u1 = this.f39354c;
        return e02.f36252l.f36638b.a(c4724u1.a(e02.f36245e, c4724u1.a(m22, m23), this.f39354c.f38114o0)).getReference();
    }

    public static C4460g1 a(com.android.tools.r8.graph.H2 h22) {
        if (f39352f || h22.k1().size() == 1) {
            return h22.k1().get(0);
        }
        throw new AssertionError();
    }

    public final void a(EnumC4934Bm enumC4934Bm, final com.android.tools.r8.graph.H2 h22, List list, com.android.tools.r8.graph.H2 h23, com.android.tools.r8.graph.H2 h24) {
        C4516j1 next;
        final C4554l1 reference = a(h23).getReference();
        final C4554l1 reference2 = a(h24).getReference();
        final ArrayList arrayList = new ArrayList();
        Iterator it = list.iterator();
        while (it.hasNext()) {
            com.android.tools.r8.graph.E0 g10 = this.f39353b.g((com.android.tools.r8.graph.M2) it.next());
            if (!f39352f && g10 == null) {
                throw new AssertionError();
            }
            Iterator<C4516j1> it2 = a(g10, enumC4934Bm).H0().iterator();
            do {
                next = it2.next();
            } while (!next.w0());
            if (!f39352f && next.C0() != this.f39354c.f38114o0) {
                throw new AssertionError();
            }
            arrayList.add(next.getReference());
        }
        final com.android.tools.r8.graph.I2 a10 = this.f39354c.a(reference2.f37449i, reference.f37449i);
        com.android.tools.r8.synthesis.J g11 = this.f39353b.f38408a.g();
        com.android.tools.r8.graph.L2 l22 = this.f39354c.f38114o0;
        com.android.tools.r8.synthesis.I a11 = enumC4934Bm.a();
        h22.getClass();
        C4798y c4798y = this.f39353b;
        Consumer consumer = new Consumer() {
            @Override
            public final void accept(Object obj) {
                C4992Cm.a((com.android.tools.r8.synthesis.W) obj);
            }
        };
        Consumer consumer2 = new Consumer() {
            @Override
            public final void accept(Object obj) {
                C4992Cm.this.a(a10, reference, reference2, h22, arrayList, (com.android.tools.r8.synthesis.N) obj);
            }
        };
        g11.getClass();
        g11.a(l22, a10, a11, h22, c4798y, consumer, consumer2, C6628bi.b());
    }

    public final com.android.tools.r8.graph.H2 a(final com.android.tools.r8.graph.M2 m22, final com.android.tools.r8.graph.H2 h22, final EnumC4934Bm enumC4934Bm, final AbstractC8710o9 abstractC8710o9) {
        boolean z10 = f39352f;
        if (!z10 && !this.f39353b.E().x().f45396a.f53764a) {
            throw new AssertionError();
        }
        if (!z10 && abstractC8710o9 == null) {
            throw new AssertionError();
        }
        final com.android.tools.r8.graph.M2 a10 = C7139em.a(this.f39353b, m22);
        com.android.tools.r8.synthesis.J g10 = this.f39353b.f38408a.g();
        com.android.tools.r8.synthesis.I a11 = enumC4934Bm.a();
        C4798y c4798y = this.f39353b;
        Consumer consumer = new Consumer() {
            @Override
            public final void accept(Object obj) {
                C4992Cm.this.a(enumC4934Bm, m22, a10, h22, (com.android.tools.r8.synthesis.W) obj);
            }
        };
        Objects.requireNonNull(abstractC8710o9);
        return g10.a(a11, h22, c4798y, consumer, new Consumer() {
            @Override
            public final void accept(Object obj) {
                InterfaceC5224Gm.this.b((com.android.tools.r8.graph.H2) obj);
            }
        });
    }

    public final void a(EnumC4934Bm enumC4934Bm, com.android.tools.r8.graph.M2 m22, com.android.tools.r8.graph.M2 m23, com.android.tools.r8.graph.H2 h22, com.android.tools.r8.synthesis.W w10) {
        enumC4934Bm.getClass();
        EnumC4934Bm enumC4934Bm2 = EnumC4934Bm.f39013b;
        com.android.tools.r8.graph.M2 m24 = enumC4934Bm == enumC4934Bm2 ? m23 : m22;
        if (enumC4934Bm != enumC4934Bm2) {
            m22 = m23;
        }
        a(m24, m22, h22.isInterface(), w10);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final com.android.tools.r8.graph.I0 a(EnumC4934Bm enumC4934Bm, final com.android.tools.r8.graph.M2 m22, final com.android.tools.r8.graph.M2 m23, final InterfaceC4440f0 interfaceC4440f0, final InterfaceC5166Fm interfaceC5166Fm, final List list, final BiFunction biFunction) {
        if (!f39352f && interfaceC5166Fm == null) {
            throw new AssertionError();
        }
        com.android.tools.r8.synthesis.J g10 = this.f39353b.f38408a.g();
        com.android.tools.r8.synthesis.I a10 = enumC4934Bm.a();
        com.android.tools.r8.graph.E0 e02 = (com.android.tools.r8.graph.E0) interfaceC4440f0;
        e02.getClass();
        InterfaceC4440f0 z10 = e02.z();
        C4798y c4798y = this.f39353b;
        Consumer consumer = new Consumer() {
            @Override
            public final void accept(Object obj) {
                C4992Cm.this.a(m22, m23, interfaceC4440f0, list, biFunction, (C11591p) obj);
            }
        };
        Objects.requireNonNull(interfaceC5166Fm);
        Consumer consumer2 = new Consumer() {
            @Override
            public final void accept(Object obj) {
                InterfaceC5166Fm.this.c((com.android.tools.r8.graph.I0) obj);
            }
        };
        g10.getClass();
        return g10.a(a10.a(g10.f58085b), consumer, consumer2, C11579l.a(z10), c4798y);
    }

    public final void a(final com.android.tools.r8.graph.M2 m22, final com.android.tools.r8.graph.M2 m23, InterfaceC4440f0 interfaceC4440f0, Iterable iterable, BiFunction biFunction, C11591p c11591p) {
        C4460g1 a10 = a(m22, m23, interfaceC4440f0.isInterface(), c11591p);
        c11591p.a(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C4992Cm.this.a(m22, m23, (com.android.tools.r8.synthesis.N) obj);
            }
        });
        ArrayList arrayList = new ArrayList();
        Iterator it = iterable.iterator();
        while (it.hasNext()) {
            arrayList.add((C4516j1) biFunction.apply((com.android.tools.r8.graph.A2) it.next(), a10.getReference()));
        }
        c11591p.b(arrayList);
    }

    public final void a(com.android.tools.r8.graph.M2 m22, com.android.tools.r8.graph.M2 m23, com.android.tools.r8.synthesis.N n10) {
        a(n10, this.f39354c.a(m22, m23), (com.android.tools.r8.graph.G) null);
    }

    public final void a(com.android.tools.r8.graph.I2 i22, C4554l1 c4554l1, C4554l1 c4554l12, com.android.tools.r8.graph.H2 h22, List list, com.android.tools.r8.synthesis.N n10) {
        if (!f39352f) {
            h22.getClass();
        }
        a(n10, i22, new C9521t10(this.f39353b, c4554l12, c4554l1, list).b());
    }

    public final void a(com.android.tools.r8.synthesis.N n10, com.android.tools.r8.graph.I2 i22, final com.android.tools.r8.graph.G g10) {
        com.android.tools.r8.synthesis.N a10 = n10.a(this.f39354c.f38114o0);
        a10.f58115e = i22;
        a10.f58119i = com.android.tools.r8.graph.L4.a(4105, false);
        a10.f58127q = false;
        a10.f58117g = new com.android.tools.r8.synthesis.M() {
            @Override
            public final AbstractC4497i0 a(com.android.tools.r8.graph.A2 a22) {
                return C4992Cm.a(com.android.tools.r8.graph.G.this, a22);
            }
        };
    }

    public final C4460g1 a(com.android.tools.r8.graph.M2 m22, com.android.tools.r8.graph.M2 m23, boolean z10, AbstractC11582m abstractC11582m) {
        final com.android.tools.r8.graph.M2 m24 = z10 ? this.f39354c.f38068i2 : m22;
        List singletonList = z10 ? Collections.singletonList(m22) : Collections.EMPTY_LIST;
        com.android.tools.r8.graph.M2 m25 = abstractC11582m.f58283b;
        C4724u1 c4724u1 = this.f39354c;
        C4554l1 a10 = c4724u1.a(m25, m23, c4724u1.f38122p0);
        C4537k3 e10 = C4537k3.e(4113);
        C4460g1[] c4460g1Arr = C4460g1.f37200o;
        C4460g1.a a11 = new C4460g1.a(true).a(a10);
        a11.f37213c = e10;
        final C4460g1 a12 = a11.c().a();
        AbstractC11582m a13 = abstractC11582m.a(singletonList);
        a13.f58290i = m24;
        AbstractC11582m c10 = a13.c();
        List singletonList2 = Collections.singletonList(a12);
        c10.f58295n.clear();
        c10.f58295n.addAll(singletonList2);
        c10.c().a(new Consumer() {
            @Override
            public final void accept(Object obj) {
                C4992Cm.this.b(a12, m24, (com.android.tools.r8.synthesis.N) obj);
            }
        });
        return a12;
    }

    public final void b(final C4460g1 c4460g1, final com.android.tools.r8.graph.M2 m22, com.android.tools.r8.synthesis.N n10) {
        com.android.tools.r8.synthesis.N a10 = n10.a(this.f39354c.f38067i1);
        C4724u1 c4724u1 = this.f39354c;
        a10.f58115e = c4724u1.a(c4724u1.f37905M1, c4460g1.getType());
        a10.f58119i = com.android.tools.r8.graph.L4.a(4098, true);
        a10.f58127q = false;
        a10.f58117g = new com.android.tools.r8.synthesis.M() {
            @Override
            public final AbstractC4497i0 a(com.android.tools.r8.graph.A2 a22) {
                return C4992Cm.this.a(c4460g1, m22, a22);
            }
        };
    }

    public final AbstractC4497i0 a(C4460g1 c4460g1, com.android.tools.r8.graph.M2 m22, com.android.tools.r8.graph.A2 a22) {
        return new C6343Zx0(this.f39353b, c4460g1.getReference(), m22).b();
    }

    public final AbstractC7552hC a(C4460g1 c4460g1) {
        C7640hm c7640hm = this.f39356e;
        C4554l1 reference = c4460g1.getReference();
        C4516j1 b10 = c7640hm.f48712c.b(new C7546hA(c7640hm.f48710a, reference, reference.s0()).b(), c7640hm.f48710a.b().a(reference.s0(), c7640hm.f48710a.b().a(c7640hm.f48710a.b().f37884J1, new com.android.tools.r8.graph.M2[0]), c7640hm.f48710a.b().f37987Y));
        C7640hm c7640hm2 = this.f39356e;
        C4554l1 reference2 = c4460g1.getReference();
        return AbstractC7552hC.a(b10, c7640hm2.f48712c.b(new C6833cv(c7640hm2.f48710a, reference2, reference2.s0()).b(), c7640hm2.f48710a.b().a(reference2.s0(), c7640hm2.f48710a.b().a(c7640hm2.f48710a.b().f37849E1, c7640hm2.f48710a.b().f38068i2), c7640hm2.f48710a.b().f37980X)));
    }

    @Override
    public final void a(final C4861Af c4861Af, final AbstractC8710o9 abstractC8710o9) {
        C10261xU a10 = X2.a(this.f39353b);
        final LinkedHashMap linkedHashMap = new LinkedHashMap();
        a10.m().forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                C4992Cm.this.a(abstractC8710o9, linkedHashMap, (com.android.tools.r8.graph.M2) obj, (C6510ay0) obj2);
            }
        });
        linkedHashMap.forEach(new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                C4992Cm.this.a(abstractC8710o9, c4861Af, (com.android.tools.r8.graph.H2) obj, (Iterable) obj2);
            }
        });
    }

    public final void a(AbstractC8710o9 abstractC8710o9, Map map, com.android.tools.r8.graph.M2 m22, C6510ay0 c6510ay0) {
        com.android.tools.r8.graph.E0 a10 = a(m22);
        if (a10.e0()) {
            if (a10.o1()) {
                this.f39355d.a(a10, abstractC8710o9);
                return;
            }
            map.put(a10.d0(), c6510ay0.f46668a);
            List<com.android.tools.r8.graph.M2> a11 = c6510ay0.a();
            boolean z10 = f39352f;
            if (!z10 && abstractC8710o9 == null) {
                throw new AssertionError();
            }
            if (!z10 && !a10.e0()) {
                throw new AssertionError();
            }
            com.android.tools.r8.graph.M2 m23 = a10.f36245e;
            com.android.tools.r8.graph.H2 d02 = a10.d0();
            EnumC4934Bm enumC4934Bm = EnumC4934Bm.f39013b;
            com.android.tools.r8.graph.H2 a12 = a(m23, d02, enumC4934Bm, abstractC8710o9);
            EnumC4934Bm enumC4934Bm2 = EnumC4934Bm.f39014c;
            com.android.tools.r8.graph.H2 a13 = a(m23, d02, enumC4934Bm2, abstractC8710o9);
            a(enumC4934Bm, d02, a11, a12, a13);
            a(enumC4934Bm2, d02, a11, a13, a12);
        }
    }

    public final C4516j1 a(AbstractC8710o9 abstractC8710o9, final C4861Af c4861Af, final com.android.tools.r8.graph.H2 h22, com.android.tools.r8.graph.A2 a22, C4554l1 c4554l1) {
        C7640hm c7640hm = this.f39356e;
        Supplier supplier = new Supplier() {
            @Override
            public final Object get() {
                return C4992Cm.a(C4861Af.this, h22);
            }
        };
        com.android.tools.r8.graph.E0 g10 = c7640hm.f48710a.g(a22.s0());
        if (!C7640hm.f48709d && g10 == null && !c7640hm.f48710a.E().x().f45396a.f53764a) {
            throw new AssertionError();
        }
        boolean z10 = g10 == null || g10.isInterface();
        com.android.tools.r8.graph.H5 r10 = c7640hm.f48710a.g().b(a22, z10).r();
        com.android.tools.r8.graph.A2 b10 = c7640hm.b(a22, true, abstractC8710o9, r10, supplier);
        com.android.tools.r8.graph.A2[] a10 = c7640hm.a(a22, false, abstractC8710o9, r10, supplier);
        return c7640hm.f48712c.b(new C7014e(c7640hm.f48710a, c4554l1.s0(), a22, z10, b10, a10, c4554l1).b(), c7640hm.a(a22, false, b10, a10, c4554l1.s0()));
    }
}
