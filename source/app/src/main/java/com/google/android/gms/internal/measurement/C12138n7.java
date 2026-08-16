package com.google.android.gms.internal.measurement;

public final class C12138n7 implements InterfaceC12129m7 {

    public static final AbstractC12215w4 f62374a;

    static {
        C12162q4 b10 = new C12162q4(C12117l4.a("com.google.android.gms.measurement")).a().b();
        b10.d("measurement.gbraid_campaign.gbraid.client", true);
        f62374a = b10.d("measurement.gbraid_campaign.stop_lgclid", false);
    }

    @Override
    public final boolean N1() {
        return ((Boolean) f62374a.d()).booleanValue();
    }
}
