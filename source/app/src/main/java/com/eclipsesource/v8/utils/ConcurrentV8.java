package com.eclipsesource.v8.utils;

import com.eclipsesource.v8.V8;

public final class ConcurrentV8 {

    private V8 f59465v8;

    public ConcurrentV8() {
        this.f59465v8 = null;
        this.f59465v8 = V8.createV8Runtime();
        this.f59465v8.getLocker().release();
    }

    public V8 getV8() {
        return this.f59465v8;
    }

    public synchronized void run(V8Runnable runnable) {
        try {
            this.f59465v8.getLocker().acquire();
            runnable.run(this.f59465v8);
        } finally {
            if (this.f59465v8 != null && this.f59465v8.getLocker() != null && this.f59465v8.getLocker().hasLock()) {
                this.f59465v8.getLocker().release();
            }
        }
    }

    public void release() {
        if (this.f59465v8 != null && !this.f59465v8.isReleased()) {
            run(new V8Runnable() {
                @Override
                public void run(V8 v82) {
                    if (v82 != null && !v82.isReleased()) {
                        v82.release();
                    }
                }
            });
        }
    }
}
