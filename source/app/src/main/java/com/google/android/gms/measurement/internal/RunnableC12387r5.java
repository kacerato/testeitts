package com.google.android.gms.measurement.internal;

import java.util.Objects;

public final class RunnableC12387r5 implements Runnable {

    public final C12348m5 f63555b;

    public final long f63556c;

    public final C12411u5 f63557d;

    public RunnableC12387r5(C12411u5 c12411u5, C12348m5 c12348m5, long j10) {
        this.f63555b = c12348m5;
        this.f63556c = j10;
        Objects.requireNonNull(c12411u5);
        this.f63557d = c12411u5;
    }

    @Override
    public final void run() {
        C12411u5 c12411u5 = this.f63557d;
        c12411u5.C(this.f63555b, false, this.f63556c);
        c12411u5.f63621e = null;
        c12411u5.f62917a.J().u(null);
    }
}
