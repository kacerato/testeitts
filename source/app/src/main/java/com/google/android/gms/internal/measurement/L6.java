package com.google.android.gms.internal.measurement;

import android.app.AlarmManager;
import android.text.format.DateUtils;
import com.tonyodev.fetch2.util.FetchDefaults;
import qe.C15075d;

public final class L6 implements J6 {

    public static final AbstractC12215w4 f61977A;

    public static final AbstractC12215w4 f61978B;

    public static final AbstractC12215w4 f61979C;

    public static final AbstractC12215w4 f61980D;

    public static final AbstractC12215w4 f61981E;

    public static final AbstractC12215w4 f61982F;

    public static final AbstractC12215w4 f61983G;

    public static final AbstractC12215w4 f61984H;

    public static final AbstractC12215w4 f61985I;

    public static final AbstractC12215w4 f61986J;

    public static final AbstractC12215w4 f61987K;

    public static final AbstractC12215w4 f61988L;

    public static final AbstractC12215w4 f61989M;

    public static final AbstractC12215w4 f61990N;

    public static final AbstractC12215w4 f61991O;

    public static final AbstractC12215w4 f61992P;

    public static final AbstractC12215w4 f61993Q;

    public static final AbstractC12215w4 f61994R;

    public static final AbstractC12215w4 f61995S;

    public static final AbstractC12215w4 f61996T;

    public static final AbstractC12215w4 f61997U;

    public static final AbstractC12215w4 f61998V;

    public static final AbstractC12215w4 f61999W;

    public static final AbstractC12215w4 f62000X;

    public static final AbstractC12215w4 f62001Y;

    public static final AbstractC12215w4 f62002Z;

    public static final AbstractC12215w4 f62003a;

    public static final AbstractC12215w4 f62004a0;

    public static final AbstractC12215w4 f62005b;

    public static final AbstractC12215w4 f62006b0;

    public static final AbstractC12215w4 f62007c;

    public static final AbstractC12215w4 f62008c0;

    public static final AbstractC12215w4 f62009d;

    public static final AbstractC12215w4 f62010d0;

    public static final AbstractC12215w4 f62011e;

    public static final AbstractC12215w4 f62012e0;

    public static final AbstractC12215w4 f62013f;

    public static final AbstractC12215w4 f62014f0;

    public static final AbstractC12215w4 f62015g;

    public static final AbstractC12215w4 f62016g0;

    public static final AbstractC12215w4 f62017h;

    public static final AbstractC12215w4 f62018h0;

    public static final AbstractC12215w4 f62019i;

    public static final AbstractC12215w4 f62020i0;

    public static final AbstractC12215w4 f62021j;

    public static final AbstractC12215w4 f62022j0;

    public static final AbstractC12215w4 f62023k;

    public static final AbstractC12215w4 f62024k0;

    public static final AbstractC12215w4 f62025l;

    public static final AbstractC12215w4 f62026l0;

    public static final AbstractC12215w4 f62027m;

    public static final AbstractC12215w4 f62028m0;

    public static final AbstractC12215w4 f62029n;

    public static final AbstractC12215w4 f62030n0;

    public static final AbstractC12215w4 f62031o;

    public static final AbstractC12215w4 f62032o0;

    public static final AbstractC12215w4 f62033p;

    public static final AbstractC12215w4 f62034p0;

    public static final AbstractC12215w4 f62035q;

    public static final AbstractC12215w4 f62036q0;

    public static final AbstractC12215w4 f62037r;

    public static final AbstractC12215w4 f62038r0;

    public static final AbstractC12215w4 f62039s;

    public static final AbstractC12215w4 f62040s0;

    public static final AbstractC12215w4 f62041t;

    public static final AbstractC12215w4 f62042t0;

    public static final AbstractC12215w4 f62043u;

    public static final AbstractC12215w4 f62044u0;

    public static final AbstractC12215w4 f62045v;

    public static final AbstractC12215w4 f62046v0;

    public static final AbstractC12215w4 f62047w;

    public static final AbstractC12215w4 f62048w0;

    public static final AbstractC12215w4 f62049x;

    public static final AbstractC12215w4 f62050y;

    public static final AbstractC12215w4 f62051z;

