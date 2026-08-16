package com.android.tools.r8.internal;

public final class D4 implements InterfaceC7021e2 {

    public static final D4 f39431a = new D4();

    public static final boolean f39432b = true;

    @Override
    public final C10340xw0 a(AbstractC10561zE abstractC10561zE) {
        if (!f39432b) {
            abstractC10561zE.getClass();
            if (!(abstractC10561zE instanceof C4) && !abstractC10561zE.t1()) {
                throw new AssertionError();
            }
        }
        return (C10340xw0) AT.a(abstractC10561zE.f54321f);
    }

    @Override
    public final boolean b(AbstractC10561zE abstractC10561zE) {
        abstractC10561zE.getClass();
        return (abstractC10561zE instanceof C4) || abstractC10561zE.t1();
    }
}
