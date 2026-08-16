package Ge;

import io.reactivex.exceptions.ProtocolViolationException;
import java.util.concurrent.atomic.AtomicReference;

public enum d implements De.c {
    DISPOSED;

    public static boolean a(AtomicReference<De.c> atomicReference) {
        De.c andSet;
        De.c cVar = atomicReference.get();
        d dVar = DISPOSED;
        if (cVar == dVar || (andSet = atomicReference.getAndSet(dVar)) == dVar) {
            return false;
        }
        if (andSet == null) {
            return true;
        }
        andSet.dispose();
        return true;
    }

    public static boolean b(De.c cVar) {
        return cVar == DISPOSED;
    }

    public static boolean c(AtomicReference<De.c> atomicReference, De.c cVar) {
        De.c cVar2;
        do {
            cVar2 = atomicReference.get();
            if (cVar2 == DISPOSED) {
                if (cVar == null) {
                    return false;
                }
                cVar.dispose();
                return false;
            }
        } while (!androidx.lifecycle.c.a(atomicReference, cVar2, cVar));
        return true;
    }

    public static void e() {
        Ye.a.Y(new ProtocolViolationException("Disposable already set!"));
    }

    public static boolean g(AtomicReference<De.c> atomicReference, De.c cVar) {
        De.c cVar2;
        do {
            cVar2 = atomicReference.get();
            if (cVar2 == DISPOSED) {
                if (cVar == null) {
                    return false;
                }
                cVar.dispose();
                return false;
            }
        } while (!androidx.lifecycle.c.a(atomicReference, cVar2, cVar));
        if (cVar2 == null) {
            return true;
        }
        cVar2.dispose();
        return true;
    }

    public static boolean h(AtomicReference<De.c> atomicReference, De.c cVar) {
        He.b.g(cVar, "d is null");
        if (androidx.lifecycle.c.a(atomicReference, null, cVar)) {
            return true;
        }
        cVar.dispose();
        if (atomicReference.get() == DISPOSED) {
            return false;
        }
        e();
        return false;
    }

    public static boolean i(AtomicReference<De.c> atomicReference, De.c cVar) {
        if (androidx.lifecycle.c.a(atomicReference, null, cVar)) {
            return true;
        }
        if (atomicReference.get() != DISPOSED) {
            return false;
        }
        cVar.dispose();
        return false;
    }

    public static boolean j(De.c cVar, De.c cVar2) {
        if (cVar2 == null) {
            Ye.a.Y(new NullPointerException("next is null"));
            return false;
        }
        if (cVar == null) {
            return true;
        }
        cVar2.dispose();
        e();
        return false;
    }

    @Override
    public boolean d() {
        return true;
    }

    @Override
    public void dispose() {
    }
}
