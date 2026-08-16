package com.android.tools.r8.shaking;

import com.android.tools.r8.internal.AbstractC5308Hz;

public final class C11110a0 extends Y {
    public C11110a0(com.android.tools.r8.graph.H2 h22) {
        super(h22.getType());
    }

    @Override
    public final AbstractC11161d0 a(AbstractC5308Hz abstractC5308Hz) {
        com.android.tools.r8.graph.M2 m22 = this.f57123a;
        abstractC5308Hz.getClass();
        com.android.tools.r8.graph.M2 c10 = abstractC5308Hz.c(AbstractC5308Hz.g(), m22);
        return c10 == this.f57123a ? this : c10.L0() ? C11127b0.f57188a : new C11110a0(c10);
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        return (obj instanceof C11110a0) && this.f57123a == ((C11110a0) obj).f57123a;
    }

    public final int hashCode() {
        return this.f57123a.hashCode() << 1;
    }

    public C11110a0(com.android.tools.r8.graph.M2 m22) {
        super(m22);
    }
}
