package com.android.tools.r8.internal;

import com.android.tools.r8.graph.AbstractC4497i0;
import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.internal.C8106kb;
import com.android.tools.r8.synthesis.S;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Objects;
import java.util.function.BiFunction;
import java.util.function.Consumer;
import java.util.function.Supplier;

public final class C7640hm {

    public static final boolean f48709d = true;

    public final C4798y f48710a;

    public final C4724u1 f48711b;

    public final C4992Cm f48712c;

    public C7640hm(C4798y c4798y, C4992Cm c4992Cm) {
        this.f48710a = c4798y;
        this.f48711b = c4798y.b();
        this.f48712c = c4992Cm;
    }

    public final void a(com.android.tools.r8.graph.I2 i22, final com.android.tools.r8.graph.A2 a22, final com.android.tools.r8.graph.A2[] a2Arr, com.android.tools.r8.synthesis.N n10) {
        n10.f58115e = i22;
        n10.f58119i = com.android.tools.r8.graph.L4.b(4105, false);
        n10.f58127q = false;
        n10.f58117g = new com.android.tools.r8.synthesis.M() {
            @Override
            public final AbstractC4497i0 a(com.android.tools.r8.graph.A2 a23) {
                return C7640hm.this.a(a22, a2Arr, a23);
            }
        };
    }

    public final C4516j1 b(com.android.tools.r8.graph.A2 a22, C4554l1 c4554l1) {
        return this.f48712c.b((com.android.tools.r8.graph.G) null, C7139em.a(a22, c4554l1.s0(), this.f48710a));
    }

    public final com.android.tools.r8.graph.A2 b(com.android.tools.r8.graph.A2 a22, final boolean z10, final InterfaceC5166Fm interfaceC5166Fm, final com.android.tools.r8.graph.H5 h52, final Supplier supplier) {
        BiFunction biFunction = new BiFunction() {
            @Override
            public final Object apply(Object obj, Object obj2) {
                return C7640hm.this.b(z10, interfaceC5166Fm, h52, supplier, (com.android.tools.r8.graph.M2) obj, (com.android.tools.r8.graph.A2) obj2);
            }
        };
        com.android.tools.r8.graph.M2 m22 = a22.f36127i.f36440e;
        int w02 = a22.w0();
        com.android.tools.r8.graph.A2[] a2Arr = this.f48710a.E().x().a().g().get(a22);
        com.android.tools.r8.graph.A2 a23 = a2Arr == null ? null : a2Arr[w02];
        if (this.f48712c.a(m22, a23, a22, h52)) {
            return (com.android.tools.r8.graph.A2) biFunction.apply(m22, a23);
        }
        return null;
    }

    public final void a(com.android.tools.r8.graph.I2 i22, final com.android.tools.r8.graph.A2 a22, final com.android.tools.r8.graph.A2 a23, final com.android.tools.r8.graph.A2[] a2Arr, final C7437ga c7437ga, com.android.tools.r8.synthesis.N n10) {
        n10.f58115e = i22;
        n10.f58119i = com.android.tools.r8.graph.L4.b(4105, false);
        n10.f58127q = false;
        n10.f58117g = new com.android.tools.r8.synthesis.M() {
            @Override
            public final AbstractC4497i0 a(com.android.tools.r8.graph.A2 a24) {
                return C7640hm.this.a(a22, a23, a2Arr, c7437ga, a24);
            }
        };
    }

    public final C4516j1 a(com.android.tools.r8.graph.A2 a22, C4554l1 c4554l1) {
        return this.f48712c.b((com.android.tools.r8.graph.G) null, this.f48711b.a(c4554l1.s0(), a22.f36127i, a22.f38298g));
    }

