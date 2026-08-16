package com.android.tools.r8.internal;

public final class OB implements InterfaceC7021e2 {

    public static final OB f42814a = new OB();

    public static final boolean f42815b = true;

    @Override
    public final C10340xw0 a(AbstractC10561zE abstractC10561zE) {
        if (!f42815b) {
            abstractC10561zE.getClass();
            if (!(abstractC10561zE instanceof C4) && !(abstractC10561zE instanceof C7130ej)) {
                throw new AssertionError();
            }
        }
        abstractC10561zE.getClass();
        return abstractC10561zE instanceof C4 ? abstractC10561zE.B().v2() : abstractC10561zE.L().v2();
    }

    @Override
    public final boolean b(AbstractC10561zE abstractC10561zE) {
        abstractC10561zE.getClass();
        return (abstractC10561zE instanceof C4) || (abstractC10561zE instanceof C7130ej);
    }
}
