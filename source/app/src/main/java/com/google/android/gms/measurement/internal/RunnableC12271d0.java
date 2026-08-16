package com.google.android.gms.measurement.internal;

import java.util.Objects;

public final class RunnableC12271d0 implements Runnable {

    public final long f63115b;

    public final E0 f63116c;

    public RunnableC12271d0(E0 e02, long j10) {
        this.f63115b = j10;
        Objects.requireNonNull(e02);
        this.f63116c = e02;
    }

    @Override
    public final void run() {
        this.f63116c.n(this.f63115b);
    }
}
