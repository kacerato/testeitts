package com.google.android.gms.internal.measurement;

public final class C12165q7 implements InterfaceC12156p7 {

    public static final AbstractC12215w4 f62409a;

    static {
        C12162q4 b10 = new C12162q4(C12117l4.a("com.google.android.gms.measurement")).a().b();
        b10.d("measurement.gmscore_feature_tracking", true);
        f62409a = b10.d("measurement.gmscore_client_telemetry", false);
    }

    @Override
    public final boolean N1() {
        return ((Boolean) f62409a.d()).booleanValue();
    }
}
