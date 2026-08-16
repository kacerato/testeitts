package com.google.common.util.concurrent;

import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

@A
@v2.b
public final class K<V> extends F<V> {

    public final Z<V> f67299j;

    public K(Z<V> z10) {
        this.f67299j = (Z) w2.H.E(z10);
    }

    @Override
    public void addListener(Runnable runnable, Executor executor) {
        this.f67299j.addListener(runnable, executor);
    }

    @Override
    public boolean cancel(boolean z10) {
        return this.f67299j.cancel(z10);
    }

    @Override
    @InterfaceC12618j0
    public V get() throws InterruptedException, ExecutionException {
        return this.f67299j.get();
    }

    @Override
    public boolean isCancelled() {
        return this.f67299j.isCancelled();
    }

    @Override
    public boolean isDone() {
        return this.f67299j.isDone();
    }

    @Override
    public String toString() {
        return this.f67299j.toString();
    }

    @Override
    @InterfaceC12618j0
    public V get(long j10, TimeUnit timeUnit) throws InterruptedException, ExecutionException, TimeoutException {
        return this.f67299j.get(j10, timeUnit);
    }
}
