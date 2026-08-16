package com.android.tools.r8.internal;

import com.android.tools.r8.FeatureSplit;
import com.android.tools.r8.graph.C4724u1;
import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.shaking.C11245i;

public abstract class Z1 {

    public static final boolean f46142a = true;

    public static boolean a(C4798y c4798y, com.android.tools.r8.graph.M2 m22, com.android.tools.r8.graph.M2 m23) {
        C6300Zd c6300Zd;
        C4724u1 b10 = c4798y.b();
        com.android.tools.r8.graph.M2 a10 = m22.a(b10);
        if (!a10.I0()) {
            return true;
        }
        com.android.tools.r8.graph.E0 g10 = c4798y.g(a10);
        if (g10 == null) {
            return false;
        }
        com.android.tools.r8.graph.M2 a11 = m23.a(b10);
        if (!g10.w1()) {
            if (!f46142a && !a11.I0()) {
                throw new AssertionError();
            }
            com.android.tools.r8.graph.E0 g11 = c4798y.g(a11);
            if (g11 == null || g11.w1() || !a10.z0().equals(a11.z0())) {
                return false;
            }
        }
        if (g10.e0() && (c6300Zd = ((C11245i) c4798y.f()).f37255b) != null) {
            FeatureSplit a12 = c6300Zd.a(g10.d0().getReference(), c4798y.f38408a.g());
            if (!a12.isBase() && a12 != c6300Zd.a(a11, c4798y.f38408a.g())) {
                return false;
            }
        }
        return true;
    }
}
