package com.google.common.util.concurrent;

import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.Lock;

@A
public abstract class O implements Lock {
    public abstract Lock a();

    @Override
    public void lock() {
        a().lock();
    }

    @Override
    public void lockInterruptibly() throws InterruptedException {
        a().lockInterruptibly();
    }

    @Override
    public Condition newCondition() {
        return a().newCondition();
    }

    @Override
    public boolean tryLock() {
        return a().tryLock();
    }

    @Override
    public void unlock() {
        a().unlock();
    }

    @Override
    public boolean tryLock(long j10, TimeUnit timeUnit) throws InterruptedException {
        return a().tryLock(j10, timeUnit);
    }
}
