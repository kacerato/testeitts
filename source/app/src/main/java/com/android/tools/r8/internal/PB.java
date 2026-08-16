package com.android.tools.r8.internal;

public final class PB extends H {

    public final int f43160g;

    public final int f43161h;

    public PB(int i10, int i11) {
        super(132);
        this.f43160g = i10;
        this.f43161h = i11;
    }

    @Override
    public final int a() {
        return 10;
    }

    @Override
    public final void a(DX dx) {
        dx.a(this.f43160g, this.f43161h);
        b(dx);
    }

    @Override
    public final H a(NK nk2) {
        return new PB(this.f43160g, this.f43161h).a(this);
    }
}
