package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicReference;

public final class B5 implements Runnable {

    public final AtomicReference f62564b;

    public final o7 f62565c;

    public final C12293f6 f62566d;

    public B5(C12293f6 c12293f6, AtomicReference atomicReference, o7 o7Var) {
        this.f62564b = atomicReference;
        this.f62565c = o7Var;
        Objects.requireNonNull(c12293f6);
        this.f62566d = c12293f6;
    }

    @Override
    public final void run() {
        AtomicReference atomicReference;
        C12293f6 c12293f6;
        C12370p3 c12370p3;
        AtomicReference atomicReference2 = this.f62564b;
        synchronized (atomicReference2) {
            try {
                try {
                    c12293f6 = this.f62566d;
                    c12370p3 = c12293f6.f62917a;
                } catch (RemoteException e10) {
                    this.f62566d.f62917a.a().o().b("Failed to get app instance id", e10);
                    atomicReference = this.f62564b;
                }
                if (!c12370p3.x().w().o(Y3.ANALYTICS_STORAGE)) {
                    c12370p3.a().t().a("Analytics storage consent denied; will not get app instance id");
                    c12293f6.f62917a.B().F(null);
                    c12370p3.x().f62853h.b(null);
                    atomicReference2.set(null);
                    atomicReference2.notify();
                    return;
                }
                InterfaceC12313i2 N10 = c12293f6.N();
                if (N10 == null) {
                    c12370p3.a().o().a("Failed to get app instance id");
                    atomicReference2.notify();
                    return;
                }
                o7 o7Var = this.f62565c;
                G0.A.r(o7Var);
                atomicReference2.set(N10.O(o7Var));
                String str = (String) atomicReference2.get();
                if (str != null) {
                    c12293f6.f62917a.B().F(str);
                    c12370p3.x().f62853h.b(str);
                }
                c12293f6.J();
                atomicReference = this.f62564b;
                atomicReference.notify();
            } catch (Throwable th2) {
                this.f62564b.notify();
                throw th2;
            }
        }
    }
}
