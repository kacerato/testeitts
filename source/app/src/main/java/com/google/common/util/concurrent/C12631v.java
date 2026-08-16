package com.google.common.util.concurrent;

import java.util.concurrent.Callable;
import v2.InterfaceC15800a;

@A
@v2.b(emulated = true)
public final class C12631v {
    @v2.c
    @InterfaceC15800a
    public static <T> InterfaceC12621l<T> e(final Callable<T> callable, final InterfaceExecutorServiceC12606d0 interfaceExecutorServiceC12606d0) {
        w2.H.E(callable);
        w2.H.E(interfaceExecutorServiceC12606d0);
        return new InterfaceC12621l() {
            @Override
            public final Z call() {
                Z submit;
                submit = InterfaceExecutorServiceC12606d0.this.submit(callable);
                return submit;
            }
        };
    }

    public static Object g(Object obj) throws Exception {
        return obj;
    }

    public static Object h(w2.Q q10, Callable callable) throws Exception {
        Thread currentThread = Thread.currentThread();
        String name = currentThread.getName();
        boolean m10 = m((String) q10.get(), currentThread);
        try {
            return callable.call();
        } finally {
            if (m10) {
                m(name, currentThread);
            }
        }
    }

    public static void i(w2.Q q10, Runnable runnable) {
        Thread currentThread = Thread.currentThread();
        String name = currentThread.getName();
        boolean m10 = m((String) q10.get(), currentThread);
        try {
            runnable.run();
        } finally {
            if (m10) {
                m(name, currentThread);
            }
        }
    }

    public static <T> Callable<T> j(@InterfaceC12618j0 final T t10) {
        return new Callable() {
            @Override
            public final Object call() {
                Object g10;
                g10 = C12631v.g(Object.this);
                return g10;
            }
        };
    }

    @v2.c
    public static Runnable k(final Runnable runnable, final w2.Q<String> q10) {
        w2.H.E(q10);
        w2.H.E(runnable);
        return new Runnable() {
            @Override
            public final void run() {
                C12631v.i(w2.Q.this, runnable);
            }
        };
    }

    @v2.c
    public static <T> Callable<T> l(final Callable<T> callable, final w2.Q<String> q10) {
        w2.H.E(q10);
        w2.H.E(callable);
        return new Callable() {
            @Override
            public final Object call() {
                Object h10;
                h10 = C12631v.h(w2.Q.this, callable);
                return h10;
            }
        };
    }

    @v2.c
    public static boolean m(String str, Thread thread) {
        try {
            thread.setName(str);
            return true;
        } catch (SecurityException unused) {
            return false;
        }
    }
}
