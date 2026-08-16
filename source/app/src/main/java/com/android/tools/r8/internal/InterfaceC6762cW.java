package com.android.tools.r8.internal;

import com.android.tools.r8.graph.C4798y;

public interface InterfaceC6762cW {
    com.android.tools.r8.graph.M2 a(com.android.tools.r8.graph.M2 m22, com.android.tools.r8.graph.M2 m23);

    void a(C4798y c4798y);

    boolean a(com.android.tools.r8.graph.M2 m22);

    default boolean b(com.android.tools.r8.graph.M2 m22) {
        return c(m22) || a(m22);
    }

    boolean c(com.android.tools.r8.graph.M2 m22);
}
