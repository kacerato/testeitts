package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;
import com.android.tools.r8.graph.Z4;
import com.android.tools.r8.shaking.C11295l;

public abstract class G4 {
    public static F4 a(C4798y c4798y, Z4.c cVar, com.android.tools.r8.graph.H0 h02) {
        C11295l c11295l = c4798y.f38412e;
        com.android.tools.r8.graph.H0 a10 = com.android.tools.r8.graph.H0.a(cVar.f37021c, cVar.f37022d);
        c11295l.getClass();
        F4 a11 = c11295l.a(a10.getReference());
        F4 a12 = h02 != null ? c11295l.a(h02.getReference()) : null;
        if (a12 != null) {
            return F4.a(F4.a(a11.f40087a, a12.f40087a), F4.a(a11.f40088b, a12.f40088b), a11.f40089c || a12.f40089c);
        }
        return a11;
    }
}
