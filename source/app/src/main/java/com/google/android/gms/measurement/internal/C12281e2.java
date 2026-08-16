package com.google.android.gms.measurement.internal;

import android.app.AlarmManager;
import android.database.sqlite.SQLiteDatabase;
import android.text.format.DateUtils;
import com.google.android.gms.internal.measurement.A7;
import com.google.android.gms.internal.measurement.C12030b7;
import com.google.android.gms.internal.measurement.C12057e7;
import com.google.android.gms.internal.measurement.C12084h7;
import com.google.android.gms.internal.measurement.C12111k7;
import com.google.android.gms.internal.measurement.C12147o7;
import com.google.android.gms.internal.measurement.C12173r7;
import com.google.android.gms.internal.measurement.C12200u7;
import com.google.android.gms.internal.measurement.C12227x7;
import com.google.android.gms.internal.measurement.D7;
import com.google.android.gms.internal.measurement.G7;
import com.google.android.gms.internal.measurement.J7;
import com.google.android.gms.internal.measurement.N7;
import com.google.android.gms.internal.measurement.Q7;
import com.google.android.gms.internal.measurement.T7;
import com.google.android.gms.internal.measurement.W7;
import com.tonyodev.fetch2.util.FetchDefaults;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import org.eclipse.jdt.internal.core.JavaModelCache;
import qe.C15075d;

public final class C12281e2 {

    public static final C12273d2 f63136A;

    public static final C12273d2 f63137A0;

    public static final C12273d2 f63138B;

    public static final C12273d2 f63139B0;

    public static final C12273d2 f63140C;

    public static final C12273d2 f63141C0;

    public static final C12273d2 f63142D;

    public static final C12273d2 f63143D0;

    public static final C12273d2 f63144E;

    public static final C12273d2 f63145E0;

    public static final C12273d2 f63146F;

    public static final C12273d2 f63147F0;

    public static final C12273d2 f63148G;

    public static final C12273d2 f63149G0;

    public static final C12273d2 f63150H;

    public static final C12273d2 f63151H0;

    public static final C12273d2 f63152I;

    public static final C12273d2 f63153I0;

    public static final C12273d2 f63154J;

    public static final C12273d2 f63155J0;

    public static final C12273d2 f63156K;

    public static final C12273d2 f63157K0;

    public static final C12273d2 f63158L;

    public static final C12273d2 f63159L0;

    public static final C12273d2 f63160M;

    public static final C12273d2 f63161M0;

    public static final C12273d2 f63162N;

    public static final C12273d2 f63163N0;

    public static final C12273d2 f63164O;

    public static final C12273d2 f63165O0;

    public static final C12273d2 f63166P;

    public static final C12273d2 f63167P0;

    public static final C12273d2 f63168Q;

    public static final C12273d2 f63169Q0;

    public static final C12273d2 f63170R;

    public static final C12273d2 f63171R0;

    public static final C12273d2 f63172S;

    public static final C12273d2 f63173S0;

    public static final C12273d2 f63174T;

    public static final C12273d2 f63175T0;

    public static final C12273d2 f63176U;

    public static final C12273d2 f63177U0;

    public static final C12273d2 f63178V;

    public static final C12273d2 f63179V0;

    public static final C12273d2 f63180W;

    public static final C12273d2 f63181W0;

    public static final C12273d2 f63182X;

    public static final C12273d2 f63183X0;

    public static final C12273d2 f63184Y;

    public static final C12273d2 f63185Y0;

    public static final C12273d2 f63186Z;

    public static final C12273d2 f63187Z0;

    public static final List f63188a = Collections.synchronizedList(new ArrayList());

    public static final C12273d2 f63189a0;

    public static final C12273d2 f63190a1;

    public static final C12273d2 f63191b;

    public static final C12273d2 f63192b0;

    public static final C12273d2 f63193b1;

    public static final C12273d2 f63194c;

    public static final C12273d2 f63195c0;

    public static final C12273d2 f63196c1;

    public static final C12273d2 f63197d;

    public static final C12273d2 f63198d0;

    public static final C12273d2 f63199d1;

    public static final C12273d2 f63200e;

    public static final C12273d2 f63201e0;

    public static final C12273d2 f63202e1;

    public static final C12273d2 f63203f;

    public static final C12273d2 f63204f0;

    public static final C12273d2 f63205f1;

    public static final C12273d2 f63206g;

    public static final C12273d2 f63207g0;

    public static final C12273d2 f63208g1;

    public static final C12273d2 f63209h;

    public static final C12273d2 f63210h0;

    public static final C12273d2 f63211h1;

    public static final C12273d2 f63212i;

    public static final C12273d2 f63213i0;

    public static final C12273d2 f63214i1;

    public static final C12273d2 f63215j;

    public static final C12273d2 f63216j0;

    public static final C12273d2 f63217j1;

    public static final C12273d2 f63218k;

    public static final C12273d2 f63219k0;

    public static final C12273d2 f63220k1;

    public static final C12273d2 f63221l;

    public static final C12273d2 f63222l0;

    public static final C12273d2 f63223m;

    public static final C12273d2 f63224m0;

    public static final C12273d2 f63225n;

    public static final C12273d2 f63226n0;

    public static final C12273d2 f63227o;

    public static final C12273d2 f63228o0;

