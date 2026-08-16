package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;

public final class C7671hw0 extends AbstractC7836iw0 {

    public static final C7671hw0 f48740b = new C7671hw0();

    public static final boolean f48741c = true;

    @Override
    public final Q00 a(C4798y c4798y, AbstractC5361Iw0 abstractC5361Iw0, com.android.tools.r8.graph.M2 m22, com.android.tools.r8.graph.M2 m23, AbstractC4939Bo0 abstractC4939Bo0, InterfaceC6522b2 interfaceC6522b2) {
        if (abstractC5361Iw0.i() || abstractC5361Iw0.n()) {
            return this;
        }
        if (abstractC5361Iw0 instanceof C10671zv0) {
            return C10671zv0.f54579b;
        }
        boolean z10 = f48741c;
        if (!z10 && !abstractC5361Iw0.j()) {
            throw new AssertionError();
        }
        if (!z10) {
            AbstractC10458yg c10 = abstractC5361Iw0.c();
            c10.getClass();
            if (!(c10 instanceof C9790ug)) {
                throw new AssertionError();
            }
        }
        C9790ug c9790ug = (C9790ug) abstractC4939Bo0.a(abstractC5361Iw0.e());
        c9790ug.getClass();
        c9790ug.f54103c = true;
        return c9790ug;
    }

    public final String toString() {
        return "UNUSED(PRIMITIVE)";
    }
}
