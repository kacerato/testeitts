package com.google.common.util.concurrent;

import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.locks.AbstractOwnableSynchronizer;
import java.util.concurrent.locks.LockSupport;
import q3.f;

@A
@q3.f(f.a.FULL)
@v2.b(emulated = true)
public abstract class W<T> extends AtomicReference<Runnable> implements Runnable {

    public static final Runnable f67350b;

    public static final Runnable f67351c;

    public static final int f67352d = 1000;

    @v2.d
    public static final class b extends AbstractOwnableSynchronizer implements Runnable {

        public final W<?> f67353b;

        public final void b(Thread thread) {
            super.setExclusiveOwnerThread(thread);
        }

        @Override
        public void run() {
        }

        public String toString() {
            return this.f67353b.toString();
        }

        public b(W<?> w10) {
            this.f67353b = w10;
        }
    }

    public static final class c implements Runnable {
        public c() {
        }

        @Override
        public void run() {
        }
    }

    static {
        f67350b = new c();
        f67351c = new c();
    }

    public abstract void a(Throwable th2);

    public abstract void b(@InterfaceC12618j0 T t10);

    public final void c() {
        Runnable runnable = get();
        if (runnable instanceof Thread) {
            b bVar = new b();
            bVar.b(Thread.currentThread());
            if (compareAndSet(runnable, bVar)) {
                try {
                    ((Thread) runnable).interrupt();
                } finally {
                    if (getAndSet(f67350b) == f67351c) {
                        LockSupport.unpark((Thread) runnable);
                    }
                }
            }
        }
    }

    public abstract boolean d();

    @InterfaceC12618j0
    public abstract T e() throws Exception;

    public abstract String f();

    public final void h(Thread thread) {
        Runnable runnable = get();
        b bVar = null;
        boolean z10 = false;
        int i10 = 0;
        while (true) {
            boolean z11 = runnable instanceof b;
            if (!z11 && runnable != f67351c) {
                break;
            }
            if (z11) {
                bVar = (b) runnable;
            }
            i10++;
            if (i10 > 1000) {
                Runnable runnable2 = f67351c;
                if (runnable == runnable2 || compareAndSet(runnable, runnable2)) {
                    z10 = Thread.interrupted() || z10;
                    LockSupport.park(bVar);
                }
            } else {
                Thread.yield();
            }
            runnable = get();
        }
        if (z10) {
            thread.interrupt();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public final void run() {
        Thread currentThread = Thread.currentThread();
        Object obj = null;
        if (compareAndSet(null, currentThread)) {
            boolean d10 = d();
            if (!d10) {
                try {
                    obj = e();
                } catch (Throwable th2) {
                    if (!compareAndSet(currentThread, f67350b)) {
                        h(currentThread);
                    }
                    if (d10) {
                        return;
                    }
                    a(th2);
                    return;
                }
            }
            if (!compareAndSet(currentThread, f67350b)) {
                h(currentThread);
            }
            if (d10) {
                return;
            }
            b(C12614h0.a(obj));
        }
    }

    @Override
    public final String toString() {
        String str;
        Runnable runnable = get();
        if (runnable == f67350b) {
            str = "running=[DONE]";
        } else if (runnable instanceof b) {
            str = "running=[INTERRUPTED]";
        } else if (runnable instanceof Thread) {
            String name = ((Thread) runnable).getName();
            StringBuilder sb2 = new StringBuilder(String.valueOf(name).length() + 21);
            sb2.append("running=[RUNNING ON ");
            sb2.append(name);
            sb2.append("]");
            str = sb2.toString();
        } else {
            str = "running=[NOT STARTED YET]";
        }
        String f10 = f();
        StringBuilder sb3 = new StringBuilder(String.valueOf(str).length() + 2 + String.valueOf(f10).length());
        sb3.append(str);
        sb3.append(", ");
        sb3.append(f10);
        return sb3.toString();
    }
}
