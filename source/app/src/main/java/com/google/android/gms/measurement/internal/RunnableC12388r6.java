package com.google.android.gms.measurement.internal;

import java.util.Objects;

public final class RunnableC12388r6 implements Runnable {

    public final long f63558b;

    public final long f63559c;

    public final C12396s6 f63560d;

    public RunnableC12388r6(C12396s6 c12396s6, long j10, long j11) {
        Objects.requireNonNull(c12396s6);
        this.f63560d = c12396s6;
        this.f63558b = j10;
        this.f63559c = j11;
    }

    @Override
    public final void run() {
        this.f63560d.f63583b.f62917a.b().t(new Runnable() {
            @Override
            public final void run() {
                RunnableC12388r6 runnableC12388r6 = RunnableC12388r6.this;
                C12436x6 c12436x6 = runnableC12388r6.f63560d.f63583b;
                c12436x6.h();
                C12370p3 c12370p3 = c12436x6.f62917a;
                c12370p3.a().v().a("Application going to the background");
                c12370p3.x().f62865t.b(true);
                c12436x6.o(true);
                if (!c12370p3.w().N()) {
                    long j10 = runnableC12388r6.f63559c;
                    C12412u6 c12412u6 = c12436x6.f63704f;
                    c12412u6.d(false, false, j10);
                    c12412u6.b(j10);
                }
                c12370p3.a().u().b("Application backgrounded at: timestamp_millis", Long.valueOf(runnableC12388r6.f63558b));
                C12370p3 c12370p32 = c12436x6.f62917a;
                C12260b5 B10 = c12370p32.B();
                B10.h();
                C12370p3 c12370p33 = B10.f62917a;
                B10.j();
                C12293f6 J10 = c12370p33.J();
                J10.h();
                J10.j();
                if (!J10.y() || J10.f62917a.C().W() >= 242600) {
                    c12370p33.J().t();
                }
                if (c12370p3.w().H(null, C12281e2.f63165O0)) {
                    long D10 = c12370p3.C().P(c12370p3.d().getPackageName(), c12370p3.w().R()) ? 1000L : c12370p3.w().D(c12370p3.d().getPackageName(), C12281e2.f63144E);
                    c12370p3.a().w().b("[sgtm] Scheduling batch upload with minimum latency in millis", Long.valueOf(D10));
                    c12370p32.N().o(D10);
                }
            }
        });
    }
}
