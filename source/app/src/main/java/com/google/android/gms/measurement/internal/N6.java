package com.google.android.gms.measurement.internal;

public abstract class N6 extends G6 {

    public boolean f62821c;

    public N6(c7 c7Var) {
        super(c7Var);
        this.f62657b.d0();
    }

    public final boolean i() {
        return this.f62821c;
    }

    public final void j() {
        if (!i()) {
            throw new IllegalStateException("Not initialized");
        }
    }

    public final void k() {
        if (this.f62821c) {
            throw new IllegalStateException("Can't initialize twice");
        }
        l();
        this.f62657b.e0();
        this.f62821c = true;
    }

    public abstract boolean l();
}
