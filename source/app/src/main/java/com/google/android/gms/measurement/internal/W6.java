package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.os.RemoteException;
import java.util.Objects;

public final class W6 implements InterfaceC12275d4 {

    public final com.google.android.gms.internal.measurement.F0 f62959a;

    public final AppMeasurementDynamiteService f62960b;

    public W6(AppMeasurementDynamiteService appMeasurementDynamiteService, com.google.android.gms.internal.measurement.F0 f02) {
        Objects.requireNonNull(appMeasurementDynamiteService);
        this.f62960b = appMeasurementDynamiteService;
        this.f62959a = f02;
    }

    @Override
    public final void a(String str, String str2, Bundle bundle, long j10) {
        try {
            this.f62959a.v(str, str2, bundle, j10);
        } catch (RemoteException e10) {
            C12370p3 c12370p3 = this.f62960b.f62541e;
            if (c12370p3 != null) {
                c12370p3.a().r().b("Event interceptor threw exception", e10);
            }
        }
    }
}
