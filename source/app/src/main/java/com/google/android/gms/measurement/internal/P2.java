package com.google.android.gms.measurement.internal;

import android.app.AlarmManager;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.util.Pair;
import android.util.SparseArray;
import androidx.annotation.WorkerThread;
import q0.C15034a;
import vm.InterfaceC15866d;

public final class P2 extends T3 {

    public static final Pair f62847A = new Pair("", 0L);

    public SharedPreferences f62848c;

    public SharedPreferences f62849d;

    public N2 f62850e;

    public final M2 f62851f;

    public final M2 f62852g;

    public final O2 f62853h;

    public String f62854i;

    public boolean f62855j;

    public long f62856k;

    public final M2 f62857l;

    public final K2 f62858m;

    public final O2 f62859n;

    public final L2 f62860o;

    public final K2 f62861p;

    public final M2 f62862q;

    public final M2 f62863r;

    public boolean f62864s;

    public final K2 f62865t;

    public final K2 f62866u;

    public final M2 f62867v;

    public final O2 f62868w;

    public final O2 f62869x;

    public final M2 f62870y;

    public final L2 f62871z;

    public P2(C12370p3 c12370p3) {
        super(c12370p3);
        this.f62857l = new M2(this, "session_timeout", AlarmManager.INTERVAL_HALF_HOUR);
        this.f62858m = new K2(this, "start_new_session", true);
        this.f62862q = new M2(this, "last_pause_time", 0L);
        this.f62863r = new M2(this, "session_id", 0L);
        this.f62859n = new O2(this, "non_personalized_ads", null);
        this.f62860o = new L2(this, "last_received_uri_timestamps_by_source", null);
        this.f62861p = new K2(this, "allow_remote_dynamite", false);
        this.f62851f = new M2(this, "first_open_time", 0L);
        this.f62852g = new M2(this, "app_install_time", 0L);
        this.f62853h = new O2(this, "app_instance_id", null);
        this.f62865t = new K2(this, "app_backgrounded", false);
        this.f62866u = new K2(this, "deep_link_retrieval_complete", false);
        this.f62867v = new M2(this, "deep_link_retrieval_attempts", 0L);
        this.f62868w = new O2(this, "firebase_feature_rollouts", null);
        this.f62869x = new O2(this, "deferred_attribution_cache", null);
        this.f62870y = new M2(this, "deferred_attribution_cache_timestamp", 0L);
        this.f62871z = new L2(this, "default_event_parameters", null);
    }

    public final boolean A(long j10) {
        return j10 - this.f62857l.a() > this.f62862q.a();
    }

    @Override
    public final boolean i() {
        return true;
    }

    @Override
    @WorkerThread
    @InterfaceC15866d.a({@InterfaceC15866d({"this.preferences"}), @InterfaceC15866d({"this.monitoringSample"})})
    public final void j() {
        C12370p3 c12370p3 = this.f62917a;
        SharedPreferences sharedPreferences = c12370p3.d().getSharedPreferences("com.google.android.gms.measurement.prefs", 0);
        this.f62848c = sharedPreferences;
        boolean z10 = sharedPreferences.getBoolean("has_been_opened", false);
        this.f62864s = z10;
        if (!z10) {
            SharedPreferences.Editor edit = this.f62848c.edit();
            edit.putBoolean("has_been_opened", true);
            edit.apply();
        }
        c12370p3.w();
        this.f62850e = new N2(this, "health_monitor", Math.max(0L, ((Long) C12281e2.f63197d.b(null)).longValue()), null);
    }

