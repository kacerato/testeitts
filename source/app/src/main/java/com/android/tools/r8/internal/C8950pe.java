package com.android.tools.r8.internal;

import java.io.Closeable;
import java.io.IOException;
import java.util.ArrayDeque;

public final class C8950pe implements Closeable {

    public static final InterfaceC8783oe f51579c;

    public final InterfaceC8783oe f51580a;

    public final ArrayDeque f51581b = new ArrayDeque(4);

    static {
        InterfaceC8783oe interfaceC8783oe;
        try {
            interfaceC8783oe = new C8616ne(Throwable.class.getMethod("addSuppressed", Throwable.class));
        } catch (Throwable unused) {
            interfaceC8783oe = null;
        }
        if (interfaceC8783oe == null) {
            interfaceC8783oe = C8449me.f50366a;
        }
        f51579c = interfaceC8783oe;
    }

    public C8950pe(InterfaceC8783oe interfaceC8783oe) {
        interfaceC8783oe.getClass();
        this.f51580a = interfaceC8783oe;
    }

    public final Closeable a(Closeable closeable) {
        if (closeable != null) {
            this.f51581b.addFirst(closeable);
        }
        return closeable;
    }

    @Override
    public final void close() {
        Throwable th2 = null;
        while (!this.f51581b.isEmpty()) {
            Closeable closeable = (Closeable) this.f51581b.removeFirst();
            try {
                closeable.close();
            } catch (Throwable th3) {
                if (th2 == null) {
                    th2 = th3;
                } else {
                    this.f51580a.a(closeable, th2, th3);
                }
            }
        }
        if (th2 != null) {
            Object obj = AbstractC5872Rr0.f44010a;
            if (IOException.class.isInstance(th2)) {
                throw ((Throwable) IOException.class.cast(th2));
            }
            if (th2 instanceof RuntimeException) {
                throw ((RuntimeException) th2);
            }
            if (!(th2 instanceof Error)) {
                throw new AssertionError(th2);
            }
            throw ((Error) th2);
        }
    }
}
