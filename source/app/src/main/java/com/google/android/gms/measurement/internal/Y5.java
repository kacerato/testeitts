package com.google.android.gms.measurement.internal;

import B0.C2318c;
import java.util.Objects;
import java.util.concurrent.Executors;
import java.util.concurrent.TimeUnit;

public final class Y5 implements Runnable {

    public final C2318c f62976b;

    public final Z5 f62977c;

    public Y5(Z5 z52, C2318c c2318c) {
        this.f62976b = c2318c;
        Objects.requireNonNull(z52);
        this.f62977c = z52;
    }

    @Override
    public final void run() {
        C12293f6 c12293f6 = this.f62977c.f62994e;
        c12293f6.O(null);
        if (this.f62976b.n() != 7777) {
            c12293f6.L();
            return;
        }
        if (c12293f6.P() == null) {
            c12293f6.Q(Executors.newScheduledThreadPool(1));
        }
        c12293f6.P().schedule(new Runnable() {
            @Override
            public final void run() {
                final C12293f6 c12293f62 = Y5.this.f62977c.f62994e;
                c12293f62.f62917a.b().t(new Runnable() {
                    @Override
                    public final void run() {
                        C12293f6.this.w();
                    }
                });
            }
        }, ((Long) C12281e2.f63189a0.b(null)).longValue(), TimeUnit.MILLISECONDS);
    }
}
