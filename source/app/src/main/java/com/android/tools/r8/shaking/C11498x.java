package com.android.tools.r8.shaking;

import com.android.tools.r8.graph.C4460g1;
import com.android.tools.r8.graph.C4514j;
import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.C4804y5;
import com.android.tools.r8.graph.Z4;
import com.android.tools.r8.internal.AbstractC10280xc0;
import com.android.tools.r8.internal.AbstractC4893Au0;
import com.android.tools.r8.internal.B60;
import com.android.tools.r8.internal.C8887pC0;
import com.android.tools.r8.internal.EnumC8071kK;
import com.android.tools.r8.internal.InterfaceC10662zs0;
import com.android.tools.r8.internal.InterfaceC4947Bs0;
import com.android.tools.r8.internal.InterfaceC5063Ds0;
import com.android.tools.r8.internal.InterfaceC5121Es0;
import com.android.tools.r8.internal.TU;
import java.util.IdentityHashMap;
import java.util.ListIterator;
import java.util.Set;

public class C11498x extends C11447u {

    public final C4798y f57952i;

    public final N f57953j;

    public final IdentityHashMap f57954k;

    public Set f57955l;

    public Set f57956m;

    public Set f57957n;

    public Set f57958o;

    public Set f57959p;

    public C11498x(C4798y c4798y, com.android.tools.r8.graph.H5 h52, N n10, com.android.tools.r8.androidapi.a aVar) {
        super(c4798y, h52, aVar);
        this.f57954k = new IdentityHashMap();
        this.f57955l = null;
        this.f57956m = null;
        this.f57957n = null;
        this.f57958o = null;
        this.f57959p = null;
        this.f57952i = c4798y;
        this.f57953j = n10;
    }

    @Override
    public final void a(com.android.tools.r8.graph.D0 d02) {
        C4460g1 b10;
        C4554l1 a10;
        C4724u1 b11 = this.f37176a.b();
        com.android.tools.r8.graph.A2 m02 = d02.f36214g.m0();
        if (m02 != b11.f38168u6 && m02 != b11.f38176v6) {
            a(2, d02.f36214g);
        }
        f(d02.f36213f.f36440e);
        if (AbstractC10280xc0.a(d02, this.f57952i, (com.android.tools.r8.graph.H5) this.f37177b)) {
            a(d02, 2);
            for (int i10 = 2; i10 < d02.f36215h.size(); i10++) {
                C4554l1 l02 = ((com.android.tools.r8.graph.C2) ((com.android.tools.r8.graph.R2) d02.f36215h.get(i10)).z0().f36759d).l0();
                C4514j c4514j = (C4514j) this.f57952i.f();
                com.android.tools.r8.graph.H5 h52 = (com.android.tools.r8.graph.H5) this.f37177b;
                c4514j.getClass();
                if (!c4514j.a(l02.f38297f, l02, h52).q().f37207l.i()) {
                    a((com.android.tools.r8.graph.J2) l02);
                    N n10 = this.f57953j;
                    com.android.tools.r8.graph.H5 h53 = (com.android.tools.r8.graph.H5) this.f37177b;
                    n10.getClass();
                    n10.a(l02, h53, J.f56637b, K.f56660e);
                }
            }
        } else if (AbstractC4893Au0.b(d02, this.f37176a.b())) {
            for (com.android.tools.r8.graph.R2 r22 : d02.f36215h) {
                if (r22.S0()) {
                    f((com.android.tools.r8.graph.M2) r22.E0().f36759d);
                } else if ((r22 instanceof com.android.tools.r8.graph.S2) && (a10 = AbstractC4893Au0.a(r22.r0(), (com.android.tools.r8.graph.H0) this.f37177b, this.f37176a)) != null) {
                    a((com.android.tools.r8.graph.J2) a10);
                    N n11 = this.f57953j;
                    com.android.tools.r8.graph.H5 h54 = (com.android.tools.r8.graph.H5) this.f37177b;
                    n11.getClass();
                    n11.b(a10, h54, J.f56639d, K.f56661f);
                    com.android.tools.r8.graph.M2 s02 = a10.s0();
                    C4724u1 b12 = this.f37176a.b();
                    d(b12.a(s02, b12.a(b12.a(1, s02), new com.android.tools.r8.graph.M2[0]), b12.f38090l0));
                    d(b12.a(s02, b12.a(s02, b12.f38052g2), b12.f38082k0));
                }
            }
        } else if (AbstractC4893Au0.a(d02, this.f37176a.b())) {
            com.android.tools.r8.graph.M2 m22 = d02.f36213f.f36441f.f36675b[0];
            for (com.android.tools.r8.graph.R2 r23 : d02.f36215h) {
                if (r23.S0()) {
                    f((com.android.tools.r8.graph.M2) r23.E0().f36759d);
                } else if (r23.R0()) {
                    com.android.tools.r8.graph.L2 l22 = (com.android.tools.r8.graph.L2) r23.D0().f36759d;
                    com.android.tools.r8.graph.E0 c10 = this.f37176a.f().c(m22);
                    C4554l1 reference = (c10 == null || (b10 = c10.b(l22)) == null) ? null : b10.getReference();
                    if (reference != null) {
                        a((com.android.tools.r8.graph.J2) reference);
                        N n12 = this.f57953j;
                        com.android.tools.r8.graph.H5 h55 = (com.android.tools.r8.graph.H5) this.f37177b;
                        n12.getClass();
                        n12.b(reference, h55, J.f56639d, K.f56661f);
                        C4724u1 b13 = this.f37176a.b();
                        d(b13.a(m22, b13.a(b13.a(1, m22), new com.android.tools.r8.graph.M2[0]), b13.f38090l0));
                        d(b13.a(m22, b13.a(m22, b13.f38052g2), b13.f38082k0));
                    }
                }
            }
        } else {
            a(d02, d02.f36215h.size());
        }
        this.f57953j.a(d02, (com.android.tools.r8.graph.H5) this.f37177b, this);
    }

