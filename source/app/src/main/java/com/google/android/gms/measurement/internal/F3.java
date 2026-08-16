package com.google.android.gms.measurement.internal;

import java.util.Objects;

public final class F3 implements Runnable {

    public final I f62639b;

    public final String f62640c;

    public final R3 f62641d;

    public F3(R3 r32, I i10, String str) {
        this.f62639b = i10;
        this.f62640c = str;
        Objects.requireNonNull(r32);
        this.f62641d = r32;
    }

    @Override
    public final void run() {
        R3 r32 = this.f62641d;
        r32.i1().D();
        r32.i1().i(this.f62639b, this.f62640c);
    }
}
