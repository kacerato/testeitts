package io.reactivex.internal.util;

import Be.I;
import io.reactivex.exceptions.MissingBackpressureException;
import java.util.Queue;
import java.util.concurrent.atomic.AtomicLong;

public final class u {

    public static final long f92460a = Long.MIN_VALUE;

    public static final long f92461b = Long.MAX_VALUE;

    public u() {
        throw new IllegalStateException("No instances!");
    }

    public static <T, U> boolean a(boolean z10, boolean z11, I<?> i10, boolean z12, Ie.o<?> oVar, De.c cVar, q<T, U> qVar) {
        if (qVar.k()) {
            oVar.clear();
            cVar.dispose();
            return true;
        }
        if (!z10) {
            return false;
        }
        if (z12) {
            if (!z11) {
                return false;
            }
            if (cVar != null) {
                cVar.dispose();
            }
            Throwable b10 = qVar.b();
            if (b10 != null) {
                i10.onError(b10);
            } else {
                i10.a();
            }
            return true;
        }
        Throwable b11 = qVar.b();
        if (b11 != null) {
            oVar.clear();
            if (cVar != null) {
                cVar.dispose();
            }
            i10.onError(b11);
            return true;
        }
        if (!z11) {
            return false;
        }
        if (cVar != null) {
            cVar.dispose();
        }
        i10.a();
        return true;
    }

    public static <T, U> boolean b(boolean z10, boolean z11, hn.c<?> cVar, boolean z12, Ie.o<?> oVar, t<T, U> tVar) {
        if (tVar.k()) {
            oVar.clear();
            return true;
        }
        if (!z10) {
            return false;
        }
        if (z12) {
            if (!z11) {
                return false;
            }
            Throwable b10 = tVar.b();
            if (b10 != null) {
                cVar.onError(b10);
            } else {
                cVar.a();
            }
            return true;
        }
        Throwable b11 = tVar.b();
        if (b11 != null) {
            oVar.clear();
            cVar.onError(b11);
            return true;
        }
        if (!z11) {
            return false;
        }
        cVar.a();
        return true;
    }

    public static <T> Ie.o<T> c(int i10) {
        return i10 < 0 ? new Re.c(-i10) : new Re.b(i10);
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x0033, code lost:
    
        r1 = r15.c(-r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0038, code lost:
    
        if (r1 != 0) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x003a, code lost:
    
        return;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static <T, U> void d(Ie.n<T> nVar, I<? super U> i10, boolean z10, De.c cVar, q<T, U> qVar) {
        int i11 = 1;
        while (!a(qVar.done(), nVar.isEmpty(), i10, z10, nVar, cVar, qVar)) {
            while (true) {
                boolean done = qVar.done();
                T poll = nVar.poll();
                boolean z11 = poll == null;
                if (a(done, z11, i10, z10, nVar, cVar, qVar)) {
                    return;
                }
                if (z11) {
                    break;
                } else {
                    qVar.l(i10, poll);
                }
            }
        }
    }

    public static <T, U> void e(Ie.n<T> nVar, hn.c<? super U> cVar, boolean z10, De.c cVar2, t<T, U> tVar) {
        int i10 = 1;
        while (true) {
            boolean done = tVar.done();
            T poll = nVar.poll();
            boolean z11 = poll == null;
            if (b(done, z11, cVar, z10, nVar, tVar)) {
                if (cVar2 != null) {
                    cVar2.dispose();
                    return;
                }
                return;
            } else if (z11) {
                i10 = tVar.c(-i10);
                if (i10 == 0) {
                    return;
                }
            } else {
                long l10 = tVar.l();
                if (l10 == 0) {
                    nVar.clear();
                    if (cVar2 != null) {
                        cVar2.dispose();
                    }
                    cVar.onError(new MissingBackpressureException("Could not emit value due to lack of requests."));
                    return;
                }
                if (tVar.e(cVar, poll) && l10 != Long.MAX_VALUE) {
                    tVar.m(1L);
                }
            }
        }
    }

    public static boolean f(Fe.e eVar) {
        try {
            return eVar.getAsBoolean();
        } catch (Throwable th2) {
            io.reactivex.exceptions.a.b(th2);
            return true;
        }
    }

    public static <T> void g(hn.c<? super T> cVar, Queue<T> queue, AtomicLong atomicLong, Fe.e eVar) {
        long j10;
        long j11;
        if (queue.isEmpty()) {
            cVar.a();
            return;
        }
        if (h(atomicLong.get(), cVar, queue, atomicLong, eVar)) {
            return;
        }
        do {
            j10 = atomicLong.get();
            if ((j10 & Long.MIN_VALUE) != 0) {
                return;
            } else {
                j11 = j10 | Long.MIN_VALUE;
            }
        } while (!atomicLong.compareAndSet(j10, j11));
        if (j10 != 0) {
            h(j11, cVar, queue, atomicLong, eVar);
        }
    }

    public static <T> boolean h(long j10, hn.c<? super T> cVar, Queue<T> queue, AtomicLong atomicLong, Fe.e eVar) {
        long j11 = j10 & Long.MIN_VALUE;
        while (true) {
            if (j11 != j10) {
                if (f(eVar)) {
                    return true;
                }
                T poll = queue.poll();
                if (poll == null) {
                    cVar.a();
                    return true;
                }
                cVar.h(poll);
                j11++;
            } else {
                if (f(eVar)) {
                    return true;
                }
                if (queue.isEmpty()) {
                    cVar.a();
                    return true;
                }
                j10 = atomicLong.get();
                if (j10 == j11) {
                    long addAndGet = atomicLong.addAndGet(-(j11 & Long.MAX_VALUE));
                    if ((Long.MAX_VALUE & addAndGet) == 0) {
                        return false;
                    }
                    j10 = addAndGet;
                    j11 = addAndGet & Long.MIN_VALUE;
                } else {
                    continue;
                }
            }
        }
    }

    public static <T> boolean i(long j10, hn.c<? super T> cVar, Queue<T> queue, AtomicLong atomicLong, Fe.e eVar) {
        long j11;
        do {
            j11 = atomicLong.get();
        } while (!atomicLong.compareAndSet(j11, d.c(Long.MAX_VALUE & j11, j10) | (j11 & Long.MIN_VALUE)));
        if (j11 != Long.MIN_VALUE) {
            return false;
        }
        h(j10 | Long.MIN_VALUE, cVar, queue, atomicLong, eVar);
        return true;
    }

    public static void j(hn.d dVar, int i10) {
        dVar.i(i10 < 0 ? Long.MAX_VALUE : i10);
    }
}
