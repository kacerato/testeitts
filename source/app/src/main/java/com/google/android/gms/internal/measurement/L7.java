package com.google.android.gms.internal.measurement;

public final class L7 implements K7 {

    public static final AbstractC12215w4 f62052a;

    static {
        C12162q4 b10 = new C12162q4(C12117l4.a("com.google.android.gms.measurement")).a().b();
        f62052a = b10.d("measurement.client.sessions.enable_fix_background_engagement", false);
        b10.d("measurement.client.sessions.enable_pause_engagement_in_background", true);
        b10.c("measurement.id.client.sessions.enable_fix_background_engagement", 0L);
    }

    @Override
    public final boolean N1() {
        return ((Boolean) f62052a.d()).booleanValue();
    }
}
