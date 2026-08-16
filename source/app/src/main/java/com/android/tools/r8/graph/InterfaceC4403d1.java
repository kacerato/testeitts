package com.android.tools.r8.graph;

public interface InterfaceC4403d1 {
    static {
        boolean z10 = AbstractC4384c1.f37090a;
    }

    default E0 a(M2 m22) {
        return g(m22);
    }

    default H0 b(A2 a22) {
        E0 g10 = g(a22.s0());
        if (g10 != null) {
            return g10.a(a22);
        }
        return null;
    }

    C4724u1 b();

    default boolean e(M2 m22) {
        return g(m22) != null;
    }

    InterfaceC4364b0 f(M2 m22);

    E0 g(M2 m22);

    default E0 a(H2 h22, M2 m22) {
        return m22 == h22.f36245e ? h22 : a(m22);
    }

    default E0 a(M2 m22, H5 h52) {
        return a(h52.getHolder(), m22);
    }

    @Deprecated
    default H2 b(M2 m22) {
        return H2.a(g(m22));
    }

    default F0 a(C4554l1 c4554l1) {
        E0 g10 = g(c4554l1.s0());
        if (g10 != null) {
            return g10.a(c4554l1);
        }
        return null;
    }

    default boolean a(A2 a22) {
        return b(a22) != null;
    }

    default E0 a(AbstractC4744v2 abstractC4744v2) {
        return g(abstractC4744v2.f38297f);
    }
}
