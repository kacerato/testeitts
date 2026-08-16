package com.android.tools.r8.internal;

import java.io.Closeable;
import java.lang.reflect.Method;
import java.util.logging.Level;

public final class C8616ne implements InterfaceC8783oe {

    public final Method f51009a;

    public C8616ne(Method method) {
        this.f51009a = method;
    }

    @Override
    public final void a(Closeable closeable, Throwable th2, Throwable th3) {
        if (th2 == th3) {
            return;
        }
        try {
            this.f51009a.invoke(th2, th3);
        } catch (Throwable unused) {
            AbstractC8282le.f50019a.log(Level.WARNING, "Suppressing exception thrown when closing " + ((Object) closeable), th3);
        }
    }
}
