package com.google.android.gms.measurement.internal;

import android.content.SharedPreferences;
import android.util.Pair;
import androidx.annotation.WorkerThread;
import java.util.Objects;

public final class N2 {

    @v2.d
    public final String f62808a;

    public final String f62809b;

    public final String f62810c;

    public final long f62811d;

    public final P2 f62812e;

    public N2(P2 p22, String str, long j10, byte[] bArr) {
        Objects.requireNonNull(p22);
        this.f62812e = p22;
        G0.A.l("health_monitor");
        G0.A.a(j10 > 0);
        this.f62808a = "health_monitor:start";
        this.f62809b = "health_monitor:count";
        this.f62810c = "health_monitor:value";
        this.f62811d = j10;
    }

    @WorkerThread
    public final void a(String str, long j10) {
        P2 p22 = this.f62812e;
        p22.h();
        if (d() == 0) {
            c();
        }
        if (str == null) {
            str = "";
        }
        SharedPreferences p10 = p22.p();
        String str2 = this.f62809b;
        long j11 = p10.getLong(str2, 0L);
        if (j11 <= 0) {
            SharedPreferences.Editor edit = p22.p().edit();
            edit.putString(this.f62810c, str);
            edit.putLong(str2, 1L);
            edit.apply();
            return;
        }
        long nextLong = p22.f62917a.C().q0().nextLong() & Long.MAX_VALUE;
        long j12 = j11 + 1;
        long j13 = Long.MAX_VALUE / j12;
        SharedPreferences.Editor edit2 = p22.p().edit();
        if (nextLong < j13) {
            edit2.putString(this.f62810c, str);
        }
        edit2.putLong(str2, j12);
        edit2.apply();
    }

    @WorkerThread
    public final Pair b() {
        long abs;
        P2 p22 = this.f62812e;
        p22.h();
        p22.h();
        long d10 = d();
        if (d10 == 0) {
            c();
            abs = 0;
        } else {
            abs = Math.abs(d10 - p22.f62917a.e().a());
        }
        long j10 = this.f62811d;
        if (abs < j10) {
            return null;
        }
        if (abs > j10 + j10) {
            c();
            return null;
        }
        String string = p22.p().getString(this.f62810c, null);
        long j11 = p22.p().getLong(this.f62809b, 0L);
        c();
        return (string == null || j11 <= 0) ? P2.f62847A : new Pair(string, Long.valueOf(j11));
    }

    @WorkerThread
    public final void c() {
        P2 p22 = this.f62812e;
        p22.h();
        long a10 = p22.f62917a.e().a();
        SharedPreferences.Editor edit = p22.p().edit();
        edit.remove(this.f62809b);
        edit.remove(this.f62810c);
        edit.putLong(this.f62808a, a10);
        edit.apply();
    }

    @WorkerThread
    public final long d() {
        return this.f62812e.p().getLong(this.f62808a, 0L);
    }
}
