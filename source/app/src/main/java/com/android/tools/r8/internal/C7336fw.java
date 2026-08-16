package com.android.tools.r8.internal;

public final class C7336fw extends H {

    public final String f48137g;

    public final String f48138h;

    public final String f48139i;

    public C7336fw(int i10, String str, String str2, String str3) {
        super(i10);
        this.f48137g = str;
        this.f48138h = str2;
        this.f48139i = str3;
    }

    @Override
    public final int a() {
        return 4;
    }

    @Override
    public final void a(DX dx) {
        dx.a(this.f40639a, this.f48137g, this.f48138h, this.f48139i);
        b(dx);
    }

    @Override
    public final H a(NK nk2) {
        return new C7336fw(this.f40639a, this.f48137g, this.f48138h, this.f48139i).a(this);
    }
}
