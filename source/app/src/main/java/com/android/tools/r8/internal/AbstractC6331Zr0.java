package com.android.tools.r8.internal;

import java.lang.Exception;
import java.util.function.IntConsumer;

public abstract class AbstractC6331Zr0<E extends Exception> {
    public void a(IntConsumer intConsumer) throws Exception {
        while (a()) {
            intConsumer.accept(b());
        }
    }

    public abstract boolean a();

    public abstract int b();

    public final int a(InterfaceC6492as0 interfaceC6492as0) {
        if (a()) {
            return b();
        }
        return interfaceC6492as0.a();
    }
}
