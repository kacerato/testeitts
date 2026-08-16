package com.google.android.gms.measurement.internal;

import androidx.annotation.WorkerThread;
import com.tonyodev.fetch2core.FetchCoreDefaults;
import java.util.Objects;

public final class C12418v4 extends AbstractC12445z {

    public final C12260b5 f63639e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C12418v4(C12260b5 c12260b5, U3 u32) {
        super(u32);
        Objects.requireNonNull(c12260b5);
        this.f63639e = c12260b5;
    }

    @Override
    @WorkerThread
    public final void a() {
        C12260b5 c12260b5 = this.f63639e;
        if (c12260b5.f62917a.n()) {
            c12260b5.c0().b(FetchCoreDefaults.DEFAULT_PROGRESS_REPORTING_INTERVAL_IN_MILLISECONDS);
        }
    }
}
