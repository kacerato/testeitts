package com.android.tools.r8.internal;

public final class KW extends H {

    public final String f41689g;

    public final String f41690h;

    public final String f41691i;

    public final boolean f41692j;

    public KW(int i10, String str, String str2, String str3, boolean z10) {
        super(i10);
        this.f41689g = str;
        this.f41690h = str2;
        this.f41691i = str3;
        this.f41692j = z10;
    }

    @Override
    public final int a() {
        return 5;
    }

    @Override
    public final void a(DX dx) {
        dx.a(this.f40639a, this.f41689g, this.f41690h, this.f41691i, this.f41692j);
        b(dx);
    }

    @Override
    public final H a(NK nk2) {
        return new KW(this.f40639a, this.f41689g, this.f41690h, this.f41691i, this.f41692j).a(this);
    }
}
