package com.android.tools.r8.internal;

import com.android.tools.r8.ClassFileConsumer;
import com.android.tools.r8.graph.AbstractC4497i0;
import com.android.tools.r8.graph.C4460g1;
import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4537k3;
import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.Z4;
import com.android.tools.r8.internal.C8106kb;
import java.util.AbstractCollection;
import java.util.List;
import java.util.function.Function;

public final class C10294xh {

    public static final boolean f53809i = true;

    public final C4798y f53810a;

    public final C4866Ah f53811b;

    public final com.android.tools.r8.graph.A2 f53812c;

    public final int f53813d;

    public final com.android.tools.r8.graph.A2 f53814e;

    public final com.android.tools.r8.graph.A2 f53815f;

    public final boolean f53816g;

    public com.android.tools.r8.graph.H2 f53817h = null;

    public C10294xh(com.android.tools.r8.synthesis.W w10, C4798y c4798y, com.android.tools.r8.graph.H5 h52, C9711u9 c9711u9) {
        C4724u1 b10 = c4798y.b();
        this.f53810a = c4798y;
        C4866Ah c4866Ah = c9711u9.f52798c;
        this.f53811b = c4866Ah;
        C4554l1 a10 = b10.a(w10.f58283b, c4866Ah.f38688d, b10.b("CONST"));
        C4554l1 a11 = b10.a(w10.f58283b, b10.f37849E1, b10.b("INITIALIZED"));
        com.android.tools.r8.graph.A2 a12 = b10.a(w10.f58283b, b10.a(c9711u9.f52798c.f38688d, new com.android.tools.r8.graph.M2[0]), b10.b("get"));
        this.f53812c = a12;
        com.android.tools.r8.graph.C2 c22 = c4866Ah.f38689e;
        com.android.tools.r8.graph.A2 m02 = c22.m0();
        this.f53814e = m02;
        com.android.tools.r8.graph.Z4 b11 = c4798y.g().b(m02, c22.f36192g);
        if (!b11.w() || !b11.o().q().w0()) {
            this.f53813d = b11.b((com.android.tools.r8.graph.E0) h52.getHolder(), (C4798y<?>) c4798y, c4798y.g()) ? 2 : 3;
            return;
        }
        Z4.c<?> o10 = b11.o();
        if (c22.f36192g && c4798y.E().Q()) {
            this.f53814e = m02.a(C10404yI.a(b10, m02.s0()), b10);
            this.f53816g = false;
        } else {
            if (!f53809i && m02.s0() != b11.d().getType()) {
                throw new AssertionError();
            }
            this.f53816g = c22.f36192g;
        }
        if (c4798y.m() || !c4798y.E().z().b(C2.O)) {
            this.f53815f = this.f53814e;
            com.android.tools.r8.graph.L4 accessFlags = o10.q().getAccessFlags();
            accessFlags.A();
            accessFlags.w();
        } else {
            this.f53815f = b10.a(this.f53814e.s0(), b10.a(this.f53814e.z0(), b10.f38068i2, b10.f38052g2, b10.f38180w2), this.f53814e.t0());
        }
        this.f53813d = 1;
        C4460g1[] c4460g1Arr = C4460g1.f37200o;
        C4460g1.a a13 = new C4460g1.a(true).a(a11);
        a13.f37213c = C4537k3.g(4106);
        C4460g1 a14 = a13.c().a();
        C4460g1.a a15 = new C4460g1.a(true).a(a10);
        a15.f37213c = C4537k3.g(4106);
        AbstractC7552hC a16 = AbstractC7552hC.a(a14, a15.c().a());
        w10.f58294m.clear();
        w10.f58294m.addAll(a16);
        C4516j1[] c4516j1Arr = C4516j1.f37310u;
        C4516j1.a a17 = AbstractC8294li.a(a12, true).a(com.android.tools.r8.graph.L4.b(4105, false));
        C6190Xe0 c6190Xe0 = C6190Xe0.f45779e;
        C7051eC c7051eC = new C7051eC();
        C8103ka c8103ka = new C8103ka();
        C8103ka c8103ka2 = new C8103ka();
        C8103ka c8103ka3 = new C8103ka();
        C8103ka c8103ka4 = new C8103ka();
        C8103ka c8103ka5 = new C8103ka();
        C8103ka c8103ka6 = new C8103ka();
        c7051eC.a(new C9942vb(a11));
        NB nb2 = NB.f42532g;
        EnumC5477Kw0 enumC5477Kw0 = EnumC5477Kw0.f41825c;
        c7051eC.a(new O9(nb2, enumC5477Kw0, c8103ka));
        c7051eC.a(new C9544t9(w10.f58283b, false));
        c7051eC.a(new C8106kb(C8106kb.a.Dup));
        EnumC5477Kw0 enumC5477Kw02 = EnumC5477Kw0.f41824b;
        c7051eC.a(new C10443yb(enumC5477Kw02, 0));
        c7051eC.a(new C9438sa(XX.f45732b));
        c7051eC.a(c8103ka3);
        c7051eC.a(new C9942vb(a11));
        c7051eC.a(new O9(nb2, enumC5477Kw0, c8103ka2));
        if (!f53809i && !c4866Ah.f38689e.f36190e.c()) {
            throw new AssertionError();
        }
        c7051eC.a(new C10212x9());
        c7051eC.a(new A9(c4866Ah.f38687c));
        c7051eC.a(new C9544t9(c4866Ah.f38688d, false));
        c7051eC.a(new C7437ga(184, this.f53815f, this.f53816g));
        c7051eC.a(new C7710i9(c4866Ah.f38688d));
        c7051eC.a(new C10109wb(a10));
        c7051eC.a(new C10546z9(1L, enumC5477Kw0));
        c7051eC.a(new C10109wb(a11));
        c7051eC.a(c8103ka2);
        c7051eC.a(G9.V().a((InterfaceC8008jy) InterfaceC8008jy.b(w10.f58282a.f38068i2)).a());
        c7051eC.a(new C8938pa(enumC5477Kw02, 0));
        XX xx = XX.f45733c;
        c7051eC.a(new C9438sa(xx));
        c7051eC.a(c8103ka4);
        c7051eC.a(new M9(c8103ka));
        c7051eC.a(c8103ka5);
        c7051eC.a(G9.V().a((InterfaceC8008jy) InterfaceC8008jy.b(w10.f58282a.f38068i2)).a((S60) InterfaceC8008jy.b(w10.f58282a.f38173v3)).a());
        c7051eC.a(new C10443yb(enumC5477Kw02, 1));
        c7051eC.a(new C8938pa(enumC5477Kw02, 0));
        c7051eC.a(new C9438sa(xx));
        c7051eC.a(c8103ka6);
        c7051eC.a(new C8938pa(enumC5477Kw02, 1));
        c7051eC.a(new C4965Cb());
        c7051eC.a(c8103ka);
        c7051eC.a(new G9(AbstractC8230lG.f49915a, G9.f40402e));
        c7051eC.a(new C9942vb(a10));
        c7051eC.a(new C6440ab(enumC5477Kw02));
        w10.a((AbstractCollection) new C5920Sm0(a17.a(new com.android.tools.r8.graph.G(w10.f58283b, 3, 2, c7051eC.a(), AbstractC7552hC.a(new C5023Db(c8103ka3, c8103ka4, new C5920Sm0(w10.f58282a.f38173v3), new C5920Sm0(c8103ka5)), new C5023Db(c8103ka5, c8103ka6, new C5920Sm0(w10.f58282a.f38173v3), new C5920Sm0(c8103ka5))), c6190Xe0)).b().a()));
    }

