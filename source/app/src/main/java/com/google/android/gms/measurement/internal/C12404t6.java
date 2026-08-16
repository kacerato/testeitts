package com.google.android.gms.measurement.internal;

import androidx.annotation.WorkerThread;
import java.util.Objects;

public final class C12404t6 extends AbstractC12445z {

    public final C12412u6 f63602e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C12404t6(C12412u6 c12412u6, U3 u32) {
        super(u32);
        Objects.requireNonNull(c12412u6);
        this.f63602e = c12412u6;
    }

    @Override
    @WorkerThread
    public final void a() {
        C12412u6 c12412u6 = this.f63602e;
        C12436x6 c12436x6 = c12412u6.f63632d;
        c12436x6.h();
        C12370p3 c12370p3 = c12436x6.f62917a;
        c12412u6.d(false, false, c12370p3.e().c());
        c12436x6.f62917a.M().k(c12370p3.e().c());
    }
}
