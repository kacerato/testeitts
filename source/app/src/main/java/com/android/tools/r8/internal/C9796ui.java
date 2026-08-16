package com.android.tools.r8.internal;

import java.util.Objects;

public final class C9796ui implements InterfaceC9645tn0 {

    public static final boolean f52923c = true;

    public final com.android.tools.r8.graph.A2 f52924a;

    public final com.android.tools.r8.graph.A2 f52925b;

    public C9796ui(com.android.tools.r8.graph.A2 a22, com.android.tools.r8.graph.A2 a23) {
        this.f52924a = a22;
        this.f52925b = a23;
        boolean z10 = f52923c;
        if (!z10 && a22.z0() != a23.k(0)) {
            throw new AssertionError();
        }
        if (!z10 && a23.z0() != a22.k(0)) {
            throw new AssertionError();
        }
    }

    @Override
    public final Object[] a(C9267rY c9267rY) {
        return new Object[]{c9267rY.a(this.f52924a), c9267rY.a(this.f52925b)};
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C9796ui)) {
            return false;
        }
        C9796ui c9796ui = (C9796ui) obj;
        return this.f52924a == c9796ui.f52924a && this.f52925b == c9796ui.f52925b;
    }

    public final int hashCode() {
        return Objects.hash(this.f52924a, this.f52925b);
    }
}
