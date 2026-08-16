package com.google.android.gms.measurement.internal;

import java.util.Objects;
import java.util.concurrent.Callable;

public final class CallableC12378q3 implements Callable {

    public final String f63529b;

    public final R3 f63530c;

    public CallableC12378q3(R3 r32, String str) {
        this.f63529b = str;
        Objects.requireNonNull(r32);
        this.f63530c = r32;
    }

    @Override
    public final Object call() throws Exception {
        R3 r32 = this.f63530c;
        r32.i1().D();
        return r32.i1().F0().E0(this.f63529b);
    }
}
