package com.google.common.util.concurrent;

import com.google.common.collect.AbstractC12521g1;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

@I2.a
@A
@v2.c
public abstract class J0 implements ExecutorService {

    public final ExecutorService f67298b;

    public J0(ExecutorService executorService) {
        this.f67298b = (ExecutorService) w2.H.E(executorService);
    }

    public static void b(Callable callable) {
        try {
            callable.call();
        } catch (Exception e10) {
            w2.T.w(e10);
            throw new RuntimeException(e10);
        }
    }

    @Override
    public final boolean awaitTermination(long j10, TimeUnit timeUnit) throws InterruptedException {
        return this.f67298b.awaitTermination(j10, timeUnit);
    }

    public Runnable c(Runnable runnable) {
        final Callable d10 = d(Executors.callable(runnable, null));
        return new Runnable() {
            @Override
            public final void run() {
                J0.b(Callable.this);
            }
        };
    }

    public abstract <T> Callable<T> d(Callable<T> callable);

    public final <T> AbstractC12521g1<Callable<T>> e(Collection<? extends Callable<T>> collection) {
        AbstractC12521g1.a m10 = AbstractC12521g1.m();
        Iterator<? extends Callable<T>> it = collection.iterator();
        while (it.hasNext()) {
            m10.a(d(it.next()));
        }
        return m10.e();
    }

    @Override
    public final void execute(Runnable runnable) {
        this.f67298b.execute(c(runnable));
    }

    @Override
    public final <T> List<Future<T>> invokeAll(Collection<? extends Callable<T>> collection) throws InterruptedException {
        return this.f67298b.invokeAll(e(collection));
    }

    @Override
    public final <T> T invokeAny(Collection<? extends Callable<T>> collection) throws InterruptedException, ExecutionException {
        return (T) this.f67298b.invokeAny(e(collection));
    }

    @Override
    public final boolean isShutdown() {
        return this.f67298b.isShutdown();
    }

    @Override
    public final boolean isTerminated() {
        return this.f67298b.isTerminated();
    }

    @Override
    public final void shutdown() {
        this.f67298b.shutdown();
    }

    @Override
    public final List<Runnable> shutdownNow() {
        return this.f67298b.shutdownNow();
    }

    @Override
    public final <T> Future<T> submit(Callable<T> callable) {
        return this.f67298b.submit(d((Callable) w2.H.E(callable)));
    }

    @Override
    public final <T> List<Future<T>> invokeAll(Collection<? extends Callable<T>> collection, long j10, TimeUnit timeUnit) throws InterruptedException {
        return this.f67298b.invokeAll(e(collection), j10, timeUnit);
    }

    @Override
    public final <T> T invokeAny(Collection<? extends Callable<T>> collection, long j10, TimeUnit timeUnit) throws InterruptedException, ExecutionException, TimeoutException {
        return (T) this.f67298b.invokeAny(e(collection), j10, timeUnit);
    }

    @Override
    public final Future<?> submit(Runnable runnable) {
        return this.f67298b.submit(c(runnable));
    }

    @Override
    public final <T> Future<T> submit(Runnable runnable, @InterfaceC12618j0 T t10) {
        return this.f67298b.submit(c(runnable), t10);
    }
}
