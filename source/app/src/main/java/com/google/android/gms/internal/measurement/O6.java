package com.google.android.gms.internal.measurement;

public final class O6 implements N6 {

    public static final AbstractC12215w4 f62079a;

    static {
        C12162q4 b10 = new C12162q4(C12117l4.a("com.google.android.gms.measurement")).a().b();
        b10.d("measurement.client.3p_consent_state_v1", true);
        f62079a = b10.c("measurement.service.storage_consent_support_version", 203600L);
    }

    @Override
    public final long N1() {
        return ((Long) f62079a.d()).longValue();
    }
}
