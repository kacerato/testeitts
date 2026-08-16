package com.google.android.gms.measurement.internal;

import androidx.annotation.WorkerThread;
import com.tonyodev.fetch2core.FetchCoreDefaults;
import java.util.Objects;

public final class C12396s6 {

    public RunnableC12388r6 f63582a;

    public final C12436x6 f63583b;

    public C12396s6(C12436x6 c12436x6) {
        Objects.requireNonNull(c12436x6);
        this.f63583b = c12436x6;
    }

    @WorkerThread
    public final void a() {
        C12436x6 c12436x6 = this.f63583b;
        c12436x6.h();
        RunnableC12388r6 runnableC12388r6 = this.f63582a;
        if (runnableC12388r6 != null) {
            c12436x6.t().removeCallbacks(runnableC12388r6);
        }
        C12370p3 c12370p3 = c12436x6.f62917a;
        c12370p3.x().f62865t.b(false);
        c12436x6.o(false);
        if (c12370p3.w().H(null, C12281e2.f63177U0)) {
            C12370p3 c12370p32 = c12436x6.f62917a;
            if (c12370p32.B().v0()) {
                c12370p3.a().w().a("Retrying trigger URI registration in foreground");
                c12370p32.B().x0();
            }
        }
    }

    @WorkerThread
    public final void b(long j10) {
        C12436x6 c12436x6 = this.f63583b;
        this.f63582a = new RunnableC12388r6(this, c12436x6.f62917a.e().a(), j10);
        c12436x6.t().postDelayed(this.f63582a, FetchCoreDefaults.DEFAULT_PROGRESS_REPORTING_INTERVAL_IN_MILLISECONDS);
    }
}
