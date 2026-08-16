package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;

public final class C9204r7 extends B7 {

    public static final C9204r7 f51970b = new C9204r7();

    public static final boolean f51971c = true;

    @Override
    public final AbstractC5361Iw0 a(C4798y c4798y, AbstractC5361Iw0 abstractC5361Iw0, com.android.tools.r8.graph.M2 m22, com.android.tools.r8.graph.M2 m23, AbstractC4939Bo0 abstractC4939Bo0, InterfaceC6522b2 interfaceC6522b2) {
        if (abstractC5361Iw0.i()) {
            return this;
        }
        if (abstractC5361Iw0 instanceof C10671zv0) {
            return abstractC5361Iw0;
        }
        if (abstractC5361Iw0.n()) {
            if (f51971c || abstractC5361Iw0.a(C7504gw0.f48390b)) {
                return abstractC5361Iw0;
            }
            throw new AssertionError();
        }
        boolean z10 = f51971c;
        if (!z10 && !abstractC5361Iw0.j()) {
            throw new AssertionError();
        }
        if (!z10 && !abstractC5361Iw0.c().l()) {
            throw new AssertionError();
        }
        AbstractC10291xg g10 = abstractC5361Iw0.c().g();
        AbstractC10330xt z11 = g10.z();
        boolean z12 = AbstractC10330xt.f53865a;
        AbstractC10330xt a10 = C10664zt.f54560c.a(c4798y, z11, m22, m23);
        if (m23 != null) {
            a10 = AbstractC5363Ix0.a(c4798y, a10, m23, C8854p10.h());
        }
        return ((g10 instanceof C8288lg) && g10.z().equals(a10)) ? abstractC4939Bo0.a(g10) : C8288lg.a(g10.a(c4798y), a10, g10.p());
    }

    public final String toString() {
        return "\u22a5(CLASS)";
    }
}
