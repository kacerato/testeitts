package com.google.android.gms.measurement.internal;

import java.util.Objects;

public final class RunnableC12363o4 implements Runnable {

    public final long f63429b;

    public final C12260b5 f63430c;

    public RunnableC12363o4(C12260b5 c12260b5, long j10) {
        this.f63429b = j10;
        Objects.requireNonNull(c12260b5);
        this.f63430c = c12260b5;
    }

    @Override
    public final void run() {
        C12370p3 c12370p3 = this.f63430c.f62917a;
        M2 m22 = c12370p3.x().f62857l;
        long j10 = this.f63429b;
        m22.b(j10);
        c12370p3.a().v().b("Session timeout duration set", Long.valueOf(j10));
    }
}
