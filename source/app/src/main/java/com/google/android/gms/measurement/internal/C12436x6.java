package com.google.android.gms.measurement.internal;

import android.os.Handler;
import android.os.Looper;
import androidx.annotation.WorkerThread;
import com.google.android.gms.internal.measurement.HandlerC12175s0;

public final class C12436x6 extends AbstractC12305h2 {

    public Handler f63701c;

    public boolean f63702d;

    public final C12428w6 f63703e;

    public final C12412u6 f63704f;

    public final C12396s6 f63705g;

    public C12436x6(C12370p3 c12370p3) {
        super(c12370p3);
        this.f63702d = true;
        this.f63703e = new C12428w6(this);
        this.f63704f = new C12412u6(this);
        this.f63705g = new C12396s6(this);
    }

    @Override
    public final boolean m() {
        return false;
    }

    @WorkerThread
    public final void o(boolean z10) {
        h();
        this.f63702d = z10;
    }

    @WorkerThread
    public final boolean p() {
        h();
        return this.f63702d;
    }

    public final void r(long j10) {
        h();
        q();
        C12370p3 c12370p3 = this.f62917a;
        c12370p3.a().w().b("Activity resumed, time", Long.valueOf(j10));
        if (c12370p3.w().H(null, C12281e2.f63179V0)) {
            if (c12370p3.w().N() || this.f63702d) {
                this.f63704f.a(j10);
            }
        } else if (c12370p3.w().N() || c12370p3.x().f62865t.a()) {
            this.f63704f.a(j10);
        }
        this.f63705g.a();
        C12428w6 c12428w6 = this.f63703e;
        C12436x6 c12436x6 = c12428w6.f63683a;
        c12436x6.h();
        if (c12436x6.f62917a.g()) {
            c12428w6.b(c12436x6.f62917a.e().a(), false);
        }
    }

    public final void s(long j10) {
        h();
        q();
        C12370p3 c12370p3 = this.f62917a;
        c12370p3.a().w().b("Activity paused, time", Long.valueOf(j10));
        this.f63705g.b(j10);
        if (c12370p3.w().N()) {
            this.f63704f.b(j10);
        }
    }

    public final Handler t() {
        return this.f63701c;
    }

    @WorkerThread
    public final void q() {
        h();
        if (this.f63701c == null) {
            this.f63701c = new HandlerC12175s0(Looper.getMainLooper());
        }
    }
}
