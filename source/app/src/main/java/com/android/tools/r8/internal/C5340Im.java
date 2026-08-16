package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.shaking.C11245i;

public class C5340Im {

    public static final boolean f41205a = true;

    public static boolean a(C4798y<C11245i> c4798y, C7215fB c7215fB) {
        for (AbstractC10561zE abstractC10561zE : c7215fB.q()) {
            if (abstractC10561zE.d() != null && abstractC10561zE.d().P()) {
                if (!(abstractC10561zE instanceof C5576Mo0) && !(abstractC10561zE instanceof C6558bE) && !abstractC10561zE.n1() && !(abstractC10561zE instanceof P3)) {
                    if (abstractC10561zE.P1()) {
                        com.android.tools.r8.graph.H0 e10 = abstractC10561zE.e0().e(c4798y, c7215fB.j());
                        if (e10 != null) {
                            C4516j1 d10 = e10.d();
                            d10.L0();
                            if (d10.f37320m.F()) {
                            }
                        }
                        return false;
                    }
                    if ((abstractC10561zE instanceof OJ) || (abstractC10561zE instanceof YJ) || abstractC10561zE.z1() || (abstractC10561zE instanceof C6600bY)) {
                        return false;
                    }
                    if (!f41205a && !abstractC10561zE.k1() && !(abstractC10561zE instanceof C4) && !abstractC10561zE.s1() && !abstractC10561zE.I1() && !abstractC10561zE.n2() && !(abstractC10561zE instanceof WX) && !abstractC10561zE.Y1() && !abstractC10561zE.t1() && !(abstractC10561zE instanceof C8391mE) && !abstractC10561zE.v1() && !abstractC10561zE.U1() && !abstractC10561zE.A1()) {
                        throw new AssertionError((Object) ("Instruction that impacts determinism: " + ((Object) abstractC10561zE)));
                    }
                }
                return false;
            }
        }
        return true;
    }
}
