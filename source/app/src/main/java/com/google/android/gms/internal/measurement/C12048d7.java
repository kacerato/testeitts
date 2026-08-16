package com.google.android.gms.internal.measurement;

public final class C12048d7 implements InterfaceC12039c7 {

    public static final AbstractC12215w4 f62252a;

    public static final AbstractC12215w4 f62253b;

    public static final AbstractC12215w4 f62254c;

    static {
        C12162q4 b10 = new C12162q4(C12117l4.a("com.google.android.gms.measurement")).a().b();
        b10.d("measurement.service.audience.fix_skip_audience_with_failed_filters", true);
        f62252a = b10.d("measurement.audience.refresh_event_count_filters_timestamp", false);
        f62253b = b10.d("measurement.audience.use_bundle_end_timestamp_for_non_sequence_property_filters", false);
        f62254c = b10.d("measurement.audience.use_bundle_timestamp_for_event_count_filters", false);
    }

    @Override
    public final boolean N1() {
        return true;
    }

    @Override
    public final boolean O1() {
        return ((Boolean) f62252a.d()).booleanValue();
    }

    @Override
    public final boolean P1() {
        return ((Boolean) f62253b.d()).booleanValue();
    }

    @Override
    public final boolean Q1() {
        return ((Boolean) f62254c.d()).booleanValue();
    }
}
