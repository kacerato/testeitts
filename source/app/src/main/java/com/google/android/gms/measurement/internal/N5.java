package com.google.android.gms.measurement.internal;

import java.util.Objects;

public final class N5 implements Runnable {

    public final o7 f62817b;

    public final boolean f62818c;

    public final C12310i f62819d;

    public final C12293f6 f62820e;

    public N5(C12293f6 c12293f6, boolean z10, o7 o7Var, boolean z11, C12310i c12310i, C12310i c12310i2) {
        this.f62817b = o7Var;
        this.f62818c = z11;
        this.f62819d = c12310i;
        Objects.requireNonNull(c12293f6);
        this.f62820e = c12293f6;
    }

    @Override
    public final void run() {
        C12293f6 c12293f6 = this.f62820e;
        InterfaceC12313i2 N10 = c12293f6.N();
        if (N10 == null) {
            c12293f6.f62917a.a().o().a("Discarding data. Failed to send conditional user property to service");
            return;
        }
        o7 o7Var = this.f62817b;
        G0.A.r(o7Var);
        c12293f6.b0(N10, this.f62818c ? null : this.f62819d, o7Var);
        c12293f6.J();
    }
}
