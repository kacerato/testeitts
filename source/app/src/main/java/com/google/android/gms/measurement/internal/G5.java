package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import java.util.Objects;

public final class G5 implements Runnable {

    public final C12348m5 f62655b;

    public final C12293f6 f62656c;

    public G5(C12293f6 c12293f6, C12348m5 c12348m5) {
        this.f62655b = c12348m5;
        Objects.requireNonNull(c12293f6);
        this.f62656c = c12293f6;
    }

    @Override
    public final void run() {
        C12293f6 c12293f6 = this.f62656c;
        InterfaceC12313i2 N10 = c12293f6.N();
        if (N10 == null) {
            c12293f6.f62917a.a().o().a("Failed to send current screen to service");
            return;
        }
        try {
            C12348m5 c12348m5 = this.f62655b;
            if (c12348m5 == null) {
                N10.W(0L, null, null, c12293f6.f62917a.d().getPackageName());
            } else {
                N10.W(c12348m5.f63398c, c12348m5.f63396a, c12348m5.f63397b, c12293f6.f62917a.d().getPackageName());
            }
            c12293f6.J();
        } catch (RemoteException e10) {
            this.f62656c.f62917a.a().o().b("Failed to send current screen to the service", e10);
        }
    }
}
