package com.google.android.gms.internal.measurement;

public final class S7 implements R7 {

    public static final AbstractC12215w4 f62117a;

    public static final AbstractC12215w4 f62118b;

    static {
        C12162q4 b10 = new C12162q4(C12117l4.a("com.google.android.gms.measurement")).a().b();
        f62117a = b10.d("measurement.tcf.consent_fix", false);
        b10.d("measurement.tcf.client", true);
        f62118b = b10.d("measurement.tcf.empty_pref_fix", true);
        b10.c("measurement.id.tcf", 0L);
    }

    @Override
    public final boolean N1() {
        return ((Boolean) f62117a.d()).booleanValue();
    }

    @Override
    public final boolean O1() {
        return ((Boolean) f62118b.d()).booleanValue();
    }
}