    @Override
    public final void b(com.android.tools.r8.graph.A2 a22) {
        a((com.android.tools.r8.graph.J2) a22);
        N n10 = this.f57953j;
        com.android.tools.r8.graph.H5 h52 = (com.android.tools.r8.graph.H5) this.f37177b;
        n10.getClass();
        M1 a10 = X1.a(h52);
        if (i(a22)) {
            n10.c(a22.s0(), (com.android.tools.r8.graph.D5) h52);
            com.android.tools.r8.graph.Z4 a11 = n10.a(a22, true, h52, (X1) a10);
            for (InterfaceC5121Es0 interfaceC5121Es0 : n10.f56788c.f49399f) {
                interfaceC5121Es0.b(a11, h52);
            }
        }
    }

    @Override
    public final void c() {
        f(this.f37176a.b().f38092l2);
        N n10 = this.f57953j;
        com.android.tools.r8.graph.H5 h52 = (com.android.tools.r8.graph.H5) this.f37177b;
        if (n10.f56786b.a()) {
            n10.f56785a0.add(h52.getReference());
        }
    }

    @Override
    public final void d(com.android.tools.r8.graph.A2 a22) {
        a((com.android.tools.r8.graph.J2) a22);
        N n10 = this.f57953j;
        com.android.tools.r8.graph.H5 h52 = (com.android.tools.r8.graph.H5) this.f37177b;
        n10.getClass();
        n10.b(a22, h52, this, X1.a(h52));
    }

    @Override
    public void e(C4554l1 c4554l1) {
        a((com.android.tools.r8.graph.J2) c4554l1);
        N n10 = this.f57953j;
        com.android.tools.r8.graph.H5 h52 = (com.android.tools.r8.graph.H5) this.f37177b;
        n10.getClass();
        n10.b(c4554l1, h52, J.f56639d, K.f56658c);
    }

    @Override
    public final void f(com.android.tools.r8.graph.A2 a22) {
        a((com.android.tools.r8.graph.J2) a22);
        N n10 = this.f57953j;
        com.android.tools.r8.graph.H5 h52 = (com.android.tools.r8.graph.H5) this.f37177b;
        n10.getClass();
        if (k(a22)) {
            n10.c(a22.s0(), (com.android.tools.r8.graph.D5) h52);
            n10.f56776S.a(h52, a22);
        }
    }

    @Override
    public final void g(com.android.tools.r8.graph.A2 a22) {
        a((com.android.tools.r8.graph.J2) a22);
        N n10 = this.f57953j;
        com.android.tools.r8.graph.H5 h52 = (com.android.tools.r8.graph.H5) this.f37177b;
        n10.getClass();
        n10.c(a22, h52, this, X1.a(h52));
    }

    public final boolean h(com.android.tools.r8.graph.A2 a22) {
        if (this.f57955l == null) {
            this.f57955l = (Set) this.f57954k.computeIfAbsent(EnumC8071kK.f49580d, TU.a(new C8887pC0()));
        }
        return this.f57955l.add(a22);
    }

