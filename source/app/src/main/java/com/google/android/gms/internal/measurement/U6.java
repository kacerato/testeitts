package com.google.android.gms.internal.measurement;

public final class U6 implements T6 {

    public static final AbstractC12215w4 f62131a;

    public static final AbstractC12215w4 f62132b;

    static {
        C12162q4 b10 = new C12162q4(C12117l4.a("com.google.android.gms.measurement")).a().b();
        f62131a = b10.d("measurement.set_default_event_parameters_propagate_clear.client.dev", true);
        f62132b = b10.d("measurement.set_default_event_parameters_propagate_clear.service", true);
    }

    @Override
    public final boolean N1() {
        return ((Boolean) f62131a.d()).booleanValue();
    }

    @Override
    public final boolean O1() {
        return ((Boolean) f62132b.d()).booleanValue();
    }
}
