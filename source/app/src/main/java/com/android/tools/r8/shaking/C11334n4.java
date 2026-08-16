package com.android.tools.r8.shaking;

import com.android.tools.r8.graph.C4693s8;
import com.android.tools.r8.internal.C10656zq0;
import java.util.Set;

public final class C11334n4 extends AbstractC11250i4 {

    public final Set f57556b;

    public C11334n4(Set set) {
        this.f57556b = set;
    }

    @Override
    public final boolean b(com.android.tools.r8.graph.M2 m22) {
        return this.f57556b.contains(m22);
    }

    @Override
    public final Set c() {
        return this.f57556b;
    }

    @Override
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof C11334n4) {
            return this.f57556b.equals(((C11334n4) obj).f57556b);
        }
        return false;
    }

    @Override
    public final int hashCode() {
        return this.f57556b.hashCode();
    }

    @Override
    public final String toString() {
        return C10656zq0.a(", ", this.f57556b, new C4693s8(), C10656zq0.a.f54551d);
    }
}