    public final boolean i(com.android.tools.r8.graph.A2 a22) {
        if (this.f57956m == null) {
            this.f57956m = (Set) this.f57954k.computeIfAbsent(EnumC8071kK.f49581e, TU.a(new C8887pC0()));
        }
        return this.f57956m.add(a22);
    }

    public final boolean j(com.android.tools.r8.graph.A2 a22) {
        if (this.f57957n == null) {
            this.f57957n = (Set) this.f57954k.computeIfAbsent(EnumC8071kK.f49582f, TU.a(new C8887pC0()));
        }
        return this.f57957n.add(a22);
    }

    public final boolean k(com.android.tools.r8.graph.A2 a22) {
        if (this.f57958o == null) {
            this.f57958o = (Set) this.f57954k.computeIfAbsent(EnumC8071kK.f49583g, TU.a(new C8887pC0()));
        }
        return this.f57958o.add(a22);
    }

    public final boolean l(com.android.tools.r8.graph.A2 a22) {
        if (this.f57959p == null) {
            this.f57959p = (Set) this.f57954k.computeIfAbsent(EnumC8071kK.f49584h, TU.a(new C8887pC0()));
        }
        return this.f57959p.add(a22);
    }

    @Override
    public final void h(C4554l1 c4554l1) {
        a((com.android.tools.r8.graph.J2) c4554l1);
        N n10 = this.f57953j;
        com.android.tools.r8.graph.H5 h52 = (com.android.tools.r8.graph.H5) this.f37177b;
        n10.getClass();
        n10.b(c4554l1, h52, J.f56640e, K.f56659d);
    }

    @Override
    public final void d(C4554l1 c4554l1) {
        a((com.android.tools.r8.graph.J2) c4554l1);
        N n10 = this.f57953j;
        com.android.tools.r8.graph.H5 h52 = (com.android.tools.r8.graph.H5) this.f37177b;
        n10.getClass();
        n10.a(c4554l1, h52, J.f56638c, K.f56659d);
    }

    @Override
    public final void g(C4554l1 c4554l1) {
        a((com.android.tools.r8.graph.J2) c4554l1);
        N n10 = this.f57953j;
        com.android.tools.r8.graph.H5 h52 = (com.android.tools.r8.graph.H5) this.f37177b;
        n10.getClass();
        n10.b(c4554l1, h52, J.f56640e, K.f56658c);
    }

    @Override
    public final void e(com.android.tools.r8.graph.M2 m22) {
        a((com.android.tools.r8.graph.J2) m22);
        N n10 = this.f57953j;
        com.android.tools.r8.graph.H5 h52 = (com.android.tools.r8.graph.H5) this.f37177b;
        com.android.tools.r8.graph.E0 a10 = n10.a(m22, h52, true);
        for (InterfaceC10662zs0 interfaceC10662zs0 : n10.f56788c.f49394a) {
            interfaceC10662zs0.a(a10, h52);
        }
    }

    @Override
    public final void c(C4554l1 c4554l1) {
        a((com.android.tools.r8.graph.J2) c4554l1);
        N n10 = this.f57953j;
        com.android.tools.r8.graph.H5 h52 = (com.android.tools.r8.graph.H5) this.f37177b;
        n10.getClass();
        n10.a(c4554l1, h52, J.f56638c, K.f56658c);
    }

    @Override
    public final void f(C4554l1 c4554l1) {
        a((com.android.tools.r8.graph.J2) c4554l1);
        N n10 = this.f57953j;
        com.android.tools.r8.graph.H5 h52 = (com.android.tools.r8.graph.H5) this.f37177b;
        n10.getClass();
        n10.b(c4554l1, h52, J.f56639d, K.f56659d);
    }

    @Override
    public final void d(com.android.tools.r8.graph.M2 m22) {
        a((com.android.tools.r8.graph.J2) m22);
        this.f57953j.e(m22, (com.android.tools.r8.graph.H5) this.f37177b);
    }

    @Override
    public final void b(C4554l1 c4554l1) {
        a((com.android.tools.r8.graph.J2) c4554l1);
        N n10 = this.f57953j;
        com.android.tools.r8.graph.H5 h52 = (com.android.tools.r8.graph.H5) this.f37177b;
        n10.getClass();
        n10.a(c4554l1, h52, J.f56637b, K.f56659d);
    }

