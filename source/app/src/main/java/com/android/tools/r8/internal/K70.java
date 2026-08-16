package com.android.tools.r8.internal;

public interface K70 {
    K70 a(com.android.tools.r8.graph.A2 a22);

    default K70 a(com.android.tools.r8.graph.D5 d52) {
        return a(d52.getReference());
    }

    K70 a(com.android.tools.r8.graph.M2 m22);

    void a(com.android.tools.r8.graph.H5 h52, com.android.tools.r8.graph.A2 a22);

    default K70 a(com.android.tools.r8.graph.J2 j22) {
        j22.getClass();
        if (j22 instanceof com.android.tools.r8.graph.M2) {
            return a(j22.o0());
        }
        if (I70.f40981a || j22.r0()) {
            return a(j22.n0());
        }
        throw new AssertionError();
    }
}
