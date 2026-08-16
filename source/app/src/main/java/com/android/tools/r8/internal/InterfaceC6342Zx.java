package com.android.tools.r8.internal;

public interface InterfaceC6342Zx {
    static void a(com.android.tools.r8.graph.A2 a22, com.android.tools.r8.graph.A2 a23) {
    }

    void b(com.android.tools.r8.graph.A2 a22, com.android.tools.r8.graph.A2 a23);

    static InterfaceC6342Zx a() {
        return new InterfaceC6342Zx() {
            @Override
            public final void b(com.android.tools.r8.graph.A2 a22, com.android.tools.r8.graph.A2 a23) {
                InterfaceC6342Zx.a(a22, a23);
            }
        };
    }
}
