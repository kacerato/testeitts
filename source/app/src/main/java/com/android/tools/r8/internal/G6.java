package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4515j0;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.ir.optimize.C10696a;
import java.util.Set;

public final class G6 extends AbstractC9617te {

    public static final boolean f40388f = true;

    public final AbstractC8552nC f40389e;

    public G6(C4798y c4798y) {
        super(c4798y);
        C8051kC c8051kC = new C8051kC(4);
        c8051kC.a(C6855d2.class, F6.f40094c);
        c8051kC.a(C5812Qq0.class, F6.f40095d);
        c8051kC.a(C7433gY.class, F6.f40096e);
        c8051kC.a(C6161Ws.class, F6.f40097f);
        c8051kC.a(C7786if0.class, F6.f40098g);
        c8051kC.a(C9523t2.class, F6.f40099h);
        c8051kC.a(A40.class, F6.f40100i);
        c8051kC.a(C7343fy0.class, F6.f40101j);
        c8051kC.a(C5686Ol0.class, F6.f40102k);
        c8051kC.a(C5918Sl0.class, F6.f40103l);
        c8051kC.a(C8504mw0.class, F6.f40104m);
        this.f40389e = c8051kC.b();
    }

    @Override
    public final String a() {
        return "BinopRewriter";
    }

