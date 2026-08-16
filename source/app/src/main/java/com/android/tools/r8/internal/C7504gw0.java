package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;

public final class C7504gw0 extends AbstractC7836iw0 {

    public static final C7504gw0 f48390b = new C7504gw0();

    public static final boolean f48391c = true;

    @Override
    public final Q00 a(C4798y c4798y, AbstractC5361Iw0 abstractC5361Iw0, com.android.tools.r8.graph.M2 m22, com.android.tools.r8.graph.M2 m23, AbstractC4939Bo0 abstractC4939Bo0, InterfaceC6522b2 interfaceC6522b2) {
        if (abstractC5361Iw0.i() || abstractC5361Iw0.n()) {
            return this;
        }
        if (abstractC5361Iw0 instanceof C10671zv0) {
            return C10671zv0.f54579b;
        }
        boolean z10 = f48391c;
        if (!z10 && !abstractC5361Iw0.j()) {
            throw new AssertionError();
        }
        if (!z10 && !abstractC5361Iw0.c().l()) {
            throw new AssertionError();
        }
        Q00 d10 = C9204r7.f51970b.a(c4798y, abstractC5361Iw0, m22, m23, abstractC4939Bo0, interfaceC6522b2).d();
        if (d10.j()) {
            AbstractC10458yg c10 = d10.c();
            c10.getClass();
            c10.f54103c = true;
            return c10;
        }
        if (z10 || (d10 instanceof C10671zv0)) {
            return d10;
        }
        throw new AssertionError();
    }

    public final String toString() {
        return "UNUSED(CLASS)";
    }
}
