package com.android.tools.r8.internal;

public final class C9241rL extends H {

    public final YQ f52025g;

    public C9241rL(int i10, YQ yq) {
        super(i10);
        this.f52025g = yq;
    }

    @Override
    public final int a() {
        return 7;
    }

    @Override
    public final void a(DX dx) {
        dx.a(this.f40639a, this.f52025g.b());
        b(dx);
    }

    @Override
    public final H a(NK nk2) {
        return new C9241rL(this.f40639a, (YQ) nk2.get(this.f52025g)).a(this);
    }
}
