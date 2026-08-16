package com.google.android.gms.measurement.internal;

import java.util.Objects;

public final class RunnableC12385r3 implements Runnable {

    public final o7 f63544b;

    public final R3 f63545c;

    public RunnableC12385r3(R3 r32, o7 o7Var) {
        this.f63544b = o7Var;
        Objects.requireNonNull(r32);
        this.f63545c = r32;
    }

    @Override
    public final void run() {
        R3 r32 = this.f63545c;
        r32.i1().D();
        r32.i1().g0(this.f63544b);
    }
}
