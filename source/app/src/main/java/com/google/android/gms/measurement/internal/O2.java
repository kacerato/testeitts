package com.google.android.gms.measurement.internal;

import android.content.SharedPreferences;
import androidx.annotation.WorkerThread;
import java.util.Objects;

public final class O2 {

    public final String f62825a;

    public boolean f62826b;

    public String f62827c;

    public final P2 f62828d;

    public O2(P2 p22, String str, String str2) {
        Objects.requireNonNull(p22);
        this.f62828d = p22;
        G0.A.l(str);
        this.f62825a = str;
    }

    @WorkerThread
    public final String a() {
        if (!this.f62826b) {
            this.f62826b = true;
            P2 p22 = this.f62828d;
            this.f62827c = p22.p().getString(this.f62825a, null);
        }
        return this.f62827c;
    }

    @WorkerThread
    public final void b(String str) {
        SharedPreferences.Editor edit = this.f62828d.p().edit();
        edit.putString(this.f62825a, str);
        edit.apply();
        this.f62827c = str;
    }
}
