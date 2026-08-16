package com.google.android.gms.measurement.internal;

import android.content.ComponentName;
import java.util.Objects;

public final class S5 implements Runnable {

    public final ComponentName f62920b;

    public final Z5 f62921c;

    public S5(Z5 z52, ComponentName componentName) {
        this.f62920b = componentName;
        Objects.requireNonNull(z52);
        this.f62921c = z52;
    }

    @Override
    public final void run() {
        this.f62921c.f62994e.K(this.f62920b);
    }
}