    public final com.android.tools.r8.graph.H5 a(com.android.tools.r8.graph.H5 h52, AbstractC5947Ta abstractC5947Ta, final C4977Cf c4977Cf) {
        final com.android.tools.r8.graph.H2 holder = h52.getHolder();
        com.android.tools.r8.graph.A2 b10 = b(h52.getReference(), true, (InterfaceC5166Fm) abstractC5947Ta, h52, new Supplier() {
            @Override
            public final Object get() {
                C5209Gf a10;
                a10 = C4977Cf.this.a(holder);
                return a10;
            }
        });
        com.android.tools.r8.graph.A2[] a10 = a(h52.getReference(), false, (InterfaceC5166Fm) abstractC5947Ta, h52, new Supplier() {
            @Override
            public final Object get() {
                C5209Gf a11;
                a11 = C4977Cf.this.a(holder);
                return a11;
            }
        });
        com.android.tools.r8.graph.A2 reference = h52.getReference();
        com.android.tools.r8.graph.A2 a11 = a(reference, false, b10, a10, reference.s0());
        com.android.tools.r8.graph.G b11 = new C7014e(this.f48710a, h52.p(), h52.getReference(), holder.isInterface(), b10, a10).b();
        C4516j1 b12 = this.f48712c.b(b11, a11);
        b12.a((AbstractC4497i0) b11, (SG) C4516j1.f37312w);
        if (h52.d().k1().d()) {
            b12.a(AbstractC9530t40.f52517a);
        }
        com.android.tools.r8.graph.H5 a12 = b12.a(holder);
        if (!f48709d && abstractC5947Ta == null) {
            throw new AssertionError();
        }
        abstractC5947Ta.a(a12, h52);
        return a12;
    }

    public final com.android.tools.r8.graph.A2 b(boolean z10, InterfaceC5166Fm interfaceC5166Fm, com.android.tools.r8.graph.H5 h52, Supplier supplier, com.android.tools.r8.graph.M2 m22, com.android.tools.r8.graph.A2 a22) {
        return this.f48712c.a(z10, interfaceC5166Fm, h52, supplier, m22, a22);
    }

    public final com.android.tools.r8.graph.A2 b(com.android.tools.r8.graph.A2 a22, final boolean z10, final AbstractC8710o9 abstractC8710o9, final com.android.tools.r8.graph.H5 h52, final Supplier supplier) {
        BiFunction biFunction = new BiFunction() {
            @Override
            public final Object apply(Object obj, Object obj2) {
                return C7640hm.this.b(z10, abstractC8710o9, h52, supplier, (com.android.tools.r8.graph.M2) obj, (com.android.tools.r8.graph.A2) obj2);
            }
        };
        com.android.tools.r8.graph.M2 m22 = a22.f36127i.f36440e;
        int w02 = a22.w0();
        com.android.tools.r8.graph.A2[] a2Arr = this.f48710a.E().x().a().g().get(a22);
        com.android.tools.r8.graph.A2 a23 = a2Arr == null ? null : a2Arr[w02];
        if (this.f48712c.a(m22, a23, a22, h52)) {
            return (com.android.tools.r8.graph.A2) biFunction.apply(m22, a23);
        }
        return null;
    }

    public final com.android.tools.r8.graph.A2 b(boolean z10, InterfaceC5224Gm interfaceC5224Gm, com.android.tools.r8.graph.H5 h52, Supplier supplier, com.android.tools.r8.graph.M2 m22, com.android.tools.r8.graph.A2 a22) {
        return this.f48712c.a(z10, interfaceC5224Gm, h52, supplier, m22, a22);
    }

    public final com.android.tools.r8.graph.H5 a(final C7437ga c7437ga, AbstractC7103ea abstractC7103ea, com.android.tools.r8.graph.H5 h52, C5035Df c5035Df) {
        com.android.tools.r8.graph.I2 y02;
        final com.android.tools.r8.graph.A2 V10 = c7437ga.V();
        C4724u1 c4724u1 = this.f48711b;
        boolean O10 = c7437ga.O();
        c4724u1.getClass();
        if (!O10) {
            y02 = V10.y0().b(c4724u1, V10.s0());
        } else {
            y02 = V10.y0();
        }
        final com.android.tools.r8.graph.I2 i22 = y02;
        Objects.requireNonNull(c5035Df);
        final com.android.tools.r8.graph.A2 b10 = b(V10, false, (InterfaceC5166Fm) abstractC7103ea, h52, (Supplier) new C9950vd1(c5035Df));
        final com.android.tools.r8.graph.A2[] a10 = a(V10, true, (InterfaceC5166Fm) abstractC7103ea, h52, (Supplier) new C9950vd1(c5035Df));
        com.android.tools.r8.graph.H5 b11 = this.f48710a.f38408a.g().b(new com.android.tools.r8.synthesis.I() {
            @Override
            public final S.b a(com.android.tools.r8.synthesis.S s10) {
                S.b bVar;
                bVar = s10.f58165R;
                return bVar;
            }
        }, c5035Df.a(), this.f48710a, new Consumer() {
            @Override
            public final void accept(Object obj) {
                C7640hm.this.a(i22, V10, b10, a10, c7437ga, (com.android.tools.r8.synthesis.N) obj);
            }
        });
        abstractC7103ea.l(b11, h52);
        return b11;
    }

