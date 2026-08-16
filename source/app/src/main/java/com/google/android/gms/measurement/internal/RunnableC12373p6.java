package com.google.android.gms.measurement.internal;

import java.util.Objects;

public final class RunnableC12373p6 implements Runnable {

    public final long f63524b;

    public final C12436x6 f63525c;

    public RunnableC12373p6(C12436x6 c12436x6, long j10) {
        this.f63524b = j10;
        Objects.requireNonNull(c12436x6);
        this.f63525c = c12436x6;
    }

    @Override
    public final void run() {
        this.f63525c.s(this.f63524b);
    }
}
