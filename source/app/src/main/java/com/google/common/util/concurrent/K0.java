package com.google.common.util.concurrent;

import java.util.concurrent.Callable;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;

@I2.a
@A
@v2.c
public abstract class K0 extends J0 implements ScheduledExecutorService {

    public final ScheduledExecutorService f67300c;

    public K0(ScheduledExecutorService scheduledExecutorService) {
        super(scheduledExecutorService);
        this.f67300c = scheduledExecutorService;
    }

    @Override
    public final ScheduledFuture<?> schedule(Runnable runnable, long j10, TimeUnit timeUnit) {
        return this.f67300c.schedule(c(runnable), j10, timeUnit);
    }

    @Override
    public final ScheduledFuture<?> scheduleAtFixedRate(Runnable runnable, long j10, long j11, TimeUnit timeUnit) {
        return this.f67300c.scheduleAtFixedRate(c(runnable), j10, j11, timeUnit);
    }

    @Override
    public final ScheduledFuture<?> scheduleWithFixedDelay(Runnable runnable, long j10, long j11, TimeUnit timeUnit) {
        return this.f67300c.scheduleWithFixedDelay(c(runnable), j10, j11, timeUnit);
    }

    @Override
    public final <V> ScheduledFuture<V> schedule(Callable<V> callable, long j10, TimeUnit timeUnit) {
        return this.f67300c.schedule(d(callable), j10, timeUnit);
    }
}
