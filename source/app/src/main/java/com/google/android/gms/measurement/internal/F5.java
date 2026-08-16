package com.google.android.gms.measurement.internal;

import java.util.Objects;

public final class F5 extends AbstractC12445z {

    public final C12293f6 f62644e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public F5(C12293f6 c12293f6, U3 u32) {
        super(u32);
        Objects.requireNonNull(c12293f6);
        this.f62644e = c12293f6;
    }

    @Override
    public final void a() {
        C12293f6 c12293f6 = this.f62644e;
        c12293f6.h();
        if (c12293f6.W()) {
            c12293f6.f62917a.a().w().a("Inactivity, disconnecting from the service");
            c12293f6.A();
        }
    }
}
