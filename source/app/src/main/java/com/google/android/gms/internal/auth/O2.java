package com.google.android.gms.internal.auth;

import sun.misc.Unsafe;

public final class O2 extends P2 {
    public O2(Unsafe unsafe) {
        super(unsafe);
    }

    @Override
    public final double a(Object obj, long j10) {
        return Double.longBitsToDouble(this.f61649a.getLong(obj, j10));
    }

    @Override
    public final float b(Object obj, long j10) {
        return Float.intBitsToFloat(this.f61649a.getInt(obj, j10));
    }

    @Override
    public final void c(Object obj, long j10, boolean z10) {
        if (Q2.f61657g) {
            Q2.i(obj, j10, z10);
        } else {
            Q2.j(obj, j10, z10);
        }
    }

    @Override
    public final void d(Object obj, long j10, double d10) {
        this.f61649a.putLong(obj, j10, Double.doubleToLongBits(d10));
    }

    @Override
    public final void e(Object obj, long j10, float f10) {
        this.f61649a.putInt(obj, j10, Float.floatToIntBits(f10));
    }

    @Override
    public final boolean f(Object obj, long j10) {
        return Q2.f61657g ? Q2.q(obj, j10) : Q2.r(obj, j10);
    }
}
