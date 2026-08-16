package com.google.android.gms.measurement.internal;

import androidx.annotation.NonNull;
import java.lang.Thread;
import java.util.Objects;
import java.util.concurrent.Callable;
import java.util.concurrent.FutureTask;
import java.util.concurrent.atomic.AtomicLong;

public final class C12290f3 extends FutureTask implements Comparable {

    public final long f63270b;

    public final boolean f63271c;

    public final String f63272d;

    public final C12306h3 f63273e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C12290f3(C12306h3 c12306h3, Runnable runnable, boolean z10, String str) {
        super(runnable, null);
        AtomicLong atomicLong;
        Objects.requireNonNull(c12306h3);
        this.f63273e = c12306h3;
        G0.A.r(str);
        atomicLong = C12306h3.f63320l;
        long andIncrement = atomicLong.getAndIncrement();
        this.f63270b = andIncrement;
        this.f63272d = str;
        this.f63271c = z10;
        if (andIncrement == Long.MAX_VALUE) {
            c12306h3.f62917a.a().o().a("Tasks index overflow");
        }
    }

    @Override
    public final int compareTo(@NonNull Object obj) {
        C12290f3 c12290f3 = (C12290f3) obj;
        boolean z10 = c12290f3.f63271c;
        boolean z11 = this.f63271c;
        if (z11 == z10) {
            long j10 = this.f63270b;
            long j11 = c12290f3.f63270b;
            if (j10 < j11) {
                return -1;
            }
            if (j10 <= j11) {
                this.f63273e.f62917a.a().p().b("Two tasks share the same index. index", Long.valueOf(j10));
                return 0;
            }
        } else if (z11) {
            return -1;
        }
        return 1;
    }

    @Override
    public final void setException(Throwable th2) {
        Thread.UncaughtExceptionHandler defaultUncaughtExceptionHandler;
        this.f63273e.f62917a.a().o().b(this.f63272d, th2);
        if ((th2 instanceof zzhu) && (defaultUncaughtExceptionHandler = Thread.getDefaultUncaughtExceptionHandler()) != null) {
            defaultUncaughtExceptionHandler.uncaughtException(Thread.currentThread(), th2);
        }
        super.setException(th2);
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C12290f3(C12306h3 c12306h3, Callable callable, boolean z10, String str) {
        super(callable);
        AtomicLong atomicLong;
        Objects.requireNonNull(c12306h3);
        this.f63273e = c12306h3;
        G0.A.r("Task exception on worker thread");
        atomicLong = C12306h3.f63320l;
        long andIncrement = atomicLong.getAndIncrement();
        this.f63270b = andIncrement;
        this.f63272d = "Task exception on worker thread";
        this.f63271c = z10;
        if (andIncrement == Long.MAX_VALUE) {
            c12306h3.f62917a.a().o().a("Tasks index overflow");
        }
    }
}
