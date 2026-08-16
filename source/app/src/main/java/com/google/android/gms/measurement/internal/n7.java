package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import android.os.RemoteException;
import java.util.Objects;

public final class n7 implements InterfaceC12283e4 {

    public final com.google.android.gms.internal.measurement.F0 f63424a;

    public final AppMeasurementDynamiteService f63425b;

    public n7(AppMeasurementDynamiteService appMeasurementDynamiteService, com.google.android.gms.internal.measurement.F0 f02) {
        Objects.requireNonNull(appMeasurementDynamiteService);
        this.f63425b = appMeasurementDynamiteService;
        this.f63424a = f02;
    }

    @Override
    public final void a(String str, String str2, Bundle bundle, long j10) {
        try {
            this.f63424a.v(str, str2, bundle, j10);
        } catch (RemoteException e10) {
            C12370p3 c12370p3 = this.f63425b.f62541e;
            if (c12370p3 != null) {
                c12370p3.a().r().b("Event listener threw exception", e10);
            }
        }
    }
}
