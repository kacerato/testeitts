package com.google.android.gms.measurement.internal;

import com.google.android.gms.internal.measurement.InterfaceC12238z0;
import java.util.Objects;

public final class RunnableC12322j3 implements Runnable {

    public final InterfaceC12238z0 f63366b;

    public final AppMeasurementDynamiteService f63367c;

    public RunnableC12322j3(AppMeasurementDynamiteService appMeasurementDynamiteService, InterfaceC12238z0 interfaceC12238z0) {
        this.f63366b = interfaceC12238z0;
        Objects.requireNonNull(appMeasurementDynamiteService);
        this.f63367c = appMeasurementDynamiteService;
    }

    @Override
    public final void run() {
        this.f63367c.f62541e.J().r(this.f63366b);
    }
}
