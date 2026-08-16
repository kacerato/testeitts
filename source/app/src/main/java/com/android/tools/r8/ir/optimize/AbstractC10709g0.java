package com.android.tools.r8.ir.optimize;

import com.android.tools.r8.graph.InterfaceC4403d1;
import com.android.tools.r8.graph.M2;

public abstract class AbstractC10709g0 {

    public static final boolean f54876a = true;

    public static boolean a(M2 m22, M2 m23, InterfaceC4403d1 interfaceC4403d1) {
        com.android.tools.r8.graph.E0 g10;
        if (m22 == m23) {
            return true;
        }
        com.android.tools.r8.graph.E0 g11 = interfaceC4403d1.g(m22);
        return g11 != null && g11.q1() && (g10 = interfaceC4403d1.g(m23)) != null && g11.T0() == g10.T0();
    }
}
