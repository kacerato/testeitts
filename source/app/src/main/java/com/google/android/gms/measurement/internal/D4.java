package com.google.android.gms.measurement.internal;

import java.util.Objects;
import java.util.concurrent.atomic.AtomicReference;

public final class D4 implements Runnable {

    public final AtomicReference f62596b;

    public final C12260b5 f62597c;

    public D4(C12260b5 c12260b5, AtomicReference atomicReference) {
        this.f62596b = atomicReference;
        Objects.requireNonNull(c12260b5);
        this.f62597c = c12260b5;
    }

    @Override
    public final void run() {
        AtomicReference atomicReference = this.f62596b;
        synchronized (atomicReference) {
            try {
                try {
                    C12260b5 c12260b5 = this.f62597c;
                    atomicReference.set(c12260b5.f62917a.w().C(c12260b5.f62917a.L().q(), C12281e2.f63195c0));
                } finally {
                    this.f62596b.notify();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
