package com.android.tools.r8.internal;

public final class C9106qa0 {

    public static final boolean f51813b = true;

    public final C6899dH f51814a = new C6899dH(16);

    public final C8939pa0 a(int i10) {
        C8939pa0 c8939pa0 = (C8939pa0) this.f51814a.get(i10);
        if (c8939pa0 == null) {
            int i11 = i10 & 255;
            c8939pa0 = i11 < 51 ? new C8939pa0(i11, P6.b(i10, 256), P6.b(i10, 512), P6.b(i10, 1024), P6.b(i10, 2048), P6.b(i10, 4096)) : new C5079Ea0(i11, P6.b(i10, 256), P6.b(i10, 512), P6.b(i10, 1024), P6.b(i10, 2048), P6.b(i10, 4096));
            if (!f51813b && c8939pa0.e() != i10) {
                throw new AssertionError();
            }
            this.f51814a.a(i10, c8939pa0);
        }
        return c8939pa0;
    }
}
