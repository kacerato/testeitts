package com.android.tools.r8.internal;

public final class F7 implements InterfaceC10118we {

    public static final F7 f40107f = new F7(true, true);

    public static final F7 f40108g = new F7(false, true);

    public static final F7 f40109h = new F7(false, false);

    public static final boolean f40110i = true;

    public final boolean f40111d;

    public final boolean f40112e;

    public F7(boolean z10, boolean z11) {
        if (!f40110i && z10 && !z11) {
            throw new AssertionError();
        }
        this.f40111d = z10;
        this.f40112e = z11;
    }

    @Override
    public final AbstractC9530t40 a() {
        if (f40110i || !this.f40111d || this.f40112e) {
            return AbstractC9530t40.a(this.f40112e);
        }
        throw new AssertionError();
    }
}
