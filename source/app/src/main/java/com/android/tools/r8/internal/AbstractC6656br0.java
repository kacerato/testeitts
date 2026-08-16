package com.android.tools.r8.internal;

public abstract class AbstractC6656br0 {

    public static final boolean f46875a = true;

    public static boolean a(AbstractC6489ar0 abstractC6489ar0, int i10) {
        C10340xw0 c10340xw0 = (C10340xw0) abstractC6489ar0.f54321f.get(0);
        if (abstractC6489ar0.M1()) {
            C8091kU v10 = c10340xw0.v();
            if (v10 != null && v10.c()) {
                long j10 = abstractC6489ar0.Z().f52578o[i10];
                if (v10.f49646a <= j10 && j10 <= v10.f49647b) {
                    return true;
                }
            }
            return false;
        }
        if (!f46875a && !abstractC6489ar0.k2()) {
            throw new AssertionError();
        }
        C10340xw0 i11 = c10340xw0.i();
        return i11.d(new C6869d61()) && abstractC6489ar0.O0().f50122o[i10] == i11.f53886c.K().u2();
    }

    public static boolean a(AbstractC6489ar0 abstractC6489ar0, F1 f12, int i10) {
        C10340xw0 c10340xw0 = (C10340xw0) abstractC6489ar0.f54321f.get(0);
        if (abstractC6489ar0.M1()) {
            int i11 = abstractC6489ar0.Z().f52578o[i10];
            if (f12.Y() && !f12.G().a(i11)) {
                return true;
            }
            if (c10340xw0.G()) {
                C8091kU v10 = c10340xw0.v();
                long j10 = i11;
                if (v10.f49646a > j10 || j10 > v10.f49647b) {
                    return true;
                }
            }
            return false;
        }
        if (!f46875a && !abstractC6489ar0.k2()) {
            throw new AssertionError();
        }
        C10340xw0 i12 = c10340xw0.i();
        return i12.d(new C6869d61()) && abstractC6489ar0.O0().f50122o[i10] != i12.f53886c.K().u2();
    }
}
