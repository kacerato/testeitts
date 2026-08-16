package com.android.tools.r8.internal;

import java.io.Serializable;
import java.util.Arrays;

public final class C6272Yq0 implements InterfaceC6044Uq0, Serializable {

    public final com.android.tools.r8.graph.M2 f46094b;

    public C6272Yq0(com.android.tools.r8.graph.M2 m22) {
        this.f46094b = m22;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof C6272Yq0) {
            return V30.a(this.f46094b, ((C6272Yq0) obj).f46094b);
        }
        return false;
    }

    @Override
    public final Object get() {
        return this.f46094b;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f46094b});
    }

    public final String toString() {
        return "Suppliers.ofInstance(" + ((Object) this.f46094b) + ")";
    }
}
