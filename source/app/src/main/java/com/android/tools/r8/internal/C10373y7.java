package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;

public final class C10373y7 extends B7 {

    public static final C10373y7 f53943b = new C10373y7();

    public static final boolean f53944c = true;

    @Override
    public final AbstractC5361Iw0 a(C4798y c4798y, AbstractC5361Iw0 abstractC5361Iw0, com.android.tools.r8.graph.M2 m22, com.android.tools.r8.graph.M2 m23, AbstractC4939Bo0 abstractC4939Bo0, InterfaceC6522b2 interfaceC6522b2) {
        if (abstractC5361Iw0.i()) {
            return this;
        }
        if (abstractC5361Iw0 instanceof C10671zv0) {
            return abstractC5361Iw0;
        }
        boolean z10 = f53944c;
        if (!z10 && !abstractC5361Iw0.j()) {
            throw new AssertionError();
        }
        if (!z10 && !abstractC5361Iw0.c().l()) {
            throw new AssertionError();
        }
        AbstractC10291xg g10 = abstractC5361Iw0.c().g();
        g10.getClass();
        if (g10 instanceof C10124wg) {
            return abstractC4939Bo0.a(g10);
        }
        AbstractC10330xt z11 = g10.z();
        return z11.l() ? C10671zv0.f54579b : new C10124wg(z11, g10.p());
    }

    public final String toString() {
        return "\u22a5(RECEIVER)";
    }
}
