package com.google.android.gms.measurement.internal;

import com.google.android.gms.internal.measurement.InterfaceC12238z0;
import java.util.Objects;

public final class RunnableC12403t5 implements Runnable {

    public final InterfaceC12238z0 f63598b;

    public final String f63599c;

    public final String f63600d;

    public final AppMeasurementDynamiteService f63601e;

    public RunnableC12403t5(AppMeasurementDynamiteService appMeasurementDynamiteService, InterfaceC12238z0 interfaceC12238z0, String str, String str2) {
        this.f63598b = interfaceC12238z0;
        this.f63599c = str;
        this.f63600d = str2;
        Objects.requireNonNull(appMeasurementDynamiteService);
        this.f63601e = appMeasurementDynamiteService;
    }

    @Override
    public final void run() {
        this.f63601e.f62541e.J().f0(this.f63598b, this.f63599c, this.f63600d);
    }
}
