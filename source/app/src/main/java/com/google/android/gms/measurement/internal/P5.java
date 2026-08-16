package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import com.google.android.gms.internal.measurement.InterfaceC12238z0;
import java.util.ArrayList;
import java.util.Objects;

public final class P5 implements Runnable {

    public final String f62878b;

    public final String f62879c;

    public final o7 f62880d;

    public final InterfaceC12238z0 f62881e;

    public final C12293f6 f62882f;

    public P5(C12293f6 c12293f6, String str, String str2, o7 o7Var, InterfaceC12238z0 interfaceC12238z0) {
        this.f62878b = str;
        this.f62879c = str2;
        this.f62880d = o7Var;
        this.f62881e = interfaceC12238z0;
        Objects.requireNonNull(c12293f6);
        this.f62882f = c12293f6;
    }

    @Override
    public final void run() {
        InterfaceC12238z0 interfaceC12238z0;
        m7 C10;
        C12293f6 c12293f6;
        InterfaceC12313i2 N10;
        ArrayList arrayList = new ArrayList();
        try {
            try {
                c12293f6 = this.f62882f;
                N10 = c12293f6.N();
            } catch (RemoteException e10) {
                this.f62882f.f62917a.a().o().d("Failed to get conditional properties; remote exception", this.f62878b, this.f62879c, e10);
            }
            if (N10 == null) {
                C12370p3 c12370p3 = c12293f6.f62917a;
                c12370p3.a().o().c("Failed to get conditional properties; not connected to service", this.f62878b, this.f62879c);
                C10 = c12370p3.C();
                interfaceC12238z0 = this.f62881e;
                C10.g0(interfaceC12238z0, arrayList);
            }
            o7 o7Var = this.f62880d;
            G0.A.r(o7Var);
            arrayList = m7.h0(N10.u0(this.f62878b, this.f62879c, o7Var));
            c12293f6.J();
            C12293f6 c12293f62 = this.f62882f;
            interfaceC12238z0 = this.f62881e;
            C10 = c12293f62.f62917a.C();
            C10.g0(interfaceC12238z0, arrayList);
        } catch (Throwable th2) {
            C12293f6 c12293f63 = this.f62882f;
            c12293f63.f62917a.C().g0(this.f62881e, arrayList);
            throw th2;
        }
    }
}
