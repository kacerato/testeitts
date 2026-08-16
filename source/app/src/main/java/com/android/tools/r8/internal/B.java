package com.android.tools.r8.internal;

import b2.AbstractC3834c;
import java.security.AccessController;
import java.security.PrivilegedActionException;
import sun.misc.Unsafe;
import u8.C15580b;

public final class B extends AbstractC9516t {

    public static final Unsafe f38758a;

    public static final long f38759b;

    public static final long f38760c;

    public static final long f38761d;

    public static final long f38762e;

    public static final long f38763f;

    static {
        Unsafe unsafe;
        try {
            try {
                unsafe = Unsafe.getUnsafe();
            } catch (PrivilegedActionException e10) {
                throw new RuntimeException("Could not initialize intrinsics", e10.getCause());
            }
        } catch (SecurityException unused) {
            unsafe = (Unsafe) AccessController.doPrivileged(new A());
        }
        try {
            f38760c = unsafe.objectFieldOffset(D.class.getDeclaredField("d"));
            f38759b = unsafe.objectFieldOffset(D.class.getDeclaredField(AbstractC3834c.f32824b1));
            f38761d = unsafe.objectFieldOffset(D.class.getDeclaredField(C15580b.f118629u));
            f38762e = unsafe.objectFieldOffset(C.class.getDeclaredField("a"));
            f38763f = unsafe.objectFieldOffset(C.class.getDeclaredField(C15580b.f118629u));
            f38758a = unsafe;
        } catch (NoSuchFieldException e11) {
            throw new RuntimeException(e11);
        } catch (RuntimeException e12) {
            throw e12;
        }
    }

    @Override
    public final void a(C c10, Thread thread) {
        f38758a.putObject(c10, f38762e, thread);
    }

    @Override
    public final C b(D d10) {
        return (C) f38758a.getAndSetObject(d10, f38760c, C.f39054c);
    }

    @Override
    public final void a(C c10, C c11) {
        f38758a.putObject(c10, f38763f, c11);
    }

    @Override
    public final boolean a(D d10, C c10, C c11) {
        return C5135Ez0.a(f38758a, d10, f38760c, c10, c11);
    }

    @Override
    public final C10184x a(D d10) {
        return (C10184x) f38758a.getAndSetObject(d10, f38759b, C10184x.f53655b);
    }

    @Override
    public final boolean a(D d10, Object obj, Object obj2) {
        return C5135Ez0.a(f38758a, d10, f38761d, obj, obj2);
    }
}
