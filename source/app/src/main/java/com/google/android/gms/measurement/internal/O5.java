package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import android.text.TextUtils;
import java.util.Collections;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicReference;

public final class O5 implements Runnable {

    public final AtomicReference f62836b;

    public final String f62837c;

    public final String f62838d;

    public final o7 f62839e;

    public final C12293f6 f62840f;

    public O5(C12293f6 c12293f6, AtomicReference atomicReference, String str, String str2, String str3, o7 o7Var) {
        this.f62836b = atomicReference;
        this.f62837c = str2;
        this.f62838d = str3;
        this.f62839e = o7Var;
        Objects.requireNonNull(c12293f6);
        this.f62840f = c12293f6;
    }

    @Override
    public final void run() {
        AtomicReference atomicReference;
        C12293f6 c12293f6;
        InterfaceC12313i2 N10;
        AtomicReference atomicReference2 = this.f62836b;
        synchronized (atomicReference2) {
            try {
                try {
                    c12293f6 = this.f62840f;
                    N10 = c12293f6.N();
                } catch (RemoteException e10) {
                    this.f62840f.f62917a.a().o().d("(legacy) Failed to get conditional properties; remote exception", null, this.f62837c, e10);
                    this.f62836b.set(Collections.emptyList());
                    atomicReference = this.f62836b;
                }
                if (N10 == null) {
                    c12293f6.f62917a.a().o().d("(legacy) Failed to get conditional properties; not connected to service", null, this.f62837c, this.f62838d);
                    atomicReference2.set(Collections.emptyList());
                    atomicReference2.notify();
                    return;
                }
                if (TextUtils.isEmpty(null)) {
                    o7 o7Var = this.f62839e;
                    G0.A.r(o7Var);
                    atomicReference2.set(N10.u0(this.f62837c, this.f62838d, o7Var));
                } else {
                    atomicReference2.set(N10.C0(null, this.f62837c, this.f62838d));
                }
                c12293f6.J();
                atomicReference = this.f62836b;
                atomicReference.notify();
            } catch (Throwable th2) {
                this.f62836b.notify();
                throw th2;
            }
        }
    }
}
