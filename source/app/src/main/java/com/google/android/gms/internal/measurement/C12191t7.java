package com.google.android.gms.internal.measurement;

public final class C12191t7 implements InterfaceC12182s7 {

    public static final AbstractC12215w4 f62441a;

    static {
        C12162q4 b10 = new C12162q4(C12117l4.a("com.google.android.gms.measurement")).a().b();
        b10.d("measurement.sdk.collection.enable_extend_user_property_size", true);
        f62441a = b10.d("measurement.sdk.collection.last_deep_link_referrer_campaign2", false);
        b10.c("measurement.id.sdk.collection.last_deep_link_referrer2", 0L);
    }

    @Override
    public final boolean N1() {
        return ((Boolean) f62441a.d()).booleanValue();
    }
}
