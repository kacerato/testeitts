package com.android.tools.r8.internal;

public final class AR extends H {

    public final Object f38614g;

    public AR(Object obj) {
        super(18);
        this.f38614g = obj;
    }

    @Override
    public final int a() {
        return 9;
    }

    @Override
    public final void a(DX dx) {
        dx.a(this.f38614g);
        b(dx);
    }

    @Override
    public final H a(NK nk2) {
        return new AR(this.f38614g).a(this);
    }
}
