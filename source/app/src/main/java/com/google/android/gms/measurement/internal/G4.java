package com.google.android.gms.measurement.internal;

import java.util.Objects;
import java.util.concurrent.atomic.AtomicReference;

public final class G4 implements Runnable {

    public final AtomicReference f62653b;

    public final C12260b5 f62654c;

    public G4(C12260b5 c12260b5, AtomicReference atomicReference) {
        this.f62653b = atomicReference;
        Objects.requireNonNull(c12260b5);
        this.f62654c = c12260b5;
    }

    @Override
    public final void run() {
        AtomicReference atomicReference = this.f62653b;
        synchronized (atomicReference) {
            try {
                try {
                    C12260b5 c12260b5 = this.f62654c;
                    atomicReference.set(Double.valueOf(c12260b5.f62917a.w().G(c12260b5.f62917a.L().q(), C12281e2.f63204f0)));
                } finally {
                    this.f62653b.notify();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
