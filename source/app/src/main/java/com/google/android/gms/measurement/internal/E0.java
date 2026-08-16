package com.google.android.gms.measurement.internal;

import android.os.Bundle;
import androidx.annotation.WorkerThread;
import androidx.collection.ArrayMap;
import java.util.Iterator;
import java.util.Map;

public final class E0 extends G1 {

    public final Map f62611b;

    public final Map f62612c;

    public long f62613d;

    public E0(C12370p3 c12370p3) {
        super(c12370p3);
        this.f62612c = new ArrayMap();
        this.f62611b = new ArrayMap();
    }

    public final void i(String str, long j10) {
        if (str == null || str.length() == 0) {
            this.f62917a.a().o().a("Ad unit id must be a non-empty string");
        } else {
            this.f62917a.b().t(new RunnableC12246a(this, str, j10));
        }
    }

    public final void j(String str, long j10) {
        if (str == null || str.length() == 0) {
            this.f62917a.a().o().a("Ad unit id must be a non-empty string");
        } else {
            this.f62917a.b().t(new B(this, str, j10));
        }
    }

    @WorkerThread
    public final void k(long j10) {
        C12348m5 q10 = this.f62917a.I().q(false);
        Map map = this.f62611b;
        for (String str : map.o()) {
            p(str, j10 - ((Long) map.get(str)).longValue(), q10);
        }
        if (!map.isEmpty()) {
            o(j10 - this.f62613d, q10);
        }
        n(j10);
    }

    public final void l(String str, long j10) {
        h();
        G0.A.l(str);
        Map map = this.f62612c;
        if (map.isEmpty()) {
            this.f62613d = j10;
        }
        Integer num = (Integer) map.get(str);
        if (num != null) {
            map.put(str, Integer.valueOf(num.intValue() + 1));
        } else if (map.size() >= 100) {
            this.f62917a.a().r().a("Too many ads visible");
        } else {
            map.put(str, 1);
            this.f62611b.put(str, Long.valueOf(j10));
        }
    }

    public final void m(String str, long j10) {
        h();
        G0.A.l(str);
        Map map = this.f62612c;
        Integer num = (Integer) map.get(str);
        if (num == null) {
            this.f62917a.a().o().b("Call to endAdUnitExposure for unknown ad unit id", str);
            return;
        }
        C12348m5 q10 = this.f62917a.I().q(false);
        int intValue = num.intValue() - 1;
        if (intValue != 0) {
            map.put(str, Integer.valueOf(intValue));
            return;
        }
        map.remove(str);
        Map map2 = this.f62611b;
        Long l10 = (Long) map2.get(str);
        if (l10 == null) {
            this.f62917a.a().o().a("First ad unit exposure time was never set");
        } else {
            long longValue = j10 - l10.longValue();
            map2.remove(str);
            p(str, longValue, q10);
        }
        if (map.isEmpty()) {
            long j11 = this.f62613d;
            if (j11 == 0) {
                this.f62917a.a().o().a("First ad exposure time was never set");
            } else {
                o(j10 - j11, q10);
                this.f62613d = 0L;
            }
        }
    }

    @WorkerThread
    public final void o(long j10, C12348m5 c12348m5) {
        if (c12348m5 == null) {
            this.f62917a.a().w().a("Not logging ad exposure. No active activity");
            return;
        }
        if (j10 < 1000) {
            this.f62917a.a().w().b("Not logging ad exposure. Less than 1000 ms. exposure", Long.valueOf(j10));
            return;
        }
        Bundle bundle = new Bundle();
        bundle.putLong("_xt", j10);
        m7.k0(c12348m5, bundle, true);
        this.f62917a.B().t("am", "_xa", bundle);
    }

    @WorkerThread
    public final void p(String str, long j10, C12348m5 c12348m5) {
        if (c12348m5 == null) {
            this.f62917a.a().w().a("Not logging ad unit exposure. No active activity");
            return;
        }
        if (j10 < 1000) {
            this.f62917a.a().w().b("Not logging ad unit exposure. Less than 1000 ms. exposure", Long.valueOf(j10));
            return;
        }
        Bundle bundle = new Bundle();
        bundle.putString("_ai", str);
        bundle.putLong("_xt", j10);
        m7.k0(c12348m5, bundle, true);
        this.f62917a.B().t("am", "_xu", bundle);
    }

    @WorkerThread
    public final void n(long j10) {
        Map map = this.f62611b;
        Iterator it = map.o().iterator();
        while (it.hasNext()) {
            map.put((String) it.next(), Long.valueOf(j10));
        }
        if (map.isEmpty()) {
            return;
        }
        this.f62613d = j10;
    }
}
