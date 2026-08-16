package com.google.android.gms.internal.measurement;

public final class H6 implements G6 {

    public static final AbstractC12215w4 f61938a;

    static {
        C12162q4 b10 = new C12162q4(C12117l4.a("com.google.android.gms.measurement")).a().b();
        f61938a = b10.d("measurement.service.ad_impression.convert_value_to_double", true);
        b10.d("measurement.service.separate_public_internal_event_blacklisting", true);
        b10.d("measurement.service.ad_impression", true);
    }

    @Override
    public final boolean N1() {
        return ((Boolean) f61938a.d()).booleanValue();
    }
}
