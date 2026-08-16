package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import java.util.Objects;

public final class RunnableC12386r4 implements Runnable {

    public final String f63546b;

    public final String f63547c;

    public final long f63548d;

    public final Bundle f63549e;

    public final boolean f63550f;

    public final boolean f63551g;

    public final boolean f63552h;

    public final String f63553i;

    public final C12260b5 f63554j;

    public RunnableC12386r4(C12260b5 c12260b5, String str, String str2, long j10, Bundle bundle, boolean z10, boolean z11, boolean z12, String str3) {
        this.f63546b = str;
        this.f63547c = str2;
        this.f63548d = j10;
        this.f63549e = bundle;
        this.f63550f = z10;
        this.f63551g = z11;
        this.f63552h = z12;
        this.f63553i = str3;
        Objects.requireNonNull(c12260b5);
        this.f63554j = c12260b5;
    }

    @Override
    public final void run() {
        this.f63554j.v(this.f63546b, this.f63547c, this.f63548d, this.f63549e, this.f63550f, this.f63551g, this.f63552h, this.f63553i);
    }
}
