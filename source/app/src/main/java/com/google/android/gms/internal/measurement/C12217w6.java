package com.google.android.gms.internal.measurement;

import sun.misc.Unsafe;

public final class C12217w6 extends AbstractC12235y6 {
    public C12217w6(Unsafe unsafe) {
        super(unsafe);
    }

    @Override
    public final void a(Object obj, long j10, byte b10) {
        if (C12244z6.f62504h) {
            C12244z6.d(obj, j10, b10);
        } else {
            C12244z6.e(obj, j10, b10);
        }
    }

    @Override
    public final boolean b(Object obj, long j10) {
        return C12244z6.f62504h ? C12244z6.z(obj, j10) : C12244z6.A(obj, j10);
    }

    @Override
    public final void c(Object obj, long j10, boolean z10) {
        if (C12244z6.f62504h) {
            C12244z6.d(obj, j10, r3 ? (byte) 1 : (byte) 0);
        } else {
            C12244z6.e(obj, j10, r3 ? (byte) 1 : (byte) 0);
        }
    }

    @Override
    public final float d(Object obj, long j10) {
        return Float.intBitsToFloat(this.f62493a.getInt(obj, j10));
    }

    @Override
    public final void e(Object obj, long j10, float f10) {
        this.f62493a.putInt(obj, j10, Float.floatToIntBits(f10));
    }

    @Override
    public final double f(Object obj, long j10) {
        return Double.longBitsToDouble(this.f62493a.getLong(obj, j10));
    }

    @Override
    public final void g(Object obj, long j10, double d10) {
        this.f62493a.putLong(obj, j10, Double.doubleToLongBits(d10));
    }
}
