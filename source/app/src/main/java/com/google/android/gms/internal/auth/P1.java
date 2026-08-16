package com.google.android.gms.internal.auth;

public final class P1 extends R1 {
    public P1(O1 o12) {
        super(null);
    }

    @Override
    public final void a(Object obj, long j10) {
        ((F1) Q2.f(obj, j10)).O1();
    }

    @Override
    public final void b(Object obj, Object obj2, long j10) {
        F1 f12 = (F1) Q2.f(obj, j10);
        F1 f13 = (F1) Q2.f(obj2, j10);
        int size = f12.size();
        int size2 = f13.size();
        if (size > 0 && size2 > 0) {
            if (!f12.P1()) {
                f12 = f12.L0(size2 + size);
            }
            f12.addAll(f13);
        }
        if (size > 0) {
            f13 = f12;
        }
        Q2.p(obj, j10, f13);
    }

    public P1() {
        super(null);
    }
}
