package com.android.tools.r8.internal;

import com.android.tools.r8.graph.AbstractC4497i0;
import com.android.tools.r8.internal.B60;
import java.util.HashMap;
import java.util.function.Supplier;

public final class J8 {

    public static final boolean f41301f = true;

    public final B60 f41302a;

    public final HashMap f41303b;

    public final B60 f41304c;

    public final boolean f41305d;

    public B60 f41306e;

    public J8(B60 b60, int i10, com.android.tools.r8.graph.A2 a22, boolean z10, B60 b602) {
        this.f41303b = new HashMap((b60 == null ? 0 : 1) + 1 + i10);
        if (b602 == null) {
            B60.c.a a10 = B60.c.t().a(0).a(a22);
            a10.f38816e = z10;
            b602 = a10.a();
        }
        if (b60 != null) {
            this.f41302a = c(b60);
            this.f41305d = z10;
            this.f41304c = c(AbstractC4497i0.a(b60, b602, z10));
        } else {
            this.f41302a = null;
            this.f41305d = false;
            this.f41304c = c(b602);
        }
    }

    public final B60 a(B60 b60) {
        B60 a10;
        if (b60 == null) {
            return this.f41302a;
        }
        B60 b602 = b60.f38809d;
        if (b602 == null && this.f41302a == null) {
            return c(b60);
        }
        if (b602 == null && this.f41305d) {
            return this.f41302a;
        }
        B60 a11 = a(b602);
        if (b60.o()) {
            B60.b.a a12 = B60.b.t().a(b60.f38808c);
            a12.f38814c = a11;
            a12.f38817f = true;
            a10 = a12.a();
        } else {
            B60.a b10 = b60.b();
            b10.f38814c = a11;
            a10 = b10.c().a();
        }
        return c(a10);
    }

    public final B60 b(B60 b60) {
        if (!b60.f38811f || this.f41302a == null) {
            B60.a b10 = b60.b();
            b10.f38814c = a(b60.f38809d);
            return c(b10.c().a());
        }
        if (f41301f || !b60.k()) {
            return c(AbstractC4497i0.a(this.f41302a, b60, true));
        }
        throw new AssertionError();
    }

    public final B60 c(B60 b60) {
        B60 b602 = (B60) this.f41303b.putIfAbsent(b60, b60);
        return b602 != null ? b602 : b60;
    }

    public final B60 a(boolean z10, Supplier supplier, com.android.tools.r8.graph.A2 a22) {
        B60 a10;
        if (this.f41306e == null) {
            if (z10) {
                int i10 = Integer.MIN_VALUE;
                int i11 = Integer.MAX_VALUE;
                for (B60 b60 : (Iterable) supplier.get()) {
                    if (!f41301f && b60 != b60.h()) {
                        throw new AssertionError();
                    }
                    int i12 = b60.f38807b;
                    i11 = Math.min(i11, i12);
                    i10 = Math.max(i10, i12);
                }
                if (i11 == Integer.MAX_VALUE) {
                    a10 = this.f41304c;
                } else {
                    B60.c.a t10 = B60.c.t();
                    if (i11 < i10) {
                        i11--;
                    }
                    B60.c.a a11 = t10.a(i11).a(a22);
                    a11.f38814c = this.f41302a;
                    a10 = a11.a();
                }
                this.f41306e = a10;
            } else {
                boolean z11 = B60.f38806g;
                this.f41306e = B60.c.f38822h;
            }
        }
        return this.f41306e;
    }
}
