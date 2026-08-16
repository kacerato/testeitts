package com.android.tools.r8.internal;

public final class C7588hS extends H {

    public final int f48559g;

    public final YQ f48560h;

    public C7588hS(int i10, YQ yq) {
        super(-1);
        this.f48559g = i10;
        this.f48560h = yq;
    }

    @Override
    public final int a() {
        return 15;
    }

    @Override
    public final void a(DX dx) {
        dx.b(this.f48559g, this.f48560h.b());
    }

    @Override
    public final H a(NK nk2) {
        return new C7588hS(this.f48559g, nk2.a(this.f48560h));
    }
}
