package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import android.text.TextUtils;
import java.util.Collections;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicReference;

public final class Q5 implements Runnable {

    public final AtomicReference f62893b;

    public final String f62894c;

    public final String f62895d;

    public final o7 f62896e;

    public final boolean f62897f;

    public final C12293f6 f62898g;

    public Q5(C12293f6 c12293f6, AtomicReference atomicReference, String str, String str2, String str3, o7 o7Var, boolean z10) {
        this.f62893b = atomicReference;
        this.f62894c = str2;
        this.f62895d = str3;
        this.f62896e = o7Var;
        this.f62897f = z10;
        Objects.requireNonNull(c12293f6);
        this.f62898g = c12293f6;
    }

    @Override
    public final void run() {
        AtomicReference atomicReference;
        C12293f6 c12293f6;
        InterfaceC12313i2 N10;
        AtomicReference atomicReference2 = this.f62893b;
        synchronized (atomicReference2) {
            try {
                try {
                    c12293f6 = this.f62898g;
                    N10 = c12293f6.N();
                } catch (RemoteException e10) {
                    this.f62898g.f62917a.a().o().d("(legacy) Failed to get user properties; remote exception", null, this.f62894c, e10);
                    this.f62893b.set(Collections.emptyList());
                    atomicReference = this.f62893b;
                }
                if (N10 == null) {
                    c12293f6.f62917a.a().o().d("(legacy) Failed to get user properties; not connected to service", null, this.f62894c, this.f62895d);
                    atomicReference2.set(Collections.emptyList());
                    atomicReference2.notify();
                    return;
                }
                if (TextUtils.isEmpty(null)) {
                    o7 o7Var = this.f62896e;
                    G0.A.r(o7Var);
                    atomicReference2.set(N10.r0(this.f62894c, this.f62895d, this.f62897f, o7Var));
                } else {
                    atomicReference2.set(N10.y0(null, this.f62894c, this.f62895d, this.f62897f));
                }
                c12293f6.J();
                atomicReference = this.f62893b;
                atomicReference.notify();
            } catch (Throwable th2) {
                this.f62893b.notify();
                throw th2;
            }
        }
    }
}
