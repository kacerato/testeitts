package com.android.tools.r8.internal;

import java.io.Serializable;
import java.util.function.Supplier;

public class C6101Vq0 {
    public static Object a(InterfaceC7158es0 interfaceC7158es0) {
        try {
            return interfaceC7158es0.get();
        } catch (Throwable th2) {
            throw new RuntimeException(th2);
        }
    }

    public static <T, E extends Throwable> Supplier<T> b(final InterfaceC7158es0<T, E> interfaceC7158es0) {
        InterfaceC6044Uq0 interfaceC6044Uq0 = new InterfaceC6044Uq0() {
            @Override
            public final Object get() {
                return C6101Vq0.a(InterfaceC7158es0.this);
            }
        };
        return interfaceC6044Uq0 instanceof Serializable ? new C6158Wq0(interfaceC6044Uq0) : new C6215Xq0(interfaceC6044Uq0);
    }
}
