package com.google.common.util.concurrent;

import java.util.Date;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Condition;

@A
public abstract class I implements Condition {
    public abstract Condition a();

    @Override
    public void await() throws InterruptedException {
        a().await();
    }

    @Override
    public long awaitNanos(long j10) throws InterruptedException {
        return a().awaitNanos(j10);
    }

    @Override
    public void awaitUninterruptibly() {
        a().awaitUninterruptibly();
    }

    @Override
    public boolean awaitUntil(Date date) throws InterruptedException {
        return a().awaitUntil(date);
    }

    @Override
    public void signal() {
        a().signal();
    }

    @Override
    public void signalAll() {
        a().signalAll();
    }

    @Override
    public boolean await(long j10, TimeUnit timeUnit) throws InterruptedException {
        return a().await(j10, timeUnit);
    }
}