    public final AbstractC4497i0 a(com.android.tools.r8.graph.A2 a22, com.android.tools.r8.graph.A2 a23, com.android.tools.r8.graph.A2[] a2Arr, C7437ga c7437ga, com.android.tools.r8.graph.A2 a24) {
        return new C7014e(this.f48710a, a24.f38297f, a(a22, true, a23, a2Arr, a22.s0()), c7437ga.X(), a23, a2Arr, c7437ga.W()).b();
    }

    public final ArrayList a(C7437ga c7437ga, C5035Df c5035Df, InterfaceC8175ky interfaceC8175ky, QT qt, AbstractC7103ea abstractC7103ea, com.android.tools.r8.graph.H5 h52) {
        com.android.tools.r8.graph.A2 V10 = c7437ga.V();
        Objects.requireNonNull(c5035Df);
        com.android.tools.r8.graph.A2 b10 = b(V10, false, (InterfaceC5166Fm) abstractC7103ea, h52, (Supplier) new C9950vd1(c5035Df));
        com.android.tools.r8.graph.A2[] a10 = a(V10, true, (InterfaceC5166Fm) abstractC7103ea, h52, (Supplier) new C9950vd1(c5035Df));
        int size = V10.x0().size();
        ArrayList arrayList = new ArrayList();
        if (size != 0) {
            boolean z10 = false;
            for (int i10 = 0; i10 < a10.length - 2; i10++) {
                z10 |= a10[i10] != null;
            }
            if (V10.x0().j(size - 1).T0() | z10) {
                a(a10, arrayList, c5035Df, V10, interfaceC8175ky, qt, abstractC7103ea);
            } else {
                if (a10.length > 0 && a10[a10.length - 1] != null) {
                    arrayList.add(new C7437ga(184, a10[a10.length - 1], false));
                }
                if (a10.length > 1 && a10[a10.length - 2] != null) {
                    if (!f48709d && V10.x0().j(V10.x0().size() - 1).T0()) {
                        throw new AssertionError();
                    }
                    C8106kb.a aVar = C8106kb.a.Swap;
                    arrayList.add(new C8106kb(aVar));
                    arrayList.add(new C7437ga(184, a10[a10.length - 2], false));
                    arrayList.add(new C8106kb(aVar));
                }
            }
        }
        arrayList.add(new C7437ga(c7437ga.W(), a(V10, true, b10, a10, V10.s0()), c7437ga.X()));
        if (b10 == null) {
            return arrayList;
        }
        if (!f48709d && b10.w0() != 1 && b10.w0() != 2) {
            throw new AssertionError();
        }
        if (b10.w0() == 2) {
            if (!c7437ga.b(h52.p())) {
                this.f48710a.E().f50691j.a("Cannot generate inlined api conversion for return type for " + ((Object) c7437ga.V()) + " in " + ((Object) h52.getReference()));
            }
            arrayList.add(new C8938pa(EnumC5477Kw0.f41824b, 0));
        }
        arrayList.add(new C7437ga(184, b10, false));
        return arrayList;
    }

