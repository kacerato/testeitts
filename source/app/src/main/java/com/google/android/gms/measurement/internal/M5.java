package com.google.android.gms.measurement.internal;

import java.util.Objects;

public final class M5 implements Runnable {

    public final o7 f62801b;

    public final boolean f62802c;

    public final I f62803d;

    public final C12293f6 f62804e;

    public M5(C12293f6 c12293f6, boolean z10, o7 o7Var, boolean z11, I i10, String str) {
        this.f62801b = o7Var;
        this.f62802c = z11;
        this.f62803d = i10;
        Objects.requireNonNull(c12293f6);
        this.f62804e = c12293f6;
    }

    @Override
    public final void run() {
        C12293f6 c12293f6 = this.f62804e;
        InterfaceC12313i2 N10 = c12293f6.N();
        if (N10 == null) {
            c12293f6.f62917a.a().o().a("Discarding data. Failed to send event to service");
            return;
        }
        o7 o7Var = this.f62801b;
        G0.A.r(o7Var);
        c12293f6.b0(N10, this.f62802c ? null : this.f62803d, o7Var);
        c12293f6.J();
    }
}
