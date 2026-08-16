package com.google.android.gms.measurement.internal;

import java.util.Objects;

public final class RunnableC12314i3 implements Runnable {

    public final C12299g4 f63351b;

    public final C12370p3 f63352c;

    public RunnableC12314i3(C12370p3 c12370p3, C12299g4 c12299g4) {
        this.f63351b = c12299g4;
        Objects.requireNonNull(c12370p3);
        this.f63352c = c12370p3;
    }

    @Override
    public final void run() {
        C12370p3 c12370p3 = this.f63352c;
        C12299g4 c12299g4 = this.f63351b;
        c12370p3.p(c12299g4);
        c12370p3.v(c12299g4.f63310d);
    }
}
