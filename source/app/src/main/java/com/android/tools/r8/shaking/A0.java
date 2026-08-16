package com.android.tools.r8.shaking;

import com.android.tools.r8.graph.C4554l1;
import java.util.Objects;

public abstract class A0 extends AbstractC11279k0 {

    public final C4554l1 f56336a;

    public final com.android.tools.r8.graph.H5 f56337b;

    public final K f56338c;

    public A0(C4554l1 c4554l1, com.android.tools.r8.graph.H5 h52, K k10) {
        this.f56336a = c4554l1;
        this.f56337b = h52;
        this.f56338c = k10;
    }

    public final boolean a(A0 a02) {
        return this.f56336a == a02.f56336a && this.f56337b.a((com.android.tools.r8.graph.H0) a02.f56337b) && this.f56338c.equals(a02.f56338c);
    }

    public int hashCode() {
        return Objects.hash(this.f56336a, this.f56337b.getReference(), this.f56338c);
    }
}
