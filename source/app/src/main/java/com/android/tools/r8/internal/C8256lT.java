package com.android.tools.r8.internal;

public final class C8256lT extends AbstractC8423mT {

    public static final boolean f49984b = true;

    @Override
    public final int a(int i10, Object obj) {
        Integer num = (Integer) obj;
        if (f49984b || num != null) {
            return i10 - num.intValue();
        }
        throw new AssertionError();
    }

    @Override
    public final Object a(int i10, int i11) {
        return Integer.valueOf(i11 - i10);
    }
}