    public final void a(final com.android.tools.r8.graph.A2[] a2Arr, ArrayList arrayList, C5035Df c5035Df, final com.android.tools.r8.graph.A2 a22, InterfaceC8175ky interfaceC8175ky, QT qt, AbstractC7103ea abstractC7103ea) {
        com.android.tools.r8.graph.M2 k10;
        qt.a(4);
        final com.android.tools.r8.graph.I2 a10 = this.f48710a.b().a(this.f48710a.b().f38092l2, a22.x0().f36675b);
        com.android.tools.r8.graph.H5 b10 = this.f48710a.f38408a.g().b(new com.android.tools.r8.synthesis.I() {
            @Override
            public final S.b a(com.android.tools.r8.synthesis.S s10) {
                S.b bVar;
                bVar = s10.f58166S;
                return bVar;
            }
        }, c5035Df.a(), this.f48710a, new Consumer() {
            @Override
            public final void accept(Object obj) {
                C7640hm.this.a(a10, a22, a2Arr, (com.android.tools.r8.synthesis.N) obj);
            }
        });
        abstractC7103ea.l(b10, c5035Df.f39582c);
        arrayList.add(new C7437ga(184, b10.getReference(), false));
        EnumC5477Kw0 enumC5477Kw0 = EnumC5477Kw0.f41824b;
        int a11 = interfaceC8175ky.a(enumC5477Kw0.c());
        arrayList.add(new C10443yb(enumC5477Kw0, a11));
        for (int i10 = 0; i10 < a2Arr.length; i10++) {
            arrayList.add(new C8938pa(EnumC5477Kw0.f41824b, a11));
            arrayList.add(new C10546z9(i10, EnumC5477Kw0.f41825c));
            com.android.tools.r8.graph.A2 a23 = a2Arr[i10];
            if (a23 != null) {
                k10 = a23.z0();
            } else {
                k10 = a22.k(i10);
            }
            arrayList.add(new X8(YV.f45995b));
            if (k10.P0()) {
                arrayList.add(new C7710i9(this.f48711b.d(k10)));
                arrayList.add(new C7437ga(182, this.f48710a.b().f(k10), false));
            } else {
                arrayList.add(new C7710i9(k10));
            }
        }
    }

    public final AbstractC4497i0 a(com.android.tools.r8.graph.A2 a22, com.android.tools.r8.graph.A2[] a2Arr, com.android.tools.r8.graph.A2 a23) {
        com.android.tools.r8.graph.M2 m22 = a23.f38297f;
        ArrayList arrayList = new ArrayList();
        arrayList.add(new C10546z9(a2Arr.length, EnumC5477Kw0.f41825c));
        arrayList.add(new C10273xa(this.f48711b.f38092l2));
        int i10 = 0;
        for (int i11 = 0; i11 < a22.w0(); i11++) {
            arrayList.add(new C8106kb(C8106kb.a.Dup));
            arrayList.add(new C10546z9(i11, EnumC5477Kw0.f41825c));
            com.android.tools.r8.graph.M2 k10 = a22.k(i11);
            arrayList.add(new C8938pa(EnumC5477Kw0.a(k10), i10));
            if (a2Arr[i11] != null) {
                arrayList.add(new C7437ga(184, a2Arr[i11], false));
            }
            if (k10.P0()) {
                arrayList.add(new C7437ga(184, this.f48710a.b().c(k10), false));
            }
            arrayList.add(new Z8(YV.f45995b));
            if (k10 == this.f48710a.b().f37891K1 || k10 == this.f48710a.b().f37870H1) {
                i10++;
            }
            i10++;
        }
        arrayList.add(new C6440ab(EnumC5477Kw0.f41824b));
        List list = Collections.EMPTY_LIST;
        return new com.android.tools.r8.graph.G(m22, i10 + 4, i10, arrayList, list, list);
    }

    public final com.android.tools.r8.graph.A2[] a(com.android.tools.r8.graph.A2 a22, final boolean z10, final InterfaceC5166Fm interfaceC5166Fm, final com.android.tools.r8.graph.H5 h52, final Supplier supplier) {
        C4992Cm c4992Cm = this.f48712c;
        BiFunction biFunction = new BiFunction() {
            @Override
            public final Object apply(Object obj, Object obj2) {
                return C7640hm.this.a(z10, interfaceC5166Fm, h52, supplier, (com.android.tools.r8.graph.M2) obj, (com.android.tools.r8.graph.A2) obj2);
            }
        };
        com.android.tools.r8.graph.A2[] a2Arr = new com.android.tools.r8.graph.A2[a22.w0()];
        com.android.tools.r8.graph.M2[] m2Arr = a22.f36127i.f36441f.f36675b;
        for (int i10 = 0; i10 < m2Arr.length; i10++) {
            com.android.tools.r8.graph.A2[] a2Arr2 = this.f48710a.E().x().a().g().get(a22);
            com.android.tools.r8.graph.A2 a23 = a2Arr2 == null ? null : a2Arr2[i10];
            com.android.tools.r8.graph.M2 m22 = m2Arr[i10];
            if (c4992Cm.a(m22, a23, a22, h52)) {
                a2Arr[i10] = (com.android.tools.r8.graph.A2) biFunction.apply(m22, a23);
            }
        }
        return a2Arr;
    }

