package com.android.tools.r8.internal;

import com.android.tools.r8.graph.AbstractC4420e;
import com.android.tools.r8.graph.C4514j;
import com.android.tools.r8.graph.C4515j0;
import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.ir.optimize.C10696a;
import com.android.tools.r8.ir.optimize.C10732x;
import com.android.tools.r8.shaking.C11245i;
import java.util.Iterator;
import java.util.Set;
import java.util.function.Consumer;
import java.util.function.Predicate;

public final class C7827it0 extends AbstractC9617te {

    public static final boolean f49085e = true;

    public C7827it0(C4798y c4798y) {
        super(c4798y);
    }

    public static void c(C8331lu0 c8331lu0) {
        c8331lu0.f50139b = true;
    }

    @Override
    public final String a() {
        return "TrivialCheckCastAndInstanceOfRemover";
    }

    /* JADX WARN: Code restructure failed: missing block: B:200:0x0428, code lost:
    
        if (r2.b(r3, r24.f52646a) == false) goto L181;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0098, code lost:
    
        if (com.android.tools.r8.graph.AbstractC4420e.a(r11, r25.j(), r9, r9.f()).b() != false) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x00d8, code lost:
    
        if (r5.a(r24.f52647b).K0() != false) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x00fa, code lost:
    
        if (r9.g(r2).isInterface() != false) goto L23;
     */
    /* JADX WARN: Removed duplicated region for block: B:62:0x04c5 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:67:0x045f A[SYNTHETIC] */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final InterfaceC10118we b(C7215fB c7215fB, AbstractC6931dX abstractC6931dX, C5035Df c5035Df) {
        Y5 y52;
        C7215fB c7215fB2;
        Iterator<W5> it;
        W5 w52;
        boolean z10;
        boolean z11;
        boolean z12;
        com.android.tools.r8.graph.H5 h52;
        C10696a c10696a;
        W5 w53;
        char c10;
        AbstractC10561zE a10;
        AbstractC8999pu0 f10;
        boolean z13;
        C7215fB c7215fB3 = c7215fB;
        if (!f49085e && !this.f52646a.f().i()) {
            throw new AssertionError();
        }
        C4798y<C11245i> M10 = this.f52646a.M();
        Iterator<W5> it2 = c7215fB3.f47897d.iterator();
        boolean z14 = false;
        boolean z15 = false;
        while (it2.hasNext()) {
            W5 next = it2.next();
            boolean z16 = z14;
            boolean z17 = z15;
            Y5 I10 = next.I();
            while (I10.hasNext()) {
                AbstractC10561zE abstractC10561zE = (AbstractC10561zE) I10.next();
                if (abstractC10561zE.t1()) {
                    boolean B10 = abstractC10561zE.d().B();
                    C10696a c10696a2 = new C10696a();
                    C7942jc D10 = abstractC10561zE.D();
                    com.android.tools.r8.graph.H5 j10 = c7215fB.j();
                    C10340xw0 n10 = D10.n();
                    C10340xw0 d10 = D10.d();
                    com.android.tools.r8.graph.M2 m22 = D10.f49274k;
                    com.android.tools.r8.graph.M2 a11 = m22.a(this.f52647b);
                    if (a11.I0()) {
                        com.android.tools.r8.graph.E0 g10 = this.f52646a.g(a11);
                        if (g10 != null) {
                            h52 = j10;
                        }
                        c10696a = c10696a2;
                        y52 = I10;
                        it = it2;
                        w53 = next;
                        z10 = z16;
                        z11 = z17;
                        c10 = 1;
                        z12 = true;
                        if (c10 != z12) {
                            z16 = z10 | B10;
                            w52 = w53;
                            int size = w52.f45293f.size();
                            AbstractC10561zE n11 = y52.n();
                            if (c10 == 2) {
                                c7215fB2 = c7215fB;
                                c10696a.a(this.f52646a, c7215fB2, new Consumer() {
                                    @Override
                                    public final void accept(Object obj) {
                                        C7827it0.a((C8331lu0) obj);
                                    }
                                });
                            } else {
                                c7215fB2 = c7215fB;
                                C10696a c10696a3 = c10696a;
                                if (!f49085e && c10 != 3) {
                                    throw new AssertionError();
                                }
                                c10696a3.b(this.f52646a, c7215fB2, new Consumer() {
                                    @Override
                                    public final void accept(Object obj) {
                                        C7827it0.b((C8331lu0) obj);
                                    }
                                });
                            }
                            if (w52.f45293f.size() != size) {
                                if (n11 != null) {
                                    a10 = n11.Y0();
                                } else {
                                    a10 = w52.f45293f.a();
                                }
                                I10 = new Y5(w52, a10);
                                z17 = z12;
                                next = w52;
                                c7215fB3 = c7215fB2;
                                it2 = it;
                            } else {
                                z17 = z12;
                                next = w52;
                                c7215fB3 = c7215fB2;
                                it2 = it;
                                I10 = y52;
                            }
                        } else {
                            c7215fB2 = c7215fB;
                            w52 = w53;
                            next = w52;
                            c7215fB3 = c7215fB2;
                            it2 = it;
                            z17 = z11;
                            I10 = y52;
                            z16 = z10;
                        }
                    } else {
                        h52 = j10;
                    }
                    if (this.f52646a.f38395J.a(M10, n10)) {
                        if (this.f52648c.d()) {
                            AbstractC8999pu0 u10 = n10.u();
                            u10.getClass();
                            if (u10 instanceof C6301Zd0) {
                                if (m22.E0()) {
                                }
                            }
                        }
                        this.f52648c.getClass();
                        if (m22.E0()) {
                            com.android.tools.r8.graph.M2 a12 = m22.a(this.f52647b);
                            if (a12.I0()) {
                            }
                        }
                        AbstractC8999pu0 u11 = n10.u();
                        AbstractC8999pu0 u12 = d10.u();
                        it = it2;
                        AbstractC8999pu0 a13 = AbstractC8999pu0.a(m22, u11.B(), (C4798y<?>) this.f52646a);
                        boolean z18 = f49085e;
                        z11 = z17;
                        if (!z18) {
                            C8854p10 B11 = u11.B();
                            C8854p10 B12 = u12.B();
                            if (B11.a(B12) != B12) {
                                throw new AssertionError();
                            }
                        }
                        if (u11.a(a13, this.f52646a)) {
                            if (!z18 && !u11.a(u12, this.f52646a)) {
                                throw new AssertionError();
                            }
                            boolean z19 = C10732x.f54957b;
                            if (d10.z() && d10.s() != n10.s()) {
                                I10.a(new C7130ej(d10, n10), (C10696a) null);
                            } else {
                                if (d10.z()) {
                                    if (!z19 && d10.s() != n10.s()) {
                                        throw new AssertionError();
                                    }
                                    C4515j0 s10 = d10.s();
                                    Set set = D10.f54323h;
                                    if (set != null) {
                                        Iterator it3 = set.iterator();
                                        while (true) {
                                            if (it3.hasNext()) {
                                                C10340xw0 c10340xw0 = (C10340xw0) it3.next();
                                                if (c10340xw0.z() && c10340xw0.s() == s10) {
                                                    it3.remove();
                                                    c10340xw0.c(D10);
                                                }
                                            }
                                        }
                                    }
                                }
                                d10.f(n10);
                                I10.i();
                            }
                            c10696a2.f54829b.addAll(n10.a());
                            c10696a = c10696a2;
                            y52 = I10;
                            w53 = next;
                            z10 = z16;
                        } else if (m22.I0() && m22.a(M10) && !d10.z() && !this.f52646a.f38408a.g().c()) {
                            I10.previous();
                            com.android.tools.r8.graph.H5 h53 = h52;
                            C10340xw0 a14 = I10.a(c7215fB, this.f52648c, 0L, AbstractC8999pu0.m());
                            I10.next();
                            D10.d().f(a14);
                            c10696a2.f54829b.addAll(a14.a());
                            com.android.tools.r8.ir.optimize.L0 b10 = com.android.tools.r8.ir.optimize.M0.b(this.f52646a, abstractC6931dX.d(), c5035Df);
                            abstractC6931dX.b(b10.f54773a);
                            b10.f54774b = true;
                            boolean z20 = C7405gK.f48231o;
                            C7238fK c7238fK = new C7238fK();
                            if (!com.android.tools.r8.ir.optimize.L0.f54772c && !b10.f54774b) {
                                throw new AssertionError();
                            }
                            c7238fK.f44718d = b10.f54773a.getReference();
                            C7238fK c7238fK2 = (C7238fK) c7238fK.a(D10.n());
                            c7238fK2.f52322b = D10.getPosition();
                            C7405gK c11 = c7238fK2.c();
                            I10.a(c11, (C10696a) null);
                            if (!z18 && c11.e(this.f52646a, h53) == null) {
                                throw new AssertionError();
                            }
                            y52 = I10;
                            if (D10.n().u().v()) {
                                w53 = next;
                                z10 = z16;
                                c10696a = c10696a2;
                            } else {
                                z12 = true;
                                w53 = next;
                                z10 = z16;
                                c10696a = c10696a2;
                                c10 = 3;
                                if (c10 != z12) {
                                }
                            }
                        } else {
                            C10696a c10696a4 = c10696a2;
                            com.android.tools.r8.graph.H5 h54 = h52;
                            if ((D10 instanceof C5800Qk0) || D10.W0().b(M10).b(a13, this.f52646a)) {
                                C10340xw0 d11 = D10.d();
                                AbstractC8999pu0 u13 = d11.u();
                                AbstractC8999pu0 f11 = AbstractC8999pu0.f();
                                C6286Yx0 c6286Yx0 = new C6286Yx0(1);
                                AbstractC5125Eu0.a(d11, c6286Yx0);
                                while (true) {
                                    if (c6286Yx0.b()) {
                                        C5067Du0 c5067Du0 = (C5067Du0) c6286Yx0.c();
                                        FE fe2 = c5067Du0.f39681a;
                                        if (fe2.j()) {
                                            AbstractC5125Eu0.a(fe2.l(), c6286Yx0);
                                        } else {
                                            AbstractC10561zE k10 = fe2.k();
                                            C10340xw0 c10340xw02 = c5067Du0.f39682b;
                                            c10696a = c10696a4;
                                            int r22 = k10.r2();
                                            y52 = I10;
                                            if (r22 == 9) {
                                                w53 = next;
                                                z10 = z16;
                                                AbstractC5125Eu0.a(k10.B().d(), c6286Yx0);
                                                f10 = AbstractC8999pu0.f();
                                            } else if (r22 == 10 || r22 == 25) {
                                                w53 = next;
                                                z10 = z16;
                                                f10 = AbstractC8999pu0.f();
                                            } else if (r22 == 28) {
                                                w53 = next;
                                                z10 = z16;
                                                f10 = k10.c().getField().s0().b(M10);
                                            } else if (r22 == 30) {
                                                w53 = next;
                                                z10 = z16;
                                                C9225rE m10 = k10.m();
                                                C4554l1 field = m10.getField();
                                                AbstractC8999pu0 f12 = AbstractC8999pu0.f();
                                                if (m10.n() == c10340xw02) {
                                                    f12 = f12.a(M10, field.s0().b(M10));
                                                }
                                                f10 = m10.value() == c10340xw02 ? f12.a(M10, field.getType().b(M10)) : f12;
                                            } else if (r22 == 56) {
                                                w53 = next;
                                                z10 = z16;
                                                f10 = h54.E().b(M10);
                                            } else if (r22 != 60) {
                                                if (r22 != 33 && r22 != 34) {
                                                    switch (r22) {
                                                        case 38:
                                                        case 39:
                                                        case 40:
                                                            break;
                                                        default:
                                                            f10 = AbstractC8999pu0.p();
                                                            w53 = next;
                                                            z10 = z16;
                                                            break;
                                                    }
                                                }
                                                VJ e02 = k10.e0();
                                                AbstractC8999pu0 f13 = AbstractC8999pu0.f();
                                                w53 = next;
                                                int i10 = 0;
                                                while (i10 < e02.f54321f.size()) {
                                                    if (e02.b(i10) != c10340xw02) {
                                                        z13 = z16;
                                                    } else {
                                                        z13 = z16;
                                                        f13 = f13.a(M10, e02.B2().a(i10, e02.R1()).b(M10));
                                                    }
                                                    i10++;
                                                    z16 = z13;
                                                }
                                                z10 = z16;
                                                if (!AbstractC5125Eu0.f40048a) {
                                                    f13.getClass();
                                                    if (f13 instanceof C10540z7) {
                                                        throw new AssertionError();
                                                    }
                                                }
                                                f10 = f13;
                                            } else {
                                                w53 = next;
                                                z10 = z16;
                                                f10 = k10.L0().getField().getType().b(M10);
                                            }
                                            f11 = f11.a(M10, f10);
                                            f11.getClass();
                                            if (!(f11 instanceof C10328xs0) && !f11.a(u13)) {
                                                c10696a4 = c10696a;
                                                I10 = y52;
                                                next = w53;
                                                z16 = z10;
                                            }
                                        }
                                    } else {
                                        y52 = I10;
                                        w53 = next;
                                        z10 = z16;
                                        c10696a = c10696a4;
                                        u13 = f11;
                                    }
                                }
                            } else {
                                y52 = I10;
                                w53 = next;
                                z10 = z16;
                                c10696a = c10696a4;
                            }
                            boolean z21 = f49085e;
                            if (!z21 && u11.B().e() && (!n10.j() || (u11 instanceof C6301Zd0))) {
                                throw new AssertionError();
                            }
                            if (!z21 && !u12.a(a13)) {
                                throw new AssertionError();
                            }
                            c10 = 1;
                            z12 = true;
                            if (c10 != z12) {
                            }
                        }
                        c10 = 2;
                        z12 = true;
                        if (c10 != z12) {
                        }
                    }
                    c10696a = c10696a2;
                    y52 = I10;
                    it = it2;
                    w53 = next;
                    z10 = z16;
                    z11 = z17;
                    c10 = 1;
                    z12 = true;
                    if (c10 != z12) {
                    }
                } else {
                    y52 = I10;
                    c7215fB2 = c7215fB3;
                    it = it2;
                    w52 = next;
                    z10 = z16;
                    z11 = z17;
                    z12 = true;
                    if (abstractC10561zE instanceof C8391mE) {
                        boolean B13 = abstractC10561zE.d().B();
                        if (a(M10, abstractC10561zE.Y(), y52, c7215fB, abstractC6931dX, c5035Df)) {
                            z16 = z10 | B13;
                            z17 = z12;
                            next = w52;
                            c7215fB3 = c7215fB2;
                            it2 = it;
                            I10 = y52;
                        }
                    }
                    next = w52;
                    c7215fB3 = c7215fB2;
                    it2 = it;
                    z17 = z11;
                    I10 = y52;
                    z16 = z10;
                }
            }
            z15 = z17;
            z14 = z16;
        }
        C7215fB c7215fB4 = c7215fB3;
        if (z14) {
            C10696a c10696a5 = new C10696a();
            c7215fB4.a((C6382aB) null, c10696a5);
            c10696a5.a(this.f52646a, c7215fB4, new Consumer() {
                @Override
                public final void accept(Object obj) {
                    C7827it0.c((C8331lu0) obj);
                }
            });
        }
        if (z15) {
            c7215fB.x();
        }
        return z15 ? InterfaceC10118we.f53548b : InterfaceC10118we.f53547a;
    }

