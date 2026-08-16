package com.google.android.gms.measurement.internal;

import java.util.Objects;
import java.util.concurrent.Callable;

public final class CallableC12425w3 implements Callable {

    public final String f63673b;

    public final String f63674c;

    public final String f63675d;

    public final R3 f63676e;

    public CallableC12425w3(R3 r32, String str, String str2, String str3) {
        this.f63673b = str;
        this.f63674c = str2;
        this.f63675d = str3;
        Objects.requireNonNull(r32);
        this.f63676e = r32;
    }

    @Override
    public final Object call() throws Exception {
        R3 r32 = this.f63676e;
        r32.i1().D();
        return r32.i1().F0().F0(this.f63673b, this.f63674c, this.f63675d);
    }
}