    public static final C12273d2 f63229p;

    public static final C12273d2 f63230p0;

    public static final C12273d2 f63231q;

    public static final C12273d2 f63232q0;

    public static final C12273d2 f63233r;

    public static final C12273d2 f63234r0;

    public static final C12273d2 f63235s;

    public static final C12273d2 f63236s0;

    public static final C12273d2 f63237t;

    public static final C12273d2 f63238t0;

    public static final C12273d2 f63239u;

    public static final C12273d2 f63240u0;

    public static final C12273d2 f63241v;

    public static final C12273d2 f63242v0;

    public static final C12273d2 f63243w;

    public static final C12273d2 f63244w0;

    public static final C12273d2 f63245x;

    public static final C12273d2 f63246x0;

    public static final C12273d2 f63247y;

    public static final C12273d2 f63248y0;

    public static final C12273d2 f63249z;

    public static final C12273d2 f63250z0;

    static {
        Collections.synchronizedSet(new HashSet());
        Long valueOf = Long.valueOf(FetchDefaults.DEFAULT_NOTIFICATION_TIMEOUT_AFTER);
        f63191b = a("measurement.ad_id_cache_time", valueOf, valueOf, new P() {
            @Override
            public final Object N1() {
                C12273d2 c12273d2 = C12281e2.f63191b;
                return Long.valueOf(com.google.android.gms.internal.measurement.I6.A());
            }
        }, false);
        f63194c = a("measurement.app_uninstalled_additional_ad_id_cache_time", 3600000L, 3600000L, new P() {
            @Override
            public final Object N1() {
                C12273d2 c12273d2 = C12281e2.f63191b;
                return Long.valueOf(com.google.android.gms.internal.measurement.I6.Z());
            }
        }, false);
        f63197d = a("measurement.monitoring.sample_period_millis", 86400000L, 86400000L, new P() {
            @Override
            public final Object N1() {
                C12273d2 c12273d2 = C12281e2.f63191b;
                return Long.valueOf(com.google.android.gms.internal.measurement.I6.a());
            }
        }, false);
        f63200e = a("measurement.config.cache_time", 86400000L, 3600000L, new P() {
            @Override
            public final Object N1() {
                C12273d2 c12273d2 = C12281e2.f63191b;
                return Long.valueOf(com.google.android.gms.internal.measurement.I6.d0());
            }
        }, false);
        f63203f = a("measurement.config.url_scheme", C15075d.f106134a, C15075d.f106134a, new P() {
            @Override
            public final Object N1() {
                C12273d2 c12273d2 = C12281e2.f63191b;
                return com.google.android.gms.internal.measurement.I6.f0();
            }
        }, false);
        f63206g = a("measurement.config.url_authority", "app-measurement.com", "app-measurement.com", new P() {
            @Override
            public final Object N1() {
                C12273d2 c12273d2 = C12281e2.f63191b;
                return com.google.android.gms.internal.measurement.I6.e0();
            }
        }, false);
        f63209h = a("measurement.upload.max_bundles", 100, 100, new P() {
            @Override
            public final Object N1() {
                C12273d2 c12273d2 = C12281e2.f63191b;
                return Integer.valueOf((int) com.google.android.gms.internal.measurement.I6.K());
            }
        }, false);
        f63212i = a("measurement.upload.max_batch_size", 65536, 65536, new P() {
            @Override
            public final Object N1() {
                C12273d2 c12273d2 = C12281e2.f63191b;
                return Integer.valueOf((int) com.google.android.gms.internal.measurement.I6.S());
            }
        }, false);
        f63215j = a("measurement.upload.max_bundle_size", 65536, 65536, new P() {
            @Override
            public final Object N1() {
                C12273d2 c12273d2 = C12281e2.f63191b;
                return Integer.valueOf((int) com.google.android.gms.internal.measurement.I6.J());
            }
        }, false);
        f63218k = a("measurement.upload.max_events_per_bundle", 1000, 1000, new P() {
            @Override
            public final Object N1() {
                C12273d2 c12273d2 = C12281e2.f63191b;
                return Integer.valueOf((int) com.google.android.gms.internal.measurement.I6.N());
            }
        }, false);
        f63221l = a("measurement.upload.max_events_per_day", 100000, 100000, new P() {
            @Override
            public final Object N1() {
                C12273d2 c12273d2 = C12281e2.f63191b;
                return Integer.valueOf((int) com.google.android.gms.internal.measurement.I6.O());
            }
        }, false);
        f63223m = a("measurement.upload.max_error_events_per_day", 1000, 1000, new P() {
            @Override
            public final Object N1() {
                C12273d2 c12273d2 = C12281e2.f63191b;
                return Integer.valueOf((int) com.google.android.gms.internal.measurement.I6.M());
            }
        }, false);
        Integer valueOf2 = Integer.valueOf(SQLiteDatabase.SQLITE_MAX_LIKE_PATTERN_LENGTH);
        f63225n = a("measurement.upload.max_public_events_per_day", valueOf2, valueOf2, new P() {
            @Override
            public final Object N1() {
                C12273d2 c12273d2 = C12281e2.f63191b;
                return Integer.valueOf((int) com.google.android.gms.internal.measurement.I6.P());
            }
        }, false);
        f63227o = a("measurement.upload.max_conversions_per_day", 10000, 10000, new P() {
            @Override
            public final Object N1() {
                C12273d2 c12273d2 = C12281e2.f63191b;
                return Integer.valueOf((int) com.google.android.gms.internal.measurement.I6.L());
            }
        }, false);
        f63229p = a("measurement.upload.max_realtime_events_per_day", 10, 10, new P() {
            @Override
            public final Object N1() {
                C12273d2 c12273d2 = C12281e2.f63191b;
                return Integer.valueOf((int) com.google.android.gms.internal.measurement.I6.R());
            }
        }, false);
        f63231q = a("measurement.store.max_stored_events_per_app", 100000, 100000, new P() {
            @Override
            public final Object N1() {
                C12273d2 c12273d2 = C12281e2.f63191b;
                return Integer.valueOf((int) com.google.android.gms.internal.measurement.I6.p0());
            }
        }, false);
        f63233r = a("measurement.upload.url", "https://app-measurement.com/a", "https://app-measurement.com/a", new P() {
            @Override
            public final Object N1() {
                C12273d2 c12273d2 = C12281e2.f63191b;
                return com.google.android.gms.internal.measurement.I6.V();
            }
        }, false);
        f63235s = a("measurement.sgtm.google_signal.url", "https://app-measurement.com/s/d", "https://app-measurement.com/s/d", new P() {
            @Override
            public final Object N1() {
                C12273d2 c12273d2 = C12281e2.f63191b;
                return com.google.android.gms.internal.measurement.I6.l0();
            }
        }, false);
        f63237t = a("measurement.sgtm.service_upload_apps_list", "", "", new P() {
            @Override
            public final Object N1() {
                C12273d2 c12273d2 = C12281e2.f63191b;
                return com.google.android.gms.internal.measurement.I6.m();
            }
        }, false);
        f63239u = a("measurement.sgtm.upload.backoff_http_codes", "404,429,503,504", "404,429,503,504", new P() {
            @Override
            public final Object N1() {
                C12273d2 c12273d2 = C12281e2.f63191b;
                return com.google.android.gms.internal.measurement.I6.n();
            }
        }, false);
        f63241v = a("measurement.sgtm.upload.retry_interval", 600000L, 600000L, new P() {
            @Override
            public final Object N1() {
                C12273d2 c12273d2 = C12281e2.f63191b;
                return Long.valueOf(com.google.android.gms.internal.measurement.I6.t());
            }
        }, false);
        f63243w = a("measurement.sgtm.upload.retry_max_wait", 21600000L, 21600000L, new P() {
            @Override
            public final Object N1() {
                C12273d2 c12273d2 = C12281e2.f63191b;
                return Long.valueOf(com.google.android.gms.internal.measurement.I6.u());
            }
        }, false);
        Long valueOf3 = Long.valueOf(AlarmManager.INTERVAL_HALF_HOUR);
        f63245x = a("measurement.sgtm.batch.retry_interval", valueOf3, valueOf3, new P() {
            @Override
            public final Object N1() {
                C12273d2 c12273d2 = C12281e2.f63191b;
                return Long.valueOf(com.google.android.gms.internal.measurement.I6.j());
            }
        }, false);
        f63247y = a("measurement.sgtm.batch.retry_max_wait", 21600000L, 21600000L, new P() {
            @Override
            public final Object N1() {
                C12273d2 c12273d2 = C12281e2.f63191b;
                return Long.valueOf(com.google.android.gms.internal.measurement.I6.l());
            }
        }, false);
        f63249z = a("measurement.sgtm.batch.retry_max_count", 10, 10, new P() {
            @Override
            public final Object N1() {
                C12273d2 c12273d2 = C12281e2.f63191b;
                return Integer.valueOf((int) com.google.android.gms.internal.measurement.I6.k());
            }
        }, false);
        Integer valueOf4 = Integer.valueOf(JavaModelCache.DEFAULT_CHILDREN_SIZE);
        f63136A = a("measurement.sgtm.upload.max_queued_batches", valueOf4, valueOf4, new P() {
            @Override
            public final Object N1() {
                C12273d2 c12273d2 = C12281e2.f63191b;
                return Integer.valueOf((int) com.google.android.gms.internal.measurement.I6.p());
            }
        }, false);
        f63138B = a("measurement.sgtm.upload.batches_retrieval_limit", 5, 5, new P() {
            @Override
            public final Object N1() {
                C12273d2 c12273d2 = C12281e2.f63191b;
                return Integer.valueOf((int) com.google.android.gms.internal.measurement.I6.o());
            }
        }, false);
        f63140C = a("measurement.sgtm.upload.min_delay_after_startup", 5000L, 5000L, new P() {
            @Override
            public final Object N1() {
                C12273d2 c12273d2 = C12281e2.f63191b;
                return Long.valueOf(com.google.android.gms.internal.measurement.I6.s());
            }
        }, false);
        f63142D = a("measurement.sgtm.upload.min_delay_after_broadcast", 1000L, 1000L, new P() {
            @Override
            public final Object N1() {
                C12273d2 c12273d2 = C12281e2.f63191b;
                return Long.valueOf(com.google.android.gms.internal.measurement.I6.r());
            }
        }, false);
        f63144E = a("measurement.sgtm.upload.min_delay_after_background", 600000L, 600000L, new P() {
            @Override
            public final Object N1() {
                C12273d2 c12273d2 = C12281e2.f63191b;
                return Long.valueOf(com.google.android.gms.internal.measurement.I6.q());
            }
        }, false);
        f63146F = a("measurement.sgtm.batch.long_queuing_threshold", 14400000L, 14400000L, new P() {
            @Override
            public final Object N1() {
                C12273d2 c12273d2 = C12281e2.f63191b;
                return Long.valueOf(com.google.android.gms.internal.measurement.I6.i());
            }
        }, false);
        Long valueOf5 = Long.valueOf(AlarmManager.INTERVAL_HALF_DAY);
        f63148G = a("measurement.upload.backoff_period", valueOf5, valueOf5, new P() {
            @Override
            public final Object N1() {
                C12273d2 c12273d2 = C12281e2.f63191b;
                return Long.valueOf(com.google.android.gms.internal.measurement.I6.G());
            }
        }, false);
        f63150H = a("measurement.upload.window_interval", 3600000L, 3600000L, new P() {
            @Override
            public final Object N1() {
                C12273d2 c12273d2 = C12281e2.f63191b;
                return Long.valueOf(com.google.android.gms.internal.measurement.I6.W());
            }
        }, false);
        f63152I = a("measurement.upload.interval", 3600000L, 3600000L, new P() {
            @Override
            public final Object N1() {
                C12273d2 c12273d2 = C12281e2.f63191b;
                return Long.valueOf(com.google.android.gms.internal.measurement.I6.I());
            }
        }, false);
        f63154J = a("measurement.upload.realtime_upload_interval", valueOf, valueOf, new P() {
            @Override
            public final Object N1() {
                C12273d2 c12273d2 = C12281e2.f63191b;
                return Long.valueOf(com.google.android.gms.internal.measurement.I6.e());
            }
        }, false);
        f63156K = a("measurement.upload.debug_upload_interval", 1000L, 1000L, new P() {
            @Override
            public final Object N1() {
                C12273d2 c12273d2 = C12281e2.f63191b;
                return Long.valueOf(com.google.android.gms.internal.measurement.I6.g0());
            }
        }, false);
        f63158L = a("measurement.upload.minimum_delay", 500L, 500L, new P() {
            @Override
            public final Object N1() {
                C12273d2 c12273d2 = C12281e2.f63191b;
                return Long.valueOf(com.google.android.gms.internal.measurement.I6.x0());
            }
        }, false);
        f63160M = a("measurement.alarm_manager.minimum_interval", 60000L, 60000L, new P() {
            @Override
            public final Object N1() {
                C12273d2 c12273d2 = C12281e2.f63191b;
                return Long.valueOf(com.google.android.gms.internal.measurement.I6.w0());
            }
        }, false);
        f63162N = a("measurement.upload.stale_data_deletion_interval", 86400000L, 86400000L, new P() {
            @Override
            public final Object N1() {
                C12273d2 c12273d2 = C12281e2.f63191b;
                return Long.valueOf(com.google.android.gms.internal.measurement.I6.v());
            }
        }, false);
        Long valueOf6 = Long.valueOf(DateUtils.WEEK_IN_MILLIS);
        f63164O = a("measurement.upload.refresh_blacklisted_config_interval", valueOf6, valueOf6, new P() {
            @Override
            public final Object N1() {
                C12273d2 c12273d2 = C12281e2.f63191b;
                return Long.valueOf(com.google.android.gms.internal.measurement.I6.f());
            }
        }, false);
        f63166P = a("measurement.upload.initial_upload_delay_time", 15000L, 15000L, new P() {
            @Override
            public final Object N1() {
                C12273d2 c12273d2 = C12281e2.f63191b;
                return Long.valueOf(com.google.android.gms.internal.measurement.I6.H());
            }
        }, false);
        f63168Q = a("measurement.upload.retry_time", valueOf3, valueOf3, new P() {
            @Override
            public final Object N1() {
                C12273d2 c12273d2 = C12281e2.f63191b;
                return Long.valueOf(com.google.android.gms.internal.measurement.I6.U());
            }
        }, false);
        f63170R = a("measurement.upload.retry_count", 6, 6, new P() {
            @Override
            public final Object N1() {
                C12273d2 c12273d2 = C12281e2.f63191b;
                return Integer.valueOf((int) com.google.android.gms.internal.measurement.I6.T());
            }
        }, false);
        f63172S = a("measurement.upload.max_queue_time", 518400000L, 518400000L, new P() {
            @Override
            public final Object N1() {
                C12273d2 c12273d2 = C12281e2.f63191b;
                return Long.valueOf(com.google.android.gms.internal.measurement.I6.Q());
            }
        }, false);
        f63174T = a("measurement.upload.google_signal_max_queue_time", 300000L, 300000L, new P() {
            @Override
            public final Object N1() {
                C12273d2 c12273d2 = C12281e2.f63191b;
                return Long.valueOf(com.google.android.gms.internal.measurement.I6.k0());
            }
        }, false);
        f63176U = a("measurement.lifetimevalue.max_currency_tracked", 4, 4, new P() {
            @Override
            public final Object N1() {
                C12273d2 c12273d2 = C12281e2.f63191b;
                return Integer.valueOf((int) com.google.android.gms.internal.measurement.I6.m0());
            }
        }, false);
        f63178V = a("measurement.audience.filter_result_max_count", 200, 200, new P() {
            @Override
            public final Object N1() {
                C12273d2 c12273d2 = C12281e2.f63191b;
                return Integer.valueOf((int) com.google.android.gms.internal.measurement.I6.r0());
            }
        }, false);
        f63180W = a("measurement.upload.max_public_user_properties", 100, 100, null, false);
        f63182X = a("measurement.upload.max_event_name_cardinality", 2000, 2000, null, false);
        f63184Y = a("measurement.upload.max_public_event_params", 100, 100, null, false);
        f63186Z = a("measurement.service_client.idle_disconnect_millis", 5000L, 5000L, new P() {
            @Override
            public final Object N1() {
                C12273d2 c12273d2 = C12281e2.f63191b;
                return Long.valueOf(com.google.android.gms.internal.measurement.I6.g());
            }
        }, false);
        f63189a0 = a("measurement.service_client.reconnect_millis", 1000L, 1000L, new P() {
            @Override
            public final Object N1() {
                C12273d2 c12273d2 = C12281e2.f63191b;
                return Long.valueOf(com.google.android.gms.internal.measurement.I6.h());
            }
        }, false);
        Boolean bool = Boolean.FALSE;
        f63192b0 = a("measurement.test.boolean_flag", bool, bool, new P() {
            @Override
            public final Object N1() {
                C12273d2 c12273d2 = C12281e2.f63191b;
                return Boolean.valueOf(C12200u7.a());
            }
        }, false);
        f63195c0 = a("measurement.test.string_flag", "---", "---", new P() {
            @Override
            public final Object N1() {
                C12273d2 c12273d2 = C12281e2.f63191b;
                return C12200u7.f();
            }
        }, false);
        f63198d0 = a("measurement.test.long_flag", -1L, -1L, new P() {
            @Override
            public final Object N1() {
                C12273d2 c12273d2 = C12281e2.f63191b;
                return Long.valueOf(C12200u7.e());
            }
        }, false);
        a("measurement.test.cached_long_flag", -1L, -1L, new P() {
            @Override
            public final Object N1() {
                C12273d2 c12273d2 = C12281e2.f63191b;
                return Long.valueOf(C12200u7.b());
            }
        }, true);
        f63201e0 = a("measurement.test.int_flag", -2, -2, new P() {
            @Override
            public final Object N1() {
                C12273d2 c12273d2 = C12281e2.f63191b;
                return Integer.valueOf((int) C12200u7.d());
            }
        }, false);
        Double valueOf7 = Double.valueOf(-3.0d);
        f63204f0 = a("measurement.test.double_flag", valueOf7, valueOf7, new P() {
            @Override
            public final Object N1() {
                C12273d2 c12273d2 = C12281e2.f63191b;
                return Double.valueOf(C12200u7.c());
            }
        }, false);
        f63207g0 = a("measurement.experiment.max_ids", 50, 50, new P() {
            @Override
            public final Object N1() {
                C12273d2 c12273d2 = C12281e2.f63191b;
                return Integer.valueOf((int) com.google.android.gms.internal.measurement.I6.q0());
            }
        }, false);
        f63210h0 = a("measurement.upload.max_item_scoped_custom_parameters", 27, 27, new P() {
            @Override
            public final Object N1() {
                C12273d2 c12273d2 = C12281e2.f63191b;
                return Integer.valueOf((int) com.google.android.gms.internal.measurement.I6.s0());
            }
        }, false);
        f63213i0 = a("measurement.upload.max_event_parameter_value_length", 500, 500, new P() {
            @Override
            public final Object N1() {
                C12273d2 c12273d2 = C12281e2.f63191b;
                return Integer.valueOf((int) com.google.android.gms.internal.measurement.I6.o0());
            }
        }, true);
        f63216j0 = a("measurement.max_bundles_per_iteration", 100, 100, new P() {
            @Override
            public final Object N1() {
                C12273d2 c12273d2 = C12281e2.f63191b;
                return Integer.valueOf((int) com.google.android.gms.internal.measurement.I6.b0());
            }
        }, false);
        f63219k0 = a("measurement.sdk.attribution.cache.ttl", valueOf6, valueOf6, new P() {
            @Override
            public final Object N1() {
                C12273d2 c12273d2 = C12281e2.f63191b;
                return Long.valueOf(com.google.android.gms.internal.measurement.I6.E());
            }
        }, false);
        f63222l0 = a("measurement.redaction.app_instance_id.ttl", 7200000L, 7200000L, new P() {
            @Override
            public final Object N1() {
                C12273d2 c12273d2 = C12281e2.f63191b;
                return Long.valueOf(com.google.android.gms.internal.measurement.I6.F());
            }
        }, false);
        f63224m0 = a("measurement.rb.attribution.client.min_ad_services_version", 7, 7, new P() {
            @Override
            public final Object N1() {
                C12273d2 c12273d2 = C12281e2.f63191b;
                return Integer.valueOf((int) com.google.android.gms.internal.measurement.I6.v0());
            }
        }, false);
        f63226n0 = a("measurement.dma_consent.max_daily_dcu_realtime_events", 1, 1, new P() {
            @Override
            public final Object N1() {
                C12273d2 c12273d2 = C12281e2.f63191b;
                return Integer.valueOf((int) com.google.android.gms.internal.measurement.I6.n0());
            }
        }, false);
        f63228o0 = a("measurement.rb.attribution.uri_scheme", C15075d.f106134a, C15075d.f106134a, new P() {
            @Override
            public final Object N1() {
                C12273d2 c12273d2 = C12281e2.f63191b;
                return com.google.android.gms.internal.measurement.I6.D();
            }
        }, false);
        f63230p0 = a("measurement.rb.attribution.uri_authority", "google-analytics.com", "google-analytics.com", new P() {
            @Override
            public final Object N1() {
                C12273d2 c12273d2 = C12281e2.f63191b;
                return com.google.android.gms.internal.measurement.I6.y();
            }
        }, false);
        f63232q0 = a("measurement.rb.attribution.uri_path", "privacy-sandbox/register-app-conversion", "privacy-sandbox/register-app-conversion", new P() {
            @Override
            public final Object N1() {
                C12273d2 c12273d2 = C12281e2.f63191b;
                return com.google.android.gms.internal.measurement.I6.B();
            }
        }, false);
        f63234r0 = a("measurement.session.engagement_interval", 3600000L, 3600000L, new P() {
            @Override
            public final Object N1() {
                C12273d2 c12273d2 = C12281e2.f63191b;
                return Long.valueOf(com.google.android.gms.internal.measurement.I6.h0());
            }
        }, false);
        f63236s0 = a("measurement.rb.attribution.app_allowlist", "com.labpixies.flood", "com.labpixies.flood", new P() {
            @Override
            public final Object N1() {
                C12273d2 c12273d2 = C12281e2.f63191b;
                return com.google.android.gms.internal.measurement.I6.d();
            }
        }, false);
        f63238t0 = a("measurement.rb.attribution.user_properties", "_npa,npa|_fot,fot", "_npa,npa|_fot,fot", new P() {
            @Override
            public final Object N1() {
                C12273d2 c12273d2 = C12281e2.f63191b;
                return com.google.android.gms.internal.measurement.I6.X();
            }
        }, false);
        f63240u0 = a("measurement.rb.attribution.event_params", "value|currency", "value|currency", new P() {
            @Override
            public final Object N1() {
                C12273d2 c12273d2 = C12281e2.f63191b;
                return com.google.android.gms.internal.measurement.I6.i0();
            }
        }, false);
        f63242v0 = a("measurement.rb.attribution.query_parameters_to_remove", "", "", new P() {
            @Override
            public final Object N1() {
                C12273d2 c12273d2 = C12281e2.f63191b;
                return com.google.android.gms.internal.measurement.I6.C();
            }
        }, false);
        f63244w0 = a("measurement.rb.attribution.max_queue_time", 864000000L, 864000000L, new P() {
            @Override
            public final Object N1() {
                C12273d2 c12273d2 = C12281e2.f63191b;
                return Long.valueOf(com.google.android.gms.internal.measurement.I6.z());
            }
        }, false);
        f63246x0 = a("measurement.rb.attribution.max_retry_delay_seconds", 16, 16, new P() {
            @Override
            public final Object N1() {
                C12273d2 c12273d2 = C12281e2.f63191b;
                return Integer.valueOf((int) com.google.android.gms.internal.measurement.I6.w());
            }
        }, false);
        f63248y0 = a("measurement.rb.attribution.client.min_time_after_boot_seconds", 90, 90, new P() {
            @Override
            public final Object N1() {
                C12273d2 c12273d2 = C12281e2.f63191b;
                return Integer.valueOf((int) com.google.android.gms.internal.measurement.I6.x());
            }
        }, false);
        a("measurement.rb.attribution.max_trigger_uris_queried_at_once", 0, 0, new P() {
            @Override
            public final Object N1() {
                C12273d2 c12273d2 = C12281e2.f63191b;
                return Integer.valueOf((int) com.google.android.gms.internal.measurement.I6.u0());
            }
        }, false);
        f63250z0 = a("measurement.rb.max_trigger_registrations_per_day", 1000, 1000, new P() {
            @Override
            public final Object N1() {
                C12273d2 c12273d2 = C12281e2.f63191b;
                return Integer.valueOf((int) com.google.android.gms.internal.measurement.I6.t0());
            }
        }, false);
        Boolean bool2 = Boolean.TRUE;
        f63137A0 = a("measurement.config.bundle_for_all_apps_on_backgrounded", bool2, bool2, new P() {
            @Override
            public final Object N1() {
                C12273d2 c12273d2 = C12281e2.f63191b;
                return Boolean.valueOf(com.google.android.gms.internal.measurement.I6.a0());
            }
        }, false);
        f63139B0 = a("measurement.config.notify_trigger_uris_on_backgrounded", bool2, bool2, new P() {
            @Override
            public final Object N1() {
                C12273d2 c12273d2 = C12281e2.f63191b;
                return Boolean.valueOf(com.google.android.gms.internal.measurement.I6.c());
            }
        }, false);
        f63141C0 = a("measurement.rb.attribution.notify_app_delay_millis", 3000, 3000, new P() {
            @Override
            public final Object N1() {
                C12273d2 c12273d2 = C12281e2.f63191b;
                return Integer.valueOf((int) com.google.android.gms.internal.measurement.I6.b());
            }
        }, false);
        f63143D0 = a("measurement.quality.checksum", bool, bool, null, false);
        f63145E0 = a("measurement.audience.use_bundle_end_timestamp_for_non_sequence_property_filters", bool, bool, new P() {
            @Override
            public final Object N1() {
                C12273d2 c12273d2 = C12281e2.f63191b;
                return Boolean.valueOf(C12030b7.c());
            }
        }, false);
        f63147F0 = a("measurement.audience.refresh_event_count_filters_timestamp", bool, bool, new P() {
            @Override
            public final Object N1() {
                C12273d2 c12273d2 = C12281e2.f63191b;
                return Boolean.valueOf(C12030b7.b());
            }
        }, false);
        f63149G0 = a("measurement.audience.use_bundle_timestamp_for_event_count_filters", bool, bool, new P() {
            @Override
            public final Object N1() {
                C12273d2 c12273d2 = C12281e2.f63191b;
                return Boolean.valueOf(C12030b7.d());
            }
        }, true);
        f63151H0 = a("measurement.sdk.collection.last_deep_link_referrer_campaign2", bool, bool, new P() {
            @Override
            public final Object N1() {
                C12273d2 c12273d2 = C12281e2.f63191b;
                return Boolean.valueOf(C12173r7.a());
            }
        }, false);
        f63153I0 = a("measurement.integration.disable_firebase_instance_id", bool, bool, new P() {
            @Override
            public final Object N1() {
                C12273d2 c12273d2 = C12281e2.f63191b;
                return Boolean.valueOf(T7.b());
            }
        }, false);
        f63155J0 = a("measurement.collection.service.update_with_analytics_fix", bool, bool, new P() {
            @Override
            public final Object N1() {
                C12273d2 c12273d2 = C12281e2.f63191b;
                return Boolean.valueOf(W7.a());
            }
        }, false);
        f63157K0 = a("measurement.service.storage_consent_support_version", 203600, 203600, new P() {
            @Override
            public final Object N1() {
                C12273d2 c12273d2 = C12281e2.f63191b;
                return Integer.valueOf((int) com.google.android.gms.internal.measurement.M6.a());
            }
        }, false);
        f63159L0 = a("measurement.service.store_null_safelist", bool2, bool2, new P() {
            @Override
            public final Object N1() {
                C12273d2 c12273d2 = C12281e2.f63191b;
                return Boolean.valueOf(com.google.android.gms.internal.measurement.Y6.b());
            }
        }, false);
        f63161M0 = a("measurement.service.store_safelist", bool2, bool2, new P() {
            @Override
            public final Object N1() {
                C12273d2 c12273d2 = C12281e2.f63191b;
                return Boolean.valueOf(com.google.android.gms.internal.measurement.Y6.c());
            }
        }, false);
        f63163N0 = a("measurement.session_stitching_token_enabled", bool, bool, new P() {
            @Override
            public final Object N1() {
                C12273d2 c12273d2 = C12281e2.f63191b;
                return Boolean.valueOf(G7.b());
            }
        }, false);
        f63165O0 = a("measurement.sgtm.client.upload_on_backgrounded.dev", bool, bool, new P() {
            @Override
            public final Object N1() {
                C12273d2 c12273d2 = C12281e2.f63191b;
                return Boolean.valueOf(N7.a());
            }
        }, true);
        f63167P0 = a("measurement.gmscore_client_telemetry", bool, bool, new P() {
            @Override
            public final Object N1() {
                return new Boolean(C12147o7.a());
            }
        }, false);
        f63169Q0 = a("measurement.rb.attribution.service", bool2, bool2, new P() {
            @Override
            public final Object N1() {
                C12273d2 c12273d2 = C12281e2.f63191b;
                return Boolean.valueOf(C12227x7.g());
            }
        }, true);
        f63171R0 = a("measurement.rb.attribution.client2", bool2, bool2, new P() {
            @Override
            public final Object N1() {
                C12273d2 c12273d2 = C12281e2.f63191b;
                return Boolean.valueOf(C12227x7.b());
            }
        }, true);
        f63173S0 = a("measurement.rb.attribution.uuid_generation", bool2, bool2, new P() {
            @Override
            public final Object N1() {
                C12273d2 c12273d2 = C12281e2.f63191b;
                return Boolean.valueOf(C12227x7.i());
            }
        }, false);
        f63175T0 = a("measurement.rb.attribution.enable_trigger_redaction", bool2, bool2, new P() {
            @Override
            public final Object N1() {
                C12273d2 c12273d2 = C12281e2.f63191b;
                return Boolean.valueOf(C12227x7.h());
            }
        }, false);
        a("measurement.rb.attribution.followup1.service", bool, bool, new P() {
            @Override
            public final Object N1() {
                C12273d2 c12273d2 = C12281e2.f63191b;
                return Boolean.valueOf(C12227x7.c());
            }
        }, false);
        f63177U0 = a("measurement.rb.attribution.retry_disposition", bool, bool, new P() {
            @Override
            public final Object N1() {
                C12273d2 c12273d2 = C12281e2.f63191b;
                return Boolean.valueOf(C12227x7.f());
            }
        }, false);
        f63179V0 = a("measurement.client.sessions.enable_fix_background_engagement", bool, bool, new P() {
            @Override
            public final Object N1() {
                return new Boolean(J7.a());
            }
        }, false);
        f63181W0 = a("measurement.set_default_event_parameters_propagate_clear.service.dev", bool2, bool2, new P() {
            @Override
            public final Object N1() {
                C12273d2 c12273d2 = C12281e2.f63191b;
                return Boolean.valueOf(com.google.android.gms.internal.measurement.S6.b());
            }
        }, false);
        f63183X0 = a("measurement.set_default_event_parameters_propagate_clear.client.dev", bool2, bool2, new P() {
            @Override
            public final Object N1() {
                C12273d2 c12273d2 = C12281e2.f63191b;
                return Boolean.valueOf(com.google.android.gms.internal.measurement.S6.a());
            }
        }, false);
        f63185Y0 = a("measurement.service.ad_impression.convert_value_to_double", bool2, bool2, new P() {
            @Override
            public final Object N1() {
                C12273d2 c12273d2 = C12281e2.f63191b;
                return Boolean.valueOf(com.google.android.gms.internal.measurement.F6.a());
            }
        }, false);
        a("measurement.rb.attribution.service.enable_max_trigger_uris_queried_at_once", bool2, bool2, new P() {
            @Override
            public final Object N1() {
                C12273d2 c12273d2 = C12281e2.f63191b;
                return Boolean.valueOf(C12227x7.e());
            }
        }, false);
        a("measurement.remove_conflicting_first_party_apis.dev", bool, bool, new P() {
            @Override
            public final Object N1() {
                C12273d2 c12273d2 = C12281e2.f63191b;
                return Boolean.valueOf(A7.a());
            }
        }, false);
        f63187Z0 = a("measurement.rb.attribution.service.trigger_uris_high_priority", bool2, bool2, new P() {
            @Override
            public final Object N1() {
                C12273d2 c12273d2 = C12281e2.f63191b;
                return Boolean.valueOf(C12227x7.d());
            }
        }, false);
        f63190a1 = a("measurement.tcf.consent_fix", bool, bool, new P() {
            @Override
            public final Object N1() {
                C12273d2 c12273d2 = C12281e2.f63191b;
                return Boolean.valueOf(Q7.a());
            }
        }, false);
        f63193b1 = a("measurement.tcf.empty_pref_fix", bool2, bool2, new P() {
            @Override
            public final Object N1() {
                C12273d2 c12273d2 = C12281e2.f63191b;
                return Boolean.valueOf(Q7.b());
            }
        }, false);
        f63196c1 = a("measurement.experiment.enable_phenotype_experiment_reporting", bool2, bool2, new P() {
            @Override
            public final Object N1() {
                C12273d2 c12273d2 = C12281e2.f63191b;
                return Boolean.valueOf(D7.a());
            }
        }, false);
        f63199d1 = a("measurement.set_default_event_parameters.fix_service_request_ordering", bool, bool, new P() {
            @Override
            public final Object N1() {
                return new Boolean(com.google.android.gms.internal.measurement.P6.b());
            }
        }, false);
        f63202e1 = a("measurement.set_default_event_parameters.fix_app_update_logging", bool2, bool2, new P() {
            @Override
            public final Object N1() {
                return new Boolean(com.google.android.gms.internal.measurement.P6.a());
            }
        }, false);
        f63205f1 = a("measurement.service.fix_stop_bundling_bug", bool2, bool2, new P() {
            @Override
            public final Object N1() {
                return new Boolean(C12084h7.a());
            }
        }, false);
        f63208g1 = a("measurement.fix_params_logcat_spam", bool2, bool2, new P() {
            @Override
            public final Object N1() {
                return new Boolean(C12057e7.a());
            }
        }, false);
        f63211h1 = a("measurement.gbraid_campaign.stop_lgclid", bool, bool, new P() {
            @Override
            public final Object N1() {
                return new Boolean(C12111k7.a());
            }
        }, false);
        f63214i1 = a("measurement.gbraid_compaign.compaign_params_triggering_info_update", "gclid,gbraid,gad_campaignid", "gclid,gbraid,gad_campaignid", new P() {
            @Override
            public final Object N1() {
                C12273d2 c12273d2 = C12281e2.f63191b;
                return com.google.android.gms.internal.measurement.I6.c0();
            }
        }, false);
        f63217j1 = a("measurement.edpb.service", bool, bool, new P() {
            @Override
            public final Object N1() {
                return new Boolean(com.google.android.gms.internal.measurement.V6.b());
            }
        }, false);
        f63220k1 = a("measurement.edpb.events_cached_in_no_data_mode", "_f,_v,_cmp", "_f,_v,_cmp", new P() {
            @Override
            public final Object N1() {
                C12273d2 c12273d2 = C12281e2.f63191b;
                return com.google.android.gms.internal.measurement.I6.j0();
            }
        }, false);
    }

    @v2.d
    public static C12273d2 a(String str, Object obj, Object obj2, P p10, boolean z10) {
        C12273d2 c12273d2 = new C12273d2(str, obj, obj2, p10, null);
        if (z10) {
            f63188a.add(c12273d2);
        }
        return c12273d2;
    }
}