    @Override
    public final InterfaceC10118we b(C7215fB c7215fB) {
        C10340xw0 y22;
        C10340xw0 c10340xw0;
        C10340xw0 c10340xw02;
        C9126qh a10;
        F6 f62;
        C10340xw0 c10340xw03;
        C10340xw0 y23;
        C9126qh a11;
        C9126qh a12;
        C7549hB p10 = c7215fB.p();
        int i10 = 0;
        boolean z10 = false;
        while (p10.hasNext()) {
            AbstractC10561zE next = p10.next();
            if (next.s1() && !(next instanceof C9450se)) {
                AbstractC9702u6 C10 = next.C();
                if (C10.u2() == T10.f44369e || C10.u2() == T10.f44370f) {
                    F6 f63 = (F6) this.f40389e.get(C10.getClass());
                    boolean z11 = f40388f;
                    if (!z11 && f63 == null) {
                        throw new AssertionError();
                    }
                    C9126qh a13 = a((C10340xw0) C10.f54321f.get(i10));
                    boolean z12 = true;
                    if (a13 != null) {
                        boolean a14 = C10.d().a((Set) null);
                        if (a(C10, p10, a13, f63.b(a14), C10.y2(), f63.a(a14), (C10340xw0) C10.f54321f.get(i10))) {
                            z10 = true;
                        }
                    }
                    C9126qh a15 = a(C10.y2());
                    if (a15 != null) {
                        boolean a16 = C10.d().a((Set) null);
                        if (a(C10, p10, a15, f63.d(a16), (C10340xw0) C10.f54321f.get(i10), f63.c(a16), C10.y2())) {
                            z10 = true;
                        }
                    }
                    if (((C10340xw0) C10.f54321f.get(i10)) == C10.y2()) {
                        if ((C10 instanceof C7343fy0) || (C10 instanceof C5812Qq0)) {
                            p10.a(c7215fB.a(0L, C10.d().u()), (C10696a) null);
                        } else if ((C10 instanceof C9523t2) || (C10 instanceof A40)) {
                            C10.d().f((C10340xw0) C10.f54321f.get(i10));
                            p10.remove();
                        }
                        z10 = true;
                    } else {
                        if (!C10.d().y()) {
                            C9126qh a17 = a((C10340xw0) C10.f54321f.get(i10));
                            C9126qh a18 = a(C10.y2());
                            if ((a17 == null || a18 == null) && !(a17 == null && a18 == null)) {
                                C10340xw0 y24 = a17 == null ? (C10340xw0) C10.f54321f.get(i10) : C10.y2();
                                if (!y24.j() && y24.r().s1()) {
                                    AbstractC9702u6 C11 = y24.r().C();
                                    C9126qh a19 = a((C10340xw0) C11.f54321f.get(i10));
                                    C9126qh a20 = a(C11.y2());
                                    if ((a19 == null || a20 == null) && (a19 != null || a20 != null)) {
                                        C9126qh c9126qh = a17 == null ? a18 : a17;
                                        C9126qh c9126qh2 = a19 == null ? a20 : a19;
                                        C10340xw0 y25 = a19 == null ? (C10340xw0) C11.f54321f.get(i10) : C11.y2();
                                        if (C11.getClass() == C10.getClass()) {
                                            if (!f63.f40105b) {
                                                C10340xw0 c10340xw04 = y25;
                                                if (f63.a()) {
                                                    if (a18 != null && a20 != null) {
                                                        if (!z11 && !(C10 instanceof C5686Ol0) && !(C10 instanceof C5918Sl0) && !(C10 instanceof C8504mw0)) {
                                                            throw new AssertionError();
                                                        }
                                                        int i11 = c10340xw04.Y().b() ? 63 : 31;
                                                        int u22 = (a20.u2() & i11) + (a18.u2() & i11);
                                                        if (u22 <= i11) {
                                                            p10.previous();
                                                            C10340xw0 a21 = p10.a(c7215fB, this.f52646a.E(), u22, AbstractC8999pu0.k());
                                                            p10.next();
                                                            p10.a(a(c7215fB, c10340xw04, a21, f63), (C10696a) null);
                                                            p10.previous();
                                                        } else if (!(C10 instanceof C5918Sl0)) {
                                                            p10.a(c7215fB.a(0L, C10.d().u()), (C10696a) null);
                                                        }
                                                    }
                                                } else if ((C10 instanceof C5812Qq0) && a18 != null) {
                                                    if (a20 == null) {
                                                        C10203x6 c10203x6 = F6.f40095d;
                                                        a(p10, c10203x6, c10203x6, c9126qh2, c9126qh, c10340xw04, true, c7215fB);
                                                    } else {
                                                        a(p10, F6.f40094c, F6.f40095d, c9126qh, c9126qh2, c10340xw04, false, c7215fB);
                                                    }
                                                }
                                            } else {
                                                if (!z11 && !C10.v2()) {
                                                    throw new AssertionError();
                                                }
                                                a(p10, f63, f63, c9126qh, c9126qh2, y25, true, c7215fB);
                                            }
                                            z10 |= z12;
                                        } else {
                                            C10340xw0 c10340xw05 = y25;
                                            if ((C10 instanceof C5812Qq0) && C11.h1() && a18 != null) {
                                                a(p10, F6.f40095d, F6.f40094c, c9126qh2, c9126qh, c10340xw05, true, c7215fB);
                                            } else if (C10.h1() && (C11 instanceof C5812Qq0)) {
                                                if (a19 == null) {
                                                    C10203x6 c10203x62 = F6.f40095d;
                                                    a(p10, c10203x62, c10203x62, c9126qh2, c9126qh, c10340xw05, false, c7215fB);
                                                } else {
                                                    a(p10, F6.f40094c, F6.f40095d, c9126qh, c9126qh2, c10340xw05, true, c7215fB);
                                                }
                                            }
                                            z10 |= z12;
                                        }
                                    }
                                }
                            } else if (((C10 instanceof C9523t2) || (C10 instanceof A40)) && !((C10340xw0) C10.f54321f.get(i10)).j() && !C10.y2().j()) {
                                VT n02 = ((C10340xw0) C10.f54321f.get(i10)).r().n0();
                                VT n03 = C10.y2().r().n0();
                                if (n02 != null && n03 != null && n02.getClass() == n03.getClass() && n02.u2() == n03.u2()) {
                                    if ((n02 instanceof C9523t2) || (n02 instanceof A40)) {
                                        if (((C10340xw0) n02.f54321f.get(i10)) == ((C10340xw0) n03.f54321f.get(i10))) {
                                            y22 = (C10340xw0) n02.f54321f.get(i10);
                                            c10340xw0 = n02.y2();
                                            c10340xw02 = n03.y2();
                                        } else if (((C10340xw0) n02.f54321f.get(i10)) == n03.y2()) {
                                            y22 = (C10340xw0) n02.f54321f.get(i10);
                                            c10340xw0 = n02.y2();
                                            c10340xw02 = (C10340xw0) n03.f54321f.get(i10);
                                        } else if (n02.y2() == ((C10340xw0) n03.f54321f.get(i10))) {
                                            y22 = n02.y2();
                                            c10340xw0 = (C10340xw0) n02.f54321f.get(i10);
                                            c10340xw02 = n03.y2();
                                        } else if (n02.y2() == n03.y2()) {
                                            y22 = n02.y2();
                                            c10340xw0 = (C10340xw0) n02.f54321f.get(i10);
                                            c10340xw02 = (C10340xw0) n03.f54321f.get(i10);
                                        }
                                        C10340xw0 c10340xw06 = y22;
                                        B60 position = C10.getPosition();
                                        F6 f64 = (F6) this.f40389e.get(n02.getClass());
                                        C9126qh a22 = a(c10340xw0);
                                        if (a22 == null || (a10 = a(c10340xw02)) == null) {
                                            AbstractC9702u6 a23 = a(c7215fB, c10340xw0, c10340xw02, f63);
                                            a23.b(position);
                                            p10.previous();
                                            p10.add(a23);
                                            p10.next();
                                            p10.a(a(c7215fB, a23.d(), c10340xw06, f64), (C10696a) null);
                                            p10.previous();
                                            p10.previous();
                                        } else {
                                            a(p10, f63, f64, a22, a10, c10340xw06, true, c7215fB);
                                        }
                                        z10 |= z12;
                                    } else if ((n02 instanceof C5686Ol0) || (n02 instanceof C5918Sl0) || (n02 instanceof C8504mw0)) {
                                        if ((r2 = a(n02.y2())) != null) {
                                            B60 position2 = C10.getPosition();
                                            f62 = (F6) this.f40389e.get(n02.getClass());
                                            C10340xw0 c10340xw07 = (C10340xw0) n02.f54321f.get(i10);
                                            c10340xw03 = (C10340xw0) n03.f54321f.get(i10);
                                            y23 = n02.y2();
                                            a11 = a(c10340xw07);
                                            if (a11 != null || (a12 = a(c10340xw03)) == null) {
                                                AbstractC9702u6 a24 = a(c7215fB, c10340xw07, c10340xw03, f63);
                                                a24.b(position2);
                                                p10.previous();
                                                p10.add(a24);
                                                p10.next();
                                                p10.a(a(c7215fB, a24.d(), y23, f62), (C10696a) null);
                                                p10.previous();
                                                p10.previous();
                                            } else {
                                                a(p10, f63, f62, a11, a12, y23, true, c7215fB);
                                            }
                                        } else {
                                            B60 position22 = C10.getPosition();
                                            f62 = (F6) this.f40389e.get(n02.getClass());
                                            C10340xw0 c10340xw072 = (C10340xw0) n02.f54321f.get(i10);
                                            c10340xw03 = (C10340xw0) n03.f54321f.get(i10);
                                            y23 = n02.y2();
                                            a11 = a(c10340xw072);
                                            if (a11 != null) {
                                            }
                                            AbstractC9702u6 a242 = a(c7215fB, c10340xw072, c10340xw03, f63);
                                            a242.b(position22);
                                            p10.previous();
                                            p10.add(a242);
                                            p10.next();
                                            p10.a(a(c7215fB, a242.d(), y23, f62), (C10696a) null);
                                            p10.previous();
                                            p10.previous();
                                        }
                                        z10 |= z12;
                                    }
                                }
                            }
                        }
                        z12 = false;
                        z10 |= z12;
                    }
                }
            }
            i10 = 0;
        }
        if (z10) {
            c7215fB.a((C6382aB) null, (C10696a) null);
            c7215fB.x();
        }
        return z10 ? InterfaceC10118we.f53548b : InterfaceC10118we.f53547a;
    }

