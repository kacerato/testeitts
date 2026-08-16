package com.android.tools.r8.naming;

public final class Y {

    public final Z f55795a;

    public Y(Z z10) {
        this.f55795a = z10;
    }

    public final void a(com.android.tools.r8.graph.H0 h02, com.android.tools.r8.graph.L2 l22) {
        if (l22.g(h02.getReference().t0())) {
            return;
        }
        this.f55795a.f55804c.put(h02.getReference(), l22);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final com.android.tools.r8.graph.M2 a(com.android.tools.r8.graph.M2 m22) {
        return (com.android.tools.r8.graph.M2) this.f55795a.f55808g.getOrDefault(m22, m22);
    }
}
