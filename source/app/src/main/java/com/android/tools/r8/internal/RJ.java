package com.android.tools.r8.internal;

public final class RJ extends H {

    public final String f43858g;

    public final String f43859h;

    public final C5829Qz f43860i;

    public final Object[] f43861j;

    public RJ(String str, String str2, C5829Qz c5829Qz, Object... objArr) {
        super(186);
        this.f43858g = str;
        this.f43859h = str2;
        this.f43860i = c5829Qz;
        this.f43861j = objArr;
    }

    @Override
    public final int a() {
        return 6;
    }

    @Override
    public final void a(DX dx) {
        dx.a(this.f43858g, this.f43859h, this.f43860i, this.f43861j);
        b(dx);
    }

    @Override
    public final H a(NK nk2) {
        return new RJ(this.f43858g, this.f43859h, this.f43860i, this.f43861j).a(this);
    }
}
