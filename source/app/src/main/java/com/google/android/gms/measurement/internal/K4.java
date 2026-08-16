package com.google.android.gms.measurement.internal;

import java.util.Objects;

public final class K4 implements Runnable {

    public final Z3 f62763b;

    public final long f62764c;

    public final boolean f62765d;

    public final C12260b5 f62766e;

    public K4(C12260b5 c12260b5, Z3 z32, long j10, boolean z10) {
        this.f62763b = z32;
        this.f62764c = j10;
        this.f62765d = z10;
        Objects.requireNonNull(c12260b5);
        this.f62766e = c12260b5;
    }

    @Override
    public final void run() {
        C12260b5 c12260b5 = this.f62766e;
        Z3 z32 = this.f62763b;
        c12260b5.o(z32);
        c12260b5.X(z32, this.f62764c, false, this.f62765d);
    }
}
