package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;

public final class C5490Lc implements InterfaceC7999jv {

    public static final C5490Lc f42019a = new C5490Lc();

    @Override
    public final boolean a(C4798y c4798y, C7832iv c7832iv, AbstractC10561zE abstractC10561zE, com.android.tools.r8.graph.H5 h52) {
        if (!abstractC10561zE.g2() && !abstractC10561zE.m2() && !abstractC10561zE.e()) {
            if (abstractC10561zE.P1()) {
                com.android.tools.r8.graph.A2 B22 = abstractC10561zE.e0().B2();
                return B22.a(c4798y.b().f37887J4.f38262x) || B22.a(c4798y.b().f37887J4.f38240b) || B22.a(c4798y.b().f37887J4.f38241c);
            }
            if (abstractC10561zE.o1()) {
                C10340xw0 i10 = abstractC10561zE.A().u2().i();
                return !i10.j() && i10.f53886c.y1();
            }
            if (abstractC10561zE.i()) {
                C10340xw0 i11 = abstractC10561zE.m().n().i();
                if (!i11.j() && i11.f53886c.c2()) {
                    return true;
                }
            }
        }
        return false;
    }
}
