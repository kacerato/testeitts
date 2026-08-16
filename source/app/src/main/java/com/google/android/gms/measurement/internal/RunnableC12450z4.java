package com.google.android.gms.measurement.internal;

import java.util.Objects;
import java.util.concurrent.atomic.AtomicReference;

public final class RunnableC12450z4 implements Runnable {

    public final AtomicReference f63739b;

    public final String f63740c;

    public final String f63741d;

    public final C12260b5 f63742e;

    public RunnableC12450z4(C12260b5 c12260b5, AtomicReference atomicReference, String str, String str2, String str3) {
        this.f63739b = atomicReference;
        this.f63740c = str2;
        this.f63741d = str3;
        Objects.requireNonNull(c12260b5);
        this.f63742e = c12260b5;
    }

    @Override
    public final void run() {
        this.f63742e.f62917a.J().e0(this.f63739b, null, this.f63740c, this.f63741d);
    }
}
