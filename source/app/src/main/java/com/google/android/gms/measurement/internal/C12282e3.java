package com.google.android.gms.measurement.internal;

import java.lang.Thread;
import java.util.Objects;

public final class C12282e3 implements Thread.UncaughtExceptionHandler {

    public final String f63251a;

    public final C12306h3 f63252b;

    public C12282e3(C12306h3 c12306h3, String str) {
        Objects.requireNonNull(c12306h3);
        this.f63252b = c12306h3;
        G0.A.r(str);
        this.f63251a = str;
    }

    @Override
    public final synchronized void uncaughtException(Thread thread, Throwable th2) {
        this.f63252b.f62917a.a().o().b(this.f63251a, th2);
    }
}
