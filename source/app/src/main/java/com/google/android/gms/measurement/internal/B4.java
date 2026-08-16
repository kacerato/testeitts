package com.google.android.gms.measurement.internal;

import android.os.RemoteException;
import com.google.android.gms.internal.measurement.InterfaceC12238z0;
import java.util.Objects;

public final class B4 implements Runnable {

    public final InterfaceC12238z0 f62562b;

    public final C12260b5 f62563c;

    public B4(C12260b5 c12260b5, InterfaceC12238z0 interfaceC12238z0) {
        this.f62562b = interfaceC12238z0;
        Objects.requireNonNull(c12260b5);
        this.f62563c = c12260b5;
    }

    /* JADX WARN: Removed duplicated region for block: B:6:0x005d  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x006d A[EXC_TOP_SPLITTER, SYNTHETIC] */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void run() {
        Long valueOf;
        C12260b5 c12260b5 = this.f62563c;
        C12370p3 c12370p3 = c12260b5.f62917a.z().f62917a;
        if (!c12370p3.x().w().o(Y3.ANALYTICS_STORAGE)) {
            c12370p3.a().t().a("Analytics storage consent denied; will not get session id");
        } else if (!c12370p3.x().A(c12370p3.e().a()) && c12370p3.x().f62863r.a() != 0) {
            valueOf = Long.valueOf(c12370p3.x().f62863r.a());
            if (valueOf == null) {
                c12260b5.f62917a.C().b0(this.f62562b, valueOf.longValue());
                return;
            } else {
                try {
                    this.f62562b.l(null);
                    return;
                } catch (RemoteException e10) {
                    this.f62563c.f62917a.a().o().b("getSessionId failed with exception", e10);
                    return;
                }
            }
        }
        valueOf = null;
        if (valueOf == null) {
        }
    }
}
