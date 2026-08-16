package com.android.tools.r8.ir.optimize;

import com.android.tools.r8.ClassFileConsumer;
import com.android.tools.r8.FeatureSplit;
import com.android.tools.r8.graph.AbstractC4420e;
import com.android.tools.r8.graph.C4514j;
import com.android.tools.r8.graph.C4515j0;
import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.H2;
import com.android.tools.r8.graph.H5;
import com.android.tools.r8.graph.J2;
import com.android.tools.r8.graph.M2;
import com.android.tools.r8.internal.AbstractC10561zE;
import com.android.tools.r8.internal.AbstractC8999pu0;
import com.android.tools.r8.internal.B60;
import com.android.tools.r8.internal.C10340xw0;
import com.android.tools.r8.internal.C40;
import com.android.tools.r8.internal.C4932Bl;
import com.android.tools.r8.internal.C5313Ib;
import com.android.tools.r8.internal.C6300Zd;
import com.android.tools.r8.internal.C6628bi;
import com.android.tools.r8.internal.C7215fB;
import com.android.tools.r8.internal.C7405gK;
import com.android.tools.r8.internal.C8405mK;
import com.android.tools.r8.internal.C8570nJ;
import com.android.tools.r8.internal.C9222rD;
import com.android.tools.r8.internal.C9389sD;
import com.android.tools.r8.internal.C9820uq;
import com.android.tools.r8.internal.EE;
import com.android.tools.r8.internal.VJ;
import com.android.tools.r8.internal.W5;
import com.android.tools.r8.internal.Y5;
import com.android.tools.r8.internal.Z5;
import com.android.tools.r8.shaking.C11245i;
import java.util.function.BiConsumer;
import java.util.function.Predicate;

public abstract class u0 {

    public static final boolean f54945a = true;

