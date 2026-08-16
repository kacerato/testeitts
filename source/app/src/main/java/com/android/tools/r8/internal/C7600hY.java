package com.android.tools.r8.internal;

public final class C7600hY extends H {

    public final String f48575g;

    public final int f48576h;

    public C7600hY(int i10, String str) {
        super(197);
        this.f48575g = str;
        this.f48576h = i10;
    }

    @Override
    public final int a() {
        return 13;
    }

    @Override
    public final void a(DX dx) {
        dx.a(this.f48576h, this.f48575g);
        b(dx);
    }

    @Override
    public final H a(NK nk2) {
        return new C7600hY(this.f48576h, this.f48575g).a(this);
    }
}
