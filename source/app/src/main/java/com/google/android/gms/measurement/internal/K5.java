package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import java.util.Objects;

public final class K5 implements Runnable {

    public final o7 f62767b;

    public final C12293f6 f62768c;

    public K5(C12293f6 c12293f6, o7 o7Var) {
        this.f62767b = o7Var;
        Objects.requireNonNull(c12293f6);
        this.f62768c = c12293f6;
    }

    @Override
    public final void run() {
        C12293f6 c12293f6 = this.f62768c;
        InterfaceC12313i2 N10 = c12293f6.N();
        if (N10 == null) {
            c12293f6.f62917a.a().o().a("Failed to send measurementEnabled to service");
            return;
        }
        try {
            o7 o7Var = this.f62767b;
            G0.A.r(o7Var);
            N10.G(o7Var);
            c12293f6.J();
        } catch (RemoteException e10) {
            this.f62768c.f62917a.a().o().b("Failed to send measurementEnabled to the service", e10);
        }
    }
}
