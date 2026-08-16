package com.google.android.gms.internal.measurement;

import android.os.RemoteException;
import java.util.Objects;

public abstract class AbstractRunnableC12212w1 implements Runnable {

    public final long f62456b;

    public final long f62457c;

    public final boolean f62458d;

    public final I1 f62459e;

    public AbstractRunnableC12212w1(I1 i12, boolean z10) {
        Objects.requireNonNull(i12);
        this.f62459e = i12;
        this.f62456b = i12.f61948b.a();
        this.f62457c = i12.f61948b.c();
        this.f62458d = z10;
    }

    public abstract void a() throws RemoteException;

    public void b() {
    }

    @Override
    public final void run() {
        if (this.f62459e.p()) {
            b();
            return;
        }
        try {
            a();
        } catch (Exception e10) {
            this.f62459e.n(e10, false, this.f62458d);
            b();
        }
    }
}
