package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4516j1;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.Z4;
import com.android.tools.r8.shaking.C11245i;
import java.util.List;

public abstract class PK {

    public static final boolean f43181a = true;

    public static boolean a(C4798y c4798y, List list) {
        C11245i m10;
        com.android.tools.r8.graph.E0 g10;
        Z4.c<?> o10;
        C4724u1 b10 = c4798y.b();
        AbstractC8999pu0 u10 = ((C10340xw0) list.get(0)).u();
        if (u10.r() || (u10 instanceof C6301Zd0)) {
            return false;
        }
        if (!f43181a && !u10.s()) {
            throw new AssertionError();
        }
        com.android.tools.r8.graph.M2 E10 = u10.b().E();
        com.android.tools.r8.graph.A2 a10 = b10.f37859F4.f38230h.a(E10, b10);
        if (c4798y.f38433z.a(a10, list) || c4798y.f38412e.a(a10).f40089c) {
            return false;
        }
        if (!c4798y.f().i() || (g10 = (m10 = c4798y.f().m()).g(E10)) == null || !g10.c(c4798y) || (o10 = m10.h(g10, a10).o()) == null) {
            return true;
        }
        C4516j1 q10 = o10.q();
        q10.L0();
        return q10.f37320m.C();
    }
}
