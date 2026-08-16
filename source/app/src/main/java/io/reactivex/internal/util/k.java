package io.reactivex.internal.util;

import Be.I;
import java.util.concurrent.atomic.AtomicInteger;

public final class k {
    public k() {
        throw new IllegalStateException("No instances!");
    }

    public static void a(I<?> i10, AtomicInteger atomicInteger, c cVar) {
        if (atomicInteger.getAndIncrement() == 0) {
            Throwable c10 = cVar.c();
            if (c10 != null) {
                i10.onError(c10);
            } else {
                i10.a();
            }
        }
    }

    public static void b(hn.c<?> cVar, AtomicInteger atomicInteger, c cVar2) {
        if (atomicInteger.getAndIncrement() == 0) {
            Throwable c10 = cVar2.c();
            if (c10 != null) {
                cVar.onError(c10);
            } else {
                cVar.a();
            }
        }
    }

    public static void c(I<?> i10, Throwable th2, AtomicInteger atomicInteger, c cVar) {
        if (!cVar.a(th2)) {
            Ye.a.Y(th2);
        } else if (atomicInteger.getAndIncrement() == 0) {
            i10.onError(cVar.c());
        }
    }

    public static void d(hn.c<?> cVar, Throwable th2, AtomicInteger atomicInteger, c cVar2) {
        if (!cVar2.a(th2)) {
            Ye.a.Y(th2);
        } else if (atomicInteger.getAndIncrement() == 0) {
            cVar.onError(cVar2.c());
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <T> void e(I<? super T> i10, T t10, AtomicInteger atomicInteger, c cVar) {
        if (atomicInteger.get() == 0 && atomicInteger.compareAndSet(0, 1)) {
            i10.h(t10);
            if (atomicInteger.decrementAndGet() != 0) {
                Throwable c10 = cVar.c();
                if (c10 != null) {
                    i10.onError(c10);
                } else {
                    i10.a();
                }
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <T> void f(hn.c<? super T> cVar, T t10, AtomicInteger atomicInteger, c cVar2) {
        if (atomicInteger.get() == 0 && atomicInteger.compareAndSet(0, 1)) {
            cVar.h(t10);
            if (atomicInteger.decrementAndGet() != 0) {
                Throwable c10 = cVar2.c();
                if (c10 != null) {
                    cVar.onError(c10);
                } else {
                    cVar.a();
                }
            }
        }
    }
}
