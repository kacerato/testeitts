package com.google.common.util.concurrent;

import java.util.concurrent.Callable;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;

@A
@v2.c
public interface InterfaceScheduledExecutorServiceC12608e0 extends ScheduledExecutorService, InterfaceExecutorServiceC12606d0 {
    @Override
    InterfaceScheduledFutureC12602b0<?> schedule(Runnable runnable, long j10, TimeUnit timeUnit);

    @Override
    <V> InterfaceScheduledFutureC12602b0<V> schedule(Callable<V> callable, long j10, TimeUnit timeUnit);

    @Override
    InterfaceScheduledFutureC12602b0<?> scheduleAtFixedRate(Runnable runnable, long j10, long j11, TimeUnit timeUnit);

    @Override
    InterfaceScheduledFutureC12602b0<?> scheduleWithFixedDelay(Runnable runnable, long j10, long j11, TimeUnit timeUnit);
}
