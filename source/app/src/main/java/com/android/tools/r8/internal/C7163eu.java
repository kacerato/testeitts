package com.android.tools.r8.internal;

import com.android.tools.r8.graph.AbstractC4592n1;
import java.util.IdentityHashMap;
import java.util.Objects;

public final class C7163eu implements InterfaceC9645tn0 {

    public final com.android.tools.r8.graph.M2 f47804a;

    public final IdentityHashMap f47805b;

    public C7163eu(com.android.tools.r8.graph.M2 m22, IdentityHashMap identityHashMap) {
        this.f47804a = m22;
        this.f47805b = identityHashMap;
    }

    @Override
    public final Object[] a(C9267rY c9267rY) {
        return new Object[]{c9267rY.a((AbstractC4592n1) this.f47804a), c9267rY.b(this.f47805b)};
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof C7163eu)) {
            return false;
        }
        C7163eu c7163eu = (C7163eu) obj;
        return this.f47804a == c7163eu.f47804a && this.f47805b.equals(c7163eu.f47805b);
    }

    public final int hashCode() {
        return Objects.hash(this.f47804a, this.f47805b);
    }
}
