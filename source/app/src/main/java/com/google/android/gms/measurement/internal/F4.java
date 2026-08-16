package com.google.android.gms.measurement.internal;

import java.util.Objects;
import java.util.concurrent.atomic.AtomicReference;

public final class F4 implements Runnable {

    public final AtomicReference f62642b;

    public final C12260b5 f62643c;

    public F4(C12260b5 c12260b5, AtomicReference atomicReference) {
        this.f62642b = atomicReference;
        Objects.requireNonNull(c12260b5);
        this.f62643c = c12260b5;
    }

    @Override
    public final void run() {
        AtomicReference atomicReference = this.f62642b;
        synchronized (atomicReference) {
            try {
                try {
                    C12260b5 c12260b5 = this.f62643c;
                    atomicReference.set(Integer.valueOf(c12260b5.f62917a.w().E(c12260b5.f62917a.L().q(), C12281e2.f63201e0)));
                } finally {
                    this.f62642b.notify();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
