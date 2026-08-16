package com.android.tools.r8.internal;

public final class C5079Ea0 extends C8939pa0 {

    public static final boolean f39945h = true;

    public C5079Ea0(int i10, boolean z10, boolean z11, boolean z12, boolean z13, boolean z14) {
        super(i10, z10, z11, z12, z13, z14);
    }

    @Override
    public final C5079Ea0 a() {
        return this;
    }

    @Override
    public final boolean b() {
        return false;
    }

    @Override
    public final boolean c() {
        return true;
    }

    @Override
    public final void d() {
        if (!f39945h && this.f51557a < 51) {
            throw new AssertionError();
        }
    }

    @Override
    public final boolean a(boolean z10) {
        return true;
    }

    @Override
    public final int a(boolean z10, C9106qa0 c9106qa0) {
        int i10 = c9106qa0.a(e() - 51).f51557a;
        boolean z11 = true;
        if (i10 != 9) {
            if (i10 == 12) {
                if (!z10 && !this.f51561e) {
                    z11 = false;
                }
                return C8704o7.a(z11);
            }
            if (i10 != 17) {
                return 0;
            }
        }
        return 1;
    }
}
