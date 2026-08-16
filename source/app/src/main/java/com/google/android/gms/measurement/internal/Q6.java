package com.google.android.gms.measurement.internal;

import java.util.Objects;

public final class Q6 implements Runnable {

    public final d7 f62899b;

    public final c7 f62900c;

    public Q6(c7 c7Var, d7 d7Var) {
        this.f62899b = d7Var;
        Objects.requireNonNull(c7Var);
        this.f62900c = c7Var;
    }

    @Override
    public final void run() {
        c7 c7Var = this.f62900c;
        c7Var.t0(this.f62899b);
        c7Var.A0();
    }
}
