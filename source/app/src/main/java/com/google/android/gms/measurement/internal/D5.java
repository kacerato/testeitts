package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import java.util.Objects;

public final class D5 implements Runnable {

    public final o7 f62598b;

    public final C12293f6 f62599c;

    public D5(C12293f6 c12293f6, o7 o7Var, boolean z10) {
        this.f62598b = o7Var;
        Objects.requireNonNull(c12293f6);
        this.f62599c = c12293f6;
    }

    @Override
    public final void run() {
        C12293f6 c12293f6 = this.f62599c;
        InterfaceC12313i2 N10 = c12293f6.N();
        if (N10 == null) {
            c12293f6.f62917a.a().o().a("Discarding data. Failed to send app launch");
            return;
        }
        try {
            o7 o7Var = this.f62598b;
            G0.A.r(o7Var);
            C12370p3 c12370p3 = c12293f6.f62917a;
            C12342m w10 = c12370p3.w();
            C12273d2 c12273d2 = C12281e2.f63199d1;
            if (w10.H(null, c12273d2)) {
                c12293f6.b0(N10, null, o7Var);
            }
            N10.Z0(o7Var);
            c12293f6.f62917a.E().v();
            c12370p3.w().H(null, c12273d2);
            c12293f6.b0(N10, null, o7Var);
            c12293f6.J();
        } catch (RemoteException e10) {
            this.f62599c.f62917a.a().o().b("Failed to send app launch to the service", e10);
        }
    }
}
