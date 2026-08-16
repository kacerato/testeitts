package com.google.common.util.concurrent;

import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.FutureTask;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

@A
@v2.c
public class C12600a0<V> extends FutureTask<V> implements Z<V> {

    public final B f67364b;

    public C12600a0(Callable<V> callable) {
        super(callable);
        this.f67364b = new B();
    }

    public static <V> C12600a0<V> a(Runnable runnable, @InterfaceC12618j0 V v10) {
        return new C12600a0<>(runnable, v10);
    }

    public static <V> C12600a0<V> b(Callable<V> callable) {
        return new C12600a0<>(callable);
    }

    @Override
    public void addListener(Runnable runnable, Executor executor) {
        this.f67364b.a(runnable, executor);
    }

    @Override
    public void done() {
        this.f67364b.b();
    }

    @Override
    @I2.a
    @InterfaceC12618j0
    public V get(long j10, TimeUnit timeUnit) throws TimeoutException, InterruptedException, ExecutionException {
        long nanos = timeUnit.toNanos(j10);
        return nanos <= C12616i0.f67474a ? (V) super.get(j10, timeUnit) : (V) super.get(Math.min(nanos, C12616i0.f67474a), TimeUnit.NANOSECONDS);
    }

    public C12600a0(Runnable runnable, @InterfaceC12618j0 V v10) {
        super(runnable, v10);
        this.f67364b = new B();
    }
}
