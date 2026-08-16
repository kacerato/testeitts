package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import java.util.Objects;
import java.util.concurrent.Callable;

public final class I3 implements Callable {

    public final o7 f62730b;

    public final Bundle f62731c;

    public final R3 f62732d;

    public I3(R3 r32, o7 o7Var, Bundle bundle) {
        this.f62730b = o7Var;
        this.f62731c = bundle;
        Objects.requireNonNull(r32);
        this.f62732d = r32;
    }

    @Override
    public final Object call() throws Exception {
        R3 r32 = this.f62732d;
        r32.i1().D();
        return r32.i1().p0(this.f62730b, this.f62731c);
    }
}
