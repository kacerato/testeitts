package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import androidx.annotation.VisibleForTesting;
import androidx.annotation.WorkerThread;
import java.util.Objects;

public final class C12412u6 {

    @VisibleForTesting
    public long f63629a;

    @VisibleForTesting
    public long f63630b;

    public final AbstractC12445z f63631c;

    public final C12436x6 f63632d;

    public C12412u6(C12436x6 c12436x6) {
        Objects.requireNonNull(c12436x6);
        this.f63632d = c12436x6;
        this.f63631c = new C12404t6(this, c12436x6.f62917a);
        long c10 = c12436x6.f62917a.e().c();
        this.f63629a = c10;
        this.f63630b = c10;
    }

    @WorkerThread
    public final void a(long j10) {
        this.f63632d.h();
        this.f63631c.d();
        this.f63629a = j10;
        this.f63630b = j10;
    }

    @WorkerThread
    public final void b(long j10) {
        this.f63631c.d();
    }

    public final void c() {
        this.f63631c.d();
        long c10 = this.f63632d.f62917a.e().c();
        this.f63629a = c10;
        this.f63630b = c10;
    }

    @WorkerThread
    public final boolean d(boolean z10, boolean z11, long j10) {
        C12436x6 c12436x6 = this.f63632d;
        c12436x6.h();
        c12436x6.j();
        if (c12436x6.f62917a.g()) {
            C12370p3 c12370p3 = c12436x6.f62917a;
            c12370p3.x().f62862q.b(c12370p3.e().a());
        }
        long j11 = j10 - this.f63629a;
        if (!z10 && j11 < 1000) {
            c12436x6.f62917a.a().w().b("Screen exposed for less than 1000 ms. Event not sent. time", Long.valueOf(j11));
            return false;
        }
        if (!z11) {
            j11 = j10 - this.f63630b;
            this.f63630b = j10;
        }
        C12370p3 c12370p32 = c12436x6.f62917a;
        c12370p32.a().w().b("Recording user engagement, ms", Long.valueOf(j11));
        Bundle bundle = new Bundle();
        bundle.putLong("_et", j11);
        boolean z12 = !c12370p32.w().N();
        C12370p3 c12370p33 = c12436x6.f62917a;
        m7.k0(c12370p33.I().q(z12), bundle, true);
        if (!z11) {
            c12370p33.B().t("auto", "_e", bundle);
        }
        this.f63629a = j10;
        AbstractC12445z abstractC12445z = this.f63631c;
        abstractC12445z.d();
        abstractC12445z.b(((Long) C12281e2.f63234r0.b(null)).longValue());
        return true;
    }
}