    @Override
    public final boolean a(C7215fB c7215fB, AbstractC6931dX abstractC6931dX) {
        if (this.f52646a.m() && this.f52646a.E().f50599F1.f50854Y) {
            return c7215fB.f47902i.a(10) || c7215fB.f47902i.a(29);
        }
        return false;
    }

    public static void a(C8331lu0 c8331lu0) {
        c8331lu0.f50139b = true;
    }

    public final boolean a(C4798y c4798y, C8391mE c8391mE, Y5 y52, C7215fB c7215fB, AbstractC6931dX abstractC6931dX, C5035Df c5035Df) {
        com.android.tools.r8.graph.E0 g10;
        com.android.tools.r8.graph.H5 j10 = c7215fB.j();
        com.android.tools.r8.graph.M2 a10 = c8391mE.f50246k.a(this.f52647b);
        if (a10.I0() && ((g10 = this.f52646a.g(a10)) == null || AbstractC4420e.a(g10, j10, c4798y, (C4514j) c4798y.f()).b() || (this.f52646a.E().z().e(C2.V) && a10.a(this.f52646a.b().f37834C2) && g10.f0()))) {
            return false;
        }
        C10340xw0 c10340xw0 = (C10340xw0) c8391mE.f54321f.get(0);
        if (!this.f52646a.f38395J.a(c4798y, c10340xw0)) {
            return false;
        }
        AbstractC8999pu0 u10 = c10340xw0.u();
        AbstractC8999pu0 a11 = AbstractC8999pu0.a(c8391mE.f50246k, u10.B(), (C4798y<?>) this.f52646a);
        C10340xw0 i10 = c10340xw0.i();
        if (u10.a(a11, this.f52646a)) {
            if (u10.B().e()) {
                y52.a(c7215fB, C8704o7.a(false));
                return true;
            }
            if (u10.t()) {
                y52.a(c7215fB, C8704o7.a(true));
                return true;
            }
            if (a(c8391mE, y52, abstractC6931dX, c5035Df, c10340xw0)) {
                return true;
            }
        }
        if (i10.d(new C8740oK0()) && a11.c(u10, this.f52646a)) {
            y52.a(c7215fB, C8704o7.a(false));
            return true;
        }
        if (c8391mE.f50246k.I0() && a(c8391mE.f50246k)) {
            y52.a(c7215fB, C8704o7.a(false));
            return true;
        }
        if (u10.s() && a(u10.b().E())) {
            y52.a(c7215fB, C8704o7.a(false));
            return true;
        }
        C10340xw0 b10 = c10340xw0.b(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                boolean d10;
                d10 = ((C10340xw0) obj).d(new C9019q01());
                return d10;
            }
        });
        if (b10 != null) {
            AbstractC10330xt abstractC10330xt = b10.r().B().f39117k;
            if (abstractC10330xt.d().e()) {
                y52.a(c7215fB, C8704o7.a(false));
                return true;
            }
            if (abstractC10330xt.h() && abstractC10330xt.a().n().a(a11, this.f52646a)) {
                if (u10.v() && !abstractC10330xt.d().d()) {
                    return a(c8391mE, y52, abstractC6931dX, c5035Df, c10340xw0);
                }
                y52.a(c7215fB, C8704o7.a(true));
                return true;
            }
        }
        return false;
    }

    public final boolean a(C8391mE c8391mE, Y5 y52, AbstractC6931dX abstractC6931dX, C5035Df c5035Df, C10340xw0 c10340xw0) {
        C8570nJ c8570nJ = this.f52648c;
        if (c8570nJ.P() && c8570nJ.c(C2.N)) {
            boolean z10 = C7405gK.f48231o;
            C7238fK c7238fK = new C7238fK();
            c7238fK.f44718d = this.f52647b.f37852E4.f37353e;
            C7238fK c7238fK2 = (C7238fK) c7238fK.a((C10340xw0) c8391mE.f54321f.get(0));
            c7238fK2.f52321a = c8391mE.d();
            y52.a(c7238fK2.c(), (C10696a) null);
            return true;
        }
        if (!this.f52648c.P()) {
            return false;
        }
        com.android.tools.r8.ir.optimize.L0 a10 = com.android.tools.r8.ir.optimize.M0.a(this.f52646a, abstractC6931dX.d(), c5035Df);
        abstractC6931dX.b(a10.f54773a);
        a10.f54774b = true;
        boolean z11 = C7405gK.f48231o;
        C7238fK c7238fK3 = new C7238fK();
        if (!com.android.tools.r8.ir.optimize.L0.f54772c && !a10.f54774b) {
            throw new AssertionError();
        }
        c7238fK3.f44718d = a10.f54773a.getReference();
        C7238fK c7238fK4 = (C7238fK) c7238fK3.a(c10340xw0);
        c7238fK4.f52322b = c8391mE.getPosition();
        c7238fK4.f52321a = c8391mE.d();
        y52.a(c7238fK4.c(), (C10696a) null);
        return true;
    }

    public final boolean a(com.android.tools.r8.graph.M2 m22) {
        boolean z10 = f49085e;
        if (!z10 && !this.f52646a.f().i()) {
            throw new AssertionError();
        }
        if (!z10 && !m22.I0()) {
            throw new AssertionError();
        }
        com.android.tools.r8.graph.H2 a10 = com.android.tools.r8.graph.H2.a(this.f52646a.g(m22));
        return (a10 == null || this.f52646a.f().m().b(a10)) ? false : true;
    }

    public static void b(C8331lu0 c8331lu0) {
        c8331lu0.f50139b = true;
    }
}
