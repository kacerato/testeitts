package com.google.common.util.concurrent;

import java.util.Collection;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;

@A
@v2.c
@I2.f("Use TestingExecutors.sameThreadScheduledExecutor, or wrap a real Executor from java.util.concurrent.Executors with MoreExecutors.listeningDecorator")
public interface InterfaceExecutorServiceC12606d0 extends ExecutorService {
    @Override
    <T> List<Future<T>> invokeAll(Collection<? extends Callable<T>> collection) throws InterruptedException;

    @Override
    <T> List<Future<T>> invokeAll(Collection<? extends Callable<T>> collection, long j10, TimeUnit timeUnit) throws InterruptedException;

    @Override
    Z<?> submit(Runnable runnable);

    @Override
    <T> Z<T> submit(Runnable runnable, @InterfaceC12618j0 T t10);

    @Override
    <T> Z<T> submit(Callable<T> callable);

    @Override
    default Future submit(Runnable runnable, @InterfaceC12618j0 Object obj) {
        return submit(runnable, (Runnable) obj);
    }
}
