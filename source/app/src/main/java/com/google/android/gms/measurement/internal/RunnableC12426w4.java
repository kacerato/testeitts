package com.google.android.gms.measurement.internal;

import android.text.TextUtils;
import java.util.Objects;
import java.util.concurrent.atomic.AtomicReference;

public final class RunnableC12426w4 implements Runnable {

    public final long f63677b;

    public final C12260b5 f63678c;

    public RunnableC12426w4(C12260b5 c12260b5, long j10) {
        this.f63677b = j10;
        Objects.requireNonNull(c12260b5);
        this.f63678c = c12260b5;
    }

    @Override
    public final void run() {
        C12260b5 c12260b5 = this.f63678c;
        c12260b5.h();
        c12260b5.j();
        C12370p3 c12370p3 = c12260b5.f62917a;
        c12370p3.a().v().a("Resetting analytics data (FE)");
        C12370p3 c12370p32 = c12260b5.f62917a;
        C12436x6 z10 = c12370p32.z();
        z10.h();
        z10.f63704f.c();
        c12370p32.L().p();
        boolean z11 = !c12260b5.f62917a.g();
        P2 x10 = c12370p3.x();
        x10.f62851f.b(this.f63677b);
        C12370p3 c12370p33 = x10.f62917a;
        if (!TextUtils.isEmpty(c12370p33.x().f62868w.a())) {
            x10.f62868w.b(null);
        }
        x10.f62862q.b(0L);
        x10.f62863r.b(0L);
        if (!c12370p33.w().L()) {
            x10.y(z11);
        }
        x10.f62869x.b(null);
        x10.f62870y.b(0L);
        x10.f62871z.b(null);
        c12370p32.J().p();
        c12370p32.z().f63703e.a();
        c12260b5.f63040s = z11;
        c12370p32.J().q(new AtomicReference());
    }
}
