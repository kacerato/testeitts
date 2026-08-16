package com.google.android.gms.internal.auth;

import sun.misc.Unsafe;

public abstract class P2 {

    public final Unsafe f61649a;

    public P2(Unsafe unsafe) {
        this.f61649a = unsafe;
    }

    public abstract double a(Object obj, long j10);

    public abstract float b(Object obj, long j10);

    public abstract void c(Object obj, long j10, boolean z10);

    public abstract void d(Object obj, long j10, double d10);

    public abstract void e(Object obj, long j10, float f10);

    public abstract boolean f(Object obj, long j10);
}
