package com.jme3.app;

import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.ReentrantLock;
import java.util.logging.Level;
import java.util.logging.Logger;

public class AppTask<V> implements Future<V> {
    private static final Logger logger = Logger.getLogger(AppTask.class.getName());
    private final Callable<V> callable;
    private boolean cancelled;
    private ExecutionException exception;
    private boolean finished;
    private final Condition finishedCondition;
    private V result;
    private final ReentrantLock stateLock;

    public AppTask(Callable<V> callable) {
        ReentrantLock reentrantLock = new ReentrantLock();
        this.stateLock = reentrantLock;
        this.finishedCondition = reentrantLock.newCondition();
        this.callable = callable;
    }

    @Override
    public boolean cancel(boolean z10) {
        this.stateLock.lock();
        try {
            if (this.result != null) {
                this.stateLock.unlock();
                return false;
            }
            this.cancelled = true;
            this.finishedCondition.signalAll();
            return true;
        } finally {
            this.stateLock.unlock();
        }
    }

    @Override
    public V get() throws InterruptedException, ExecutionException {
        this.stateLock.lock();
        while (!isDone()) {
            try {
                this.finishedCondition.await();
            } catch (Throwable th2) {
                this.stateLock.unlock();
                throw th2;
            }
        }
        ExecutionException executionException = this.exception;
        if (executionException == null) {
            V v10 = this.result;
            this.stateLock.unlock();
            return v10;
        }
        throw executionException;
    }

    public Callable<V> getCallable() {
        return this.callable;
    }

    public void invoke() {
        try {
            V call = this.callable.call();
            this.stateLock.lock();
            try {
                this.result = call;
                this.finished = true;
                this.finishedCondition.signalAll();
                this.stateLock.unlock();
            } finally {
            }
        } catch (Exception e10) {
            logger.logp(Level.SEVERE, getClass().toString(), "invoke()", "Exception", (Throwable) e10);
            this.stateLock.lock();
            try {
                this.exception = new ExecutionException(e10);
                this.finishedCondition.signalAll();
            } finally {
            }
        }
    }

    @Override
    public boolean isCancelled() {
        this.stateLock.lock();
        try {
            return this.cancelled;
        } finally {
            this.stateLock.unlock();
        }
    }

    @Override
    public boolean isDone() {
        boolean z10;
        this.stateLock.lock();
        try {
            if (!this.finished && !this.cancelled) {
                if (this.exception == null) {
                    z10 = false;
                    return z10;
                }
            }
            z10 = true;
            return z10;
        } finally {
            this.stateLock.unlock();
        }
    }

    @Override
    public V get(long j10, TimeUnit timeUnit) throws InterruptedException, ExecutionException, TimeoutException {
        this.stateLock.lock();
        try {
            if (!isDone()) {
                this.finishedCondition.await(j10, timeUnit);
            }
            ExecutionException executionException = this.exception;
            if (executionException == null) {
                V v10 = this.result;
                if (v10 != null) {
                    this.stateLock.unlock();
                    return v10;
                }
                throw new TimeoutException("Object not returned in time allocated.");
            }
            throw executionException;
        } catch (Throwable th2) {
            this.stateLock.unlock();
            throw th2;
        }
    }
}
