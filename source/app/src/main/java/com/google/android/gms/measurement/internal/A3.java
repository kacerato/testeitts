package com.google.android.gms.measurement.internal;

import java.util.Objects;

public final class A3 implements Runnable {

    public final o7 f62530b;

    public final R3 f62531c;

    public A3(R3 r32, o7 o7Var) {
        this.f62530b = o7Var;
        Objects.requireNonNull(r32);
        this.f62531c = r32;
    }

    @Override
    public final void run() {
        R3 r32 = this.f62531c;
        r32.i1().D();
        c7 i12 = r32.i1();
        i12.b().h();
        i12.O0();
        o7 o7Var = this.f62530b;
        G0.A.l(o7Var.f63444b);
        i12.n0(o7Var);
    }
}