    public final void a(InterfaceC10461yh interfaceC10461yh) {
        com.android.tools.r8.graph.H5 e10;
        if (!this.f53810a.m() && this.f53810a.E().z().b(C2.O) && this.f53813d == 1) {
            com.android.tools.r8.graph.H2 d02 = this.f53810a.g(this.f53814e.s0()).d0();
            com.android.tools.r8.graph.N4 b02 = d02.b0();
            com.android.tools.r8.graph.A2 a22 = this.f53814e;
            InterfaceC5422Jy interfaceC5422Jy = new InterfaceC5422Jy() {
                @Override
                public final Object apply(Object obj) {
                    return C10294xh.this.b((C4516j1) obj);
                }
            };
            b02.getClass();
            b02.f36639c = C4516j1.f37311v;
            C4516j1 a10 = b02.f36638b.a(a22, interfaceC5422Jy);
            if (a10 != null) {
                boolean z10 = f53809i;
                if (!z10 && (this.f53810a.E().f50697l instanceof ClassFileConsumer) && !a10.Q0().t0()) {
                    throw new AssertionError();
                }
                if (!z10 && this.f53810a.E().P() && !a10.Q0().v0()) {
                    throw new AssertionError();
                }
                e10 = a10.a(d02);
                interfaceC10461yh.a(e10, this.f53814e);
            } else {
                e10 = d02.e(this.f53815f);
            }
            boolean z11 = f53809i;
            if (!z11 && e10 == null) {
                throw new AssertionError();
            }
            if (!z11 && !e10.d().p1()) {
                throw new AssertionError();
            }
        }
    }

