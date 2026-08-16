package com.android.tools.r8.internal;

import java.lang.Throwable;

@FunctionalInterface
public interface InterfaceC6160Wr0<T, E extends Throwable> {
    static void b(Object obj) {
        throw new C5417Jv0();
    }

    default void a(T t10) {
        try {
            accept(t10);
        } catch (Throwable th2) {
            if (th2 instanceof RuntimeException) {
                throw th2;
            }
            throw new RuntimeException(th2);
        }
    }

    void accept(T t10) throws Throwable;

    static <T, E extends Throwable> InterfaceC6160Wr0<T, E> a() {
        return new InterfaceC6160Wr0() {
            @Override
            public final void accept(Object obj) {
                InterfaceC6160Wr0.b(obj);
            }
        };
    }
}
