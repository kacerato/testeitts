package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.os.RemoteException;
import com.google.android.gms.internal.measurement.InterfaceC12238z0;
import java.util.List;
import java.util.Objects;

public final class RunnableC12419v5 implements Runnable {

    public final String f63640b;

    public final String f63641c;

    public final o7 f63642d;

    public final boolean f63643e;

    public final InterfaceC12238z0 f63644f;

    public final C12293f6 f63645g;

    public RunnableC12419v5(C12293f6 c12293f6, String str, String str2, o7 o7Var, boolean z10, InterfaceC12238z0 interfaceC12238z0) {
        this.f63640b = str;
        this.f63641c = str2;
        this.f63642d = o7Var;
        this.f63643e = z10;
        this.f63644f = interfaceC12238z0;
        Objects.requireNonNull(c12293f6);
        this.f63645g = c12293f6;
    }

    @Override
    public final void run() {
        Bundle bundle;
        RemoteException e10;
        Bundle bundle2 = new Bundle();
        try {
            C12293f6 c12293f6 = this.f63645g;
            InterfaceC12313i2 N10 = c12293f6.N();
            if (N10 == null) {
                C12370p3 c12370p3 = c12293f6.f62917a;
                c12370p3.a().o().c("Failed to get user properties; not connected to service", this.f63640b, this.f63641c);
                c12370p3.C().f0(this.f63644f, bundle2);
                return;
            }
            o7 o7Var = this.f63642d;
            G0.A.r(o7Var);
            List<i7> r02 = N10.r0(this.f63640b, this.f63641c, this.f63643e, o7Var);
            int i10 = m7.f63408k;
            bundle = new Bundle();
            if (r02 != null) {
                for (i7 i7Var : r02) {
                    String str = i7Var.f63361f;
                    if (str != null) {
                        bundle.putString(i7Var.f63358c, str);
                    } else {
                        Long l10 = i7Var.f63360e;
                        if (l10 != null) {
                            bundle.putLong(i7Var.f63358c, l10.longValue());
                        } else {
                            Double d10 = i7Var.f63363h;
                            if (d10 != null) {
                                bundle.putDouble(i7Var.f63358c, d10.doubleValue());
                            }
                        }
                    }
                }
            }
            try {
                try {
                    c12293f6.J();
                    C12370p3 c12370p32 = c12293f6.f62917a;
                    c12370p32.C().f0(this.f63644f, bundle);
                } catch (RemoteException e11) {
                    e10 = e11;
                    this.f63645g.f62917a.a().o().c("Failed to get user properties; remote exception", this.f63640b, e10);
                    C12293f6 c12293f62 = this.f63645g;
                    c12293f62.f62917a.C().f0(this.f63644f, bundle);
                }
            } catch (Throwable th2) {
                th = th2;
                bundle2 = bundle;
                C12293f6 c12293f63 = this.f63645g;
                c12293f63.f62917a.C().f0(this.f63644f, bundle2);
                throw th;
            }
        } catch (RemoteException e12) {
            bundle = bundle2;
            e10 = e12;
        } catch (Throwable th3) {
            th = th3;
            C12293f6 c12293f632 = this.f63645g;
            c12293f632.f62917a.C().f0(this.f63644f, bundle2);
            throw th;
        }
    }
}
