package com.android.tools.r8.internal;

import java.util.concurrent.Callable;
import java.util.concurrent.RunnableFuture;
import java.util.concurrent.locks.LockSupport;

public final class RunnableFutureC8829ot0 extends AbstractC5883Rx implements RunnableFuture {

    public volatile C8662nt0 f51376i;

    public RunnableFutureC8829ot0(Callable callable) {
        this.f51376i = new C8662nt0(this, callable);
    }

    @Override
    public final void a() {
        C8662nt0 c8662nt0;
        Object obj = this.f39401b;
        if ((obj instanceof C9683u) && ((C9683u) obj).f52756a && (c8662nt0 = this.f51376i) != null) {
            Runnable runnable = (Runnable) c8662nt0.get();
            if (runnable instanceof Thread) {
                RunnableC10573zJ runnableC10573zJ = new RunnableC10573zJ(c8662nt0);
                RunnableC10573zJ.a(runnableC10573zJ, Thread.currentThread());
                if (androidx.lifecycle.c.a(c8662nt0, runnable, runnableC10573zJ)) {
                    try {
                        ((Thread) runnable).interrupt();
                    } finally {
                        if (((Runnable) c8662nt0.getAndSet(BJ.f38877b)) == BJ.f38878c) {
                            LockSupport.unpark((Thread) runnable);
                        }
                    }
                }
            }
        }
        this.f51376i = null;
    }

    @Override
    public final String b() {
        C8662nt0 c8662nt0 = this.f51376i;
        if (c8662nt0 == null) {
            return super.b();
        }
        return "task=[" + ((Object) c8662nt0) + "]";
    }

    @Override
    public final void run() {
        C8662nt0 c8662nt0 = this.f51376i;
        if (c8662nt0 != null) {
            c8662nt0.run();
        }
        this.f51376i = null;
    }
}