    static {
        C12162q4 b10 = new C12162q4(C12117l4.a("com.google.android.gms.measurement")).a().b();
        f62003a = b10.c("measurement.ad_id_cache_time", FetchDefaults.DEFAULT_NOTIFICATION_TIMEOUT_AFTER);
        f62005b = b10.c("measurement.app_uninstalled_additional_ad_id_cache_time", 3600000L);
        f62007c = b10.d("measurement.config.bundle_for_all_apps_on_backgrounded", true);
        f62009d = b10.c("measurement.max_bundles_per_iteration", 100L);
        f62011e = b10.f("measurement.gbraid_campaign.campaign_params_triggering_info_update", "gclid,gbraid,gad_campaignid");
        f62013f = b10.c("measurement.config.cache_time", 86400000L);
        b10.f("measurement.log_tag", "FA");
        f62015g = b10.f("measurement.config.url_authority", "app-measurement.com");
        f62017h = b10.f("measurement.config.url_scheme", C15075d.f106134a);
        f62019i = b10.c("measurement.upload.debug_upload_interval", 1000L);
        b10.d("measurement.config.default_flag_values", true);
        f62021j = b10.c("measurement.session.engagement_interval", 3600000L);
        f62023k = b10.f("measurement.rb.attribution.event_params", "value|currency");
        f62025l = b10.f("measurement.edpb.events_cached_in_no_data_mode", "_f,_v,_cmp");
        f62027m = b10.c("measurement.upload.google_signal_max_queue_time", 605000L);
        f62029n = b10.f("measurement.sgtm.google_signal.url", "https://app-measurement.com/s/d");
        f62031o = b10.c("measurement.lifetimevalue.max_currency_tracked", 4L);
        f62033p = b10.c("measurement.dma_consent.max_daily_dcu_realtime_events", 1L);
        f62035q = b10.c("measurement.upload.max_event_parameter_value_length", 500L);
        f62037r = b10.c("measurement.store.max_stored_events_per_app", 100000L);
        f62039s = b10.c("measurement.experiment.max_ids", 50L);
        f62041t = b10.c("measurement.audience.filter_result_max_count", 200L);
        f62043u = b10.c("measurement.upload.max_item_scoped_custom_parameters", 27L);
        f62045v = b10.c("measurement.rb.max_trigger_registrations_per_day", 1000L);
        f62047w = b10.c("measurement.rb.attribution.max_trigger_uris_queried_at_once", 0L);
        f62049x = b10.c("measurement.rb.attribution.client.min_ad_services_version", 7L);
        f62050y = b10.c("measurement.alarm_manager.minimum_interval", 60000L);
        f62051z = b10.c("measurement.upload.minimum_delay", 500L);
        f61977A = b10.c("measurement.monitoring.sample_period_millis", 86400000L);
        f61978B = b10.c("measurement.rb.attribution.notify_app_delay_millis", Ld.a.f11703k);
        f61979C = b10.d("measurement.config.notify_trigger_uris_on_backgrounded", true);
        b10.c("measurement.id.rb.attribution.app_allowlist", 0L);
        f61980D = b10.f("measurement.rb.attribution.app_allowlist", "com.labpixies.flood");
        f61981E = b10.c("measurement.upload.realtime_upload_interval", FetchDefaults.DEFAULT_NOTIFICATION_TIMEOUT_AFTER);
        f61982F = b10.c("measurement.upload.refresh_blacklisted_config_interval", DateUtils.WEEK_IN_MILLIS);
        b10.c("measurement.config.cache_time.service", 3600000L);
        f61983G = b10.c("measurement.service_client.idle_disconnect_millis", 5000L);
        b10.f("measurement.log_tag.service", "FA-SVC");
        f61984H = b10.c("measurement.service_client.reconnect_millis", 1000L);
        b10.f("measurement.sgtm.app_allowlist", "*");
        f61985I = b10.c("measurement.sgtm.batch.long_queuing_threshold", 240000L);
        f61986J = b10.c("measurement.sgtm.batch.retry_interval", AlarmManager.INTERVAL_HALF_HOUR);
        f61987K = b10.c("measurement.sgtm.batch.retry_max_count", 10L);
        f61988L = b10.c("measurement.sgtm.batch.retry_max_wait", 21600000L);
        f61989M = b10.f("measurement.sgtm.service_upload_apps_list", "");
        f61990N = b10.f("measurement.sgtm.upload.backoff_http_codes", "404,429,503,504");
        f61991O = b10.c("measurement.sgtm.upload.batches_retrieval_limit", 5L);
        f61992P = b10.c("measurement.sgtm.upload.max_queued_batches", 5000L);
        f61993Q = b10.c("measurement.sgtm.upload.min_delay_after_background", 600000L);
        f61994R = b10.c("measurement.sgtm.upload.min_delay_after_broadcast", 1000L);
        f61995S = b10.c("measurement.sgtm.upload.min_delay_after_startup", 5000L);
        f61996T = b10.c("measurement.sgtm.upload.retry_interval", 600000L);
        f61997U = b10.c("measurement.sgtm.upload.retry_max_wait", 21600000L);
        f61998V = b10.c("measurement.upload.stale_data_deletion_interval", 86400000L);
        f61999W = b10.c("measurement.rb.attribution.max_retry_delay_seconds", 16L);
        f62000X = b10.c("measurement.rb.attribution.client.min_time_after_boot_seconds", 90L);
        f62001Y = b10.f("measurement.rb.attribution.uri_authority", "google-analytics.com");
        f62002Z = b10.c("measurement.rb.attribution.max_queue_time", 864000000L);
        f62004a0 = b10.f("measurement.rb.attribution.uri_path", "privacy-sandbox/register-app-conversion");
        f62006b0 = b10.f("measurement.rb.attribution.query_parameters_to_remove", "");
        f62008c0 = b10.f("measurement.rb.attribution.uri_scheme", C15075d.f106134a);
        f62010d0 = b10.c("measurement.sdk.attribution.cache.ttl", DateUtils.WEEK_IN_MILLIS);
        f62012e0 = b10.c("measurement.redaction.app_instance_id.ttl", 7200000L);
        f62014f0 = b10.c("measurement.upload.backoff_period", AlarmManager.INTERVAL_HALF_DAY);
        f62016g0 = b10.c("measurement.upload.initial_upload_delay_time", 15000L);
        f62018h0 = b10.c("measurement.upload.interval", 3600000L);
        f62020i0 = b10.c("measurement.upload.max_bundle_size", 65536L);
        f62022j0 = b10.c("measurement.upload.max_bundles", 100L);
        f62024k0 = b10.c("measurement.upload.max_conversions_per_day", 500L);
        f62026l0 = b10.c("measurement.upload.max_error_events_per_day", 1000L);
        f62028m0 = b10.c("measurement.upload.max_events_per_bundle", 1000L);
        f62030n0 = b10.c("measurement.upload.max_events_per_day", 100000L);
        f62032o0 = b10.c("measurement.upload.max_public_events_per_day", 50000L);
        f62034p0 = b10.c("measurement.upload.max_queue_time", 518400000L);
        f62036q0 = b10.c("measurement.upload.max_realtime_events_per_day", 10L);
        f62038r0 = b10.c("measurement.upload.max_batch_size", 65536L);
        f62040s0 = b10.c("measurement.upload.retry_count", 6L);
        f62042t0 = b10.c("measurement.upload.retry_time", AlarmManager.INTERVAL_HALF_HOUR);
        f62044u0 = b10.f("measurement.upload.url", "https://app-measurement.com/a");
        f62046v0 = b10.c("measurement.upload.window_interval", 3600000L);
        f62048w0 = b10.f("measurement.rb.attribution.user_properties", "_npa,npa|_fot,fot");
    }

