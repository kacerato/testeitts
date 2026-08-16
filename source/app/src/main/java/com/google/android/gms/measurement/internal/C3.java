package com.google.android.gms.measurement.internal;

import java.util.Objects;

public final class C3 implements Runnable {

    public final o7 f62577b;

    public final R3 f62578c;

    public C3(R3 r32, o7 o7Var) {
        this.f62577b = o7Var;
        Objects.requireNonNull(r32);
        this.f62578c = r32;
    }

    @Override
    public final void run() {
        R3 r32 = this.f62578c;
        r32.i1().D();
        c7 i12 = r32.i1();
        i12.b().h();
        i12.O0();
        o7 o7Var = this.f62577b;
        G0.A.l(o7Var.f63444b);
        i12.P0(o7Var);
        i12.Q0(o7Var);
    }
}
