package com.android.tools.r8.shaking;

import com.android.tools.r8.graph.C4554l1;
import java.util.Objects;

public final class J0 extends A0 {
    public J0(C4554l1 c4554l1, com.android.tools.r8.graph.H5 h52, K k10) {
        super(c4554l1, h52, k10);
    }

    @Override
    public final void a(N n10) {
        n10.b(this.f56336a, this.f56337b, J.f56640e, this.f56338c);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || J0.class != obj.getClass()) {
            return false;
        }
        return a((J0) obj);
    }

    @Override
    public final int hashCode() {
        return Objects.hash(this.f56336a, this.f56337b.getReference(), this.f56338c);
    }
}
