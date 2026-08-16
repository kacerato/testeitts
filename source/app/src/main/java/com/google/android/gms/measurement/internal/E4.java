package com.google.android.gms.measurement.internal;

import java.util.Objects;
import java.util.concurrent.atomic.AtomicReference;

public final class E4 implements Runnable {

    public final AtomicReference f62624b;

    public final C12260b5 f62625c;

    public E4(C12260b5 c12260b5, AtomicReference atomicReference) {
        this.f62624b = atomicReference;
        Objects.requireNonNull(c12260b5);
        this.f62625c = c12260b5;
    }

    @Override
    public final void run() {
        AtomicReference atomicReference = this.f62624b;
        synchronized (atomicReference) {
            try {
                try {
                    C12260b5 c12260b5 = this.f62625c;
                    atomicReference.set(Long.valueOf(c12260b5.f62917a.w().D(c12260b5.f62917a.L().q(), C12281e2.f63198d0)));
                } finally {
                    this.f62624b.notify();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
