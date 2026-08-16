package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import com.google.android.gms.internal.measurement.InterfaceC12238z0;
import java.util.Objects;

public final class C5 implements Runnable {

    public final o7 f62580b;

    public final InterfaceC12238z0 f62581c;

    public final C12293f6 f62582d;

    public C5(C12293f6 c12293f6, o7 o7Var, InterfaceC12238z0 interfaceC12238z0) {
        this.f62580b = o7Var;
        this.f62581c = interfaceC12238z0;
        Objects.requireNonNull(c12293f6);
        this.f62582d = c12293f6;
    }

    @Override
    public final void run() {
        InterfaceC12238z0 interfaceC12238z0;
        m7 C10;
        C12293f6 c12293f6;
        C12370p3 c12370p3;
        String str = null;
        try {
            try {
                c12293f6 = this.f62582d;
                c12370p3 = c12293f6.f62917a;
            } catch (RemoteException e10) {
                this.f62582d.f62917a.a().o().b("Failed to get app instance id", e10);
            }
            if (c12370p3.x().w().o(Y3.ANALYTICS_STORAGE)) {
                InterfaceC12313i2 N10 = c12293f6.N();
                if (N10 != null) {
                    o7 o7Var = this.f62580b;
                    G0.A.r(o7Var);
                    str = N10.O(o7Var);
                    if (str != null) {
                        c12293f6.f62917a.B().F(str);
                        c12370p3.x().f62853h.b(str);
                    }
                    c12293f6.J();
                    C12293f6 c12293f62 = this.f62582d;
                    interfaceC12238z0 = this.f62581c;
                    C10 = c12293f62.f62917a.C();
                    C10.a0(interfaceC12238z0, str);
                }
                c12370p3.a().o().a("Failed to get app instance id");
            } else {
                c12370p3.a().t().a("Analytics storage consent denied; will not get app instance id");
                c12293f6.f62917a.B().F(null);
                c12370p3.x().f62853h.b(null);
            }
            C10 = c12370p3.C();
            interfaceC12238z0 = this.f62581c;
            C10.a0(interfaceC12238z0, str);
        } catch (Throwable th2) {
            C12293f6 c12293f63 = this.f62582d;
            c12293f63.f62917a.C().a0(this.f62581c, null);
            throw th2;
        }
    }
}
