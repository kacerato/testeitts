package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import java.util.Objects;

public final class V6 implements Runnable {

    public final String f62948b;

    public final String f62949c;

    public final Bundle f62950d;

    public final X6 f62951e;

    public V6(X6 x62, String str, String str2, Bundle bundle) {
        this.f62948b = str;
        this.f62949c = str2;
        this.f62950d = bundle;
        Objects.requireNonNull(x62);
        this.f62951e = x62;
    }

    @Override
    public final void run() {
        c7 c7Var = this.f62951e.f62969a;
        m7 N02 = c7Var.N0();
        long a10 = c7Var.e().a();
        String str = this.f62948b;
        c7Var.i((I) G0.A.r(N02.R(str, this.f62949c, this.f62950d, "auto", a10, false, true)), str);
    }
}
