package com.google.android.gms.measurement.internal;

import android.content.ComponentName;
import android.content.Context;
import java.util.Objects;

public final class V5 implements Runnable {

    public final Z5 f62947b;

    public V5(Z5 z52) {
        Objects.requireNonNull(z52);
        this.f62947b = z52;
    }

    @Override
    public final void run() {
        C12293f6 c12293f6 = this.f62947b.f62994e;
        C12370p3 c12370p3 = c12293f6.f62917a;
        Context d10 = c12370p3.d();
        c12370p3.c();
        c12293f6.K(new ComponentName(d10, "com.google.android.gms.measurement.AppMeasurementService"));
    }
}
