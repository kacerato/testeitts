package com.google.android.gms.internal.auth;

public final class I2 extends F2 {
    @Override
    public final Object a(Object obj) {
        B1 b12 = (B1) obj;
        H2 h22 = b12.zzc;
        if (h22 != H2.a()) {
            return h22;
        }
        H2 d10 = H2.d();
        b12.zzc = d10;
        return d10;
    }

    @Override
    public final Object b(Object obj) {
        return ((B1) obj).zzc;
    }

    @Override
    public final Object c(Object obj, Object obj2) {
        if (H2.a().equals(obj2)) {
            return obj;
        }
        if (H2.a().equals(obj)) {
            return H2.c((H2) obj, (H2) obj2);
        }
        ((H2) obj).b((H2) obj2);
        return obj;
    }

    @Override
    public final void d(Object obj, int i10, long j10) {
        ((H2) obj).h(i10 << 3, Long.valueOf(j10));
    }

    @Override
    public final void e(Object obj) {
        ((B1) obj).zzc.f();
    }

    @Override
    public final void f(Object obj, Object obj2) {
        ((B1) obj).zzc = (H2) obj2;
    }
}
