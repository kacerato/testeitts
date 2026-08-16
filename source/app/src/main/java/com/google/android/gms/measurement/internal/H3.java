package com.google.android.gms.measurement.internal;

import java.util.Objects;

public final class H3 implements Runnable {

    public final i7 f62662b;

    public final o7 f62663c;

    public final R3 f62664d;

    public H3(R3 r32, i7 i7Var, o7 o7Var) {
        this.f62662b = i7Var;
        this.f62663c = o7Var;
        Objects.requireNonNull(r32);
        this.f62664d = r32;
    }

    @Override
    public final void run() {
        R3 r32 = this.f62664d;
        r32.i1().D();
        i7 i7Var = this.f62662b;
        if (i7Var.n() != null) {
            r32.i1().b0(i7Var, this.f62663c);
        } else {
            o7 o7Var = this.f62663c;
            r32.i1().c0(i7Var.f63358c, o7Var);
        }
    }
}
