package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicReference;

public final class RunnableC12427w5 implements Runnable {

    public final AtomicReference f63679b;

    public final o7 f63680c;

    public final boolean f63681d;

    public final C12293f6 f63682e;

    public RunnableC12427w5(C12293f6 c12293f6, AtomicReference atomicReference, o7 o7Var, boolean z10) {
        this.f63679b = atomicReference;
        this.f63680c = o7Var;
        this.f63681d = z10;
        Objects.requireNonNull(c12293f6);
        this.f63682e = c12293f6;
    }

    @Override
    public final void run() {
        AtomicReference atomicReference;
        C12293f6 c12293f6;
        InterfaceC12313i2 N10;
        AtomicReference atomicReference2 = this.f63679b;
        synchronized (atomicReference2) {
            try {
                try {
                    c12293f6 = this.f63682e;
                    N10 = c12293f6.N();
                } catch (RemoteException e10) {
                    this.f63682e.f62917a.a().o().b("Failed to get all user properties; remote exception", e10);
                    atomicReference = this.f63679b;
                }
                if (N10 == null) {
                    c12293f6.f62917a.a().o().a("Failed to get all user properties; not connected to service");
                    atomicReference2.notify();
                    return;
                }
                o7 o7Var = this.f63680c;
                G0.A.r(o7Var);
                atomicReference2.set(N10.P(o7Var, this.f63681d));
                c12293f6.J();
                atomicReference = this.f63679b;
                atomicReference.notify();
            } catch (Throwable th2) {
                this.f63679b.notify();
                throw th2;
            }
        }
    }
}
