package io.reactivex.internal.util;

import io.reactivex.exceptions.ProtocolViolationException;
import java.util.concurrent.atomic.AtomicReference;

public final class i {
    public i() {
        throw new IllegalStateException("No instances!");
    }

    public static String a(String str) {
        return "It is not allowed to subscribe with a(n) " + str + " multiple times. Please create a fresh instance of " + str + " and subscribe that to the target source instead.";
    }

    public static void b(Class<?> cls) {
        Ye.a.Y(new ProtocolViolationException(a(cls.getName())));
    }

    public static boolean c(AtomicReference<De.c> atomicReference, De.c cVar, Class<?> cls) {
        He.b.g(cVar, "next is null");
        if (androidx.lifecycle.c.a(atomicReference, null, cVar)) {
            return true;
        }
        cVar.dispose();
        if (atomicReference.get() == Ge.d.DISPOSED) {
            return false;
        }
        b(cls);
        return false;
    }

    public static boolean d(AtomicReference<hn.d> atomicReference, hn.d dVar, Class<?> cls) {
        He.b.g(dVar, "next is null");
        if (androidx.lifecycle.c.a(atomicReference, null, dVar)) {
            return true;
        }
        dVar.cancel();
        if (atomicReference.get() == Ue.j.CANCELLED) {
            return false;
        }
        b(cls);
        return false;
    }

    public static boolean e(De.c cVar, De.c cVar2, Class<?> cls) {
        He.b.g(cVar2, "next is null");
        if (cVar == null) {
            return true;
        }
        cVar2.dispose();
        if (cVar == Ge.d.DISPOSED) {
            return false;
        }
        b(cls);
        return false;
    }

    public static boolean f(hn.d dVar, hn.d dVar2, Class<?> cls) {
        He.b.g(dVar2, "next is null");
        if (dVar == null) {
            return true;
        }
        dVar2.cancel();
        if (dVar == Ue.j.CANCELLED) {
            return false;
        }
        b(cls);
        return false;
    }
}
