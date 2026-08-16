package com.eclipsesource.v8.utils;

import com.eclipsesource.v8.V8;

public class V8Thread extends Thread {
    private final V8Runnable target;
    private V8 runtime;

    public V8Thread(V8Runnable target) {
        this.target = target;
    }

    @Override
    public void run() {
        this.runtime = V8.createV8Runtime();
        try {
            this.target.run(this.runtime);
            synchronized (this) {
                if (this.runtime.getLocker().hasLock()) {
                    this.runtime.release();
                    this.runtime = null;
                }
            }
        } catch (Throwable th2) {
            synchronized (this) {
                if (this.runtime.getLocker().hasLock()) {
                    this.runtime.release();
                    this.runtime = null;
                }
                throw th2;
            }
        }
    }
}