    public final C4516j1 b(C4516j1 c4516j1) {
        com.android.tools.r8.graph.L4 l42 = c4516j1.f37314g;
        com.android.tools.r8.graph.L4 l43 = new com.android.tools.r8.graph.L4(l42.f37196b, l42.f37197c);
        l43.A();
        l43.w();
        C4516j1.a a10 = new C4516j1.a(true).a(this.f53815f).a(l43);
        a10.f37332d = c4516j1.A0();
        a10.f37333e = c4516j1.k0();
        a10.f37335g = c4516j1.f37316i;
        C4516j1.a a11 = a10.a(a(c4516j1));
        a11.f37340l = c4516j1.f37261e;
        a11.f37341m = c4516j1.f37322o;
        C4516j1 a12 = a11.a();
        a12.a(this.f53810a, c4516j1);
        return a12;
    }

    public final C5920Sm0 a(C9711u9 c9711u9, AbstractC7103ea abstractC7103ea, C5035Df c5035Df) {
        com.android.tools.r8.ir.optimize.K0 dj1;
        if (!f53809i && !InterfaceC7166ev.a(c9711u9.f52798c, this.f53811b)) {
            throw new AssertionError();
        }
        int i10 = this.f53813d;
        if (i10 == 1) {
            C7437ga c7437ga = new C7437ga(184, this.f53812c, false);
            int i11 = AbstractC7552hC.f48487c;
            return new C5920Sm0(c7437ga);
        }
        if (i10 == 2) {
            dj1 = new Cj1();
        } else {
            dj1 = new Dj1();
        }
        C7437ga c7437ga2 = new C7437ga(184, dj1.a(this.f53810a, abstractC7103ea, c5035Df).f54773a.getReference(), false);
        int i12 = AbstractC7552hC.f48487c;
        return new C5920Sm0(c7437ga2);
    }

    public final com.android.tools.r8.graph.M2 a(com.android.tools.r8.graph.M2 m22) {
        return m22 == this.f53810a.b().f37958T5 ? this.f53810a.b().f38068i2 : m22;
    }

    public final AbstractC4497i0 a(C4516j1 c4516j1) {
        if (!f53809i && this.f53813d != 1) {
            throw new AssertionError();
        }
        if (c4516j1.Q0().v0()) {
            return c4516j1.Q0();
        }
        com.android.tools.r8.graph.G V10 = c4516j1.Q0().V();
        List<W9> E02 = V10.E0();
        List<W9> a10 = AT.a((List) E02, new Function() {
            @Override
            public final Object apply(Object obj) {
                return C10294xh.this.a((W9) obj);
            }
        }, (List) E02);
        return V10.E0() != a10 ? new com.android.tools.r8.graph.G(c4516j1.B0(), V10.f36304g, V10.G0(), a10, V10.I0(), V10.F0()) : V10;
    }

    public final W9 a(W9 w92) {
        return w92.K() ? w92.g().a(new Function() {
            @Override
            public final Object apply(Object obj) {
                return C10294xh.this.a((com.android.tools.r8.graph.M2) obj);
            }
        }) : w92;
    }
}
