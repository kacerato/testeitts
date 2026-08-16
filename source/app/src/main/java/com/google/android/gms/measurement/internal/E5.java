package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import java.util.Objects;

public final class E5 implements Runnable {

    public final o7 f62626b;

    public final C12293f6 f62627c;

    public E5(C12293f6 c12293f6, o7 o7Var) {
        this.f62626b = o7Var;
        Objects.requireNonNull(c12293f6);
        this.f62627c = c12293f6;
    }

    @Override
    public final void run() {
        C12293f6 c12293f6 = this.f62627c;
        InterfaceC12313i2 N10 = c12293f6.N();
        if (N10 == null) {
            c12293f6.f62917a.a().r().a("Failed to send app backgrounded");
            return;
        }
        try {
            o7 o7Var = this.f62626b;
            G0.A.r(o7Var);
            N10.b1(o7Var);
            c12293f6.J();
        } catch (RemoteException e10) {
            this.f62627c.f62917a.a().o().b("Failed to send app backgrounded to the service", e10);
        }
    }
}
