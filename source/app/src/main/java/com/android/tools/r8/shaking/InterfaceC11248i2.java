package com.android.tools.r8.shaking;

@FunctionalInterface
public interface InterfaceC11248i2 {
    static InterfaceC11248i2 a() {
        return new InterfaceC11248i2() {
            @Override
            public final boolean d(com.android.tools.r8.graph.M2 m22) {
                return InterfaceC11248i2.c(m22);
            }
        };
    }

    static boolean c(com.android.tools.r8.graph.M2 m22) {
        return false;
    }

    boolean d(com.android.tools.r8.graph.M2 m22);
}