    @Override
    public final boolean a(C7215fB c7215fB, AbstractC6931dX abstractC6931dX) {
        return this.f52648c.f50599F1.f50896o && !a(c7215fB.j()) && c7215fB.f47902i.a();
    }

    public static AbstractC9702u6 a(C7215fB c7215fB, C10340xw0 c10340xw0, C10340xw0 c10340xw02, F6 f62) {
        AbstractC8999pu0 u10 = c10340xw0.u();
        u10.getClass();
        AbstractC8999pu0 u11 = u10 instanceof C9736uI ? c10340xw02.u() : c10340xw0.u();
        C10340xw0 a10 = c7215fB.a(u11, (C4515j0) null);
        u11.getClass();
        return f62.a(u11 instanceof C9736uI ? T10.f44369e : T10.f44370f, a10, c10340xw0, c10340xw02);
    }

    public final void a(C7549hB c7549hB, F6 f62, F6 f63, C9126qh c9126qh, C9126qh c9126qh2, C10340xw0 c10340xw0, boolean z10, C7215fB c7215fB) {
        long a10;
        AbstractC8999pu0 u10 = c9126qh.d().u();
        u10.getClass();
        AbstractC8999pu0 u11 = (u10 instanceof C9736uI ? c9126qh2.d() : c9126qh.d()).u();
        u11.getClass();
        if (u11 instanceof C9736uI) {
            a10 = f62.d(c9126qh.u2(), c9126qh2.u2());
        } else {
            a10 = f62.a(c9126qh.v2(), c9126qh2.v2());
        }
        long j10 = a10;
        c7549hB.previous();
        C10340xw0 a11 = c7549hB.a(c7215fB, this.f52646a.E(), j10, c9126qh.d().u());
        c7549hB.next();
        C10340xw0 c10340xw02 = z10 ? a11 : c10340xw0;
        if (z10) {
            a11 = c10340xw0;
        }
        c7549hB.a(a(c7215fB, c10340xw02, a11, f63), (C10696a) null);
        c7549hB.previous();
    }

