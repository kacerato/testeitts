package com.android.tools.r8.internal;

import com.android.tools.r8.graph.AbstractC4497i0;
import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4553l0;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.Set;
import java.util.function.Consumer;
import java.util.function.Function;
import java.util.function.Predicate;

public final class C7725iE {

    public static final boolean f48885h = true;

    public final C4798y f48886a;

    public final AbstractC10188x1 f48887b;

    public final C4724u1 f48888c;

    public final AA f48889d;

    public final List f48890e;

    public final C7057eE f48891f;

    public final C10048wA f48892g;

    public C7725iE(C4798y c4798y, AbstractC10188x1 abstractC10188x1, AA aa2, List list, C10048wA c10048wA, C7057eE c7057eE) {
        this.f48886a = c4798y;
        this.f48887b = abstractC10188x1;
        this.f48888c = c4798y.b();
        this.f48889d = aa2;
        this.f48890e = list;
        this.f48891f = c7057eE;
        this.f48892g = c10048wA;
        boolean z10 = f48885h;
        if (!z10 && list.isEmpty()) {
            throw new AssertionError();
        }
        if (!z10 && list.stream().map(new Function() {
            @Override
            public final Object apply(Object obj) {
                return ((com.android.tools.r8.graph.H5) obj).D();
            }
        }).distinct().count() != 1 && c7057eE == null) {
            throw new AssertionError();
        }
    }

    public final int a() {
        return ((com.android.tools.r8.graph.H5) this.f48890e.iterator().next()).getReference().w0();
    }

    public final boolean b() {
        return this.f48891f != null;
    }

    public final void c() {
        if (b() || !d()) {
            this.f48890e.forEach(new Consumer() {
                @Override
                public final void accept(Object obj) {
                    C7725iE.a((com.android.tools.r8.graph.H5) obj);
                }
            });
        }
    }

    public final boolean d() {
        return this.f48890e.size() != 1 || this.f48889d.d();
    }

    public static Set a(final int i10, final List list) {
        return C4875Al0.a(new InterfaceC6285Yx() {
            @Override
            public final void forEach(Consumer consumer) {
                List.this.forEach(new Consumer() {
                    @Override
                    public final void accept(Object obj) {
                        Consumer.this.accept(((com.android.tools.r8.graph.H5) obj).b(r2));
                    }
                });
            }
        });
    }

    public final com.android.tools.r8.graph.A2 a(C9614td c9614td, com.android.tools.r8.graph.A2 a22) {
        C4724u1 c4724u1 = this.f48888c;
        com.android.tools.r8.graph.I2 y02 = a22.y0();
        com.android.tools.r8.graph.M2 s02 = a22.s0();
        Objects.requireNonNull(c9614td);
        return c4724u1.a("$r8$init$synthetic", null, y02, s02, new C6074Vd1(c9614td), 0);
    }

