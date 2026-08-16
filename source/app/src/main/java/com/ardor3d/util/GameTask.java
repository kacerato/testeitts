package com.ardor3d.util;

import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.ReentrantLock;
import java.util.logging.Level;
import java.util.logging.Logger;

public class GameTask<V> implements Future<V> {
    private static final Logger logger = Logger.getLogger(GameTask.class.getName());
    private boolean _cancelled;
    private ExecutionException _exception;
    private boolean _finished;
    private final Condition _finishedCondition;
    private V _result;
    private final ReentrantLock _stateLock;
    private final Callable<V> callable;

    public GameTask(Callable<V> callable) {
        ReentrantLock reentrantLock = new ReentrantLock();
        this._stateLock = reentrantLock;
        this._finishedCondition = reentrantLock.newCondition();
        this.callable = callable;
    }

    @Override
    public boolean cancel(boolean z10) {
        this._stateLock.lock();
        try {
            if (this._result != null) {
                this._stateLock.unlock();
                return false;
            }
            this._cancelled = true;
            this._finishedCondition.signalAll();
            return true;
        } finally {
            this._stateLock.unlock();
        }
    }

    @Override
    public V get() throws InterruptedException, ExecutionException {
        this._stateLock.lock();
        while (!isDone()) {
            try {
                this._finishedCondition.await();
            } catch (Throwable th2) {
                this._stateLock.unlock();
                throw th2;
            }
        }
        ExecutionException executionException = this._exception;
        if (executionException == null) {
            V v10 = this._result;
            this._stateLock.unlock();
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
            this._stateLock.lock();
            try {
                this._result = call;
                this._finished = true;
                this._finishedCondition.signalAll();
                this._stateLock.unlock();
            } finally {
            }
        } catch (Exception e10) {
            logger.logp(Level.SEVERE, getClass().toString(), "invoke()", "Exception", (Throwable) e10);
            this._stateLock.lock();
            try {
                this._exception = new ExecutionException(e10);
                this._finishedCondition.signalAll();
            } finally {
            }
        }
    }

    @Override
    public boolean isCancelled() {
        this._stateLock.lock();
        try {
            return this._cancelled;
        } finally {
            this._stateLock.unlock();
        }
    }

    @Override
    public boolean isDone() {
        boolean z10;
        this._stateLock.lock();
        try {
            if (!this._finished && !this._cancelled) {
                if (this._exception == null) {
                    z10 = false;
                    return z10;
                }
            }
            z10 = true;
            return z10;
        } finally {
            this._stateLock.unlock();
        }
    }

    @Override
    public V get(long j10, TimeUnit timeUnit) throws InterruptedException, ExecutionException, TimeoutException {
        this._stateLock.lock();
        try {
            if (!isDone()) {
                this._finishedCondition.await(j10, timeUnit);
            }
            ExecutionException executionException = this._exception;
            if (executionException == null) {
                V v10 = this._result;
                if (v10 != null) {
                    this._stateLock.unlock();
                    return v10;
                }
                throw new TimeoutException("Object not returned in time allocated.");
            }
            throw executionException;
        } catch (Throwable th2) {
            this._stateLock.unlock();
            throw th2;
        }
    }
}
