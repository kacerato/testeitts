package com.google.android.gms.measurement.internal;

import java.util.Objects;

public final class RunnableC12394s4 implements Runnable {

    public final String f63576b;

    public final String f63577c;

    public final Object f63578d;

    public final long f63579e;

    public final C12260b5 f63580f;

    public RunnableC12394s4(C12260b5 c12260b5, String str, String str2, Object obj, long j10) {
        this.f63576b = str;
        this.f63577c = str2;
        this.f63578d = obj;
        this.f63579e = j10;
        Objects.requireNonNull(c12260b5);
        this.f63580f = c12260b5;
    }

    @Override
    public final void run() {
        this.f63580f.B(this.f63576b, this.f63577c, this.f63578d, this.f63579e);
    }
}
