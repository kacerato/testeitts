package com.eclipsesource.v8;

public class V8Locker {
    private Thread thread = null;
    private boolean released = false;
    private V8 runtime;

    public V8Locker(V8 runtime) {
        this.runtime = runtime;
        acquire();
    }

    public Thread getThread() {
        return this.thread;
    }

    public synchronized void acquire() {
        if (this.thread != null && this.thread != Thread.currentThread()) {
            throw new Error("Invalid V8 thread access: current thread is " + ((Object) Thread.currentThread()) + " while the locker has thread " + ((Object) this.thread));
        }
        if (this.thread == Thread.currentThread()) {
            return;
        }
        this.runtime.acquireLock(this.runtime.getV8RuntimePtr());
        this.thread = Thread.currentThread();
        this.released = false;
    }

    public synchronized boolean tryAcquire() {
        if (this.thread != null && this.thread != Thread.currentThread()) {
            return false;
        }
        if (this.thread == Thread.currentThread()) {
            return true;
        }
        this.runtime.acquireLock(this.runtime.getV8RuntimePtr());
        this.thread = Thread.currentThread();
        this.released = false;
        return true;
    }

    public synchronized void release() {
        if ((this.released && this.thread == null) || this.runtime.isReleased()) {
            return;
        }
        checkThread();
        this.runtime.releaseLock(this.runtime.getV8RuntimePtr());
        this.thread = null;
        this.released = true;
    }

    public void checkThread() {
        if (this.released && this.thread == null) {
            throw new Error("Invalid V8 thread access: the locker has been released!");
        }
        if (this.thread != Thread.currentThread()) {
            throw new Error("Invalid V8 thread access: current thread is " + ((Object) Thread.currentThread()) + " while the locker has thread " + ((Object) this.thread));
        }
    }

    public boolean hasLock() {
        return this.thread == Thread.currentThread();
    }
}
