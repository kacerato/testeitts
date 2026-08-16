package com.google.common.util.concurrent;

import java.util.Collection;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;

@I2.a
@A
@v2.c
public abstract class J extends com.google.common.collect.I0 implements ExecutorService {
    @Override
    public boolean awaitTermination(long j10, TimeUnit timeUnit) throws InterruptedException {
        return k0().awaitTermination(j10, timeUnit);
    }

    @Override
    public void execute(Runnable runnable) {
        k0().execute(runnable);
    }

    @Override
    public <T> List<Future<T>> invokeAll(Collection<? extends Callable<T>> collection) throws InterruptedException {
        return k0().invokeAll(collection);
    }

    @Override
    public <T> T invokeAny(Collection<? extends Callable<T>> collection) throws InterruptedException, ExecutionException {
        return (T) k0().invokeAny(collection);
    }

    @Override
    public boolean isShutdown() {
        return k0().isShutdown();
    }

    @Override
    public boolean isTerminated() {
        return k0().isTerminated();
    }

    @Override
    public abstract ExecutorService k0();

    @Override
    public void shutdown() {
        k0().shutdown();
    }

    @Override
    public List<Runnable> shutdownNow() {
        return k0().shutdownNow();
    }

    @Override
    public <T> Future<T> submit(Callable<T> callable) {
        return k0().submit(callable);
    }

    @Override
    public <T> List<Future<T>> invokeAll(Collection<? extends Callable<T>> collection, long j10, TimeUnit timeUnit) throws InterruptedException {
        return k0().invokeAll(collection, j10, timeUnit);
    }

    @Override
    public <T> T invokeAny(Collection<? extends Callable<T>> collection, long j10, TimeUnit timeUnit) throws InterruptedException, ExecutionException, TimeoutException {
        return (T) k0().invokeAny(collection, j10, timeUnit);
    }

    @Override
    public Future<?> submit(Runnable runnable) {
        return k0().submit(runnable);
    }

    @Override
    public <T> Future<T> submit(Runnable runnable, @InterfaceC12618j0 T t10) {
        return k0().submit(runnable, t10);
    }
}
