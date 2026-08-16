package com.google.android.gms.measurement.internal;

import java.util.Objects;

public final class RunnableC12401t3 implements Runnable {

    public final String f63591b;

    public final String f63592c;

    public final String f63593d;

    public final long f63594e;

    public final R3 f63595f;

    public RunnableC12401t3(R3 r32, String str, String str2, String str3, long j10) {
        this.f63591b = str;
        this.f63592c = str2;
        this.f63593d = str3;
        this.f63594e = j10;
        Objects.requireNonNull(r32);
        this.f63595f = r32;
    }

    @Override
    public final void run() {
        String str = this.f63591b;
        if (str == null) {
            R3 r32 = this.f63595f;
            r32.i1().s0(this.f63592c, null);
        } else {
            C12348m5 c12348m5 = new C12348m5(this.f63593d, str, this.f63594e);
            R3 r33 = this.f63595f;
            r33.i1().s0(this.f63592c, c12348m5);
        }
    }
}
