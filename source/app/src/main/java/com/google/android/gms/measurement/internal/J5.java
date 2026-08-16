package com.google.android.gms.measurement.internal;

import java.util.Objects;

public final class J5 extends AbstractC12445z {

    public final C12293f6 f62751e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public J5(C12293f6 c12293f6, U3 u32) {
        super(u32);
        Objects.requireNonNull(c12293f6);
        this.f62751e = c12293f6;
    }

    @Override
    public final void a() {
        this.f62751e.f62917a.a().r().a("Tasks have been queued for a long time");
    }
}
