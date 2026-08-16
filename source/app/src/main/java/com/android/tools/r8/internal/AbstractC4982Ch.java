package com.android.tools.r8.internal;

import com.android.tools.r8.graph.InterfaceC4403d1;

public abstract class AbstractC4982Ch {

    public static final boolean f39314a = true;

    public static com.android.tools.r8.graph.M2 a(C10340xw0 c10340xw0, InterfaceC4403d1 interfaceC4403d1) {
        OB ob2 = OB.f42814a;
        c10340xw0.getClass();
        C10340xw0 a10 = c10340xw0.a(ob2, EnumC6871d70.f47287c);
        if (a10.j()) {
            return null;
        }
        AbstractC10561zE abstractC10561zE = a10.f53886c;
        abstractC10561zE.getClass();
        if (abstractC10561zE instanceof C7957jh) {
            return a10.f53886c.F().f49303l;
        }
        if (a10.f53886c.R1()) {
            C7405gK i02 = a10.f53886c.i0();
            com.android.tools.r8.graph.G1 g12 = interfaceC4403d1.b().f37922O4;
            com.android.tools.r8.graph.A2 B22 = i02.B2();
            if (B22 == g12.f36320b || B22 == g12.f36321c) {
                return a(i02, interfaceC4403d1);
            }
        }
        return null;
    }

    public static com.android.tools.r8.graph.M2 a(C7405gK c7405gK, InterfaceC4403d1 interfaceC4403d1) {
        if (!f39314a) {
            com.android.tools.r8.graph.G1 g12 = interfaceC4403d1.b().f37922O4;
            com.android.tools.r8.graph.A2 B22 = c7405gK.B2();
            if (B22 != g12.f36320b && B22 != g12.f36321c) {
                throw new AssertionError();
            }
        }
        if (c7405gK.f54321f.size() == 1 || c7405gK.f54321f.size() == 3) {
            C10340xw0 c10340xw0 = (C10340xw0) c7405gK.f54321f.get(0);
            if (c10340xw0.L()) {
                String l22 = c10340xw0.n().K().u2().toString();
                String H10 = C4932Bl.E(l22) ? C4932Bl.H(l22) : null;
                if (H10 != null) {
                    return interfaceC4403d1.b().d(H10);
                }
                return null;
            }
            if (c10340xw0.N()) {
                com.android.tools.r8.graph.J2 j22 = c10340xw0.n().O().f52961l;
                j22.getClass();
                if (j22 instanceof com.android.tools.r8.graph.M2) {
                    return j22.o0();
                }
            }
        }
        return null;
    }
}
