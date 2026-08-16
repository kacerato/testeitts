package com.android.tools.r8.shaking;

import com.android.tools.r8.graph.C4460g1;
import com.android.tools.r8.graph.C4613o3;

public class C11514y {

    public static final C11514y f57988a = new C11514y();

    public boolean a(C11245i c11245i, C4460g1 c4460g1) {
        boolean z10 = C11245i.f57385J;
        if (z10) {
            c11245i.getClass();
        } else {
            c11245i.c();
        }
        C4613o3 c4613o3 = (C4613o3) c11245i.f57404s.f37507a.get(c4460g1.getReference());
        if (c4613o3 == null) {
            if (z10 || c11245i.f57407v.a(c4460g1, c11245i).e(c11245i.j())) {
                return false;
            }
            throw new AssertionError();
        }
        if (z10 || !c4613o3.f37538c.c()) {
            return true;
        }
        int i10 = c4613o3.f37537b;
        if ((i10 & 8) == 0 && (i10 & 1) == 0 && (i10 & 2) == 0 && (i10 & 32) == 0 && !c4613o3.f()) {
            throw new AssertionError();
        }
        return true;
    }
}
