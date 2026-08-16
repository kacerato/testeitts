package com.google.android.gms.measurement.internal;

import java.util.Objects;
import java.util.concurrent.Callable;

public final class CallableC12441y3 implements Callable {

    public final String f63716b;

    public final String f63717c;

    public final String f63718d;

    public final R3 f63719e;

    public CallableC12441y3(R3 r32, String str, String str2, String str3) {
        this.f63716b = str;
        this.f63717c = str2;
        this.f63718d = str3;
        Objects.requireNonNull(r32);
        this.f63719e = r32;
    }

    @Override
    public final Object call() throws Exception {
        R3 r32 = this.f63719e;
        r32.i1().D();
        return r32.i1().F0().J0(this.f63716b, this.f63717c, this.f63718d);
    }
}
