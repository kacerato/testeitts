package com.android.tools.r8.internal;

import java.lang.Throwable;

@FunctionalInterface
public interface InterfaceC5930Sr0<T extends Throwable> {
    static void b() {
    }

    static InterfaceC5930Sr0 empty() {
        return new InterfaceC5930Sr0() {
            @Override
            public final void a() {
                InterfaceC5930Sr0.b();
            }
        };
    }

    void a() throws Throwable;
}
