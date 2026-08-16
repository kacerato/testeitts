package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4517j2;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.ir.optimize.C10696a;
import java.util.Set;

public final class W30 extends AbstractC5055Do0 {

    public static final boolean f45273e = true;

    public final C4798y f45274a;

    public final C4724u1 f45275b;

    public final C4517j2 f45276c;

    public final C8570nJ f45277d;

    public W30(C4798y c4798y) {
        C4724u1 b10 = c4798y.b();
        this.f45274a = c4798y;
        this.f45275b = b10;
        this.f45276c = b10.f37852E4;
        this.f45277d = c4798y.E();
    }

    @Override
    public final EE a(C7215fB c7215fB, Z5 z52, EE ee2, VJ vj2, com.android.tools.r8.graph.H0 h02, C10696a c10696a, Set set) {
        com.android.tools.r8.graph.A2 reference = h02.getReference();
        byte b10 = reference.t0().f36562f[0];
        if (b10 != 101) {
            if (b10 != 110) {
                if (b10 == 114) {
                    C4517j2 c4517j2 = this.f45276c;
                    if (reference != c4517j2.f37354f && reference != c4517j2.f37355g && reference != c4517j2.f37356h && reference != c4517j2.f37357i && reference != c4517j2.f37358j) {
                        return ee2;
                    }
                    if (!vj2.e1() || !vj2.d().z()) {
                        C10340xw0 b11 = vj2.b(0);
                        if (b11.O()) {
                            if (vj2.e1()) {
                                vj2.d().a(b11, c10696a);
                            }
                            ee2.i();
                        } else if (b11.c(this.f45274a)) {
                            if (h02.getReference() == this.f45276c.f37354f) {
                                if (this.f45274a.f().h()) {
                                    ee2.a((C4798y<?>) this.f45274a.L(), c7215fB, z52, (Set<W5>) set, c10696a);
                                }
                            } else if (h02.getReference() != this.f45276c.f37357i) {
                                h02.getReference();
                                com.android.tools.r8.graph.A2 a22 = this.f45276c.f37358j;
                            } else if (vj2.u2().O()) {
                                if (vj2.e1()) {
                                    vj2.d().a(vj2.u2(), c10696a);
                                }
                                ee2.i();
                            }
                        }
                    }
                } else if (b10 == 116) {
                    C4517j2 c4517j22 = this.f45276c;
                    if (reference == c4517j22.f37359k || reference == c4517j22.f37360l) {
                        C10340xw0 b12 = vj2.b(0);
                        AbstractC8999pu0 u10 = b12.u();
                        if (u10.B().e()) {
                            if (h02.getReference() == this.f45276c.f37359k) {
                                ee2.a(this.f45274a, c7215fB, this.f45275b.b("null"), c10696a);
                            } else {
                                if (!f45273e && h02.getReference() != this.f45276c.f37360l) {
                                    throw new AssertionError();
                                }
                                if (vj2.e1()) {
                                    vj2.d().a(vj2.u2(), c10696a);
                                }
                                ee2.i();
                            }
                        } else if (u10.t() && u10.a(this.f45275b.f38052g2)) {
                            if (vj2.e1()) {
                                c10696a.f54829b.addAll(vj2.d().a());
                                vj2.d().f(b12);
                            }
                            ee2.i();
                        }
                    }
                } else if (b10 != 104) {
                    if (b10 == 105 && reference == this.f45276c.f37352d) {
                        C10340xw0 b13 = vj2.b(0);
                        if (b13.c(this.f45274a)) {
                            ee2.a(c7215fB);
                        } else if (b13.O()) {
                            ee2.c(c7215fB);
                        }
                    }
                } else if (reference == this.f45276c.f37351c) {
                    C10340xw0 b14 = vj2.b(0);
                    if (b14.c(this.f45274a)) {
                        ee2.a(c7215fB, 0);
                    } else if (b14.O()) {
                        boolean z10 = C8405mK.f50258o;
                        C8238lK c8238lK = new C8238lK();
                        c8238lK.f44718d = this.f45275b.f37859F4.f38227e;
                        c8238lK.f52321a = vj2.d();
                        ee2.b(((C8238lK) c8238lK.a(b14)).c());
                    }
                }
            } else if (reference == this.f45276c.f37353e) {
                C10340xw0 b15 = vj2.b(0);
                if (b15.c(this.f45274a)) {
                    ee2.c(c7215fB);
                } else if (b15.O()) {
                    ee2.a(c7215fB);
                }
            }
        } else if (reference == this.f45276c.f37349a) {
            C10340xw0 b16 = vj2.b(0);
            C10340xw0 u22 = vj2.u2();
            if (b16.c(this.f45274a)) {
                if (u22.c(this.f45274a)) {
                    ee2.a(c7215fB);
                } else if (u22.O()) {
                    ee2.c(c7215fB);
                } else {
                    C8570nJ c8570nJ = this.f45277d;
                    c8570nJ.getClass();
                    if (c8570nJ.c(C2.N)) {
                        boolean z11 = C7405gK.f48231o;
                        C7238fK c7238fK = new C7238fK();
                        c7238fK.f44718d = this.f45276c.f37352d;
                        c7238fK.f52321a = vj2.d();
                        ee2.b(((C7238fK) c7238fK.a(u22)).c());
                    }
                }
            } else if (b16.O()) {
                boolean z12 = C8405mK.f50258o;
                C8238lK c8238lK2 = new C8238lK();
                c8238lK2.f44718d = this.f45275b.f37859F4.f38225c;
                c8238lK2.f52321a = vj2.d();
                ee2.b(((C8238lK) c8238lK2.a(AbstractC7552hC.a(b16, u22))).c());
            }
        }
        return ee2;
    }

    @Override
    public final com.android.tools.r8.graph.M2 getType() {
        return this.f45275b.f38132q2;
    }
}
