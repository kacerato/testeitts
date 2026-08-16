package com.google.android.gms.measurement.internal;

import java.util.Objects;

public final class RunnableC12380q5 implements Runnable {

    public final long f63532b;

    public final C12411u5 f63533c;

    public RunnableC12380q5(C12411u5 c12411u5, long j10) {
        this.f63532b = j10;
        Objects.requireNonNull(c12411u5);
        this.f63533c = c12411u5;
    }

    @Override
    public final void run() {
        C12411u5 c12411u5 = this.f63533c;
        c12411u5.f62917a.M().k(this.f63532b);
        c12411u5.f63621e = null;
    }
}
