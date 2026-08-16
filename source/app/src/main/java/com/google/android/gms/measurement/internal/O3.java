package com.google.android.gms.measurement.internal;

import com.google.android.gms.internal.measurement.InterfaceC12238z0;
import java.util.Objects;

public final class O3 implements Runnable {

    public final InterfaceC12238z0 f62829b;

    public final I f62830c;

    public final String f62831d;

    public final AppMeasurementDynamiteService f62832e;

    public O3(AppMeasurementDynamiteService appMeasurementDynamiteService, InterfaceC12238z0 interfaceC12238z0, I i10, String str) {
        this.f62829b = interfaceC12238z0;
        this.f62830c = i10;
        this.f62831d = str;
        Objects.requireNonNull(appMeasurementDynamiteService);
        this.f62832e = appMeasurementDynamiteService;
    }

    @Override
    public final void run() {
        this.f62832e.f62541e.J().B(this.f62829b, this.f62830c, this.f62831d);
    }
}