    @Override
    public final void c(com.android.tools.r8.graph.M2 m22) {
        a((com.android.tools.r8.graph.J2) m22);
        N n10 = this.f57953j;
        com.android.tools.r8.graph.H5 h52 = (com.android.tools.r8.graph.H5) this.f37177b;
        com.android.tools.r8.graph.E0 e10 = n10.e(m22, (com.android.tools.r8.graph.D5) h52);
        n10.c(m22, (com.android.tools.r8.graph.D5) h52);
        for (InterfaceC5063Ds0 interfaceC5063Ds0 : n10.f56788c.f49398e) {
            interfaceC5063Ds0.b(m22, e10, h52);
        }
    }

    @Override
    public final void f(com.android.tools.r8.graph.M2 m22) {
        this.f57953j.c(m22, (com.android.tools.r8.graph.D5) this.f37177b);
    }

    @Override
    public final void b(com.android.tools.r8.graph.M2 m22) {
        this.f57953j.d(m22, (com.android.tools.r8.graph.H5) this.f37177b);
    }

    @Override
    public final void a(com.android.tools.r8.graph.A2 a22) {
        a((com.android.tools.r8.graph.J2) a22);
        this.f57953j.b(a22, (com.android.tools.r8.graph.H5) this.f37177b, this);
    }

    @Override
    public final void a(C4554l1 c4554l1) {
        a((com.android.tools.r8.graph.J2) c4554l1);
        N n10 = this.f57953j;
        com.android.tools.r8.graph.H5 h52 = (com.android.tools.r8.graph.H5) this.f37177b;
        n10.getClass();
        n10.a(c4554l1, h52, J.f56637b, K.f56658c);
    }

    @Override
    public final void a(B60 b60) {
        super.a(b60);
        this.f57953j.a((com.android.tools.r8.graph.H5) this.f37177b, b60);
    }

    @Override
    public final void a(C4804y5 c4804y5) {
        this.f57953j.a(c4804y5);
    }

    @Override
    public void a(com.android.tools.r8.graph.M2 m22, ListIterator listIterator, boolean z10) {
        a((com.android.tools.r8.graph.J2) m22);
        this.f57953j.a(m22, (com.android.tools.r8.graph.H5) this.f37177b, listIterator, z10);
    }

    @Override
    public final void a(com.android.tools.r8.graph.M2 m22, boolean z10) {
        a((com.android.tools.r8.graph.J2) m22);
        N n10 = this.f57953j;
        com.android.tools.r8.graph.H5 h52 = (com.android.tools.r8.graph.H5) this.f37177b;
        com.android.tools.r8.graph.E0 a10 = n10.a(m22, h52, z10);
        for (InterfaceC10662zs0 interfaceC10662zs0 : n10.f56788c.f49394a) {
            interfaceC10662zs0.a(m22, a10, h52);
        }
    }

    @Override
    public final void a(int i10) {
        this.f57953j.f56794f.f38400O.a(i10, "from dex");
    }

    @Override
    public final void a(com.android.tools.r8.graph.M2 m22) {
        super.a(m22);
        N n10 = this.f57953j;
        com.android.tools.r8.graph.H5 h52 = (com.android.tools.r8.graph.H5) this.f37177b;
        com.android.tools.r8.graph.E0 e10 = n10.e(m22, (com.android.tools.r8.graph.D5) h52);
        n10.c(m22, (com.android.tools.r8.graph.D5) h52);
        for (InterfaceC4947Bs0 interfaceC4947Bs0 : n10.f56788c.f49396c) {
            interfaceC4947Bs0.c(m22, e10, h52);
        }
    }

    @Override
    public final void a(int i10, com.android.tools.r8.graph.C2 c22) {
        super.a(i10, c22);
        N n10 = this.f57953j;
        com.android.tools.r8.graph.H5 h52 = (com.android.tools.r8.graph.H5) this.f37177b;
        n10.getClass();
        if (!c22.f36190e.d() || i10 == 1) {
            return;
        }
        com.android.tools.r8.graph.Z4 a10 = n10.a(c22.m0(), h52, new P1(h52.d()), c22.f36192g);
        if (a10.w()) {
            Z4.c<?> o10 = a10.o();
            com.android.tools.r8.graph.H0 a11 = com.android.tools.r8.graph.H0.a(o10.f37021c, o10.f37022d);
            if (a11 instanceof com.android.tools.r8.graph.H5) {
                n10.d(C11144c0.f57206a, a11.H(), (H1) I1.f56549D.d().h());
            }
        }
    }
}
