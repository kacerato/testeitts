package com.google.android.gms.measurement.internal;

import java.util.Objects;

public final class RunnableC12364o5 implements Runnable {

    public final C12348m5 f63431b;

    public final C12348m5 f63432c;

    public final long f63433d;

    public final boolean f63434e;

    public final C12411u5 f63435f;

    public RunnableC12364o5(C12411u5 c12411u5, C12348m5 c12348m5, C12348m5 c12348m52, long j10, boolean z10) {
        this.f63431b = c12348m5;
        this.f63432c = c12348m52;
        this.f63433d = j10;
        this.f63434e = z10;
        Objects.requireNonNull(c12411u5);
        this.f63435f = c12411u5;
    }

    @Override
    public final void run() {
        this.f63435f.B(this.f63431b, this.f63432c, this.f63433d, this.f63434e, null);
    }
}
