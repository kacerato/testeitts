package com.google.android.gms.internal.measurement;

public final class C12245z7 implements InterfaceC12236y7 {

    public static final AbstractC12215w4 f62505a;

    public static final AbstractC12215w4 f62506b;

    public static final AbstractC12215w4 f62507c;

    public static final AbstractC12215w4 f62508d;

    public static final AbstractC12215w4 f62509e;

    public static final AbstractC12215w4 f62510f;

    public static final AbstractC12215w4 f62511g;

    public static final AbstractC12215w4 f62512h;

    static {
        C12162q4 b10 = new C12162q4(C12117l4.a("com.google.android.gms.measurement")).a().b();
        b10.d("measurement.rb.attribution.ad_campaign_info", true);
        b10.d("measurement.rb.attribution.service.bundle_on_backgrounded", true);
        f62505a = b10.d("measurement.rb.attribution.client2", true);
        f62506b = b10.d("measurement.rb.attribution.followup1.service", false);
        b10.d("measurement.rb.attribution.client.get_trigger_uris_async", true);
        f62507c = b10.d("measurement.rb.attribution.service.trigger_uris_high_priority", true);
        b10.d("measurement.rb.attribution.index_out_of_bounds_fix", true);
        f62508d = b10.d("measurement.rb.attribution.service.enable_max_trigger_uris_queried_at_once", true);
        f62509e = b10.d("measurement.rb.attribution.retry_disposition", false);
        f62510f = b10.d("measurement.rb.attribution.service", true);
        f62511g = b10.d("measurement.rb.attribution.enable_trigger_redaction", true);
        f62512h = b10.d("measurement.rb.attribution.uuid_generation", true);
        b10.c("measurement.id.rb.attribution.retry_disposition", 0L);
        b10.d("measurement.rb.attribution.improved_retry", true);
    }

    @Override
    public final boolean N1() {
        return true;
    }

    @Override
    public final boolean O1() {
        return ((Boolean) f62505a.d()).booleanValue();
    }

    @Override
    public final boolean P1() {
        return ((Boolean) f62506b.d()).booleanValue();
    }

    @Override
    public final boolean Q1() {
        return ((Boolean) f62507c.d()).booleanValue();
    }

    @Override
    public final boolean R1() {
        return ((Boolean) f62508d.d()).booleanValue();
    }

    @Override
    public final boolean T1() {
        return ((Boolean) f62510f.d()).booleanValue();
    }

    @Override
    public final boolean a() {
        return ((Boolean) f62509e.d()).booleanValue();
    }

    @Override
    public final boolean b() {
        return ((Boolean) f62512h.d()).booleanValue();
    }

    @Override
    public final boolean c() {
        return ((Boolean) f62511g.d()).booleanValue();
    }
}
