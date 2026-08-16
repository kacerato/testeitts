package com.google.android.gms.measurement.internal;

import java.util.Objects;

public final class B3 implements Runnable {

    public final o7 f62560b;

    public final R3 f62561c;

    public B3(R3 r32, o7 o7Var) {
        this.f62560b = o7Var;
        Objects.requireNonNull(r32);
        this.f62561c = r32;
    }

    @Override
    public final void run() {
        R3 r32 = this.f62561c;
        r32.i1().D();
        r32.i1().a0(this.f62560b);
    }
}
