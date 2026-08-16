package com.google.android.gms.measurement.internal;

import java.util.Objects;
import java.util.concurrent.Callable;

public final class CallableC12449z3 implements Callable {

    public final String f63735b;

    public final String f63736c;

    public final String f63737d;

    public final R3 f63738e;

    public CallableC12449z3(R3 r32, String str, String str2, String str3) {
        this.f63735b = str;
        this.f63736c = str2;
        this.f63737d = str3;
        Objects.requireNonNull(r32);
        this.f63738e = r32;
    }

    @Override
    public final Object call() throws Exception {
        R3 r32 = this.f63738e;
        r32.i1().D();
        return r32.i1().F0().J0(this.f63735b, this.f63736c, this.f63737d);
    }
}
