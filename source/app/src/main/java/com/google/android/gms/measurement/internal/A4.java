package com.google.android.gms.measurement.internal;

import java.util.Objects;
import java.util.concurrent.atomic.AtomicReference;

public final class A4 implements Runnable {

    public final AtomicReference f62532b;

    public final String f62533c;

    public final String f62534d;

    public final boolean f62535e;

    public final C12260b5 f62536f;

    public A4(C12260b5 c12260b5, AtomicReference atomicReference, String str, String str2, String str3, boolean z10) {
        this.f62532b = atomicReference;
        this.f62533c = str2;
        this.f62534d = str3;
        this.f62535e = z10;
        Objects.requireNonNull(c12260b5);
        this.f62536f = c12260b5;
    }

    @Override
    public final void run() {
        this.f62536f.f62917a.J().g0(this.f62532b, null, this.f62533c, this.f62534d, this.f62535e);
    }
}
