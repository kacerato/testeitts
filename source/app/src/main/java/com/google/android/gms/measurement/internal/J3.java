package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import java.util.Objects;
import java.util.concurrent.Callable;

public final class J3 implements Callable {

    public final o7 f62744b;

    public final Bundle f62745c;

    public final R3 f62746d;

    public J3(R3 r32, o7 o7Var, Bundle bundle) {
        this.f62744b = o7Var;
        this.f62745c = bundle;
        Objects.requireNonNull(r32);
        this.f62746d = r32;
    }

    @Override
    public final Object call() throws Exception {
        R3 r32 = this.f62746d;
        r32.i1().D();
        return r32.i1().p0(this.f62744b, this.f62745c);
    }
}
