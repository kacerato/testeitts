package com.google.android.gms.measurement.internal;

import T0.InterfaceC3037g;

public final class B6 {

    public final InterfaceC3037g f62567a;

    public long f62568b;

    public B6(InterfaceC3037g interfaceC3037g) {
        G0.A.r(interfaceC3037g);
        this.f62567a = interfaceC3037g;
    }

    public final void a() {
        this.f62568b = this.f62567a.c();
    }

    public final void b() {
        this.f62568b = 0L;
    }

    public final boolean c(long j10) {
        return this.f62568b == 0 || this.f62567a.c() - this.f62568b >= 3600000;
    }
}
