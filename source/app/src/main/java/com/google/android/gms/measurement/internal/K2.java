package com.google.android.gms.measurement.internal;

import android.content.SharedPreferences;
import androidx.annotation.WorkerThread;
import java.util.Objects;

public final class K2 {

    public final String f62756a;

    public final boolean f62757b;

    public boolean f62758c;

    public boolean f62759d;

    public final P2 f62760e;

    public K2(P2 p22, String str, boolean z10) {
        Objects.requireNonNull(p22);
        this.f62760e = p22;
        G0.A.l(str);
        this.f62756a = str;
        this.f62757b = z10;
    }

    @WorkerThread
    public final boolean a() {
        if (!this.f62758c) {
            this.f62758c = true;
            P2 p22 = this.f62760e;
            this.f62759d = p22.p().getBoolean(this.f62756a, this.f62757b);
        }
        return this.f62759d;
    }

    @WorkerThread
    public final void b(boolean z10) {
        SharedPreferences.Editor edit = this.f62760e.p().edit();
        edit.putBoolean(this.f62756a, z10);
        edit.apply();
        this.f62759d = z10;
    }
}
