package com.google.android.gms.measurement.internal;

import java.util.Objects;
import java.util.concurrent.Callable;

public final class CallableC12433x3 implements Callable {

    public final String f63694b;

    public final String f63695c;

    public final String f63696d;

    public final R3 f63697e;

    public CallableC12433x3(R3 r32, String str, String str2, String str3) {
        this.f63694b = str;
        this.f63695c = str2;
        this.f63696d = str3;
        Objects.requireNonNull(r32);
        this.f63697e = r32;
    }

    @Override
    public final Object call() throws Exception {
        R3 r32 = this.f63697e;
        r32.i1().D();
        return r32.i1().F0().F0(this.f63694b, this.f63695c, this.f63696d);
    }
}
