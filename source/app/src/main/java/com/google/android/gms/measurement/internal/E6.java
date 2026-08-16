package com.google.android.gms.measurement.internal;

import java.util.Objects;

public final class E6 extends AbstractC12445z {

    public final F6 f62628e;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public E6(F6 f62, U3 u32) {
        super(u32);
        Objects.requireNonNull(f62);
        this.f62628e = f62;
    }

    @Override
    public final void a() {
        F6 f62 = this.f62628e;
        f62.n();
        f62.f62917a.a().w().a("Starting upload from DelayedRunnable");
        f62.f62657b.r();
    }
}
