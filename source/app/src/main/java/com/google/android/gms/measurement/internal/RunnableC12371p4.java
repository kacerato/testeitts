package com.google.android.gms.measurement.internal;

import com.google.android.gms.internal.measurement.InterfaceC12238z0;
import java.util.Objects;

public final class RunnableC12371p4 implements Runnable {

    public final InterfaceC12238z0 f63518b;

    public final String f63519c;

    public final String f63520d;

    public final boolean f63521e;

    public final AppMeasurementDynamiteService f63522f;

    public RunnableC12371p4(AppMeasurementDynamiteService appMeasurementDynamiteService, InterfaceC12238z0 interfaceC12238z0, String str, String str2, boolean z10) {
        this.f63518b = interfaceC12238z0;
        this.f63519c = str;
        this.f63520d = str2;
        this.f63521e = z10;
        Objects.requireNonNull(appMeasurementDynamiteService);
        this.f63522f = appMeasurementDynamiteService;
    }

    @Override
    public final void run() {
        this.f63522f.f62541e.J().h0(this.f63518b, this.f63519c, this.f63520d, this.f63521e);
    }
}
