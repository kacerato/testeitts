package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.os.RemoteException;
import java.util.Objects;

public final class H5 implements Runnable {

    public final o7 f62667b;

    public final boolean f62668c;

    public final G f62669d;

    public final Bundle f62670e;

    public final C12293f6 f62671f;

    public H5(C12293f6 c12293f6, boolean z10, o7 o7Var, boolean z11, G g10, Bundle bundle) {
        this.f62667b = o7Var;
        this.f62668c = z11;
        this.f62669d = g10;
        this.f62670e = bundle;
        Objects.requireNonNull(c12293f6);
        this.f62671f = c12293f6;
    }

    @Override
    public final void run() {
        C12293f6 c12293f6 = this.f62671f;
        InterfaceC12313i2 N10 = c12293f6.N();
        if (N10 == null) {
            c12293f6.f62917a.a().o().a("Failed to send default event parameters to service");
            return;
        }
        if (c12293f6.f62917a.w().H(null, C12281e2.f63199d1)) {
            o7 o7Var = this.f62667b;
            G0.A.r(o7Var);
            this.f62671f.b0(N10, this.f62668c ? null : this.f62669d, o7Var);
            return;
        }
        try {
            o7 o7Var2 = this.f62667b;
            G0.A.r(o7Var2);
            N10.m0(this.f62670e, o7Var2);
            c12293f6.J();
        } catch (RemoteException e10) {
            this.f62671f.f62917a.a().o().b("Failed to send default event parameters to service", e10);
        }
    }
}
