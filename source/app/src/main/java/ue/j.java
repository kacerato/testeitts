package Ue;

import io.reactivex.exceptions.ProtocolViolationException;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

public enum j implements hn.d {
    CANCELLED;

    public static boolean a(AtomicReference<hn.d> atomicReference) {
        hn.d andSet;
        hn.d dVar = atomicReference.get();
        j jVar = CANCELLED;
        if (dVar == jVar || (andSet = atomicReference.getAndSet(jVar)) == jVar) {
            return false;
        }
        if (andSet == null) {
            return true;
        }
        andSet.cancel();
        return true;
    }

    public static void b(AtomicReference<hn.d> atomicReference, AtomicLong atomicLong, long j10) {
        hn.d dVar = atomicReference.get();
        if (dVar != null) {
            dVar.i(j10);
            return;
        }
        if (m(j10)) {
            io.reactivex.internal.util.d.a(atomicLong, j10);
            hn.d dVar2 = atomicReference.get();
            if (dVar2 != null) {
                long andSet = atomicLong.getAndSet(0L);
                if (andSet != 0) {
                    dVar2.i(andSet);
                }
            }
        }
    }

    public static boolean c(AtomicReference<hn.d> atomicReference, AtomicLong atomicLong, hn.d dVar) {
        if (!j(atomicReference, dVar)) {
            return false;
        }
        long andSet = atomicLong.getAndSet(0L);
        if (andSet == 0) {
            return true;
        }
        dVar.i(andSet);
        return true;
    }

    public static boolean d(AtomicReference<hn.d> atomicReference, hn.d dVar) {
        hn.d dVar2;
        do {
            dVar2 = atomicReference.get();
            if (dVar2 == CANCELLED) {
                if (dVar == null) {
                    return false;
                }
                dVar.cancel();
                return false;
            }
        } while (!androidx.lifecycle.c.a(atomicReference, dVar2, dVar));
        return true;
    }

    public static void e(long j10) {
        Ye.a.Y(new ProtocolViolationException("More produced than requested: " + j10));
    }

    public static void g() {
        Ye.a.Y(new ProtocolViolationException("Subscription already set!"));
    }

    public static boolean h(AtomicReference<hn.d> atomicReference, hn.d dVar) {
        hn.d dVar2;
        do {
            dVar2 = atomicReference.get();
            if (dVar2 == CANCELLED) {
                if (dVar == null) {
                    return false;
                }
                dVar.cancel();
                return false;
            }
        } while (!androidx.lifecycle.c.a(atomicReference, dVar2, dVar));
        if (dVar2 == null) {
            return true;
        }
        dVar2.cancel();
        return true;
    }

    public static boolean j(AtomicReference<hn.d> atomicReference, hn.d dVar) {
        He.b.g(dVar, "s is null");
        if (androidx.lifecycle.c.a(atomicReference, null, dVar)) {
            return true;
        }
        dVar.cancel();
        if (atomicReference.get() == CANCELLED) {
            return false;
        }
        g();
        return false;
    }

    public static boolean k(AtomicReference<hn.d> atomicReference, hn.d dVar, long j10) {
        if (!j(atomicReference, dVar)) {
            return false;
        }
        dVar.i(j10);
        return true;
    }

    public static boolean m(long j10) {
        if (j10 > 0) {
            return true;
        }
        Ye.a.Y(new IllegalArgumentException("n > 0 required but it was " + j10));
        return false;
    }

    public static boolean o(hn.d dVar, hn.d dVar2) {
        if (dVar2 == null) {
            Ye.a.Y(new NullPointerException("next is null"));
            return false;
        }
        if (dVar == null) {
            return true;
        }
        dVar2.cancel();
        g();
        return false;
    }

    @Override
    public void cancel() {
    }

    @Override
    public void i(long j10) {
    }
}
