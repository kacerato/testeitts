package com.google.android.gms.measurement.internal;

import java.util.Objects;

public final class H2 implements Runnable {

    public final boolean f62660b;

    public final J2 f62661c;

    public H2(J2 j22, boolean z10) {
        this.f62660b = z10;
        Objects.requireNonNull(j22);
        this.f62661c = j22;
    }

    @Override
    public final void run() {
        this.f62661c.c().r0(this.f62660b);
    }
}
