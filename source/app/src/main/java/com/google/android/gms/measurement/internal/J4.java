package com.google.android.gms.measurement.internal;

import java.util.Objects;

public final class J4 implements Runnable {

    public final Z3 f62747b;

    public final long f62748c;

    public final boolean f62749d;

    public final C12260b5 f62750e;

    public J4(C12260b5 c12260b5, Z3 z32, long j10, boolean z10) {
        this.f62747b = z32;
        this.f62748c = j10;
        this.f62749d = z10;
        Objects.requireNonNull(c12260b5);
        this.f62750e = c12260b5;
    }

    @Override
    public final void run() {
        C12260b5 c12260b5 = this.f62750e;
        Z3 z32 = this.f62747b;
        c12260b5.o(z32);
        c12260b5.X(z32, this.f62748c, true, this.f62749d);
    }
}
