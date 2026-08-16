package com.google.android.gms.measurement.internal;

import android.app.ActivityManager;
import android.os.Bundle;
import android.text.TextUtils;
import androidx.annotation.VisibleForTesting;
import androidx.annotation.WorkerThread;
import java.util.Objects;

public final class C12428w6 {

    public final C12436x6 f63683a;

    public C12428w6(C12436x6 c12436x6) {
        Objects.requireNonNull(c12436x6);
        this.f63683a = c12436x6;
    }

    @WorkerThread
    public final void a() {
        C12436x6 c12436x6 = this.f63683a;
        c12436x6.h();
        C12370p3 c12370p3 = c12436x6.f62917a;
        if (c12370p3.x().A(c12370p3.e().a())) {
            c12370p3.x().f62858m.b(true);
            ActivityManager.RunningAppProcessInfo runningAppProcessInfo = new ActivityManager.RunningAppProcessInfo();
            ActivityManager.getMyMemoryState(runningAppProcessInfo);
            if (runningAppProcessInfo.importance == 100) {
                c12370p3.a().w().a("Detected application was in foreground");
                c(c12370p3.e().a(), false);
            }
        }
    }

    @WorkerThread
    public final void b(long j10, boolean z10) {
        C12436x6 c12436x6 = this.f63683a;
        c12436x6.h();
        c12436x6.q();
        C12370p3 c12370p3 = c12436x6.f62917a;
        if (c12370p3.x().A(j10)) {
            c12370p3.x().f62858m.b(true);
            c12436x6.f62917a.L().p();
        }
        c12370p3.x().f62862q.b(j10);
        if (c12370p3.x().f62858m.a()) {
            c(j10, z10);
        }
    }

    @VisibleForTesting
    @WorkerThread
    public final void c(long j10, boolean z10) {
        C12436x6 c12436x6 = this.f63683a;
        c12436x6.h();
        if (c12436x6.f62917a.g()) {
            C12370p3 c12370p3 = c12436x6.f62917a;
            c12370p3.x().f62862q.b(j10);
            c12370p3.a().w().b("Session started, time", Long.valueOf(c12370p3.e().c()));
            long j11 = j10 / 1000;
            C12370p3 c12370p32 = c12436x6.f62917a;
            c12370p32.B().B("auto", "_sid", Long.valueOf(j11), j10);
            c12370p3.x().f62863r.b(j11);
            c12370p3.x().f62858m.b(false);
            Bundle bundle = new Bundle();
            bundle.putLong("_sid", j11);
            c12370p32.B().u("auto", "_s", j10, bundle);
            String a10 = c12370p3.x().f62868w.a();
            if (TextUtils.isEmpty(a10)) {
                return;
            }
            Bundle bundle2 = new Bundle();
            bundle2.putString("_ffr", a10);
            c12370p32.B().u("auto", "_ssr", j10, bundle2);
        }
    }
}
