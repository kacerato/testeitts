package com.android.tools.r8.internal;

import com.android.tools.r8.ClassFileConsumer;
import com.android.tools.r8.internal.B60;

public final class E60 implements F60 {

    public static final boolean f39752e = true;

    public final int f39753a;

    public com.android.tools.r8.graph.A2 f39754b = null;

    public int f39755c = -1;

    public int f39756d = 1;

    public E60(C8570nJ c8570nJ) {
        this.f39753a = c8570nJ.f50697l instanceof ClassFileConsumer ? Integer.MAX_VALUE : 1;
    }

    @Override
    public final C8699o50 a(B60 b60) {
        boolean z10 = f39752e;
        if (!z10 && b60.f38808c == null) {
            throw new AssertionError();
        }
        if (b60.f38808c.a(this.f39754b)) {
            if (!z10 && this.f39755c < 0) {
                throw new AssertionError();
            }
            if (b60.f() > this.f39755c && b60.f() - this.f39755c <= this.f39753a) {
                this.f39756d = ((b60.f() - this.f39755c) - 1) + this.f39756d;
            }
        }
        B60.a b10 = b60.b();
        int i10 = this.f39756d;
        this.f39756d = i10 + 1;
        B60.a a10 = b10.a(i10);
        a10.f38814c = null;
        B60 a11 = a10.c().a();
        this.f39755c = b60.f();
        this.f39754b = b60.f38808c;
        return new C8699o50(b60, a11);
    }
}