    @Override
    public final String A() {
        return (String) f61990N.d();
    }

    @Override
    public final long B() {
        return ((Long) f62033p.d()).longValue();
    }

    @Override
    public final long C() {
        return ((Long) f62035q.d()).longValue();
    }

    @Override
    public final long D() {
        return ((Long) f61991O.d()).longValue();
    }

    @Override
    public final long E() {
        return ((Long) f62037r.d()).longValue();
    }

    @Override
    public final String F() {
        return (String) f62029n.d();
    }

    @Override
    public final long G() {
        return ((Long) f61988L.d()).longValue();
    }

    @Override
    public final long H() {
        return ((Long) f62031o.d()).longValue();
    }

    @Override
    public final String I() {
        return (String) f61989M.d();
    }

    @Override
    public final String J() {
        return (String) f62008c0.d();
    }

    @Override
    public final long K() {
        return ((Long) f61995S.d()).longValue();
    }

    @Override
    public final long L() {
        return ((Long) f62010d0.d()).longValue();
    }

    @Override
    public final long M() {
        return ((Long) f61996T.d()).longValue();
    }

    @Override
    public final long N() {
        return ((Long) f61992P.d()).longValue();
    }

    @Override
    public final long N1() {
        return ((Long) f62003a.d()).longValue();
    }

    @Override
    public final String O() {
        return (String) f62004a0.d();
    }

    @Override
    public final long O1() {
        return ((Long) f62005b.d()).longValue();
    }

    @Override
    public final long P() {
        return ((Long) f61993Q.d()).longValue();
    }

    @Override
    public final boolean P1() {
        return ((Boolean) f62007c.d()).booleanValue();
    }

    @Override
    public final String Q() {
        return (String) f62006b0.d();
    }

    @Override
    public final long Q1() {
        return ((Long) f62009d.d()).longValue();
    }

    @Override
    public final long R() {
        return ((Long) f61994R.d()).longValue();
    }

    @Override
    public final String R1() {
        return (String) f62011e.d();
    }

