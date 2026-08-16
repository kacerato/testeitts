package com.google.android.gms.measurement.internal;

import G0.C2599x;
import android.app.AlarmManager;
import android.content.Context;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicLong;
import v1.InterfaceC15785f;

public final class C12432x2 {

    public static C12432x2 f63690d;

    public final C12370p3 f63691a;

    public final G0.J f63692b;

    public final AtomicLong f63693c = new AtomicLong(-1);

    public C12432x2(Context context, C12370p3 c12370p3) {
        this.f63692b = G0.I.b(context, G0.K.a().b("measurement:api").a());
        this.f63691a = c12370p3;
    }

    public static C12432x2 a(C12370p3 c12370p3) {
        if (f63690d == null) {
            f63690d = new C12432x2(c12370p3.d(), c12370p3);
        }
        return f63690d;
    }

    public final synchronized void b(int i10, int i11, long j10, long j11, int i12) {
        final long c10 = this.f63691a.e().c();
        AtomicLong atomicLong = this.f63693c;
        if (atomicLong.get() != -1 && c10 - atomicLong.get() <= AlarmManager.INTERVAL_HALF_HOUR) {
            return;
        }
        this.f63692b.t(new G0.H(0, Arrays.asList(new C2599x(36301, i11, 0, j10, j11, null, null, 0, i12)))).i(new InterfaceC15785f() {
            @Override
            public final void c(Exception exc) {
                C12432x2.this.c(c10, exc);
            }
        });
    }

    public final void c(long j10, Exception exc) {
        this.f63693c.set(j10);
    }
}
