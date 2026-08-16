package com.google.android.gms.measurement.internal;

import java.util.Objects;

public final class T5 implements Runnable {

    public final InterfaceC12313i2 f62930b;

    public final Z5 f62931c;

    public T5(Z5 z52, InterfaceC12313i2 interfaceC12313i2) {
        this.f62930b = interfaceC12313i2;
        Objects.requireNonNull(z52);
        this.f62931c = z52;
    }

    @Override
    public final void run() {
        Z5 z52 = this.f62931c;
        synchronized (z52) {
            try {
                z52.d(false);
                C12293f6 c12293f6 = z52.f62994e;
                if (!c12293f6.W()) {
                    c12293f6.f62917a.a().v().a("Connected to remote service");
                    c12293f6.z(this.f62930b);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        C12293f6 c12293f62 = this.f62931c.f62994e;
        if (c12293f62.P() != null) {
            c12293f62.P().shutdownNow();
            c12293f62.Q(null);
        }
    }
}
