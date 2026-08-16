package com.google.android.gms.measurement.internal;

import java.util.Objects;
import java.util.concurrent.atomic.AtomicReference;

public final class RunnableC12410u4 implements Runnable {

    public final AtomicReference f63616b;

    public final boolean f63617c;

    public final C12260b5 f63618d;

    public RunnableC12410u4(C12260b5 c12260b5, AtomicReference atomicReference, boolean z10) {
        this.f63616b = atomicReference;
        this.f63617c = z10;
        Objects.requireNonNull(c12260b5);
        this.f63618d = c12260b5;
    }

    @Override
    public final void run() {
        this.f63618d.f62917a.J().i0(this.f63616b, this.f63617c);
    }
}
