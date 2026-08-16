package com.google.android.gms.measurement.internal;

import android.app.job.JobInfo;
import android.os.Process;
import androidx.annotation.GuardedBy;
import java.util.Objects;
import java.util.concurrent.BlockingQueue;

public final class C12298g3 extends Thread {

    public final Object f63303b;

    public final BlockingQueue f63304c;

    @GuardedBy("threadLifeCycleLock")
    public boolean f63305d;

    public final C12306h3 f63306e;

    public C12298g3(C12306h3 c12306h3, String str, BlockingQueue blockingQueue) {
        Objects.requireNonNull(c12306h3);
        this.f63306e = c12306h3;
        this.f63305d = false;
        G0.A.r(str);
        G0.A.r(blockingQueue);
        this.f63303b = new Object();
        this.f63304c = blockingQueue;
        setName(str);
    }

    public final void a() {
        Object obj = this.f63303b;
        synchronized (obj) {
            obj.notifyAll();
        }
    }

    public final void b() {
        C12306h3 c12306h3 = this.f63306e;
        synchronized (c12306h3.B()) {
            try {
                if (!this.f63305d) {
                    c12306h3.C().release();
                    c12306h3.B().notifyAll();
                    if (this == c12306h3.x()) {
                        c12306h3.y(null);
                    } else if (this == c12306h3.z()) {
                        c12306h3.A(null);
                    } else {
                        c12306h3.f62917a.a().o().a("Current scheduler thread is neither worker nor network");
                    }
                    this.f63305d = true;
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final void c(InterruptedException interruptedException) {
        this.f63306e.f62917a.a().r().b(String.valueOf(getName()).concat(" was interrupted"), interruptedException);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public final void run() {
        boolean z10 = false;
        while (!z10) {
            try {
                this.f63306e.C().acquire();
                z10 = true;
            } catch (InterruptedException e10) {
                c(e10);
            }
        }
        try {
            int threadPriority = Process.getThreadPriority(Process.myTid());
            while (true) {
                BlockingQueue blockingQueue = this.f63304c;
                C12290f3 c12290f3 = (C12290f3) blockingQueue.poll();
                if (c12290f3 != null) {
                    Process.setThreadPriority(true != c12290f3.f63271c ? 10 : threadPriority);
                    c12290f3.run();
                } else {
                    Object obj = this.f63303b;
                    synchronized (obj) {
                        if (blockingQueue.peek() == 0) {
                            this.f63306e.D();
                            try {
                                obj.wait(JobInfo.DEFAULT_INITIAL_BACKOFF_MILLIS);
                            } catch (InterruptedException e11) {
                                c(e11);
                            }
                        }
                    }
                    synchronized (this.f63306e.B()) {
                        if (this.f63304c.peek() == 0) {
                            b();
                            b();
                            return;
                        }
                    }
                }
            }
        } catch (Throwable th2) {
            b();
            throw th2;
        }
    }
}
