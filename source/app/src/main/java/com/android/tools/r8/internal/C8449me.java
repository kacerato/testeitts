package com.android.tools.r8.internal;

import java.io.Closeable;
import java.util.logging.Level;

public final class C8449me implements InterfaceC8783oe {

    public static final C8449me f50366a = new C8449me();

    @Override
    public final void a(Closeable closeable, Throwable th2, Throwable th3) {
        AbstractC8282le.f50019a.log(Level.WARNING, "Suppressing exception thrown when closing " + ((Object) closeable), th3);
    }
}
