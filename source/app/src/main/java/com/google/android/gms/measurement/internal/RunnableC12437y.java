package com.google.android.gms.measurement.internal;

import java.util.Objects;

public final class RunnableC12437y implements Runnable {

    public final U3 f63706b;

    public final AbstractC12445z f63707c;

    public RunnableC12437y(AbstractC12445z abstractC12445z, U3 u32) {
        this.f63706b = u32;
        Objects.requireNonNull(abstractC12445z);
        this.f63707c = abstractC12445z;
    }

    @Override
    public final void run() {
        U3 u32 = this.f63706b;
        u32.c();
        if (C12286f.a()) {
            u32.b().t(this);
            return;
        }
        AbstractC12445z abstractC12445z = this.f63707c;
        boolean c10 = abstractC12445z.c();
        abstractC12445z.e(0L);
        if (c10) {
            abstractC12445z.a();
        }
    }
}
