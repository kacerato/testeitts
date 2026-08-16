package com.google.android.gms.measurement.internal;

import java.util.Objects;

public final class B implements Runnable {

    public final String f62543b;

    public final long f62544c;

    public final E0 f62545d;

    public B(E0 e02, String str, long j10) {
        this.f62543b = str;
        this.f62544c = j10;
        Objects.requireNonNull(e02);
        this.f62545d = e02;
    }

    @Override
    public final void run() {
        this.f62545d.m(this.f62543b, this.f62544c);
    }
}
