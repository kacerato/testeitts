package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.ir.optimize.C10696a;
import com.android.tools.r8.shaking.C11245i;
import com.android.tools.r8.shaking.C11297l1;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.ConcurrentHashMap;
import java.util.function.Predicate;
import java.util.function.Supplier;

public final class C6183Xc {

    public static final boolean f45766d = true;

    public final C4798y f45767a;

    public final com.android.tools.r8.ir.optimize.W f45768b;

    public final ConcurrentHashMap f45769c = new ConcurrentHashMap();

    public C6183Xc(C4798y c4798y, com.android.tools.r8.ir.optimize.W w10) {
        this.f45767a = c4798y;
        this.f45768b = w10;
    }

    /* JADX WARN: Removed duplicated region for block: B:36:0x01e1  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void a(final com.android.tools.r8.graph.H5 h52, final C7215fB c7215fB, final AbstractC8028k40 abstractC8028k40, final AbstractC6931dX abstractC6931dX, final C5035Df c5035Df) {
        EnumC6126Wc enumC6126Wc;
        Q30 q30;
        com.android.tools.r8.graph.M2 m22;
        EnumC6126Wc enumC6126Wc2;
        C9420sR c9420sR = new C9420sR(new Supplier() {
            @Override
            public final Object get() {
                return C6183Xc.this.a(h52, abstractC6931dX, c7215fB);
            }
        });
        ArrayList a10 = CT.a(c7215fB.b(new Predicate() {
            @Override
            public final boolean test(Object obj) {
                return C6183Xc.a((AbstractC10561zE) obj);
            }
        }));
        boolean z10 = false;
        boolean z11 = false;
        while (true) {
            Iterator it = a10.iterator();
            boolean z12 = z10;
            boolean z13 = z11;
            boolean z14 = false;
            while (it.hasNext()) {
                AbstractC10561zE abstractC10561zE = (AbstractC10561zE) it.next();
                GD gd2 = new GD(this.f45767a, c7215fB, this.f45768b, abstractC6931dX, h52, abstractC10561zE);
                C10340xw0 d10 = gd2.f40438g.d();
                gd2.f40439h = d10;
                if (d10 == null) {
                    enumC6126Wc = EnumC6126Wc.f45485c;
                } else if (gd2.f40438g.c2()) {
                    com.android.tools.r8.graph.H2 a11 = com.android.tools.r8.graph.H2.a(gd2.f40432a.g(gd2.f40438g.w0().f52627k));
                    gd2.f40440i = a11;
                    if (a11 == null) {
                        enumC6126Wc = EnumC6126Wc.f45485c;
                    } else {
                        com.android.tools.r8.graph.H2 holder = gd2.f40437f.getHolder();
                        com.android.tools.r8.graph.H2 h22 = gd2.f40440i;
                        if (holder == h22) {
                            enumC6126Wc = EnumC6126Wc.f45485c;
                        } else if (h22.a(gd2.f40432a, gd2.f40437f)) {
                            enumC6126Wc = EnumC6126Wc.f45485c;
                        } else {
                            enumC6126Wc = EnumC6126Wc.f45484b;
                        }
                    }
                } else {
                    if (!GD.f40431p) {
                        AbstractC10561zE abstractC10561zE2 = gd2.f40438g;
                        abstractC10561zE2.getClass();
                        if (!(abstractC10561zE2 instanceof C5576Mo0)) {
                            throw new AssertionError();
                        }
                    }
                    C5576Mo0 K02 = gd2.f40438g.K0();
                    com.android.tools.r8.graph.F3 m10 = ((C11245i) gd2.f40432a.f()).c(K02.getField()).m();
                    if (m10 == null) {
                        enumC6126Wc = EnumC6126Wc.f45485c;
                    } else if (gd2.f40437f.getHolder() == m10.d()) {
                        enumC6126Wc = EnumC6126Wc.f45485c;
                    } else {
                        C4798y c4798y = gd2.f40432a;
                        com.android.tools.r8.graph.H5 h53 = gd2.f40437f;
                        if (K02.a(c4798y, h53, M1.a(c4798y, h53), C10394yE.f53978a)) {
                            enumC6126Wc = EnumC6126Wc.f45485c;
                        } else {
                            AbstractC10005vw abstractC10005vw = m10.f36225d.f37207l;
                            AbstractC10330xt g10 = abstractC10005vw.g();
                            if (g10.i() && g10.d().d()) {
                                com.android.tools.r8.graph.H2 a12 = com.android.tools.r8.graph.H2.a(gd2.f40432a.g(g10.c().E()));
                                gd2.f40440i = a12;
                                if (a12 == null) {
                                    enumC6126Wc = EnumC6126Wc.f45485c;
                                } else {
                                    F1 f10 = abstractC10005vw.f();
                                    if (f10.f0()) {
                                        q30 = f10.N().U();
                                    } else {
                                        q30 = C6163Wt.f45565a;
                                    }
                                    gd2.f40441j = q30;
                                    enumC6126Wc = EnumC6126Wc.f45484b;
                                }
                            } else {
                                enumC6126Wc = EnumC6126Wc.f45485c;
                            }
                        }
                    }
                }
                EnumC6126Wc enumC6126Wc3 = EnumC6126Wc.f45484b;
                if (enumC6126Wc != enumC6126Wc3) {
                    it.remove();
                } else {
                    com.android.tools.r8.graph.H2 h23 = gd2.f40440i;
                    EnumC6126Wc enumC6126Wc4 = (EnumC6126Wc) this.f45769c.get(h23);
                    if (enumC6126Wc4 == null) {
                        if (h23 != null && !h23.l1() && !h23.isInterface()) {
                            C11297l1 a13 = this.f45767a.r().a(h23);
                            C8570nJ E10 = this.f45767a.E();
                            if (a13.c(E10) && a13.e(E10) && a13.f57493k) {
                                if (h23.b(this.f45767a.b().f37859F4.f38229g) != null) {
                                    enumC6126Wc4 = EnumC6126Wc.f45485c;
                                } else if (h23.a(this.f45767a)) {
                                    enumC6126Wc4 = EnumC6126Wc.f45485c;
                                } else {
                                    if (!this.f45767a.H().f50822I) {
                                        com.android.tools.r8.synthesis.J g11 = this.f45767a.f38408a.g();
                                        g11.getClass();
                                        if (g11.g(h23.f36245e)) {
                                            enumC6126Wc4 = EnumC6126Wc.f45485c;
                                        }
                                    }
                                    enumC6126Wc4 = enumC6126Wc3;
                                }
                                enumC6126Wc2 = (EnumC6126Wc) this.f45769c.putIfAbsent(h23, enumC6126Wc4);
                                if (f45766d && enumC6126Wc2 != null && enumC6126Wc2 != enumC6126Wc4) {
                                    throw new AssertionError();
                                }
                                if (enumC6126Wc2 != null) {
                                    enumC6126Wc4 = enumC6126Wc2;
                                }
                            }
                        }
                        enumC6126Wc4 = EnumC6126Wc.f45485c;
                        enumC6126Wc2 = (EnumC6126Wc) this.f45769c.putIfAbsent(h23, enumC6126Wc4);
                        if (f45766d) {
                        }
                        if (enumC6126Wc2 != null) {
                        }
                    }
                    if (enumC6126Wc4 != enumC6126Wc3) {
                        it.remove();
                    } else if (gd2.a(c9420sR) != null) {
                        continue;
                    } else {
                        JD jd2 = new JD(this.f45767a, h52, c7215fB, this.f45768b.f54816c, abstractC6931dX);
                        if (new C6240Yc(this.f45767a, jd2, gd2.f40446o).a(c7215fB, gd2.f40440i, gd2.f40444m, gd2.f40445n)) {
                            it.remove();
                        } else {
                            z14 = true;
                            if (this.f45767a.f38388C != null && abstractC10561zE.c2()) {
                                com.android.tools.r8.graph.H2 a14 = com.android.tools.r8.graph.H2.a(this.f45767a.g(abstractC10561zE.w0().f52627k));
                                if (a14 != null) {
                                    C5485La0 c5485La0 = this.f45767a.f38388C.f42929h;
                                    c5485La0.getClass();
                                    com.android.tools.r8.graph.M2 m23 = a14.f36247g;
                                    com.android.tools.r8.graph.M2 m24 = c5485La0.f41998j;
                                    if ((m23 == m24 || m23 == c5485La0.f41999k) && (m22 = a14.f36245e) != m24 && m22 != c5485La0.f41999k) {
                                        z12 = true;
                                    }
                                }
                            }
                            C10696a c10696a = new C10696a();
                            try {
                                z13 |= gd2.a(c7215fB, c10696a, abstractC8028k40, jd2);
                            } catch (FD unused) {
                                if (!f45766d) {
                                    throw new AssertionError();
                                }
                                z13 = true;
                            }
                            c7215fB.a((C6382aB) null, c10696a);
                            c10696a.a(this.f45767a, c7215fB, C6628bi.b());
                            c7215fB.x();
                            if (!f45766d && !c7215fB.b(this.f45767a)) {
                                throw new AssertionError();
                            }
                            it.remove();
                        }
                    }
                }
            }
            if (!z14) {
                if (z12) {
                    this.f45767a.a(new InterfaceC6160Wr0() {
                        @Override
                        public final void accept(Object obj) {
                            C6183Xc.this.a(h52, c7215fB, abstractC8028k40, abstractC6931dX, c5035Df, (C6678bz) obj);
                        }
                    });
                }
                if (z13) {
                    new C7827it0(this.f45767a).a(c7215fB, abstractC6931dX, c5035Df, C8659ns0.c());
                    new K7(this.f45767a).a(c7215fB, abstractC6931dX, c5035Df, C8659ns0.c());
                    this.f45767a.f38387B.a(c7215fB, abstractC6931dX, c5035Df);
                    return;
                }
                return;
            }
            z10 = z12;
            z11 = z13;
        }
    }

    public final com.android.tools.r8.ir.optimize.Y a(com.android.tools.r8.graph.H5 h52, AbstractC6931dX abstractC6931dX, C7215fB c7215fB) {
        return new com.android.tools.r8.ir.optimize.H(this.f45767a, h52, abstractC6931dX, this.f45768b.a(abstractC6931dX), c7215fB);
    }

    public static boolean a(AbstractC10561zE abstractC10561zE) {
        return abstractC10561zE.c2() || (abstractC10561zE instanceof C5576Mo0);
    }

    public final void a(com.android.tools.r8.graph.H5 h52, C7215fB c7215fB, AbstractC8028k40 abstractC8028k40, AbstractC6931dX abstractC6931dX, C5035Df c5035Df, C6678bz c6678bz) {
        com.android.tools.r8.ir.optimize.W w10 = this.f45768b;
        c6678bz.a(c7215fB);
        w10.a(h52, c7215fB, abstractC8028k40, abstractC6931dX, C8659ns0.c(), new C9272ra0(c6678bz.f46923a, new C7506gx(com.android.tools.r8.ir.optimize.U.f54812f)));
        new C6108Vu(c6678bz.f46923a).a(c7215fB, abstractC6931dX, c5035Df, C8659ns0.c());
    }
}
