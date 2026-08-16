package com.google.android.gms.measurement.internal;

import com.google.android.gms.internal.measurement.InterfaceC12238z0;
import java.util.Objects;

public final class U5 implements Runnable {

    public final InterfaceC12238z0 f62938b;

    public final AppMeasurementDynamiteService f62939c;

    public U5(AppMeasurementDynamiteService appMeasurementDynamiteService, InterfaceC12238z0 interfaceC12238z0) {
        this.f62938b = interfaceC12238z0;
        Objects.requireNonNull(appMeasurementDynamiteService);
        this.f62939c = appMeasurementDynamiteService;
    }

    @Override
    public final void run() {
        AppMeasurementDynamiteService appMeasurementDynamiteService = this.f62939c;
        appMeasurementDynamiteService.f62541e.C().e0(this.f62938b, appMeasurementDynamiteService.f62541e.f());
    }
}
