package com.android.tools.r8.internal;

import java.util.Collections;
import java.util.List;
import java.util.concurrent.AbstractExecutorService;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.RunnableFuture;
import java.util.concurrent.TimeUnit;

public final class ZX extends AbstractExecutorService implements ExecutorService {

    public final Object f46257a = new Object();

    public int f46258b = 0;

    public boolean f46259c = false;

    public final void a() {
        synchronized (this.f46257a) {
            try {
                int i10 = this.f46258b - 1;
                this.f46258b = i10;
                if (i10 == 0) {
                    this.f46257a.notifyAll();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override
    public final boolean awaitTermination(long j10, TimeUnit timeUnit) {
        long nanos = timeUnit.toNanos(j10);
        synchronized (this.f46257a) {
            while (true) {
                try {
                    if (this.f46259c && this.f46258b == 0) {
                        return true;
                    }
                    if (nanos <= 0) {
                        return false;
                    }
                    long nanoTime = System.nanoTime();
                    TimeUnit.NANOSECONDS.timedWait(this.f46257a, nanos);
                    nanos -= System.nanoTime() - nanoTime;
                } catch (Throwable th2) {
                    throw th2;
                }
            }
        }
    }

    @Override
    public final void execute(Runnable runnable) {
        synchronized (this.f46257a) {
            if (this.f46259c) {
                throw new RejectedExecutionException("Executor already shutdown");
            }
            this.f46258b++;
        }
        try {
            runnable.run();
        } finally {
            a();
        }
    }

    @Override
    public final boolean isShutdown() {
        boolean z10;
        synchronized (this.f46257a) {
            z10 = this.f46259c;
        }
        return z10;
    }

    @Override
    public final boolean isTerminated() {
        boolean z10;
        synchronized (this.f46257a) {
            try {
                z10 = this.f46259c && this.f46258b == 0;
            } finally {
            }
        }
        return z10;
    }

    @Override
    public final RunnableFuture newTaskFor(Callable callable) {
        return new RunnableFutureC8829ot0(callable);
    }

    @Override
    public final void shutdown() {
        synchronized (this.f46257a) {
            try {
                this.f46259c = true;
                if (this.f46258b == 0) {
                    this.f46257a.notifyAll();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override
    public final List shutdownNow() {
        shutdown();
        return Collections.EMPTY_LIST;
    }

    @Override
    public final Future submit(Runnable runnable) {
        return (BT) super.submit(runnable);
    }

    @Override
    public final RunnableFuture newTaskFor(Runnable runnable, Object obj) {
        return new RunnableFutureC8829ot0(Executors.callable(runnable, obj));
    }

    @Override
    public final Future submit(Runnable runnable, Object obj) {
        return (BT) super.submit(runnable, obj);
    }

    @Override
    public final Future submit(Callable callable) {
        return (BT) super.submit(callable);
    }
}
