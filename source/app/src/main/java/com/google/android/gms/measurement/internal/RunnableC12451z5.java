package com.google.android.gms.measurement.internal;

import java.util.Objects;

public final class RunnableC12451z5 implements Runnable {

    public final o7 f63743b;

    public final boolean f63744c;

    public final i7 f63745d;

    public final C12293f6 f63746e;

    public RunnableC12451z5(C12293f6 c12293f6, o7 o7Var, boolean z10, i7 i7Var) {
        this.f63743b = o7Var;
        this.f63744c = z10;
        this.f63745d = i7Var;
        Objects.requireNonNull(c12293f6);
        this.f63746e = c12293f6;
    }

    @Override
    public final void run() {
        C12293f6 c12293f6 = this.f63746e;
        InterfaceC12313i2 N10 = c12293f6.N();
        if (N10 == null) {
            c12293f6.f62917a.a().o().a("Discarding data. Failed to set user property");
            return;
        }
        o7 o7Var = this.f63743b;
        G0.A.r(o7Var);
        c12293f6.b0(N10, this.f63744c ? null : this.f63745d, o7Var);
        c12293f6.J();
    }
}
