package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4460g1;
import com.android.tools.r8.graph.C4554l1;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;

public abstract class AbstractC4893Au0 {
    public static void a(String str, com.android.tools.r8.graph.H0 h02) {
        throw new C5325If(h02.f36317b.f36244d, "Unexpected ConstantDynamic in TypeSwitch: " + str, null);
    }

    public static boolean b(com.android.tools.r8.graph.D0 d02, C4724u1 c4724u1) {
        if (!d02.f36212e.g(c4724u1.f37972V5.t0())) {
            return false;
        }
        com.android.tools.r8.graph.I2 i22 = d02.f36213f;
        if (!i22.o0().L0() || i22.m0() != 2 || !i22.f36441f.f36675b[1].L0()) {
            return false;
        }
        com.android.tools.r8.graph.C2 c22 = d02.f36214g;
        return c22.f36190e.c() && c22.m0().a(c4724u1.f37972V5);
    }

    public static boolean a(com.android.tools.r8.graph.D0 d02, C4724u1 c4724u1) {
        if (!d02.f36212e.g(c4724u1.f37979W5.t0())) {
            return false;
        }
        com.android.tools.r8.graph.I2 i22 = d02.f36213f;
        com.android.tools.r8.graph.M2 m22 = c4724u1.f37884J1;
        if (!i22.o0().a(m22) || i22.m0() != 2 || !i22.f36441f.f36675b[1].a(m22)) {
            return false;
        }
        com.android.tools.r8.graph.C2 c22 = d02.f36214g;
        return c22.f36190e.c() && c22.m0().a(c4724u1.f37979W5);
    }

    public static C4554l1 a(com.android.tools.r8.graph.S2 s22, com.android.tools.r8.graph.H0 h02, C4798y c4798y) {
        C4460g1 b10;
        C4724u1 b11 = c4798y.b();
        C4866Ah c4866Ah = s22.f36793d;
        com.android.tools.r8.graph.A2 a22 = b11.f37965U5;
        if (c4866Ah.f38688d.a(b11.f37878I2) && c4866Ah.f38687c.g(a22.t0()) && c4866Ah.f38689e.m0().a(a22) && c4866Ah.f38690f.size() == 3) {
            com.android.tools.r8.graph.R2 r22 = (com.android.tools.r8.graph.R2) c4866Ah.f38690f.get(0);
            com.android.tools.r8.graph.A2 a23 = b11.f37986X5;
            r22.getClass();
            if (r22 instanceof com.android.tools.r8.graph.X2) {
                com.android.tools.r8.graph.C2 c22 = (com.android.tools.r8.graph.C2) r22.z0().W0();
                if (c22.f36190e.c() && c22.m0().a(a23)) {
                    com.android.tools.r8.graph.R2 r23 = (com.android.tools.r8.graph.R2) c4866Ah.f38690f.get(2);
                    if (r23.R0()) {
                        com.android.tools.r8.graph.L2 l22 = (com.android.tools.r8.graph.L2) r23.D0().W0();
                        com.android.tools.r8.graph.R2 r24 = (com.android.tools.r8.graph.R2) c4866Ah.f38690f.get(1);
                        r24.getClass();
                        if (r24 instanceof com.android.tools.r8.graph.S2) {
                            C4866Ah c4866Ah2 = r24.r0().f36793d;
                            if (c4866Ah2.f38688d.a(b11.f37871H2) && c4866Ah2.f38687c.g(a22.t0()) && c4866Ah2.f38689e.m0().a(a22) && c4866Ah2.f38690f.size() == 2) {
                                com.android.tools.r8.graph.R2 r25 = (com.android.tools.r8.graph.R2) c4866Ah2.f38690f.get(0);
                                com.android.tools.r8.graph.A2 a24 = b11.f37993Y5;
                                r25.getClass();
                                if (r25 instanceof com.android.tools.r8.graph.X2) {
                                    com.android.tools.r8.graph.C2 c23 = (com.android.tools.r8.graph.C2) r25.z0().W0();
                                    if (c23.f36190e.c() && c23.m0().a(a24)) {
                                        com.android.tools.r8.graph.R2 r26 = (com.android.tools.r8.graph.R2) c4866Ah2.f38690f.get(1);
                                        if (r26.R0()) {
                                            com.android.tools.r8.graph.E0 c10 = c4798y.f().c(b11.d(C4932Bl.H(((com.android.tools.r8.graph.L2) r26.D0().W0()).toString())));
                                            if (c10 == null || (b10 = c10.b(l22)) == null) {
                                                return null;
                                            }
                                            return b10.getReference();
                                        }
                                        a("Class name " + ((Object) r26), h02);
                                        throw null;
                                    }
                                }
                            }
                            a("Class descriptor " + ((Object) c4866Ah2), h02);
                            throw null;
                        }
                        a("Enum class " + ((Object) r24), h02);
                        throw null;
                    }
                    a("Field name " + ((Object) r23), h02);
                    throw null;
                }
            }
        }
        a("Invalid EnumDesc", h02);
        throw null;
    }
}
