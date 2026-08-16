package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;

public final class C10206x7 extends B7 {

    public static final C10206x7 f53688b = new C10206x7();

    public static final boolean f53689c = true;

    @Override
    public final AbstractC5361Iw0 a(C4798y c4798y, AbstractC5361Iw0 abstractC5361Iw0, com.android.tools.r8.graph.M2 m22, com.android.tools.r8.graph.M2 m23, AbstractC4939Bo0 abstractC4939Bo0, InterfaceC6522b2 interfaceC6522b2) {
        if (abstractC5361Iw0.i()) {
            if (f53689c || abstractC5361Iw0.a(f53688b)) {
                return this;
            }
            throw new AssertionError();
        }
        if (abstractC5361Iw0 instanceof C10671zv0) {
            return abstractC5361Iw0;
        }
        if (abstractC5361Iw0.n()) {
            if (f53689c || abstractC5361Iw0.a(C7671hw0.f48740b)) {
                return abstractC5361Iw0;
            }
            throw new AssertionError();
        }
        if (f53689c || (abstractC5361Iw0 instanceof C9790ug)) {
            return abstractC4939Bo0.a(abstractC5361Iw0);
        }
        throw new AssertionError();
    }

    public final String toString() {
        return "\u22a5(PRIMITIVE)";
    }
}
