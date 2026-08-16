package com.google.common.util.concurrent;

import java.util.concurrent.AbstractExecutorService;
import java.util.concurrent.Callable;
import java.util.concurrent.Future;
import java.util.concurrent.RunnableFuture;
import v2.InterfaceC15800a;

@I2.a
@A
@v2.c
@InterfaceC15800a
public abstract class AbstractC12605d extends AbstractExecutorService implements InterfaceExecutorServiceC12606d0 {
    @Override
    public final <T> RunnableFuture<T> newTaskFor(Runnable runnable, @InterfaceC12618j0 T t10) {
        return F0.P(runnable, t10);
    }

    @Override
    public final <T> RunnableFuture<T> newTaskFor(Callable<T> callable) {
        return F0.Q(callable);
    }

    @Override
    public Future submit(Runnable runnable, @InterfaceC12618j0 Object obj) {
        return submit(runnable, (Runnable) obj);
    }

    @Override
    public Z<?> submit(Runnable runnable) {
        return (Z) super.submit(runnable);
    }

    @Override
    public <T> Z<T> submit(Runnable runnable, @InterfaceC12618j0 T t10) {
        return (Z) super.submit(runnable, (Runnable) t10);
    }

    @Override
    public <T> Z<T> submit(Callable<T> callable) {
        return (Z) super.submit((Callable) callable);
    }
}
