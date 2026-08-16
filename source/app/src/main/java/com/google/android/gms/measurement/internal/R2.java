package com.google.android.gms.measurement.internal;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import androidx.annotation.MainThread;
import java.util.Objects;

public final class R2 implements ServiceConnection {

    public final String f62903c;

    public final S2 f62904d;

    public R2(S2 s22, String str) {
        Objects.requireNonNull(s22);
        this.f62904d = s22;
        this.f62903c = str;
    }

    public final String a() {
        return this.f62903c;
    }

    @Override
    @MainThread
    public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
        if (iBinder == null) {
            this.f62904d.f62916a.a().r().a("Install Referrer connection returned with null binder");
            return;
        }
        try {
            com.google.android.gms.internal.measurement.U k10 = com.google.android.gms.internal.measurement.T.k(iBinder);
            if (k10 == null) {
                this.f62904d.f62916a.a().r().a("Install Referrer Service implementation was not found");
                return;
            }
            C12370p3 c12370p3 = this.f62904d.f62916a;
            c12370p3.a().w().a("Install Referrer Service connected");
            c12370p3.b().t(new Q2(this, k10, this));
        } catch (RuntimeException e10) {
            this.f62904d.f62916a.a().r().b("Exception occurred while calling Install Referrer API", e10);
        }
    }

    @Override
    @MainThread
    public final void onServiceDisconnected(ComponentName componentName) {
        this.f62904d.f62916a.a().w().a("Install Referrer Service disconnected");
    }
}
