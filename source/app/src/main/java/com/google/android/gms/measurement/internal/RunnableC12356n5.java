package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import java.util.Objects;

public final class RunnableC12356n5 implements Runnable {

    public final Bundle f63418b;

    public final C12348m5 f63419c;

    public final C12348m5 f63420d;

    public final long f63421e;

    public final C12411u5 f63422f;

    public RunnableC12356n5(C12411u5 c12411u5, Bundle bundle, C12348m5 c12348m5, C12348m5 c12348m52, long j10) {
        this.f63418b = bundle;
        this.f63419c = c12348m5;
        this.f63420d = c12348m52;
        this.f63421e = j10;
        Objects.requireNonNull(c12411u5);
        this.f63422f = c12411u5;
    }

    @Override
    public final void run() {
        this.f63422f.A(this.f63418b, this.f63419c, this.f63420d, this.f63421e);
    }
}
