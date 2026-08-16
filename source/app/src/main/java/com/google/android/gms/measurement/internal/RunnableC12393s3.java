package com.google.android.gms.measurement.internal;

import java.util.Objects;

public final class RunnableC12393s3 implements Runnable {

    public final o7 f63574b;

    public final R3 f63575c;

    public RunnableC12393s3(R3 r32, o7 o7Var) {
        this.f63574b = o7Var;
        Objects.requireNonNull(r32);
        this.f63575c = r32;
    }

    @Override
    public final void run() {
        R3 r32 = this.f63575c;
        r32.i1().D();
        r32.i1().h0(this.f63574b);
    }
}
