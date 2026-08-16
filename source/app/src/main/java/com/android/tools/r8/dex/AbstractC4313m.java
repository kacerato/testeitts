package com.android.tools.r8.dex;

import com.android.tools.r8.internal.BR;
import com.android.tools.r8.origin.Origin;

public abstract class AbstractC4313m {

    public static final boolean f35892c = true;

    public final Origin f35893a;

    public final C4318s f35894b;

    public AbstractC4313m(Origin origin, byte[] bArr) {
        if (!f35892c && origin == null) {
            throw new AssertionError();
        }
        this.f35893a = origin;
        this.f35894b = C4318s.b(bArr);
    }

    public final int a() {
        int c10 = this.f35894b.c();
        if (f35892c || c10 >= 0) {
            return c10;
        }
        throw new AssertionError();
    }

    public final int b() {
        return BR.b(this) - 1;
    }

    public final int c() {
        int d10 = this.f35894b.d() & 65535;
        if (f35892c || d10 >= 0) {
            return d10;
        }
        throw new AssertionError();
    }

    public void b(int i10) {
        this.f35894b.c(i10);
    }

    public final int a(int i10) {
        int b10 = this.f35894b.b(i10);
        if (f35892c || b10 >= 0) {
            return b10;
        }
        throw new AssertionError();
    }
}
