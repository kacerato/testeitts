package com.google.android.gms.measurement.internal;

import java.util.Objects;

public final class RunnableC12365o6 implements Runnable {

    public final long f63436b;

    public final C12436x6 f63437c;

    public RunnableC12365o6(C12436x6 c12436x6, long j10) {
        this.f63436b = j10;
        Objects.requireNonNull(c12436x6);
        this.f63437c = c12436x6;
    }

    @Override
    public final void run() {
        this.f63437c.r(this.f63436b);
    }
}
