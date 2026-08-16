package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;

public final class C8871p7 extends B7 {

    public static final C8871p7 f51443b = new C8871p7();

    public static final boolean f51444c = true;

    @Override
    public final AbstractC5361Iw0 a(C4798y c4798y, AbstractC5361Iw0 abstractC5361Iw0, com.android.tools.r8.graph.M2 m22, com.android.tools.r8.graph.M2 m23, AbstractC4939Bo0 abstractC4939Bo0, InterfaceC6522b2 interfaceC6522b2) {
        if (abstractC5361Iw0.i()) {
            return this;
        }
        if (abstractC5361Iw0 instanceof C10671zv0) {
            return abstractC5361Iw0;
        }
        if (abstractC5361Iw0.n()) {
            if (f51444c || abstractC5361Iw0.a(C7337fw0.f48140b)) {
                return abstractC5361Iw0;
            }
            throw new AssertionError();
        }
        boolean z10 = f51444c;
        if (!z10 && !abstractC5361Iw0.j()) {
            throw new AssertionError();
        }
        if (!z10 && !abstractC5361Iw0.c().l()) {
            throw new AssertionError();
        }
        AbstractC10291xg g10 = abstractC5361Iw0.c().g();
        g10.getClass();
        if (g10 instanceof C7788ig) {
            return abstractC4939Bo0.a(g10);
        }
        C8854p10 A10 = g10.A();
        return A10.f() ? C10671zv0.f54579b : new C7788ig(A10, g10.p());
    }

    public final String toString() {
        return "\u22a5(ARRAY)";
    }
}
