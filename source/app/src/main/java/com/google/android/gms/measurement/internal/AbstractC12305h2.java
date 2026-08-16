package com.google.android.gms.measurement.internal;

import androidx.annotation.WorkerThread;

public abstract class AbstractC12305h2 extends G1 {

    public boolean f63319b;

    public AbstractC12305h2(C12370p3 c12370p3) {
        super(c12370p3);
        this.f62917a.k();
    }

    public final boolean i() {
        return this.f63319b;
    }

    public final void j() {
        if (!i()) {
            throw new IllegalStateException("Not initialized");
        }
    }

    public final void k() {
        if (this.f63319b) {
            throw new IllegalStateException("Can't initialize twice");
        }
        if (m()) {
            return;
        }
        this.f62917a.l();
        this.f63319b = true;
    }

    public final void l() {
        if (this.f63319b) {
            throw new IllegalStateException("Can't initialize twice");
        }
        n();
        this.f62917a.l();
        this.f63319b = true;
    }

    public abstract boolean m();

    @WorkerThread
    public void n() {
    }
}