    @Override
    public final long S() {
        return ((Long) f61999W.d()).longValue();
    }

    @Override
    public final long T() {
        return ((Long) f62016g0.d()).longValue();
    }

    @Override
    public final String T1() {
        return (String) f62015g.d();
    }

    @Override
    public final long U() {
        return ((Long) f62000X.d()).longValue();
    }

    @Override
    public final long V() {
        return ((Long) f62018h0.d()).longValue();
    }

    @Override
    public final long W() {
        return ((Long) f62012e0.d()).longValue();
    }

    @Override
    public final long X() {
        return ((Long) f61997U.d()).longValue();
    }

    @Override
    public final long Y() {
        return ((Long) f61998V.d()).longValue();
    }

    @Override
    public final long Z() {
        return ((Long) f62014f0.d()).longValue();
    }

    @Override
    public final long a() {
        return ((Long) f62013f.d()).longValue();
    }

    @Override
    public final long a0() {
        return ((Long) f62026l0.d()).longValue();
    }

    @Override
    public final long b() {
        return ((Long) f62019i.d()).longValue();
    }

    @Override
    public final long b0() {
        return ((Long) f62028m0.d()).longValue();
    }

    @Override
    public final String c() {
        return (String) f62017h.d();
    }

    @Override
    public final long c0() {
        return ((Long) f62022j0.d()).longValue();
    }

    @Override
    public final long d() {
        return ((Long) f62021j.d()).longValue();
    }

    @Override
    public final String d0() {
        return (String) f62001Y.d();
    }

    @Override
    public final String e() {
        return (String) f62025l.d();
    }

    @Override
    public final long e0() {
        return ((Long) f62020i0.d()).longValue();
    }

    @Override
    public final String f() {
        return (String) f62023k.d();
    }

    @Override
    public final long f0() {
        return ((Long) f62024k0.d()).longValue();
    }

    @Override
    public final long g() {
        return ((Long) f62041t.d()).longValue();
    }

    @Override
    public final long g0() {
        return ((Long) f62002Z.d()).longValue();
    }

    @Override
    public final long h() {
        return ((Long) f61982F.d()).longValue();
    }

    @Override
    public final long h0() {
        return ((Long) f62034p0.d()).longValue();
    }

    @Override
    public final long i() {
        return ((Long) f62043u.d()).longValue();
    }

    @Override
    public final long i0() {
        return ((Long) f62036q0.d()).longValue();
    }

    @Override
    public final long j() {
        return ((Long) f61983G.d()).longValue();
    }

    @Override
    public final long j0() {
        return ((Long) f62030n0.d()).longValue();
    }

    @Override
    public final long k() {
        return ((Long) f62046v0.d()).longValue();
    }

    @Override
    public final long k0() {
        return ((Long) f62032o0.d()).longValue();
    }

    @Override
    public final String l() {
        return (String) f61980D.d();
    }

    @Override
    public final long l0() {
        return ((Long) f62042t0.d()).longValue();
    }

    @Override
    public final long m() {
        return ((Long) f62045v.d()).longValue();
    }

    @Override
    public final long m0() {
        return ((Long) f61978B.d()).longValue();
    }

    @Override
    public final long n() {
        return ((Long) f62039s.d()).longValue();
    }

    @Override
    public final String n0() {
        return (String) f62044u0.d();
    }

    @Override
    public final long o() {
        return ((Long) f62050y.d()).longValue();
    }

    @Override
    public final boolean o0() {
        return ((Boolean) f61979C.d()).booleanValue();
    }

    @Override
    public final long p() {
        return ((Long) f62051z.d()).longValue();
    }

    @Override
    public final long p0() {
        return ((Long) f62038r0.d()).longValue();
    }

    @Override
    public final long q() {
        return ((Long) f62047w.d()).longValue();
    }

    @Override
    public final long q0() {
        return ((Long) f62040s0.d()).longValue();
    }

    @Override
    public final long r() {
        return ((Long) f62049x.d()).longValue();
    }

    @Override
    public final long s() {
        return ((Long) f61981E.d()).longValue();
    }

    @Override
    public final String t() {
        return (String) f62048w0.d();
    }

    @Override
    public final long u() {
        return ((Long) f61977A.d()).longValue();
    }

    @Override
    public final long v() {
        return ((Long) f61986J.d()).longValue();
    }

    @Override
    public final long w() {
        return ((Long) f62027m.d()).longValue();
    }

    @Override
    public final long x() {
        return ((Long) f61987K.d()).longValue();
    }

    @Override
    public final long y() {
        return ((Long) f61984H.d()).longValue();
    }

    @Override
    public final long z() {
        return ((Long) f61985I.d()).longValue();
    }
}
