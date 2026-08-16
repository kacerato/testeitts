package com.google.android.gms.measurement.internal;

import java.util.Objects;

public final class RunnableC12317i6 implements Runnable {

    public final c7 f63355b;

    public final Runnable f63356c;

    public RunnableC12317i6(C12357n6 c12357n6, c7 c7Var, Runnable runnable) {
        this.f63355b = c7Var;
        this.f63356c = runnable;
        Objects.requireNonNull(c12357n6);
    }

    @Override
    public final void run() {
        c7 c7Var = this.f63355b;
        c7Var.D();
        c7Var.C(this.f63356c);
        c7Var.r();
    }
}
