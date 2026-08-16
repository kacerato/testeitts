package com.google.common.util.concurrent;

import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

@I2.a
@A
@v2.b
public abstract class L<V> extends com.google.common.collect.I0 implements Future<V> {

    public static abstract class a<V> extends L<V> {

        public final Future<V> f67301b;

        public a(Future<V> future) {
            this.f67301b = (Future) w2.H.E(future);
        }

        @Override
        public final Future<V> k0() {
            return this.f67301b;
        }
    }

    @Override
    public boolean cancel(boolean z10) {
        return k0().cancel(z10);
    }

    @Override
    @InterfaceC12618j0
    public V get() throws InterruptedException, ExecutionException {
        return k0().get();
    }

    @Override
    public boolean isCancelled() {
        return k0().isCancelled();
    }

    @Override
    public boolean isDone() {
        return k0().isDone();
    }

    @Override
    public abstract Future<? extends V> k0();

    @Override
    @InterfaceC12618j0
    public V get(long j10, TimeUnit timeUnit) throws InterruptedException, ExecutionException, TimeoutException {
        return k0().get(j10, timeUnit);
    }
}
