package com.google.android.gms.internal.measurement;

public final class R6 implements Q6 {

    public static final AbstractC12215w4 f62108a;

    public static final AbstractC12215w4 f62109b;

    static {
        C12162q4 b10 = new C12162q4(C12117l4.a("com.google.android.gms.measurement")).a().b();
        b10.d("measurement.set_default_event_parameters_with_backfill.client.dev", false);
        b10.d("measurement.set_default_event_parameters_with_backfill.service", true);
        b10.c("measurement.id.set_default_event_parameters.fix_service_request_ordering", 0L);
        f62108a = b10.d("measurement.set_default_event_parameters.fix_app_update_logging", true);
        f62109b = b10.d("measurement.set_default_event_parameters.fix_service_request_ordering", false);
        b10.d("measurement.set_default_event_parameters.fix_subsequent_launches", true);
    }

    @Override
    public final boolean N1() {
        return ((Boolean) f62108a.d()).booleanValue();
    }

    @Override
    public final boolean O1() {
        return ((Boolean) f62109b.d()).booleanValue();
    }
}
