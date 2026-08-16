package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import com.google.android.gms.internal.measurement.InterfaceC12238z0;
import java.util.Objects;

public final class I5 implements Runnable {

    public final I f62735b;

    public final String f62736c;

    public final InterfaceC12238z0 f62737d;

    public final C12293f6 f62738e;

    public I5(C12293f6 c12293f6, I i10, String str, InterfaceC12238z0 interfaceC12238z0) {
        this.f62735b = i10;
        this.f62736c = str;
        this.f62737d = interfaceC12238z0;
        Objects.requireNonNull(c12293f6);
        this.f62738e = c12293f6;
    }

    @Override
    public final void run() {
        InterfaceC12238z0 interfaceC12238z0;
        m7 C10;
        C12293f6 c12293f6;
        InterfaceC12313i2 N10;
        byte[] bArr = null;
        try {
            try {
                c12293f6 = this.f62738e;
                N10 = c12293f6.N();
            } catch (RemoteException e10) {
                this.f62738e.f62917a.a().o().b("Failed to send event to the service to bundle", e10);
            }
            if (N10 == null) {
                C12370p3 c12370p3 = c12293f6.f62917a;
                c12370p3.a().o().a("Discarding data. Failed to send event to service to bundle");
                C10 = c12370p3.C();
                interfaceC12238z0 = this.f62737d;
                C10.d0(interfaceC12238z0, bArr);
            }
            bArr = N10.H(this.f62735b, this.f62736c);
            c12293f6.J();
            C12293f6 c12293f62 = this.f62738e;
            interfaceC12238z0 = this.f62737d;
            C10 = c12293f62.f62917a.C();
            C10.d0(interfaceC12238z0, bArr);
        } catch (Throwable th2) {
            C12293f6 c12293f63 = this.f62738e;
            c12293f63.f62917a.C().d0(this.f62737d, null);
            throw th2;
        }
    }
}
