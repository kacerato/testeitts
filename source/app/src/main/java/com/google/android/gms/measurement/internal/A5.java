package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import java.util.Objects;

public final class A5 implements Runnable {

    public final o7 f62537b;

    public final C12293f6 f62538c;

    public A5(C12293f6 c12293f6, o7 o7Var) {
        this.f62537b = o7Var;
        Objects.requireNonNull(c12293f6);
        this.f62538c = c12293f6;
    }

    @Override
    public final void run() {
        C12293f6 c12293f6 = this.f62538c;
        InterfaceC12313i2 N10 = c12293f6.N();
        if (N10 == null) {
            c12293f6.f62917a.a().o().a("Failed to reset data on the service: not connected to service");
            return;
        }
        try {
            o7 o7Var = this.f62537b;
            G0.A.r(o7Var);
            N10.X(o7Var);
        } catch (RemoteException e10) {
            this.f62538c.f62917a.a().o().b("Failed to reset data on the service: remote exception", e10);
        }
        this.f62538c.J();
    }
}
