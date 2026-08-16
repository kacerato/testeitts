package com.android.tools.r8.internal;

import yd.C16181m;

public final class C5932Ss0 extends AbstractC5990Ts0 {

    public static final boolean f44322c = true;

    public final int f44323b;

    public C5932Ss0(int i10, com.android.tools.r8.graph.A2 a22) {
        super(a22);
        boolean z10 = f44322c;
        if (!z10 && i10 < 0) {
            throw new AssertionError();
        }
        if (!z10 && i10 >= a22.w0()) {
            throw new AssertionError();
        }
        this.f44323b = i10;
    }

    @Override
    public final C5932Ss0 a() {
        return this;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof C5932Ss0)) {
            return false;
        }
        C5932Ss0 c5932Ss0 = (C5932Ss0) obj;
        return this.f44603a.a(c5932Ss0.f44603a) && this.f44323b == c5932Ss0.f44323b;
    }

    public final int hashCode() {
        return (this.f44603a.hashCode() * 7) + Integer.hashCode(this.f44323b);
    }

    public final String toString() {
        String C02 = this.f44603a.s0().C0();
        com.android.tools.r8.graph.L2 l22 = this.f44603a.f38298g;
        return "MethodArg(" + C02 + C16181m.f130230g + ((Object) l22) + C16181m.f130230g + this.f44323b + ")";
    }
}