    public static void a(C4798y c4798y, C7215fB c7215fB) {
        boolean d10;
        M2 a10;
        H2 a11;
        C11245i c11245i = (C11245i) c4798y.f();
        C8570nJ E10 = c4798y.E();
        c11245i.getClass();
        if (E10.f50697l instanceof ClassFileConsumer) {
            if (c11245i.f57394I == null) {
                synchronized (c11245i) {
                    try {
                        if (c11245i.f57394I == null) {
                            for (H2 h22 : c11245i.d()) {
                                if (h22.f36367v != null) {
                                    c11245i.f57394I = (C5313Ib) C40.b(c11245i.f57394I, h22.G1());
                                }
                            }
                            if (!C11245i.f57385J && c11245i.f57394I == null) {
                                throw new AssertionError();
                            }
                        }
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
            }
            C5313Ib c5313Ib = c11245i.f57394I;
            boolean z10 = C8570nJ.f50581h2;
            if (!z10 && !(E10.f50697l instanceof ClassFileConsumer)) {
                throw new AssertionError();
            }
            if (!z10 && !(E10.f50697l instanceof ClassFileConsumer)) {
                throw new AssertionError();
            }
            d10 = c5313Ib.d(C5313Ib.f41135f);
        } else {
            d10 = true;
        }
        if (d10) {
            C10696a c10696a = new C10696a();
            H5 j10 = c7215fB.j();
            Z5 u10 = c7215fB.u();
            while (u10.f46159b.hasNext()) {
                W5 w52 = (W5) u10.f46159b.next();
                u10.f46160c = w52;
                Y5 I10 = w52.I();
                while (I10.hasNext()) {
                    VJ vj2 = (VJ) I10.a(new Predicate() {
                        @Override
                        public final boolean test(Object obj) {
                            return com.android.tools.r8.ir.optimize.u0.a((AbstractC10561zE) obj);
                        }
                    });
                    if (vj2 != null) {
                        if (vj2.R1()) {
                            C7405gK i02 = vj2.i0();
                            BiConsumer a12 = a(c4798y, c7215fB, u10, I10, vj2, c10696a);
                            C4724u1 b10 = c4798y.b();
                            if (i02.B2() == b10.f37922O4.f36320b) {
                                boolean z11 = f54945a;
                                if (!z11 && i02.f54321f.size() != 1) {
                                    throw new AssertionError();
                                }
                                C10340xw0 i10 = i02.b(0).i();
                                if (!i10.z() && !i10.j() && (!i02.e1() || !i02.d().z())) {
                                    AbstractC10561zE abstractC10561zE = i10.f53886c;
                                    abstractC10561zE.getClass();
                                    M2 m22 = null;
                                    if (abstractC10561zE instanceof C9820uq) {
                                        J2 j22 = i10.f53886c.O().f52961l;
                                        j22.getClass();
                                        if (j22 instanceof M2) {
                                            m22 = i10.f53886c.O().f52961l.o0();
                                        }
                                    } else if (i10.f53886c.x1()) {
                                        String l22 = i10.f53886c.K().u2().toString();
                                        String H10 = C4932Bl.E(l22) ? C4932Bl.H(l22) : null;
                                        if (H10 == null && l22.startsWith("[") && l22.endsWith(";")) {
                                            H10 = l22.replace('.', '/');
                                        }
                                        if (H10 != null && H10.indexOf(46) <= 0) {
                                            m22 = b10.d(H10);
                                            if (!m22.Q0()) {
                                                continue;
                                            }
                                        }
                                    } else {
                                        continue;
                                    }
                                    if (m22 == null) {
                                        continue;
                                    } else {
                                        com.android.tools.r8.graph.E0 c10 = ((C11245i) c4798y.f()).c(m22.a(b10));
                                        if (c10 != null && c10.d(c4798y)) {
                                            C6300Zd c6300Zd = ((C11245i) c4798y.f()).f37255b;
                                            if (AbstractC4420e.a(c10, j10, c4798y, (C4514j) c4798y.f()).b()) {
                                                continue;
                                            } else {
                                                if (!z11 && c10.e0()) {
                                                    H2 d02 = c10.d0();
                                                    c6300Zd.getClass();
                                                    com.android.tools.r8.synthesis.J g10 = c4798y.f38408a.g();
                                                    FeatureSplit a13 = c6300Zd.a(d02.getType(), g10);
                                                    if (!a13.isBase() && a13 != c6300Zd.a(j10.getReference(), g10)) {
                                                        throw new AssertionError();
                                                    }
                                                }
                                                a12.accept(m22, c10);
                                            }
                                        }
                                    }
                                }
                            } else {
                                continue;
                            }
                        } else {
                            C8405mK k02 = vj2.k0();
                            BiConsumer a14 = a(c4798y, c7215fB, u10, I10, vj2, c10696a);
                            C4724u1 b11 = c4798y.b();
                            if (k02.B2() == b11.f37859F4.f38226d) {
                                C10340xw0 C22 = k02.C2();
                                if (!C22.z()) {
                                    AbstractC8999pu0 u11 = C22.u();
                                    if (u11.s() || u11.r()) {
                                        if (!u11.v()) {
                                            if (u11.s()) {
                                                a10 = u11.b().E();
                                            } else {
                                                a10 = u11.a().a(b11);
                                            }
                                            M2 a15 = a10.a(b11);
                                            if (a15.I0() && (a11 = H2.a(c4798y.g(a15))) != null && (a11.c(c4798y) || (!C22.j() && C22.f53886c.z1()))) {
                                                N n10 = O.a(c4798y, a15, j10).f54789a;
                                                n10.getClass();
                                                if (!(n10 == N.NEVER)) {
                                                    a14.accept(a10, a11);
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
            c10696a.a(c4798y, c7215fB, C6628bi.b());
            c7215fB.x();
            if (!f54945a && !c7215fB.b((C4798y<?>) c4798y)) {
                throw new AssertionError();
            }
        }
    }

    public static boolean a(AbstractC10561zE abstractC10561zE) {
        return abstractC10561zE.R1() || abstractC10561zE.T1();
    }

    public static BiConsumer a(final C4798y c4798y, final C7215fB c7215fB, final Z5 z52, final Y5 y52, final VJ vj2, final C10696a c10696a) {
        return new BiConsumer() {
            @Override
            public final void accept(Object obj, Object obj2) {
                com.android.tools.r8.ir.optimize.u0.a(VJ.this, c4798y, c7215fB, y52, c10696a, z52, (M2) obj, (com.android.tools.r8.graph.E0) obj2);
            }
        };
    }

    public static void a(VJ vj2, C4798y c4798y, C7215fB c7215fB, EE ee2, C10696a c10696a, Z5 z52, M2 m22, com.android.tools.r8.graph.E0 e02) {
        C9389sD c9389sD = null;
        if (vj2.B2().c(c4798y.b().f37922O4.f36320b)) {
            if (e02.e0() && !((C11245i) c4798y.f()).f().a(c7215fB.j(), e02.getType(), c4798y.f38408a.g())) {
                return;
            }
            if (m22.I0() && e02.a(c4798y, c7215fB.j())) {
                if (!e02.e0() || !c4798y.i()) {
                    return;
                }
                boolean z10 = C9389sD.f52316l;
                C9222rD c9222rD = new C9222rD();
                c9222rD.f52321a = c7215fB.a(AbstractC8999pu0.k(), (C4515j0) null);
                c9222rD.f52009d = m22;
                c9222rD.f52322b = vj2.getPosition();
                c9389sD = new C9389sD(c9222rD.f52009d, c9222rD.f52321a);
                B60 b60 = c9222rD.f52322b;
                if (b60 != null) {
                    c9389sD.b(b60);
                }
            }
        }
        if (!vj2.e1() || !vj2.d().w()) {
            if (c9389sD != null) {
                ee2.b(c9389sD);
                return;
            } else {
                ee2.i();
                return;
            }
        }
        W5 b10 = vj2.b();
        ee2.a((C4798y<?>) c4798y, c7215fB, m22, vj2.q(), c10696a);
        if (c9389sD != null) {
            if (b10.z()) {
                ee2.a(c7215fB, z52, c4798y.E()).I().add(c9389sD);
            } else {
                ee2.add(c9389sD);
            }
        }
        if (c4798y.E().f50697l instanceof ClassFileConsumer) {
            C4516j1 v10 = c7215fB.v();
            C8570nJ E10 = c4798y.E();
            if (!C8570nJ.f50581h2) {
                if (!(E10.f50697l instanceof ClassFileConsumer)) {
                    throw new AssertionError();
                }
            } else {
                E10.getClass();
            }
            v10.a(C5313Ib.f41135f);
        }
    }
}
