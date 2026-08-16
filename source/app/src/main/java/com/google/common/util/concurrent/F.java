package com.google.common.util.concurrent;

import com.google.common.util.concurrent.AbstractFuture;
import com.google.common.util.concurrent.C12620k0;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import v2.InterfaceC15800a;
import w2.InterfaceC15902t;

@A
@I2.f("Use FluentFuture.from(Futures.immediate*Future) or SettableFuture")
@v2.b(emulated = true)
public abstract class F<V> extends T<V> {

    public static abstract class a<V> extends F<V> implements AbstractFuture.h<V> {
        @Override
        public final void addListener(Runnable runnable, Executor executor) {
            super.addListener(runnable, executor);
        }

        @Override
        @I2.a
        public final boolean cancel(boolean z10) {
            return super.cancel(z10);
        }

        @Override
        @I2.a
        @InterfaceC12618j0
        public final V get() throws InterruptedException, ExecutionException {
            return (V) super.get();
        }

        @Override
        public final boolean isCancelled() {
            return super.isCancelled();
        }

        @Override
        public final boolean isDone() {
            return super.isDone();
        }

        @Override
        @I2.a
        @InterfaceC12618j0
        public final V get(long j10, TimeUnit timeUnit) throws InterruptedException, ExecutionException, TimeoutException {
            return (V) super.get(j10, timeUnit);
        }
    }

    @Deprecated
    public static <V> F<V> J(F<V> f10) {
        return (F) w2.H.E(f10);
    }

    public static <V> F<V> K(Z<V> z10) {
        return z10 instanceof F ? (F) z10 : new K(z10);
    }

    public final void G(P<? super V> p10, Executor executor) {
        Q.a(this, p10, executor);
    }

    @C12620k0.a("AVAILABLE but requires exceptionType to be Throwable.class")
    @InterfaceC15800a
    public final <X extends Throwable> F<V> H(Class<X> cls, InterfaceC15902t<? super X, ? extends V> interfaceC15902t, Executor executor) {
        return (F) Q.d(this, cls, interfaceC15902t, executor);
    }

    @C12620k0.a("AVAILABLE but requires exceptionType to be Throwable.class")
    @InterfaceC15800a
    public final <X extends Throwable> F<V> I(Class<X> cls, InterfaceC12623m<? super X, ? extends V> interfaceC12623m, Executor executor) {
        return (F) Q.e(this, cls, interfaceC12623m, executor);
    }

    @InterfaceC15800a
    public final <T> F<T> L(InterfaceC15902t<? super V, T> interfaceC15902t, Executor executor) {
        return (F) Q.x(this, interfaceC15902t, executor);
    }

    @InterfaceC15800a
    public final <T> F<T> M(InterfaceC12623m<? super V, T> interfaceC12623m, Executor executor) {
        return (F) Q.y(this, interfaceC12623m, executor);
    }

    @v2.c
    @InterfaceC15800a
    public final F<V> N(long j10, TimeUnit timeUnit, ScheduledExecutorService scheduledExecutorService) {
        return (F) Q.D(this, j10, timeUnit, scheduledExecutorService);
    }
}
