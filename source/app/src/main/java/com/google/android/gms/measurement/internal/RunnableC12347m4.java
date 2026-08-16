package com.google.android.gms.measurement.internal;

import java.util.Objects;

public final class RunnableC12347m4 implements Runnable {

    public final boolean f63394b;

    public final C12260b5 f63395c;

    public RunnableC12347m4(C12260b5 c12260b5, boolean z10) {
        this.f63394b = z10;
        Objects.requireNonNull(c12260b5);
        this.f63395c = c12260b5;
    }

    @Override
    public final void run() {
        C12260b5 c12260b5 = this.f63395c;
        C12370p3 c12370p3 = c12260b5.f62917a;
        boolean g10 = c12370p3.g();
        boolean f10 = c12370p3.f();
        boolean z10 = this.f63394b;
        c12370p3.P(z10);
        if (f10 == z10) {
            c12370p3.a().w().b("Default data collection state already set to", Boolean.valueOf(z10));
        }
        if (c12370p3.g() == g10 || c12370p3.g() != c12370p3.f()) {
            c12370p3.a().t().c("Default data collection is different than actual status", Boolean.valueOf(z10), Boolean.valueOf(g10));
        }
        c12260b5.Y();
    }
}
