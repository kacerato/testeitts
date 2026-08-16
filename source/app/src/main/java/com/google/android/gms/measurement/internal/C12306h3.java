package com.google.android.gms.measurement.internal;

import androidx.annotation.Nullable;
import java.lang.Thread;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.Callable;
import java.util.concurrent.Future;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.Semaphore;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;

public final class C12306h3 extends T3 {

    public static final AtomicLong f63320l = new AtomicLong(Long.MIN_VALUE);

    @Nullable
    public C12298g3 f63321c;

    @Nullable
    public C12298g3 f63322d;

    public final PriorityBlockingQueue f63323e;

    public final BlockingQueue f63324f;

    public final Thread.UncaughtExceptionHandler f63325g;

    public final Thread.UncaughtExceptionHandler f63326h;

    public final Object f63327i;

    public final Semaphore f63328j;

    public volatile boolean f63329k;

    public C12306h3(C12370p3 c12370p3) {
        super(c12370p3);
        this.f63327i = new Object();
        this.f63328j = new Semaphore(2);
        this.f63323e = new PriorityBlockingQueue();
        this.f63324f = new LinkedBlockingQueue();
        this.f63325g = new C12282e3(this, "Thread death: Uncaught exception on worker thread");
        this.f63326h = new C12282e3(this, "Thread death: Uncaught exception on network thread");
    }

    public final void A(C12298g3 c12298g3) {
        this.f63322d = null;
    }

    public final Object B() {
        return this.f63327i;
    }

    public final Semaphore C() {
        return this.f63328j;
    }

    public final boolean D() {
        return false;
    }

    public final void F(C12290f3 c12290f3) {
        synchronized (this.f63327i) {
            try {
                PriorityBlockingQueue priorityBlockingQueue = this.f63323e;
                priorityBlockingQueue.add(c12290f3);
                C12298g3 c12298g3 = this.f63321c;
                if (c12298g3 == null) {
                    C12298g3 c12298g32 = new C12298g3(this, "Measurement Worker", priorityBlockingQueue);
                    this.f63321c = c12298g32;
                    c12298g32.setUncaughtExceptionHandler(this.f63325g);
                    this.f63321c.start();
                } else {
                    c12298g3.a();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override
    public final void g() {
        if (Thread.currentThread() != this.f63322d) {
            throw new IllegalStateException("Call expected from network thread");
        }
    }

    @Override
    public final void h() {
        if (Thread.currentThread() != this.f63321c) {
            throw new IllegalStateException("Call expected from worker thread");
        }
    }

    @Override
    public final boolean i() {
        return false;
    }

    public final void o() {
        if (Thread.currentThread() == this.f63321c) {
            throw new IllegalStateException("Call not expected from worker thread");
        }
    }

    public final boolean p() {
        return Thread.currentThread() == this.f63321c;
    }

    public final boolean q() {
        return Thread.currentThread() == this.f63322d;
    }

    public final Future r(Callable callable) throws IllegalStateException {
        l();
        G0.A.r(callable);
        C12290f3 c12290f3 = new C12290f3(this, callable, false, "Task exception on worker thread");
        if (Thread.currentThread() == this.f63321c) {
            if (!this.f63323e.isEmpty()) {
                this.f62917a.a().r().a("Callable skipped the worker queue.");
            }
            c12290f3.run();
        } else {
            F(c12290f3);
        }
        return c12290f3;
    }

    public final Future s(Callable callable) throws IllegalStateException {
        l();
        G0.A.r(callable);
        C12290f3 c12290f3 = new C12290f3(this, callable, true, "Task exception on worker thread");
        if (Thread.currentThread() == this.f63321c) {
            c12290f3.run();
        } else {
            F(c12290f3);
        }
        return c12290f3;
    }

    public final void t(Runnable runnable) throws IllegalStateException {
        l();
        G0.A.r(runnable);
        F(new C12290f3(this, runnable, false, "Task exception on worker thread"));
    }

    @Nullable
    public final Object u(AtomicReference atomicReference, long j10, String str, Runnable runnable) {
        synchronized (atomicReference) {
            this.f62917a.b().t(runnable);
            try {
                atomicReference.wait(j10);
            } catch (InterruptedException unused) {
                C12448z2 r10 = this.f62917a.a().r();
                StringBuilder sb2 = new StringBuilder(str.length() + 24);
                sb2.append("Interrupted waiting for ");
                sb2.append(str);
                r10.a(sb2.toString());
                return null;
            }
        }
        Object obj = atomicReference.get();
        if (obj == null) {
            this.f62917a.a().r().a("Timed out waiting for ".concat(str));
        }
        return obj;
    }

    public final void v(Runnable runnable) throws IllegalStateException {
        l();
        G0.A.r(runnable);
        F(new C12290f3(this, runnable, true, "Task exception on worker thread"));
    }

    public final void w(Runnable runnable) throws IllegalStateException {
        l();
        G0.A.r(runnable);
        C12290f3 c12290f3 = new C12290f3(this, runnable, false, "Task exception on network thread");
        synchronized (this.f63327i) {
            try {
                BlockingQueue blockingQueue = this.f63324f;
                blockingQueue.add(c12290f3);
                C12298g3 c12298g3 = this.f63322d;
                if (c12298g3 == null) {
                    C12298g3 c12298g32 = new C12298g3(this, "Measurement Network", blockingQueue);
                    this.f63322d = c12298g32;
                    c12298g32.setUncaughtExceptionHandler(this.f63326h);
                    this.f63322d.start();
                } else {
                    c12298g3.a();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final C12298g3 x() {
        return this.f63321c;
    }

    public final void y(C12298g3 c12298g3) {
        this.f63321c = null;
    }

    public final C12298g3 z() {
        return this.f63322d;
    }
}
