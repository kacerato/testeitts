package com.google.android.gms.measurement.internal;

import java.util.Objects;

public final class RunnableC12409u3 implements Runnable {

    public final C12310i f63613b;

    public final o7 f63614c;

    public final R3 f63615d;

    public RunnableC12409u3(R3 r32, C12310i c12310i, o7 o7Var) {
        this.f63613b = c12310i;
        this.f63614c = o7Var;
        Objects.requireNonNull(r32);
        this.f63615d = r32;
    }

    @Override
    public final void run() {
        R3 r32 = this.f63615d;
        r32.i1().D();
        C12310i c12310i = this.f63613b;
        if (c12310i.f63340d.n() == null) {
            r32.i1().l0(c12310i, this.f63614c);
        } else {
            r32.i1().j0(c12310i, this.f63614c);
        }
    }
}
