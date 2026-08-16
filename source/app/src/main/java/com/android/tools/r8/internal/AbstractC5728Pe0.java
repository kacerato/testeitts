package com.android.tools.r8.internal;

public abstract class AbstractC5728Pe0 {
    public abstract int a(int i10);

    public final int a(int i10, boolean z10) {
        int a10 = a(i10);
        return z10 ? Math.min(a10, a(i10 + 1)) : a10;
    }

    public abstract void a(int i10, int i11, FT ft);

    public abstract boolean a(int i10, EnumC5670Oe0 enumC5670Oe0);

    public abstract boolean b(int i10);

    public abstract void c(int i10);
}
