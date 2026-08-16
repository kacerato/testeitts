package com.google.android.gms.measurement.internal;

import android.os.Handler;
import com.google.android.gms.internal.measurement.HandlerC12175s0;

public abstract class AbstractC12445z {

    public static volatile Handler f63725d;

    public final U3 f63726a;

    public final Runnable f63727b;

    public volatile long f63728c;

    public AbstractC12445z(U3 u32) {
        G0.A.r(u32);
        this.f63726a = u32;
        this.f63727b = new RunnableC12437y(this, u32);
    }

    public abstract void a();

    public final void b(long j10) {
        d();
        if (j10 >= 0) {
            U3 u32 = this.f63726a;
            this.f63728c = u32.e().a();
            if (f().postDelayed(this.f63727b, j10)) {
                return;
            }
            u32.a().o().b("Failed to schedule delayed post. time", Long.valueOf(j10));
        }
    }

    public final boolean c() {
        return this.f63728c != 0;
    }

    public final void d() {
        this.f63728c = 0L;
        f().removeCallbacks(this.f63727b);
    }

    public final void e(long j10) {
        this.f63728c = 0L;
    }

    public final Handler f() {
        Handler handler;
        if (f63725d != null) {
            return f63725d;
        }
        synchronized (AbstractC12445z.class) {
            try {
                if (f63725d == null) {
                    f63725d = new HandlerC12175s0(this.f63726a.d().getMainLooper());
                }
                handler = f63725d;
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return handler;
    }
}
