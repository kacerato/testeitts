package com.google.android.gms.internal.measurement;

public final class I7 implements H7 {

    public static final AbstractC12215w4 f61962a;

    static {
        C12162q4 b10 = new C12162q4(C12117l4.a("com.google.android.gms.measurement")).a().b();
        f61962a = b10.d("measurement.session_stitching_token_enabled", false);
        b10.d("measurement.link_sst_to_sid", true);
    }

    @Override
    public final boolean N1() {
        return true;
    }

    @Override
    public final boolean O1() {
        return ((Boolean) f61962a.d()).booleanValue();
    }
}
