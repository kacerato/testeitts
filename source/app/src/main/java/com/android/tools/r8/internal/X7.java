package com.android.tools.r8.internal;

import java.io.ByteArrayOutputStream;

public final class X7 implements InterfaceC9041q8 {

    public static final boolean f45622b = true;

    public final ByteArrayOutputStream f45623a = new ByteArrayOutputStream();

    @Override
    public final void a(int i10) {
        if (!f45622b) {
            boolean z10 = C8707o8.f51173a;
            if (i10 < 0 || i10 > 255) {
                throw new AssertionError();
            }
        }
        this.f45623a.write(i10);
    }
}