    public final com.android.tools.r8.graph.A2 a(boolean z10, InterfaceC5166Fm interfaceC5166Fm, com.android.tools.r8.graph.H5 h52, Supplier supplier, com.android.tools.r8.graph.M2 m22, com.android.tools.r8.graph.A2 a22) {
        return this.f48712c.a(z10, interfaceC5166Fm, h52, supplier, m22, a22);
    }

    public final com.android.tools.r8.graph.A2[] a(com.android.tools.r8.graph.A2 a22, final boolean z10, final AbstractC8710o9 abstractC8710o9, final com.android.tools.r8.graph.H5 h52, final Supplier supplier) {
        C4992Cm c4992Cm = this.f48712c;
        BiFunction biFunction = new BiFunction() {
            @Override
            public final Object apply(Object obj, Object obj2) {
                return C7640hm.this.a(z10, abstractC8710o9, h52, supplier, (com.android.tools.r8.graph.M2) obj, (com.android.tools.r8.graph.A2) obj2);
            }
        };
        com.android.tools.r8.graph.A2[] a2Arr = new com.android.tools.r8.graph.A2[a22.w0()];
        com.android.tools.r8.graph.M2[] m2Arr = a22.f36127i.f36441f.f36675b;
        for (int i10 = 0; i10 < m2Arr.length; i10++) {
            com.android.tools.r8.graph.A2[] a2Arr2 = this.f48710a.E().x().a().g().get(a22);
            com.android.tools.r8.graph.A2 a23 = a2Arr2 == null ? null : a2Arr2[i10];
            com.android.tools.r8.graph.M2 m22 = m2Arr[i10];
            if (c4992Cm.a(m22, a23, a22, h52)) {
                a2Arr[i10] = (com.android.tools.r8.graph.A2) biFunction.apply(m22, a23);
            }
        }
        return a2Arr;
    }

    public final com.android.tools.r8.graph.A2 a(boolean z10, InterfaceC5224Gm interfaceC5224Gm, com.android.tools.r8.graph.H5 h52, Supplier supplier, com.android.tools.r8.graph.M2 m22, com.android.tools.r8.graph.A2 a22) {
        return this.f48712c.a(z10, interfaceC5224Gm, h52, supplier, m22, a22);
    }

    public final com.android.tools.r8.graph.A2 a(com.android.tools.r8.graph.A2 a22, boolean z10, com.android.tools.r8.graph.A2 a23, com.android.tools.r8.graph.A2[] a2Arr, com.android.tools.r8.graph.M2 m22) {
        com.android.tools.r8.graph.M2 z02;
        com.android.tools.r8.graph.M2 m23;
        com.android.tools.r8.graph.M2 k10;
        int i10 = 0;
        if (a23 == null) {
            z02 = a22.z0();
        } else if (z10) {
            z02 = a23.k(0);
        } else {
            z02 = a23.z0();
        }
        com.android.tools.r8.graph.M2[] m2Arr = new com.android.tools.r8.graph.M2[a2Arr.length];
        for (int i11 = 0; i11 < a2Arr.length; i11++) {
            com.android.tools.r8.graph.A2 a24 = a2Arr[i11];
            if (a24 == null) {
                k10 = a22.k(i11);
            } else if (z10) {
                k10 = a24.z0();
            } else {
                k10 = a24.k(0);
            }
            m2Arr[i11] = k10;
        }
        com.android.tools.r8.graph.A2 a10 = this.f48710a.b().a(m22, this.f48710a.b().a(z02, m2Arr), a22.f38298g);
        if (!f48709d && a10 != C7139em.a(a22, m22, this.f48710a) && !this.f48710a.E().x().a().g().containsKey(a22)) {
            com.android.tools.r8.graph.A2 a11 = C7139em.a(a22, a22.f38297f, this.f48710a);
            if (a22.z0() == a11.z0() || a23 != null) {
                while (true) {
                    if (i10 >= a22.w0()) {
                        m23 = null;
                        break;
                    }
                    if (a22.k(i10) != a11.k(i10) && a2Arr[i10] == null) {
                        m23 = a22.k(i10);
                        break;
                    }
                    i10++;
                }
            } else {
                m23 = a22.z0();
            }
            if (m23 == null) {
                throw new AssertionError();
            }
        }
        return a10;
    }
}
