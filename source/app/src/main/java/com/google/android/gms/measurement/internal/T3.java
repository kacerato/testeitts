package com.google.android.gms.measurement.internal;

public abstract class T3 extends S3 {

    public boolean f62928b;

    public T3(C12370p3 c12370p3) {
        super(c12370p3);
        this.f62917a.k();
    }

    public abstract boolean i();

    public void j() {
    }

    public final boolean k() {
        return this.f62928b;
    }

    public final void l() {
        if (!k()) {
            throw new IllegalStateException("Not initialized");
        }
    }

    public final void m() {
        if (this.f62928b) {
            throw new IllegalStateException("Can't initialize twice");
        }
        if (i()) {
            return;
        }
        this.f62917a.l();
        this.f62928b = true;
    }

    public final void n() {
        if (this.f62928b) {
            throw new IllegalStateException("Can't initialize twice");
        }
        j();
        this.f62917a.l();
        this.f62928b = true;
    }
}
