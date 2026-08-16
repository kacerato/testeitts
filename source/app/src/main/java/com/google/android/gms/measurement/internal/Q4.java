package com.google.android.gms.measurement.internal;

import java.util.Objects;

public final class Q4 implements Runnable {

    public final W6 f62891b;

    public final AppMeasurementDynamiteService f62892c;

    public Q4(AppMeasurementDynamiteService appMeasurementDynamiteService, W6 w62) {
        this.f62891b = w62;
        Objects.requireNonNull(appMeasurementDynamiteService);
        this.f62892c = appMeasurementDynamiteService;
    }

    @Override
    public final void run() {
        this.f62892c.f62541e.B().J(this.f62891b);
    }
}
