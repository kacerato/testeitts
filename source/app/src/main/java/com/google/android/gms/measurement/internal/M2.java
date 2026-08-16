package com.google.android.gms.measurement.internal;

import android.content.SharedPreferences;
import androidx.annotation.WorkerThread;
import java.util.Objects;

public final class M2 {

    public final String f62787a;

    public final long f62788b;

    public boolean f62789c;

    public long f62790d;

    public final P2 f62791e;

    public M2(P2 p22, String str, long j10) {
        Objects.requireNonNull(p22);
        this.f62791e = p22;
        G0.A.l(str);
        this.f62787a = str;
        this.f62788b = j10;
    }

    @WorkerThread
    public final long a() {
        if (!this.f62789c) {
            this.f62789c = true;
            P2 p22 = this.f62791e;
            this.f62790d = p22.p().getLong(this.f62787a, this.f62788b);
        }
        return this.f62790d;
    }

    @WorkerThread
    public final void b(long j10) {
        SharedPreferences.Editor edit = this.f62791e.p().edit();
        edit.putLong(this.f62787a, j10);
        edit.apply();
        this.f62790d = j10;
    }
}
