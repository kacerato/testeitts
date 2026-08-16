package com.android.tools.r8.internal;

import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.locks.LockSupport;

public abstract class BJ extends AtomicReference implements Runnable {

    public static final AJ f38877b = new AJ();

    public static final AJ f38878c = new AJ();

    public final void a(Thread thread) {
        Runnable runnable = (Runnable) get();
        RunnableC10573zJ runnableC10573zJ = null;
        boolean z10 = false;
        int i10 = 0;
        while (true) {
            boolean z11 = runnable instanceof RunnableC10573zJ;
            if (!z11 && runnable != f38878c) {
                break;
            }
            if (z11) {
                runnableC10573zJ = (RunnableC10573zJ) runnable;
            }
            i10++;
            if (i10 > 1000) {
                AJ aj2 = f38878c;
                if (runnable == aj2 || androidx.lifecycle.c.a(this, runnable, aj2)) {
                    z10 = Thread.interrupted() || z10;
                    LockSupport.park(runnableC10573zJ);
                }
            } else {
                Thread.yield();
            }
            runnable = (Runnable) get();
        }
        if (z10) {
            thread.interrupt();
        }
    }

    @Override
    public final void run() {
        Object call;
        Thread currentThread = Thread.currentThread();
        if (androidx.lifecycle.c.a(this, null, currentThread)) {
            C8662nt0 c8662nt0 = (C8662nt0) this;
            boolean isDone = c8662nt0.f51105e.isDone();
            if (isDone) {
                call = null;
            } else {
                try {
                    call = ((C8662nt0) this).f51104d.call();
                } catch (Throwable th2) {
                    try {
                        if (th2 instanceof InterruptedException) {
                            Thread.currentThread().interrupt();
                        }
                        if (!androidx.lifecycle.c.a(this, currentThread, f38877b)) {
                            a(currentThread);
                        }
                        if (isDone) {
                            return;
                        }
                        RunnableFutureC8829ot0 runnableFutureC8829ot0 = c8662nt0.f51105e;
                        runnableFutureC8829ot0.getClass();
                        if (D.f39399g.a(runnableFutureC8829ot0, (Object) null, new C10017w(th2))) {
                            D.a((D) runnableFutureC8829ot0);
                            return;
                        }
                        return;
                    } catch (Throwable th3) {
                        if (!androidx.lifecycle.c.a(this, currentThread, f38877b)) {
                            a(currentThread);
                        }
                        if (!isDone) {
                            RunnableFutureC8829ot0 runnableFutureC8829ot02 = c8662nt0.f51105e;
                            runnableFutureC8829ot02.getClass();
                            if (D.f39399g.a(runnableFutureC8829ot02, (Object) null, D.f39400h)) {
                                D.a((D) runnableFutureC8829ot02);
                            }
                        }
                        throw th3;
                    }
                }
            }
            if (!androidx.lifecycle.c.a(this, currentThread, f38877b)) {
                a(currentThread);
            }
            if (isDone) {
                return;
            }
            RunnableFutureC8829ot0 runnableFutureC8829ot03 = c8662nt0.f51105e;
            runnableFutureC8829ot03.getClass();
            if (call == null) {
                call = D.f39400h;
            }
            if (D.f39399g.a(runnableFutureC8829ot03, (Object) null, call)) {
                D.a((D) runnableFutureC8829ot03);
            }
        }
    }

    @Override
    public final String toString() {
        String str;
        Runnable runnable = (Runnable) get();
        if (runnable == f38877b) {
            str = "running=[DONE]";
        } else if (runnable instanceof RunnableC10573zJ) {
            str = "running=[INTERRUPTED]";
        } else if (runnable instanceof Thread) {
            str = "running=[RUNNING ON " + ((Thread) runnable).getName() + "]";
        } else {
            str = "running=[NOT STARTED YET]";
        }
        return str + ", " + ((C8662nt0) this).f51104d.toString();
    }
}
