package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.ir.optimize.C10696a;
import com.android.tools.r8.shaking.C11297l1;

public final class C5547Mc extends AbstractC9617te {

    public static final boolean f42328e = true;

    public C5547Mc(C4798y c4798y) {
        super(c4798y);
    }

    @Override
    public final String a() {
        return "StringOptimizer";
    }

    /* JADX WARN: Removed duplicated region for block: B:115:0x00ff A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:123:0x00f1  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x00ef  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x0134  */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0210  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x01f3 A[SYNTHETIC] */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final InterfaceC10118we b(C7215fB c7215fB) {
        C10340xw0 d10;
        com.android.tools.r8.graph.E0 g10;
        boolean z10;
        com.android.tools.r8.graph.L2 a10;
        C9820uq c9820uq;
        C10696a c10696a = new C10696a();
        C7549hB p10 = c7215fB.p();
        boolean z11 = false;
        while (p10.hasNext()) {
            AbstractC10561zE next = p10.next();
            if (next.T1()) {
                C8405mK k02 = next.k0();
                com.android.tools.r8.graph.A2 B22 = k02.B2();
                if (this.f52647b.f37922O4.f36334p.contains(B22) && (d10 = k02.d()) != null && d10.w()) {
                    if (!f42328e && k02.f54321f.size() != 1) {
                        throw new AssertionError();
                    }
                    C10340xw0 i10 = k02.C2().i();
                    AbstractC10561zE abstractC10561zE = i10.f53886c;
                    if (abstractC10561zE != null && (abstractC10561zE instanceof C7957jh) && !i10.z()) {
                        com.android.tools.r8.graph.M2 m22 = i10.f53886c.F().f49303l;
                        int y02 = m22.y0();
                        com.android.tools.r8.graph.M2 a11 = m22.a(this.f52647b);
                        if (a11.I0() && (g10 = this.f52646a.g(a11)) != null) {
                            if (g10.e0()) {
                                C4798y c4798y = this.f52646a;
                                com.android.tools.r8.graph.H2 d02 = g10.d0();
                                C11297l1 c11297l1 = C11297l1.f57490s;
                                if (c4798y.f38425r != null) {
                                    c11297l1 = c4798y.r().a(d02);
                                }
                                if (c11297l1.b(this.f52648c)) {
                                    z10 = true;
                                    if (!this.f52646a.E().f50599F1.f50907t0 || (!z10 && (B22.a(this.f52647b.f37922O4.f36325g) || !new C7832iv(this.f52646a, C5490Lc.f42019a).b(c7215fB, d10)))) {
                                        String V02 = a11.V0();
                                        boolean z12 = V02.indexOf(36) >= 0;
                                        com.android.tools.r8.graph.L2 l22 = null;
                                        if (B22.a(this.f52647b.f37922O4.f36323e)) {
                                            if (!B22.a(this.f52647b.f37922O4.f36326h)) {
                                                if (B22.a(this.f52647b.f37922O4.f36324f)) {
                                                    if (g10.r1() || g10.m1()) {
                                                        p10.a(c7215fB.a(0L, AbstractC8999pu0.m()), c10696a);
                                                        c9820uq = null;
                                                    } else if (z12) {
                                                        if (z10) {
                                                            C10340xw0 a12 = c7215fB.a(AbstractC8999pu0.a((C4798y<?>) this.f52646a, C8854p10.b()), k02.q());
                                                            EnumC9948vd enumC9948vd = EnumC9948vd.f53157e;
                                                            c9820uq = new C9820uq(a12, a11, y02 > 0 ? new C10115wd(enumC9948vd, y02) : C10115wd.a(enumC9948vd));
                                                        } else {
                                                            a10 = EnumC9948vd.f53157e.a(V02, g10, this.f52647b, y02);
                                                            c9820uq = null;
                                                            l22 = a10;
                                                        }
                                                    }
                                                } else if (B22.a(this.f52647b.f37922O4.f36325g)) {
                                                    if (g10.m1()) {
                                                        a10 = this.f52647b.b("");
                                                    } else if (z12) {
                                                        if (z10) {
                                                            C10340xw0 a13 = c7215fB.a(AbstractC8999pu0.a((C4798y<?>) this.f52646a, C8854p10.b()), k02.q());
                                                            EnumC9948vd enumC9948vd2 = EnumC9948vd.f53158f;
                                                            c9820uq = new C9820uq(a13, a11, y02 > 0 ? new C10115wd(enumC9948vd2, y02) : C10115wd.a(enumC9948vd2));
                                                        } else {
                                                            a10 = EnumC9948vd.f53158f.a(V02, g10, this.f52647b, y02);
                                                        }
                                                    }
                                                    c9820uq = null;
                                                    l22 = a10;
                                                } else {
                                                    c9820uq = null;
                                                }
                                                if (l22 != null) {
                                                }
                                                z11 = true;
                                            }
                                        } else if (z10) {
                                            C10340xw0 a14 = c7215fB.a(AbstractC8999pu0.a((C4798y<?>) this.f52646a, C8854p10.b()), k02.q());
                                            EnumC9948vd enumC9948vd3 = EnumC9948vd.f53155c;
                                            c9820uq = new C9820uq(a14, a11, y02 > 0 ? new C10115wd(enumC9948vd3, y02) : C10115wd.a(enumC9948vd3));
                                            if (l22 != null) {
                                                p10.a(new C9960vh(c7215fB.a(AbstractC8999pu0.a((C4798y<?>) this.f52646a, C8854p10.b()), k02.q()), l22), c10696a);
                                            } else if (c9820uq != null) {
                                                p10.a(c9820uq, c10696a);
                                            }
                                            z11 = true;
                                        } else {
                                            a10 = EnumC9948vd.f53155c.a(V02, g10, this.f52647b, y02);
                                            c9820uq = null;
                                            l22 = a10;
                                            if (l22 != null) {
                                            }
                                            z11 = true;
                                        }
                                    }
                                }
                            }
                            z10 = false;
                            if (!this.f52646a.E().f50599F1.f50907t0) {
                            }
                            String V022 = a11.V0();
                            if (V022.indexOf(36) >= 0) {
                            }
                            com.android.tools.r8.graph.L2 l222 = null;
                            if (B22.a(this.f52647b.f37922O4.f36323e)) {
                            }
                        }
                    }
                }
            }
        }
        c10696a.a(this.f52646a, c7215fB, C6628bi.b());
        return z11 ? InterfaceC10118we.f53548b : InterfaceC10118we.f53547a;
    }

    @Override
    public final boolean a(C7215fB c7215fB, AbstractC6931dX abstractC6931dX) {
        C8570nJ c8570nJ = this.f52648c;
        if (c8570nJ.f50630Q || c8570nJ.f50599F1.f50907t0) {
            return !a(c7215fB.j());
        }
        return false;
    }
}
