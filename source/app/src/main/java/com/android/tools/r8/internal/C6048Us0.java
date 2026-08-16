package com.android.tools.r8.internal;

import yd.C16181m;

public final class C6048Us0 extends AbstractC5990Ts0 {
    public C6048Us0(com.android.tools.r8.graph.A2 a22) {
        super(a22);
    }

    public final boolean equals(Object obj) {
        if (obj instanceof C6048Us0) {
            return this.f44603a.a(((C6048Us0) obj).f44603a);
        }
        return false;
    }

    public final int hashCode() {
        return this.f44603a.hashCode();
    }

    public final String toString() {
        return "MethodRet(" + this.f44603a.s0().C0() + C16181m.f130230g + ((Object) this.f44603a.f38298g) + ")";
    }
}