    public final com.android.tools.r8.graph.A2 a(C9114qd c9114qd, final C9614td c9614td, com.android.tools.r8.graph.H5 h52, final com.android.tools.r8.graph.A2 a22) {
        C4724u1 c4724u1 = this.f48888c;
        com.android.tools.r8.graph.A2 reference = h52.getReference();
        com.android.tools.r8.graph.H2 h22 = this.f48889d.f38555d;
        C4724u1 c4724u12 = this.f48888c;
        reference.getClass();
        com.android.tools.r8.graph.A2 a10 = reference.a(h22.getType(), c4724u12);
        AbstractC7552hC abstractC7552hC = c9114qd.f51821a;
        Predicate predicate = new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return C7725iE.a(C9614td.this, a22, (com.android.tools.r8.graph.A2) obj);
            }
        };
        c4724u1.getClass();
        com.android.tools.r8.graph.A2 a11 = c4724u1.a(a10, abstractC7552hC, predicate, C6628bi.b());
        if (a11.a(h52.getReference())) {
            c9614td.a(h52.d());
            return a11;
        }
        C4516j1 d10 = h52.d();
        C4724u1 c4724u13 = this.f48888c;
        d10.L0();
        c9614td.a(d10.a(a11, c4724u13, (Consumer) null));
        return a11;
    }

    public static boolean a(C9614td c9614td, com.android.tools.r8.graph.A2 a22, com.android.tools.r8.graph.A2 a23) {
        return c9614td.a(a23) && !a23.a(a22);
    }

    public final void a(C9114qd c9114qd, M70 m70, C9614td c9614td) {
        C5313Ib c5313Ib;
        AbstractC4497i0 c6310Zh;
        C4516j1 a10;
        final com.android.tools.r8.graph.H5 h52 = (com.android.tools.r8.graph.H5) AT.a(this.f48890e);
        boolean z10 = this.f48890e.size() > 1 && (!b() || this.f48889d.d());
        com.android.tools.r8.graph.M2[] m2Arr = h52.C().f36675b;
        int a11 = C8704o7.a(z10) + h52.C().size();
        com.android.tools.r8.graph.M2[] m2Arr2 = new com.android.tools.r8.graph.M2[a11];
        System.arraycopy(m2Arr, 0, m2Arr2, 0, m2Arr.length);
        for (int i10 = 0; i10 < m2Arr.length; i10++) {
            Set a12 = a(i10, this.f48890e);
            if (a12.size() > 1) {
                com.android.tools.r8.graph.M2 a13 = com.android.tools.r8.graph.P2.a(a12, this.f48886a);
                if (!f48885h && !com.android.tools.r8.graph.P2.a(this.f48886a, a13).a(a13)) {
                    throw new AssertionError();
                }
                m2Arr2[i10] = a13;
            }
        }
        if (z10) {
            if (!f48885h && X3.b(m2Arr2) != null) {
                throw new AssertionError();
            }
            m2Arr2[a11 - 1] = this.f48888c.f37884J1;
        }
        C4724u1 c4724u1 = this.f48888c;
        com.android.tools.r8.graph.A2 a14 = c4724u1.a(this.f48889d.f38555d.getType(), c4724u1.a(c4724u1.f37905M1, m2Arr2), c4724u1.f38067i1);
        C4724u1 c4724u12 = this.f48888c;
        AbstractC7552hC abstractC7552hC = c9114qd.f51821a;
        Objects.requireNonNull(c9614td);
        C6074Vd1 c6074Vd1 = new C6074Vd1(c9614td);
        c4724u12.getClass();
        com.android.tools.r8.graph.A2 a15 = c4724u12.a(a14, abstractC7552hC, c6074Vd1, C6628bi.b());
        List a16 = AbstractC5300Hv.a(a14, a15);
        if (b()) {
            C10048wA c10048wA = this.f48892g;
            List list = this.f48890e;
            c10048wA.getClass();
            Iterator<E> it = list.iterator();
            while (it.hasNext()) {
                c10048wA.a(((com.android.tools.r8.graph.H5) it.next()).getReference(), a15, false);
            }
        } else if (!d()) {
            this.f48892g.a(h52.getReference(), a15, true);
        } else {
            for (com.android.tools.r8.graph.H5 h53 : this.f48890e) {
                com.android.tools.r8.graph.A2 a17 = a(c9114qd, c9614td, h53, a15);
                this.f48892g.f53431b.a(a17, a17);
                this.f48892g.b(h53.getReference(), a17, false);
                m70.a(h53.getReference(), new Consumer() {
                    @Override
                    public final void accept(Object obj) {
                        C7725iE.a(com.android.tools.r8.graph.H5.this, (K70) obj);
                    }
                });
            }
        }
        com.android.tools.r8.graph.A2 a18 = a(c9614td, a15);
        if (d()) {
            this.f48892g.b(a18, a15, true);
        }
        Iterator it2 = this.f48890e.iterator();
        while (true) {
            c5313Ib = null;
            if (!it2.hasNext()) {
                break;
            }
            com.android.tools.r8.graph.H5 h54 = (com.android.tools.r8.graph.H5) it2.next();
            C4894Av c4894Av = z10 ? new C4894Av(this.f48887b.b(h54.p())) : null;
            C10048wA c10048wA2 = this.f48892g;
            com.android.tools.r8.graph.A2 reference = h54.getReference();
            c10048wA2.f53431b.a(reference, a15);
            if (c4894Av != null) {
                c10048wA2.f53433d.put(reference, c4894Av);
            }
        }
        C4516j1 d10 = h52.d();
        if (!b() && !d()) {
            C4724u1 c4724u13 = this.f48888c;
            d10.L0();
            a10 = d10.a(a15, c4724u13, (Consumer) null);
        } else {
            C4516j1[] c4516j1Arr = C4516j1.f37310u;
            C4516j1.a a19 = AbstractC8294li.a(a15, true).a(com.android.tools.r8.graph.L4.b(4097, true));
            int size = a16.size();
            if (b()) {
                C7057eE c7057eE = this.f48891f;
                AA aa2 = this.f48889d;
                c7057eE.getClass();
                c6310Zh = new C7555hD(z10 ? aa2.a() : null, size, c7057eE.f47643a, c7057eE.f47644b, c7057eE.f47645c, c7057eE.f47646d);
            } else {
                boolean z11 = f48885h;
                if (!z11 && !d()) {
                    throw new AssertionError();
                }
                if (!z11 && b()) {
                    throw new AssertionError();
                }
                DG dg2 = new DG();
                for (com.android.tools.r8.graph.H5 h55 : this.f48890e) {
                    dg2.a(this.f48887b.b(h55.p()), h55.getReference());
                }
                c6310Zh = new C6310Zh(dg2, this.f48889d.d() ? this.f48889d.a() : null, size);
            }
            C4516j1.a a20 = a19.a(c6310Zh);
            for (com.android.tools.r8.graph.H5 h56 : this.f48890e) {
                if (h56.d().a1()) {
                    c5313Ib = (C5313Ib) C40.b(c5313Ib, h56.d().P0());
                }
            }
            a20.f37339k = c5313Ib;
            a20.f37340l = d10.f37261e;
            a20.f37341m = d10.f37322o;
            a10 = a20.a();
        }
        c9614td.a(a10);
        if (f48885h) {
            return;
        }
        AbstractC4497i0 Q02 = a10.Q0();
        Q02.getClass();
        if (!(Q02 instanceof C4553l0) && !a10.Q0().A0() && !a10.Q0().z0()) {
            throw new AssertionError();
        }
    }

    public static void a(com.android.tools.r8.graph.H5 h52, K70 k70) {
        k70.getClass();
        k70.a((com.android.tools.r8.graph.J2) h52.getReference());
    }

    public static void a(com.android.tools.r8.graph.H5 h52) {
        h52.d().f37327t = true;
    }
}
