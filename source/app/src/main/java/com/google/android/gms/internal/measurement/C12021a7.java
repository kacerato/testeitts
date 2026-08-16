package com.google.android.gms.internal.measurement;

public final class C12021a7 implements Z6 {

    public static final AbstractC12215w4 f62223a;

    public static final AbstractC12215w4 f62224b;

    static {
        C12162q4 b10 = new C12162q4(C12117l4.a("com.google.android.gms.measurement")).a().b();
        b10.d("measurement.collection.event_safelist", true);
        f62223a = b10.d("measurement.service.store_null_safelist", true);
        f62224b = b10.d("measurement.service.store_safelist", true);
    }

    @Override
    public final boolean N1() {
        return true;
    }

    @Override
    public final boolean O1() {
        return ((Boolean) f62223a.d()).booleanValue();
    }

    @Override
    public final boolean P1() {
        return ((Boolean) f62224b.d()).booleanValue();
    }
}
