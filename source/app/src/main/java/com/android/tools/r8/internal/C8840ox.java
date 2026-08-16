package com.android.tools.r8.internal;

public final class C8840ox extends XY {

    public static final C8840ox f51393h = new C8840ox();

    public C8840ox() {
        super(C9919vQ.class, "flags", "getFlags$kotlin_metadata()I", 0);
    }

    @Override
    public final void a(Integer num, Object obj) {
        ((C9919vQ) obj).f53100a = num.intValue();
    }

    @Override
    public final Object b(Object obj) {
        return Integer.valueOf(((C9919vQ) obj).f53100a);
    }
}
