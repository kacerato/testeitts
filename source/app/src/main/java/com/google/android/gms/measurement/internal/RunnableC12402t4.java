package com.google.android.gms.measurement.internal;

import java.util.Objects;
import java.util.concurrent.atomic.AtomicReference;

public final class RunnableC12402t4 implements Runnable {

    public final AtomicReference f63596b;

    public final C12260b5 f63597c;

    public RunnableC12402t4(C12260b5 c12260b5, AtomicReference atomicReference) {
        this.f63596b = atomicReference;
        Objects.requireNonNull(c12260b5);
        this.f63597c = c12260b5;
    }

    @Override
    public final void run() {
        AtomicReference atomicReference = this.f63596b;
        synchronized (atomicReference) {
            try {
                try {
                    C12260b5 c12260b5 = this.f63597c;
                    atomicReference.set(Boolean.valueOf(c12260b5.f62917a.w().H(c12260b5.f62917a.L().q(), C12281e2.f63192b0)));
                } finally {
                    this.f63596b.notify();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
