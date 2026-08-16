package com.android.tools.r8.internal;

public final class C9132qj implements InterfaceC7021e2 {

    public static final C9132qj f51861a = new C9132qj();

    public static final boolean f51862b = true;

    @Override
    public final C10340xw0 a(AbstractC10561zE abstractC10561zE) {
        if (!f51862b) {
            abstractC10561zE.getClass();
            if (!(abstractC10561zE instanceof C4)) {
                throw new AssertionError();
            }
        }
        return abstractC10561zE.B().v2();
    }

    @Override
    public final boolean b(AbstractC10561zE abstractC10561zE) {
        abstractC10561zE.getClass();
        return abstractC10561zE instanceof C4;
    }
}
