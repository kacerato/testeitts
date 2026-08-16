package com.google.android.gms.measurement.internal;

import java.util.Objects;
import java.util.concurrent.Callable;

public final class D3 implements Callable {

    public final o7 f62594b;

    public final R3 f62595c;

    public D3(R3 r32, o7 o7Var) {
        this.f62594b = o7Var;
        Objects.requireNonNull(r32);
        this.f62595c = r32;
    }

    @Override
    public final Object call() throws Exception {
        R3 r32 = this.f62595c;
        r32.i1().D();
        return new C12366p(r32.i1().S0(this.f62594b.f63444b));
    }
}
