package com.google.android.gms.measurement.internal;

import android.content.Context;
import android.content.Intent;
import androidx.annotation.MainThread;

public final class U2 {

    public final T2 f62936a;

    public U2(T2 t22) {
        G0.A.r(t22);
        this.f62936a = t22;
    }

    @MainThread
    public final void a(Context context, Intent intent) {
        C12370p3 O10 = C12370p3.O(context, null, null);
        B2 a10 = O10.a();
        if (intent == null) {
            a10.r().a("Receiver called with null intent");
            return;
        }
        O10.c();
        String action = intent.getAction();
        a10.w().b("Local receiver got", action);
        if (!"com.google.android.gms.measurement.UPLOAD".equals(action)) {
            if ("com.android.vending.INSTALL_REFERRER".equals(action)) {
                a10.r().a("Install Referrer Broadcasts are deprecated");
            }
        } else {
            Intent className = new Intent().setClassName(context, "com.google.android.gms.measurement.AppMeasurementService");
            className.setAction("com.google.android.gms.measurement.UPLOAD");
            a10.w().a("Starting wakeful intent.");
            this.f62936a.a(context, className);
        }
    }
}
