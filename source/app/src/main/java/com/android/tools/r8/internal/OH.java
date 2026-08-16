package com.android.tools.r8.internal;

public final class OH extends H {

    public final int f42844g;

    public OH(int i10, int i11) {
        super(i10);
        this.f42844g = i11;
    }

    @Override
    public final int a() {
        return 1;
    }

    @Override
    public final void a(DX dx) {
        dx.b(this.f40639a, this.f42844g);
        b(dx);
    }

    @Override
    public final H a(NK nk2) {
        return new OH(this.f40639a, this.f42844g).a(this);
    }
}