    @WorkerThread
    public final Pair o(String str) {
        h();
        if (!w().o(Y3.AD_STORAGE)) {
            return new Pair("", Boolean.FALSE);
        }
        C12370p3 c12370p3 = this.f62917a;
        long c10 = c12370p3.e().c();
        String str2 = this.f62854i;
        if (str2 != null && c10 < this.f62856k) {
            return new Pair(str2, Boolean.valueOf(this.f62855j));
        }
        this.f62856k = c10 + c12370p3.w().D(str, C12281e2.f63191b);
        C15034a.d(true);
        try {
            C15034a.C1962a a10 = C15034a.a(c12370p3.d());
            this.f62854i = "";
            String a11 = a10.a();
            if (a11 != null) {
                this.f62854i = a11;
            }
            this.f62855j = a10.b();
        } catch (Exception e10) {
            this.f62917a.a().v().b("Unable to get advertising id", e10);
            this.f62854i = "";
        }
        C15034a.d(false);
        return new Pair(this.f62854i, Boolean.valueOf(this.f62855j));
    }

    @v2.d
    @WorkerThread
    public final SharedPreferences p() {
        h();
        l();
        G0.A.r(this.f62848c);
        return this.f62848c;
    }

    @WorkerThread
    public final SharedPreferences q() {
        h();
        l();
        if (this.f62849d == null) {
            C12370p3 c12370p3 = this.f62917a;
            String valueOf = String.valueOf(c12370p3.d().getPackageName());
            C12448z2 w10 = c12370p3.a().w();
            String concat = valueOf.concat("_preferences");
            w10.b("Default prefs file", concat);
            this.f62849d = c12370p3.d().getSharedPreferences(concat, 0);
        }
        return this.f62849d;
    }

    public final SparseArray r() {
        Bundle a10 = this.f62860o.a();
        int[] intArray = a10.getIntArray("uriSources");
        long[] longArray = a10.getLongArray("uriTimestamps");
        if (intArray == null || longArray == null) {
            return new SparseArray();
        }
        if (intArray.length != longArray.length) {
            this.f62917a.a().o().a("Trigger URI source and timestamp array lengths do not match");
            return new SparseArray();
        }
        SparseArray sparseArray = new SparseArray();
        for (int i10 = 0; i10 < intArray.length; i10++) {
            sparseArray.put(intArray[i10], Long.valueOf(longArray[i10]));
        }
        return sparseArray;
    }

    @WorkerThread
    public final void s(Boolean bool) {
        h();
        SharedPreferences.Editor edit = p().edit();
        if (bool != null) {
            edit.putBoolean("measurement_enabled", bool.booleanValue());
        } else {
            edit.remove("measurement_enabled");
        }
        edit.apply();
    }

    @WorkerThread
    public final Boolean t() {
        h();
        if (p().contains("measurement_enabled")) {
            return Boolean.valueOf(p().getBoolean("measurement_enabled", true));
        }
        return null;
    }

    @WorkerThread
    public final A u() {
        h();
        return A.g(p().getString("dma_consent_settings", null));
    }

    @WorkerThread
    public final boolean v(int i10) {
        return Z3.u(i10, p().getInt("consent_source", 100));
    }

    @WorkerThread
    public final Z3 w() {
        h();
        return Z3.f(p().getString("consent_settings", "G1"), p().getInt("consent_source", 100));
    }

    @WorkerThread
    public final boolean x(C12444y6 c12444y6) {
        h();
        String string = p().getString("stored_tcf_param", "");
        String a10 = c12444y6.a();
        if (a10.equals(string)) {
            return false;
        }
        SharedPreferences.Editor edit = p().edit();
        edit.putString("stored_tcf_param", a10);
        edit.apply();
        return true;
    }

    @WorkerThread
    public final void y(boolean z10) {
        h();
        this.f62917a.a().w().b("App measurement setting deferred collection", Boolean.valueOf(z10));
        SharedPreferences.Editor edit = p().edit();
        edit.putBoolean("deferred_analytics_collection", z10);
        edit.apply();
    }

    @WorkerThread
    public final boolean z() {
        SharedPreferences sharedPreferences = this.f62848c;
        if (sharedPreferences == null) {
            return false;
        }
        return sharedPreferences.contains("deferred_analytics_collection");
    }
}
