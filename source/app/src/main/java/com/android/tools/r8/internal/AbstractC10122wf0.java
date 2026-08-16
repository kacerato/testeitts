package com.android.tools.r8.internal;

import com.android.tools.r8.shaking.C11130b3;

public abstract class AbstractC10122wf0 {
    public static boolean a(com.android.tools.r8.graph.H2 h22, C8570nJ c8570nJ) {
        String z02 = h22.getType().z0();
        if (z02.isEmpty()) {
            return true;
        }
        C11130b3 c11130b3 = c8570nJ.B().f57616t;
        if (c11130b3.f57189a.size() == 0) {
            return false;
        }
        if (c11130b3.a(c8570nJ.m().d("L" + z02 + ";"))) {
            return true;
        }
        return !c8570nJ.f50674d1 && c11130b3.a(h22.getType());
    }
}