    public static C9126qh a(C10340xw0 c10340xw0) {
        C9126qh J10 = (c10340xw0.M() && c10340xw0.n().w1()) ? c10340xw0.n().J() : null;
        if (J10 != null) {
            return J10;
        }
        if (c10340xw0.j()) {
            C10340xw0 c10340xw02 = c10340xw0.l().c0().get(0);
            if (((c10340xw02.M() && c10340xw02.n().w1()) ? c10340xw02.n().J() : null) != null) {
                C7201f60 l10 = c10340xw0.l();
                C6286Yx0 c6286Yx0 = new C6286Yx0(2);
                c6286Yx0.b((C6286Yx0) l10);
                C9126qh c9126qh = null;
                while (c6286Yx0.b()) {
                    for (C10340xw0 c10340xw03 : ((C7201f60) c6286Yx0.c()).c0()) {
                        C9126qh J11 = (c10340xw03.M() && c10340xw03.n().w1()) ? c10340xw03.n().J() : null;
                        if (J11 == null) {
                            if (!c10340xw03.j()) {
                                return null;
                            }
                            c6286Yx0.b((C6286Yx0) c10340xw03.l());
                        } else if (c9126qh == null) {
                            c9126qh = J11;
                        } else {
                            if (J11.w2() != c9126qh.w2()) {
                                return null;
                            }
                            if (!f40388f && J11.a() != c9126qh.a()) {
                                throw new AssertionError();
                            }
                        }
                    }
                }
                return c9126qh;
            }
        }
        return null;
    }

    public static boolean a(AbstractC9702u6 abstractC9702u6, C7549hB c7549hB, C9126qh c9126qh, Integer num, C10340xw0 c10340xw0, Integer num2, C10340xw0 c10340xw02) {
        int i10;
        AbstractC8999pu0 u10 = c9126qh.d().u();
        u10.getClass();
        if (u10 instanceof C9736uI) {
            i10 = c9126qh.u2();
        } else {
            if (!f40388f) {
                AbstractC8999pu0 u11 = c9126qh.d().u();
                u11.getClass();
                if (!(u11 instanceof C9593tU)) {
                    throw new AssertionError();
                }
            }
            long v22 = c9126qh.v2();
            i10 = (int) v22;
            if (i10 != v22) {
                return false;
            }
        }
        if (num != null && num.intValue() == i10) {
            abstractC9702u6.d().f(c10340xw0);
            c7549hB.remove();
            return true;
        }
        if (num2 == null || num2.intValue() != i10) {
            return false;
        }
        abstractC9702u6.d().f(c10340xw02);
        c7549hB.remove();
        return true;
    }
}
