package com.google.android.gms.measurement.internal;

import java.util.Objects;

public final class R5 implements Runnable {

    public final InterfaceC12313i2 f62908b;

    public final Z5 f62909c;

    public R5(Z5 z52, InterfaceC12313i2 interfaceC12313i2) {
        this.f62908b = interfaceC12313i2;
        Objects.requireNonNull(z52);
        this.f62909c = z52;
    }

    @Override
    public final void run() {
        Z5 z52 = this.f62909c;
        synchronized (z52) {
            try {
                z52.d(false);
                C12293f6 c12293f6 = z52.f62994e;
                if (!c12293f6.W()) {
                    c12293f6.f62917a.a().w().a("Connected to service");
                    c12293f6.z(this.f62908b);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
