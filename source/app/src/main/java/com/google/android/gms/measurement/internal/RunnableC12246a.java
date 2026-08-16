package com.google.android.gms.measurement.internal;

import java.util.Objects;

public final class RunnableC12246a implements Runnable {

    public final String f62997b;

    public final long f62998c;

    public final E0 f62999d;

    public RunnableC12246a(E0 e02, String str, long j10) {
        this.f62997b = str;
        this.f62998c = j10;
        Objects.requireNonNull(e02);
        this.f62999d = e02;
    }

    @Override
    public final void run() {
        this.f62999d.l(this.f62997b, this.f62998c);
    }
}
