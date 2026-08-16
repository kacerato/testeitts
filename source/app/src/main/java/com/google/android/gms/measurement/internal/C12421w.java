package com.google.android.gms.measurement.internal;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.os.Bundle;
import android.os.Parcelable;
import android.text.TextUtils;
import androidx.annotation.VisibleForTesting;
import androidx.annotation.WorkerThread;
import com.google.android.gms.internal.measurement.C12017a3;
import com.google.android.gms.internal.measurement.C12026b3;
import com.google.android.gms.internal.measurement.C12062f3;
import com.google.android.gms.internal.measurement.C12089i3;
import com.google.android.gms.internal.measurement.C12116l3;
import com.google.android.gms.internal.measurement.C12125m3;
import com.google.android.gms.internal.measurement.C12134n3;
import com.google.android.gms.internal.measurement.C12227x7;
import fd.C13208a;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import n1.C14345a;
import org.openjdk.tools.doclint.DocLint;

public final class C12421w extends N6 {

    public static final String[] f63656f = {"last_bundled_timestamp", "ALTER TABLE events ADD COLUMN last_bundled_timestamp INTEGER;", "last_bundled_day", "ALTER TABLE events ADD COLUMN last_bundled_day INTEGER;", "last_sampled_complex_event_id", "ALTER TABLE events ADD COLUMN last_sampled_complex_event_id INTEGER;", "last_sampling_rate", "ALTER TABLE events ADD COLUMN last_sampling_rate INTEGER;", "last_exempt_from_sampling", "ALTER TABLE events ADD COLUMN last_exempt_from_sampling INTEGER;", "current_session_count", "ALTER TABLE events ADD COLUMN current_session_count INTEGER;"};

    public static final String[] f63657g = {"associated_row_id", "ALTER TABLE upload_queue ADD COLUMN associated_row_id INTEGER;", "last_upload_timestamp", "ALTER TABLE upload_queue ADD COLUMN last_upload_timestamp INTEGER;"};

    public static final String[] f63658h = {"origin", "ALTER TABLE user_attributes ADD COLUMN origin TEXT;"};

    public static final String[] f63659i = {"app_version", "ALTER TABLE apps ADD COLUMN app_version TEXT;", "app_store", "ALTER TABLE apps ADD COLUMN app_store TEXT;", "gmp_version", "ALTER TABLE apps ADD COLUMN gmp_version INTEGER;", "dev_cert_hash", "ALTER TABLE apps ADD COLUMN dev_cert_hash INTEGER;", "measurement_enabled", "ALTER TABLE apps ADD COLUMN measurement_enabled INTEGER;", "last_bundle_start_timestamp", "ALTER TABLE apps ADD COLUMN last_bundle_start_timestamp INTEGER;", "day", "ALTER TABLE apps ADD COLUMN day INTEGER;", "daily_public_events_count", "ALTER TABLE apps ADD COLUMN daily_public_events_count INTEGER;", "daily_events_count", "ALTER TABLE apps ADD COLUMN daily_events_count INTEGER;", "daily_conversions_count", "ALTER TABLE apps ADD COLUMN daily_conversions_count INTEGER;", "remote_config", "ALTER TABLE apps ADD COLUMN remote_config BLOB;", "config_fetched_time", "ALTER TABLE apps ADD COLUMN config_fetched_time INTEGER;", "failed_config_fetch_time", "ALTER TABLE apps ADD COLUMN failed_config_fetch_time INTEGER;", "app_version_int", "ALTER TABLE apps ADD COLUMN app_version_int INTEGER;", "firebase_instance_id", "ALTER TABLE apps ADD COLUMN firebase_instance_id TEXT;", "daily_error_events_count", "ALTER TABLE apps ADD COLUMN daily_error_events_count INTEGER;", "daily_realtime_events_count", "ALTER TABLE apps ADD COLUMN daily_realtime_events_count INTEGER;", "health_monitor_sample", "ALTER TABLE apps ADD COLUMN health_monitor_sample TEXT;", "android_id", "ALTER TABLE apps ADD COLUMN android_id INTEGER;", "adid_reporting_enabled", "ALTER TABLE apps ADD COLUMN adid_reporting_enabled INTEGER;", "ssaid_reporting_enabled", "ALTER TABLE apps ADD COLUMN ssaid_reporting_enabled INTEGER;", "admob_app_id", "ALTER TABLE apps ADD COLUMN admob_app_id TEXT;", "linked_admob_app_id", "ALTER TABLE apps ADD COLUMN linked_admob_app_id TEXT;", "dynamite_version", "ALTER TABLE apps ADD COLUMN dynamite_version INTEGER;", "safelisted_events", "ALTER TABLE apps ADD COLUMN safelisted_events TEXT;", "ga_app_id", "ALTER TABLE apps ADD COLUMN ga_app_id TEXT;", "config_last_modified_time", "ALTER TABLE apps ADD COLUMN config_last_modified_time TEXT;", "e_tag", "ALTER TABLE apps ADD COLUMN e_tag TEXT;", "session_stitching_token", "ALTER TABLE apps ADD COLUMN session_stitching_token TEXT;", "sgtm_upload_enabled", "ALTER TABLE apps ADD COLUMN sgtm_upload_enabled INTEGER;", "target_os_version", "ALTER TABLE apps ADD COLUMN target_os_version INTEGER;", "session_stitching_token_hash", "ALTER TABLE apps ADD COLUMN session_stitching_token_hash INTEGER;", "ad_services_version", "ALTER TABLE apps ADD COLUMN ad_services_version INTEGER;", "unmatched_first_open_without_ad_id", "ALTER TABLE apps ADD COLUMN unmatched_first_open_without_ad_id INTEGER;", "npa_metadata_value", "ALTER TABLE apps ADD COLUMN npa_metadata_value INTEGER;", "attribution_eligibility_status", "ALTER TABLE apps ADD COLUMN attribution_eligibility_status INTEGER;", "sgtm_preview_key", "ALTER TABLE apps ADD COLUMN sgtm_preview_key TEXT;", "dma_consent_state", "ALTER TABLE apps ADD COLUMN dma_consent_state INTEGER;", "daily_realtime_dcu_count", "ALTER TABLE apps ADD COLUMN daily_realtime_dcu_count INTEGER;", "bundle_delivery_index", "ALTER TABLE apps ADD COLUMN bundle_delivery_index INTEGER;", "serialized_npa_metadata", "ALTER TABLE apps ADD COLUMN serialized_npa_metadata TEXT;", "unmatched_pfo", "ALTER TABLE apps ADD COLUMN unmatched_pfo INTEGER;", "unmatched_uwa", "ALTER TABLE apps ADD COLUMN unmatched_uwa INTEGER;", "ad_campaign_info", "ALTER TABLE apps ADD COLUMN ad_campaign_info BLOB;", "daily_registered_triggers_count", "ALTER TABLE apps ADD COLUMN daily_registered_triggers_count INTEGER;", "client_upload_eligibility", "ALTER TABLE apps ADD COLUMN client_upload_eligibility INTEGER;", "gmp_version_for_remote_config", "ALTER TABLE apps ADD COLUMN gmp_version_for_remote_config INTEGER;"};

    public static final String[] f63660j = {"realtime", "ALTER TABLE raw_events ADD COLUMN realtime INTEGER;"};

    public static final String[] f63661k = {"has_realtime", "ALTER TABLE queue ADD COLUMN has_realtime INTEGER;", "retry_count", "ALTER TABLE queue ADD COLUMN retry_count INTEGER;"};

    public static final String[] f63662l = {"session_scoped", "ALTER TABLE event_filters ADD COLUMN session_scoped BOOLEAN;"};

    public static final String[] f63663m = {"session_scoped", "ALTER TABLE property_filters ADD COLUMN session_scoped BOOLEAN;"};

    public static final String[] f63664n = {"previous_install_count", "ALTER TABLE app2 ADD COLUMN previous_install_count INTEGER;"};

    public static final String[] f63665o = {"consent_source", "ALTER TABLE consent_settings ADD COLUMN consent_source INTEGER;", "dma_consent_settings", "ALTER TABLE consent_settings ADD COLUMN dma_consent_settings TEXT;", "storage_consent_at_bundling", "ALTER TABLE consent_settings ADD COLUMN storage_consent_at_bundling TEXT;"};

    public static final String[] f63666p = {"idempotent", "CREATE INDEX IF NOT EXISTS trigger_uris_index ON trigger_uris (app_id);"};

    public final C12413v f63667d;

    public final B6 f63668e;

    public C12421w(c7 c7Var) {
        super(c7Var);
        this.f63668e = new B6(this.f62917a.e());
        this.f62917a.w();
        this.f63667d = new C12413v(this, this.f62917a.d(), "google_app_measurement.db");
    }

    public static final String V(List list) {
        return list.isEmpty() ? "" : String.format(" AND (upload_type IN (%s))", TextUtils.join(", ", list));
    }

    @WorkerThread
    public static final void s0(ContentValues contentValues, String str, Object obj) {
        G0.A.l("value");
        G0.A.r(obj);
        if (obj instanceof String) {
            contentValues.put("value", (String) obj);
        } else if (obj instanceof Long) {
            contentValues.put("value", (Long) obj);
        } else {
            if (!(obj instanceof Double)) {
                throw new IllegalArgumentException("Invalid value type");
            }
            contentValues.put("value", (Double) obj);
        }
    }

    @WorkerThread
    public final long A() {
        return N("select max(timestamp) from raw_events", null, 0L);
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0059, code lost:
    
        if (r8 != null) goto L9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x005b, code lost:
    
        R("events", r8);
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x00c0, code lost:
    
        if (r8 != null) goto L9;
     */
    /* JADX WARN: Removed duplicated region for block: B:31:0x00b6  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x00c0  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00ca  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void A0(String str) {
        boolean z10;
        E Q10;
        ArrayList arrayList = new ArrayList(Arrays.asList("name", "lifetime_count"));
        E Q11 = Q("events", str, "_f");
        E Q12 = Q("events", str, "_v");
        S("events", str);
        Cursor cursor = null;
        boolean z11 = false;
        try {
            cursor = w0().query("events_snapshot", (String[]) arrayList.toArray(new String[0]), "app_id=?", new String[]{str}, null, null, null);
        } catch (SQLiteException e10) {
            e = e10;
            z10 = false;
        } catch (Throwable th2) {
            th = th2;
            z10 = false;
        }
        if (!cursor.moveToFirst()) {
            cursor.close();
            if (Q11 == null) {
            }
            R("events", Q11);
            S("events_snapshot", str);
        }
        boolean z12 = false;
        z10 = false;
        do {
            try {
                String string = cursor.getString(0);
                if (cursor.getLong(1) >= 1) {
                    if ("_f".equals(string)) {
                        z12 = true;
                    } else if ("_v".equals(string)) {
                        z10 = true;
                    }
                }
                if (string != null && (Q10 = Q("events_snapshot", str, string)) != null) {
                    R("events", Q10);
                }
            } catch (SQLiteException e11) {
                e = e11;
                z11 = z12;
                try {
                    this.f62917a.a().o().c("Error querying snapshot. appId", B2.x(str), e);
                    z12 = z11;
                    if (cursor != null) {
                    }
                    if (!z12) {
                    }
                    if (!z10) {
                    }
                    S("events_snapshot", str);
                } catch (Throwable th3) {
                    th = th3;
                    if (cursor != null) {
                        cursor.close();
                    }
                    if (z11 && Q11 != null) {
                        R("events", Q11);
                    } else if (!z10 && Q12 != null) {
                        R("events", Q12);
                    }
                    S("events_snapshot", str);
                    throw th;
                }
            } catch (Throwable th4) {
                th = th4;
                z11 = z12;
                if (cursor != null) {
                }
                if (z11) {
                }
                if (!z10) {
                    R("events", Q12);
                }
                S("events_snapshot", str);
                throw th;
            }
        } while (cursor.moveToNext());
        if (cursor != null) {
            cursor.close();
        }
        if (!z12 || Q11 == null) {
            if (!z10) {
            }
            S("events_snapshot", str);
        }
        R("events", Q11);
        S("events_snapshot", str);
    }

    public final boolean B() {
        return M("select count(1) > 0 from raw_events", null) != 0;
    }

    @WorkerThread
    public final void B0(String str, String str2) {
        G0.A.l(str);
        G0.A.l(str2);
        h();
        j();
        try {
            w0().delete("user_attributes", "app_id=? and name=?", new String[]{str, str2});
        } catch (SQLiteException e10) {
            C12370p3 c12370p3 = this.f62917a;
            c12370p3.a().o().d("Error deleting user property. appId", B2.x(str), c12370p3.D().c(str2), e10);
        }
    }

    public final boolean C(String str, String str2) {
        return M("select count(1) from raw_events where app_id = ? and name = ?", new String[]{str, str2}) > 0;
    }

    @WorkerThread
    public final boolean C0(k7 k7Var) {
        G0.A.r(k7Var);
        h();
        j();
        String str = k7Var.f63378a;
        String str2 = k7Var.f63380c;
        if (D0(str, str2) == null) {
            if (m7.r0(str2)) {
                if (M("select count(1) from user_attributes where app_id=? and name not like '!_%' escape '!'", new String[]{str}) >= this.f62917a.w().F(str, C12281e2.f63180W, 25, 100)) {
                    return false;
                }
            } else if (!"_npa".equals(str2)) {
                long M10 = M("select count(1) from user_attributes where app_id=? and origin=? AND name like '!_%' escape '!'", new String[]{str, k7Var.f63379b});
                this.f62917a.w();
                if (M10 >= 25) {
                    return false;
                }
            }
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", str);
        contentValues.put("origin", k7Var.f63379b);
        contentValues.put("name", str2);
        contentValues.put("set_timestamp", Long.valueOf(k7Var.f63381d));
        s0(contentValues, "value", k7Var.f63382e);
        try {
            if (w0().insertWithOnConflict("user_attributes", null, contentValues, 5) != -1) {
                return true;
            }
            this.f62917a.a().o().b("Failed to insert/update user property (got -1). appId", B2.x(str));
            return true;
        } catch (SQLiteException e10) {
            this.f62917a.a().o().c("Error storing user property. appId", B2.x(k7Var.f63378a), e10);
            return true;
        }
    }

    public final boolean D() {
        return M("select count(1) > 0 from raw_events where realtime = 1", null) != 0;
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x0097  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0091  */
    @WorkerThread
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final k7 D0(String str, String str2) {
        SQLiteException e10;
        Cursor cursor;
        G0.A.l(str);
        G0.A.l(str2);
        h();
        j();
        Cursor cursor2 = null;
        try {
            cursor = w0().query("user_attributes", new String[]{"set_timestamp", "value", "origin"}, "app_id=? and name=?", new String[]{str, str2}, null, null, null);
            try {
                try {
                    if (cursor.moveToFirst()) {
                        long j10 = cursor.getLong(0);
                        Object x10 = x(cursor, 1);
                        if (x10 != null) {
                            k7 k7Var = new k7(str, cursor.getString(2), str2, j10, x10);
                            if (cursor.moveToNext()) {
                                this.f62917a.a().o().b("Got multiple records for user property, expected one. appId", B2.x(str));
                            }
                            cursor.close();
                            return k7Var;
                        }
                    }
                } catch (SQLiteException e11) {
                    e10 = e11;
                    C12370p3 c12370p3 = this.f62917a;
                    c12370p3.a().o().d("Error querying user property. appId", B2.x(str), c12370p3.D().c(str2), e10);
                    if (cursor != null) {
                    }
                    return null;
                }
            } catch (Throwable th2) {
                th = th2;
                cursor2 = cursor;
                if (cursor2 != null) {
                    cursor2.close();
                }
                throw th;
            }
        } catch (SQLiteException e12) {
            e10 = e12;
            cursor = null;
        } catch (Throwable th3) {
            th = th3;
            if (cursor2 != null) {
            }
            throw th;
        }
        if (cursor != null) {
            cursor.close();
        }
        return null;
    }

    public final void E(List list) {
        G0.A.r(list);
        h();
        j();
        StringBuilder sb2 = new StringBuilder("rowid in (");
        for (int i10 = 0; i10 < list.size(); i10++) {
            if (i10 != 0) {
                sb2.append(DocLint.SEPARATOR);
            }
            sb2.append(((Long) list.get(i10)).longValue());
        }
        sb2.append(")");
        int delete = w0().delete("raw_events", sb2.toString(), null);
        if (delete != list.size()) {
            this.f62917a.a().o().c("Deleted fewer rows from raw events table than expected", Integer.valueOf(delete), Integer.valueOf(list.size()));
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x005a, code lost:
    
        if (r8 != null) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x005c, code lost:
    
        r11.a().o().b("Read invalid user property value, ignoring it. appId", com.google.android.gms.measurement.internal.B2.x(r13));
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x007c, code lost:
    
        if (r10.moveToNext() != false) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x006e, code lost:
    
        r0.add(new com.google.android.gms.measurement.internal.k7(r13, r4, r5, r6, r8));
     */
    /* JADX WARN: Code restructure failed: missing block: B:4:0x003a, code lost:
    
        if (r10.moveToFirst() != false) goto L5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:5:0x003c, code lost:
    
        r5 = r10.getString(0);
        r1 = r10.getString(1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x0046, code lost:
    
        if (r1 != null) goto L8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x0048, code lost:
    
        r1 = "";
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x004a, code lost:
    
        r4 = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0050, code lost:
    
        r6 = r10.getLong(2);
        r8 = x(r10, 3);
     */
    @WorkerThread
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final List E0(String str) {
        G0.A.l(str);
        h();
        j();
        List arrayList = new ArrayList();
        Cursor cursor = null;
        try {
            try {
                C12370p3 c12370p3 = this.f62917a;
                c12370p3.w();
                cursor = w0().query("user_attributes", new String[]{"name", "origin", "set_timestamp", "value"}, "app_id=?", new String[]{str}, null, null, "rowid", "1000");
            } catch (SQLiteException e10) {
                this.f62917a.a().o().c("Error querying user properties. appId", B2.x(str), e10);
                arrayList = Collections.emptyList();
            }
            if (cursor != null) {
                cursor.close();
            }
            return arrayList;
        } catch (Throwable th2) {
            if (cursor != null) {
                cursor.close();
            }
            throw th2;
        }
    }

    public final void F(String str) {
        try {
            w0().execSQL("delete from raw_events_metadata where app_id=? and metadata_fingerprint not in (select distinct metadata_fingerprint from raw_events where app_id=?)", new String[]{str, str});
        } catch (SQLiteException e10) {
            this.f62917a.a().o().c("Failed to remove unused event metadata. appId", B2.x(str), e10);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:45:0x00b6, code lost:
    
        r0 = r9.a().o();
        r9.w();
        r0.b("Read more than the max allowed user properties, ignoring excess", 1000);
     */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0138  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x013f  */
    @WorkerThread
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final List F0(String str, String str2, String str3) {
        Cursor cursor;
        String str4;
        Cursor cursor2;
        G0.A.l(str);
        h();
        j();
        List arrayList = new ArrayList();
        try {
            try {
                ArrayList arrayList2 = new ArrayList(3);
                arrayList2.add(str);
                StringBuilder sb2 = new StringBuilder("app_id=?");
                if (TextUtils.isEmpty(str2)) {
                    str4 = str2;
                } else {
                    str4 = str2;
                    try {
                        arrayList2.add(str4);
                        sb2.append(" and origin=?");
                    } catch (SQLiteException e10) {
                        e = e10;
                        cursor = null;
                        try {
                            this.f62917a.a().o().d("(2)Error querying user properties", B2.x(str), str4, e);
                            arrayList = Collections.emptyList();
                            cursor2 = cursor;
                            if (cursor2 != null) {
                            }
                            return arrayList;
                        } catch (Throwable th2) {
                            th = th2;
                            if (cursor != null) {
                                cursor.close();
                            }
                            throw th;
                        }
                    }
                }
                if (!TextUtils.isEmpty(str3)) {
                    StringBuilder sb3 = new StringBuilder(String.valueOf(str3).length() + 1);
                    sb3.append(str3);
                    sb3.append("*");
                    arrayList2.add(sb3.toString());
                    sb2.append(" and name glob ?");
                }
                String[] strArr = (String[]) arrayList2.toArray(new String[arrayList2.size()]);
                String sb4 = sb2.toString();
                C12370p3 c12370p3 = this.f62917a;
                c12370p3.w();
                cursor2 = w0().query("user_attributes", new String[]{"name", "set_timestamp", "value", "origin"}, sb4, strArr, null, null, "rowid", "1001");
                try {
                    try {
                        if (cursor2.moveToFirst()) {
                            while (true) {
                                int size = arrayList.size();
                                c12370p3.w();
                                if (size >= 1000) {
                                    break;
                                }
                                String string = cursor2.getString(0);
                                long j10 = cursor2.getLong(1);
                                Object x10 = x(cursor2, 2);
                                String string2 = cursor2.getString(3);
                                if (x10 == null) {
                                    try {
                                        c12370p3.a().o().d("(2)Read invalid user property value, ignoring it", B2.x(str), string2, str3);
                                    } catch (SQLiteException e11) {
                                        e = e11;
                                        cursor = cursor2;
                                        str4 = string2;
                                        this.f62917a.a().o().d("(2)Error querying user properties", B2.x(str), str4, e);
                                        arrayList = Collections.emptyList();
                                        cursor2 = cursor;
                                        if (cursor2 != null) {
                                        }
                                        return arrayList;
                                    }
                                } else {
                                    arrayList.add(new k7(str, string2, string, j10, x10));
                                }
                                if (!cursor2.moveToNext()) {
                                    break;
                                }
                                str4 = string2;
                            }
                        }
                    } catch (Throwable th3) {
                        th = th3;
                        cursor = cursor2;
                        if (cursor != null) {
                        }
                        throw th;
                    }
                } catch (SQLiteException e12) {
                    e = e12;
                    cursor = cursor2;
                }
            } catch (SQLiteException e13) {
                e = e13;
                str4 = str2;
            }
            if (cursor2 != null) {
                cursor2.close();
            }
            return arrayList;
        } catch (Throwable th4) {
            th = th4;
            cursor = null;
        }
    }

    public final long G(String str) {
        G0.A.l(str);
        return N("select count(1) from events where app_id=? and name not like '!_%' escape '!'", new String[]{str}, 0L);
    }

    @WorkerThread
    public final boolean G0(C12310i c12310i) {
        G0.A.r(c12310i);
        h();
        j();
        String str = c12310i.f63338b;
        G0.A.r(str);
        if (D0(str, c12310i.f63340d.f63358c) == null) {
            long M10 = M("SELECT COUNT(1) FROM conditional_properties WHERE app_id=?", new String[]{str});
            this.f62917a.w();
            if (M10 >= 1000) {
                return false;
            }
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", str);
        contentValues.put("origin", c12310i.f63339c);
        contentValues.put("name", c12310i.f63340d.f63358c);
        s0(contentValues, "value", G0.A.r(c12310i.f63340d.n()));
        contentValues.put(C14345a.C1879a.f97714n, Boolean.valueOf(c12310i.f63342f));
        contentValues.put(C14345a.C1879a.f97704d, c12310i.f63343g);
        contentValues.put(C14345a.C1879a.f97705e, Long.valueOf(c12310i.f63345i));
        C12370p3 c12370p3 = this.f62917a;
        contentValues.put("timed_out_event", c12370p3.C().T(c12310i.f63344h));
        contentValues.put(C14345a.C1879a.f97713m, Long.valueOf(c12310i.f63341e));
        contentValues.put("triggered_event", c12370p3.C().T(c12310i.f63346j));
        contentValues.put(C14345a.C1879a.f97715o, Long.valueOf(c12310i.f63340d.f63359d));
        contentValues.put(C14345a.C1879a.f97710j, Long.valueOf(c12310i.f63347k));
        contentValues.put("expired_event", c12370p3.C().T(c12310i.f63348l));
        try {
            if (w0().insertWithOnConflict("conditional_properties", null, contentValues, 5) != -1) {
                return true;
            }
            c12370p3.a().o().b("Failed to insert/update conditional user property (got -1)", B2.x(str));
            return true;
        } catch (SQLiteException e10) {
            this.f62917a.a().o().c("Error storing conditional user property", B2.x(str), e10);
            return true;
        }
    }

    public final boolean H(String str, Long l10, long j10, C12026b3 c12026b3) {
        h();
        j();
        G0.A.r(c12026b3);
        G0.A.l(str);
        G0.A.r(l10);
        C12370p3 c12370p3 = this.f62917a;
        byte[] g10 = c12026b3.g();
        c12370p3.a().w().c("Saving complex main event, appId, data size", c12370p3.D().a(str), Integer.valueOf(g10.length));
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", str);
        contentValues.put("event_id", l10);
        contentValues.put("children_to_process", Long.valueOf(j10));
        contentValues.put("main_event", g10);
        try {
            if (w0().insertWithOnConflict("main_event_params", null, contentValues, 5) != -1) {
                return true;
            }
            c12370p3.a().o().b("Failed to insert complex main event (got -1). appId", B2.x(str));
            return false;
        } catch (SQLiteException e10) {
            this.f62917a.a().o().c("Error storing complex main event. appId", B2.x(str), e10);
            return false;
        }
    }

    /* JADX WARN: Not initialized variable reg: 10, insn: 0x00f4: MOVE (r9 I:??[OBJECT, ARRAY]) = (r10 I:??[OBJECT, ARRAY]), block:B:32:0x00f4 */
    /* JADX WARN: Removed duplicated region for block: B:34:0x011d  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0117  */
    @WorkerThread
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final C12310i H0(String str, String str2) {
        Cursor cursor;
        AutoCloseable autoCloseable;
        G0.A.l(str);
        G0.A.l(str2);
        h();
        j();
        AutoCloseable autoCloseable2 = null;
        try {
            try {
                cursor = w0().query("conditional_properties", new String[]{"origin", "value", C14345a.C1879a.f97714n, C14345a.C1879a.f97704d, C14345a.C1879a.f97705e, "timed_out_event", C14345a.C1879a.f97713m, "triggered_event", C14345a.C1879a.f97715o, C14345a.C1879a.f97710j, "expired_event"}, "app_id=? and name=?", new String[]{str, str2}, null, null, null);
                try {
                } catch (SQLiteException e10) {
                    e = e10;
                    C12370p3 c12370p3 = this.f62917a;
                    c12370p3.a().o().d("Error querying conditional property", B2.x(str), c12370p3.D().c(str2), e);
                    if (cursor != null) {
                    }
                    return null;
                }
            } catch (Throwable th2) {
                th = th2;
                autoCloseable2 = autoCloseable;
                if (autoCloseable2 != null) {
                    autoCloseable2.close();
                }
                throw th;
            }
        } catch (SQLiteException e11) {
            e = e11;
            cursor = null;
        } catch (Throwable th3) {
            th = th3;
            if (autoCloseable2 != null) {
            }
            throw th;
        }
        if (!cursor.moveToFirst()) {
            if (cursor != null) {
                cursor.close();
            }
            return null;
        }
        String string = cursor.getString(0);
        if (string == null) {
            string = "";
        }
        String str3 = string;
        Object x10 = x(cursor, 1);
        boolean z10 = cursor.getInt(2) != 0;
        String string2 = cursor.getString(3);
        long j10 = cursor.getLong(4);
        c7 c7Var = this.f62657b;
        h7 K02 = c7Var.K0();
        byte[] blob = cursor.getBlob(5);
        Parcelable.Creator<I> creator = I.CREATOR;
        C12310i c12310i = new C12310i(str, str3, new i7(str2, cursor.getLong(8), x10, str3), cursor.getLong(6), z10, string2, (I) K02.N(blob, creator), j10, (I) c7Var.K0().N(cursor.getBlob(7), creator), cursor.getLong(9), (I) c7Var.K0().N(cursor.getBlob(10), creator));
        if (cursor.moveToNext()) {
            C12370p3 c12370p32 = this.f62917a;
            c12370p32.a().o().c("Got multiple records for conditional property, expected one", B2.x(str), c12370p32.D().c(str2));
        }
        cursor.close();
        return c12310i;
    }

    /* JADX WARN: Not initialized variable reg: 1, insn: 0x006a: MOVE (r0 I:??[OBJECT, ARRAY]) = (r1 I:??[OBJECT, ARRAY]), block:B:27:0x006a */
    /* JADX WARN: Removed duplicated region for block: B:29:0x0087  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0081  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Bundle I(String str) {
        Cursor cursor;
        AutoCloseable autoCloseable;
        h();
        j();
        AutoCloseable autoCloseable2 = null;
        try {
            try {
                cursor = w0().rawQuery("select parameters from default_event_params where app_id=?", new String[]{str});
                try {
                    if (cursor.moveToFirst()) {
                        try {
                            C12026b3 c12026b3 = (C12026b3) ((C12017a3) h7.W(C12026b3.O(), cursor.getBlob(0))).q();
                            this.f62657b.K0();
                            Bundle q10 = h7.q(c12026b3.E());
                            cursor.close();
                            return q10;
                        } catch (IOException e10) {
                            this.f62917a.a().o().c("Failed to retrieve default event parameters. appId", B2.x(str), e10);
                        }
                    } else {
                        this.f62917a.a().w().a("Default event parameters not found");
                    }
                } catch (SQLiteException e11) {
                    e = e11;
                    this.f62917a.a().o().b("Error selecting default event parameters", e);
                    if (cursor != null) {
                    }
                    return null;
                }
            } catch (Throwable th2) {
                th = th2;
                autoCloseable2 = autoCloseable;
                if (autoCloseable2 != null) {
                    autoCloseable2.close();
                }
                throw th;
            }
        } catch (SQLiteException e12) {
            e = e12;
            cursor = null;
        } catch (Throwable th3) {
            th = th3;
            if (autoCloseable2 != null) {
            }
            throw th;
        }
        if (cursor != null) {
            cursor.close();
        }
        return null;
    }

    @WorkerThread
    public final int I0(String str, String str2) {
        G0.A.l(str);
        G0.A.l(str2);
        h();
        j();
        try {
            return w0().delete("conditional_properties", "app_id=? and name=?", new String[]{str, str2});
        } catch (SQLiteException e10) {
            C12370p3 c12370p3 = this.f62917a;
            c12370p3.a().o().d("Error deleting conditional property", B2.x(str), c12370p3.D().c(str2), e10);
            return 0;
        }
    }

    public final boolean J(String str, long j10) {
        try {
            if (N("select count(*) from raw_events where app_id=? and timestamp >= ? and name not like '!_%' escape '!' limit 1;", new String[]{str, String.valueOf(j10)}, 0L) > 0) {
                return false;
            }
            return N("select count(*) from raw_events where app_id=? and timestamp >= ? and name like '!_%' escape '!' limit 1;", new String[]{str, String.valueOf(j10)}, 0L) > 0;
        } catch (SQLiteException e10) {
            this.f62917a.a().o().b("Error checking backfill conditions", e10);
            return false;
        }
    }

    @WorkerThread
    public final List J0(String str, String str2, String str3) {
        G0.A.l(str);
        h();
        j();
        ArrayList arrayList = new ArrayList(3);
        arrayList.add(str);
        StringBuilder sb2 = new StringBuilder("app_id=?");
        if (!TextUtils.isEmpty(str2)) {
            arrayList.add(str2);
            sb2.append(" and origin=?");
        }
        if (!TextUtils.isEmpty(str3)) {
            arrayList.add(String.valueOf(str3).concat("*"));
            sb2.append(" and name glob ?");
        }
        return K0(sb2.toString(), (String[]) arrayList.toArray(new String[arrayList.size()]));
    }

    /* JADX WARN: Removed duplicated region for block: B:22:0x00fc  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0142  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x01cb  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x01e8  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x02b0 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:84:0x002e A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:88:0x01ec  */
    /* JADX WARN: Removed duplicated region for block: B:98:0x011e A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void K(String str, Long l10, String str2, Bundle bundle) {
        String string;
        String str3;
        Bundle bundle2;
        long update;
        C12134n3 c12134n3;
        Cursor query;
        G0.A.r(bundle);
        h();
        j();
        C12405u c12405u = l10 != null ? new C12405u(this, str, l10.longValue()) : new C12405u(this, str);
        for (List<C12397t> a10 = c12405u.a(); !a10.isEmpty(); a10 = c12405u.a()) {
            for (C12397t c12397t : a10) {
                if (!TextUtils.isEmpty(str2)) {
                    Cursor cursor = null;
                    C12134n3 c12134n32 = null;
                    Cursor cursor2 = null;
                    try {
                        try {
                            query = w0().query("raw_events_metadata", new String[]{"metadata"}, "app_id = ? and metadata_fingerprint = ?", new String[]{str, Long.toString(c12397t.f63586b)}, null, null, "rowid", "2");
                            try {
                                try {
                                } catch (Throwable th2) {
                                    th = th2;
                                    cursor = query;
                                    if (cursor != null) {
                                        cursor.close();
                                    }
                                    throw th;
                                }
                            } catch (SQLiteException e10) {
                                e = e10;
                                c12134n3 = null;
                            }
                        } catch (SQLiteException e11) {
                            e = e11;
                            c12134n3 = null;
                        }
                        if (query.moveToFirst()) {
                            try {
                                c12134n3 = (C12134n3) ((C12125m3) h7.W(C12134n3.j0(), query.getBlob(0))).q();
                                try {
                                    if (query.moveToNext()) {
                                        this.f62917a.a().r().b("Get multiple raw event metadata records, expected one. appId", B2.x(str));
                                    }
                                    query.close();
                                    query.close();
                                } catch (SQLiteException e12) {
                                    e = e12;
                                    cursor2 = query;
                                    this.f62917a.a().o().c("Data loss. Error selecting raw event. appId", B2.x(str), e);
                                    if (cursor2 != null) {
                                        cursor2.close();
                                    }
                                    c12134n32 = c12134n3;
                                    if (c12134n32 != null) {
                                    }
                                    c7 c7Var = this.f62657b;
                                    h7 K02 = c7Var.K0();
                                    C12026b3 c12026b3 = c12397t.f63588d;
                                    Bundle bundle3 = new Bundle();
                                    while (r4.hasNext()) {
                                    }
                                    string = bundle3.getString("_o");
                                    bundle3.remove("_o");
                                    String H10 = c12026b3.H();
                                    if (string == null) {
                                    }
                                    C2 c22 = new C2(H10, string, bundle3, c12026b3.J());
                                    C12370p3 c12370p3 = this.f62917a;
                                    Bundle bundle4 = c22.f62576d;
                                    str3 = c22.f62573a;
                                    m7 C10 = c12370p3.C();
                                    if (str3.equals("_cmp")) {
                                    }
                                    C10.w(bundle4, bundle2);
                                    D d10 = new D(this.f62917a, c22.f62574b, str, c12026b3.H(), c12026b3.J(), c12026b3.L(), bundle4);
                                    long j10 = c12397t.f63585a;
                                    long j11 = c12397t.f63586b;
                                    boolean z10 = c12397t.f63587c;
                                    h();
                                    j();
                                    G0.A.r(d10);
                                    String str4 = d10.f62586a;
                                    G0.A.l(str4);
                                    byte[] g10 = c7Var.K0().J(d10).g();
                                    ContentValues contentValues = new ContentValues();
                                    contentValues.put("app_id", str4);
                                    contentValues.put("name", d10.f62587b);
                                    contentValues.put("timestamp", Long.valueOf(d10.f62589d));
                                    contentValues.put("metadata_fingerprint", Long.valueOf(j11));
                                    contentValues.put("data", g10);
                                    contentValues.put("realtime", Integer.valueOf(z10 ? 1 : 0));
                                    update = w0().update("raw_events", contentValues, "rowid = ?", new String[]{String.valueOf(j10)});
                                    if (update == 1) {
                                    }
                                }
                                c12134n32 = c12134n3;
                            } catch (IOException e13) {
                                this.f62917a.a().o().c("Data loss. Failed to merge raw event metadata. appId", B2.x(str), e13);
                            }
                            if (c12134n32 != null) {
                                Iterator it = c12134n32.m2().iterator();
                                while (it.hasNext()) {
                                    if (((com.google.android.gms.internal.measurement.E3) it.next()).G().equals(str2)) {
                                        break;
                                    }
                                }
                            }
                        } else {
                            this.f62917a.a().o().b("Raw event metadata record is missing. appId", B2.x(str));
                        }
                        query.close();
                        if (c12134n32 != null) {
                        }
                    } catch (Throwable th3) {
                        th = th3;
                    }
                }
                c7 c7Var2 = this.f62657b;
                h7 K022 = c7Var2.K0();
                C12026b3 c12026b32 = c12397t.f63588d;
                Bundle bundle32 = new Bundle();
                for (C12062f3 c12062f3 : c12026b32.E()) {
                    if (c12062f3.M()) {
                        bundle32.putDouble(c12062f3.F(), c12062f3.N());
                    } else if (c12062f3.K()) {
                        bundle32.putFloat(c12062f3.F(), c12062f3.L());
                    } else if (c12062f3.I()) {
                        bundle32.putLong(c12062f3.F(), c12062f3.J());
                    } else if (c12062f3.G()) {
                        bundle32.putString(c12062f3.F(), c12062f3.H());
                    } else if (c12062f3.O().isEmpty()) {
                        K022.f62917a.a().o().b("Unexpected parameter type for parameter", c12062f3);
                    } else {
                        bundle32.putParcelableArray(c12062f3.F(), h7.Y(c12062f3.O()));
                    }
                }
                string = bundle32.getString("_o");
                bundle32.remove("_o");
                String H102 = c12026b32.H();
                if (string == null) {
                    string = "";
                }
                C2 c222 = new C2(H102, string, bundle32, c12026b32.J());
                C12370p3 c12370p32 = this.f62917a;
                Bundle bundle42 = c222.f62576d;
                str3 = c222.f62573a;
                m7 C102 = c12370p32.C();
                if (str3.equals("_cmp")) {
                    bundle2 = bundle;
                } else {
                    bundle2 = new Bundle(bundle);
                    Iterator<String> it2 = bundle.keySet().iterator();
                    while (it2.hasNext()) {
                        String next = it2.next();
                        Iterator<String> it3 = it2;
                        if (next.startsWith("gad_")) {
                            bundle2.remove(next);
                        }
                        it2 = it3;
                    }
                }
                C102.w(bundle42, bundle2);
                D d102 = new D(this.f62917a, c222.f62574b, str, c12026b32.H(), c12026b32.J(), c12026b32.L(), bundle42);
                long j102 = c12397t.f63585a;
                long j112 = c12397t.f63586b;
                boolean z102 = c12397t.f63587c;
                h();
                j();
                G0.A.r(d102);
                String str42 = d102.f62586a;
                G0.A.l(str42);
                byte[] g102 = c7Var2.K0().J(d102).g();
                ContentValues contentValues2 = new ContentValues();
                contentValues2.put("app_id", str42);
                contentValues2.put("name", d102.f62587b);
                contentValues2.put("timestamp", Long.valueOf(d102.f62589d));
                contentValues2.put("metadata_fingerprint", Long.valueOf(j112));
                contentValues2.put("data", g102);
                contentValues2.put("realtime", Integer.valueOf(z102 ? 1 : 0));
                try {
                    update = w0().update("raw_events", contentValues2, "rowid = ?", new String[]{String.valueOf(j102)});
                    if (update == 1) {
                        c12370p32.a().o().c("Failed to update raw event. appId, updatedRows", B2.x(str42), Long.valueOf(update));
                    }
                } catch (SQLiteException e14) {
                    this.f62917a.a().o().c("Error updating raw event. appId", B2.x(d102.f62586a), e14);
                }
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0092, code lost:
    
        r20 = r11.getString(5);
        r22 = r11.getLong(6);
        r2 = r28.f62657b;
        r3 = r2.K0();
        r4 = r11.getBlob(7);
        r6 = com.google.android.gms.measurement.internal.I.CREATOR;
        r21 = (com.google.android.gms.measurement.internal.I) r3.N(r4, r6);
        r0.add(new com.google.android.gms.measurement.internal.C12310i(r14, r15, new com.google.android.gms.measurement.internal.i7(r5, r11.getLong(10), r8, r15), r11.getLong(8), r19, r20, r21, r22, (com.google.android.gms.measurement.internal.I) r2.K0().N(r11.getBlob(9), r6), r11.getLong(11), (com.google.android.gms.measurement.internal.I) r2.K0().N(r11.getBlob(12), r6)));
     */
    /* JADX WARN: Code restructure failed: missing block: B:11:0x00fd, code lost:
    
        if (r11.moveToNext() != false) goto L31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0090, code lost:
    
        r19 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0056, code lost:
    
        r2 = r12.a().o();
        r12.w();
        r2.b("Read more than the max allowed conditional properties, ignoring extra", 1000);
     */
    /* JADX WARN: Code restructure failed: missing block: B:4:0x0049, code lost:
    
        if (r11.moveToFirst() != false) goto L5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:5:0x004b, code lost:
    
        r2 = r0.size();
        r12.w();
     */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x0054, code lost:
    
        if (r2 < 1000) goto L12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x0072, code lost:
    
        r14 = r11.getString(0);
        r15 = r11.getString(1);
        r5 = r11.getString(2);
        r8 = x(r11, 3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x008b, code lost:
    
        if (r11.getInt(4) == 0) goto L15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x008d, code lost:
    
        r19 = true;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final List K0(String str, String[] strArr) {
        h();
        j();
        List arrayList = new ArrayList();
        Cursor cursor = null;
        try {
            try {
                SQLiteDatabase w02 = w0();
                String[] strArr2 = {"app_id", "origin", "name", "value", C14345a.C1879a.f97714n, C14345a.C1879a.f97704d, C14345a.C1879a.f97705e, "timed_out_event", C14345a.C1879a.f97713m, "triggered_event", C14345a.C1879a.f97715o, C14345a.C1879a.f97710j, "expired_event"};
                C12370p3 c12370p3 = this.f62917a;
                c12370p3.w();
                cursor = w02.query("conditional_properties", strArr2, str, strArr, null, null, "rowid", "1001");
            } catch (SQLiteException e10) {
                this.f62917a.a().o().b("Error querying conditional user property value", e10);
                arrayList = Collections.emptyList();
                if (cursor != null) {
                    cursor.close();
                }
                return arrayList;
            }
        } catch (Throwable th2) {
            if (cursor != null) {
                cursor.close();
            }
            throw th2;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x005b, code lost:
    
        if (r5 == 0) goto L23;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0066  */
    /* JADX WARN: Type inference failed for: r2v3, types: [android.database.sqlite.SQLiteDatabase] */
    /* JADX WARN: Type inference failed for: r5v1, types: [java.lang.String[]] */
    /* JADX WARN: Type inference failed for: r5v4 */
    /* JADX WARN: Type inference failed for: r5v5 */
    /* JADX WARN: Type inference failed for: r5v6 */
    /* JADX WARN: Type inference failed for: r5v8, types: [android.database.Cursor] */
    /* JADX WARN: Type inference failed for: r5v9, types: [android.database.Cursor] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Z3 L(String str) {
        Throwable th2;
        SQLiteException e10;
        G0.A.r(str);
        h();
        j();
        ?? r52 = {str};
        AutoCloseable autoCloseable = null;
        r1 = null;
        r1 = null;
        Z3 z32 = null;
        try {
            try {
                r52 = w0().rawQuery("select consent_state, consent_source from consent_settings where app_id=? limit 1;", r52);
                try {
                    if (r52.moveToFirst()) {
                        z32 = Z3.f(r52.getString(0), r52.getInt(1));
                    } else {
                        this.f62917a.a().w().a("No data found");
                    }
                } catch (SQLiteException e11) {
                    e10 = e11;
                    this.f62917a.a().o().b("Error querying database.", e10);
                }
            } catch (Throwable th3) {
                th2 = th3;
                autoCloseable = r52;
                if (autoCloseable != null) {
                    autoCloseable.close();
                }
                throw th2;
            }
        } catch (SQLiteException e12) {
            e10 = e12;
            r52 = 0;
        } catch (Throwable th4) {
            th2 = th4;
            if (autoCloseable != null) {
            }
            throw th2;
        }
        r52.close();
        return z32 == null ? Z3.f62987c : z32;
    }

    /* JADX WARN: Removed duplicated region for block: B:93:0x0306  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0300  */
    @WorkerThread
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final I2 L0(String str) {
        Cursor cursor;
        Boolean valueOf;
        G0.A.l(str);
        h();
        j();
        Cursor cursor2 = null;
        try {
            cursor = w0().query("apps", new String[]{"app_instance_id", "gmp_app_id", "resettable_device_id_hash", "last_bundle_index", "last_bundle_start_timestamp", "last_bundle_end_timestamp", "app_version", "app_store", "gmp_version", "dev_cert_hash", "measurement_enabled", "day", "daily_public_events_count", "daily_events_count", "daily_conversions_count", "config_fetched_time", "failed_config_fetch_time", "app_version_int", "firebase_instance_id", "daily_error_events_count", "daily_realtime_events_count", "health_monitor_sample", "android_id", "adid_reporting_enabled", "admob_app_id", "dynamite_version", "safelisted_events", "ga_app_id", "session_stitching_token", "sgtm_upload_enabled", "target_os_version", "session_stitching_token_hash", "ad_services_version", "unmatched_first_open_without_ad_id", "npa_metadata_value", "attribution_eligibility_status", "sgtm_preview_key", "dma_consent_state", "daily_realtime_dcu_count", "bundle_delivery_index", "serialized_npa_metadata", "unmatched_pfo", "unmatched_uwa", "ad_campaign_info", "client_upload_eligibility"}, "app_id=?", new String[]{str}, null, null, null);
            try {
                try {
                } catch (SQLiteException e10) {
                    e = e10;
                    this.f62917a.a().o().c("Error querying app. appId", B2.x(str), e);
                    if (cursor != null) {
                    }
                    return null;
                }
            } catch (Throwable th2) {
                th = th2;
                cursor2 = cursor;
                if (cursor2 != null) {
                    cursor2.close();
                }
                throw th;
            }
        } catch (SQLiteException e11) {
            e = e11;
            cursor = null;
        } catch (Throwable th3) {
            th = th3;
            if (cursor2 != null) {
            }
            throw th;
        }
        if (!cursor.moveToFirst()) {
            if (cursor != null) {
                cursor.close();
            }
            return null;
        }
        c7 c7Var = this.f62657b;
        I2 i22 = new I2(c7Var.f0(), str);
        Z3 g10 = c7Var.g(str);
        Y3 y32 = Y3.ANALYTICS_STORAGE;
        if (g10.o(y32)) {
            i22.q0(cursor.getString(0));
        }
        i22.s0(cursor.getString(1));
        if (c7Var.g(str).o(Y3.AD_STORAGE)) {
            i22.w0(cursor.getString(2));
        }
        i22.f(cursor.getLong(3));
        i22.A0(cursor.getLong(4));
        i22.C0(cursor.getLong(5));
        i22.E0(cursor.getString(6));
        i22.I0(cursor.getString(7));
        i22.K0(cursor.getLong(8));
        i22.a(cursor.getLong(9));
        i22.e(cursor.isNull(10) || cursor.getInt(10) != 0);
        i22.o(cursor.getLong(11));
        i22.q(cursor.getLong(12));
        i22.s(cursor.getLong(13));
        i22.u(cursor.getLong(14));
        i22.i(cursor.getLong(15));
        i22.k(cursor.getLong(16));
        i22.G0(cursor.isNull(17) ? -2147483648L : cursor.getInt(17));
        i22.y0(cursor.getString(18));
        i22.y(cursor.getLong(19));
        i22.w(cursor.getLong(20));
        i22.O(cursor.getString(21));
        i22.Q(cursor.isNull(23) || cursor.getInt(23) != 0);
        i22.c(cursor.isNull(25) ? 0L : cursor.getLong(25));
        if (!cursor.isNull(26)) {
            i22.U(Arrays.asList(cursor.getString(26).split(DocLint.SEPARATOR, -1)));
        }
        if (c7Var.g(str).o(y32)) {
            i22.u0(cursor.getString(28));
        }
        i22.W((cursor.isNull(29) || cursor.getInt(29) == 0) ? false : true);
        i22.F(cursor.getLong(39));
        i22.m0(cursor.getString(36));
        i22.Y(cursor.getLong(30));
        i22.a0(cursor.getLong(31));
        C12227x7.a();
        C12370p3 c12370p3 = this.f62917a;
        if (c12370p3.w().H(str, C12281e2.f63169Q0)) {
            i22.c0(cursor.getInt(32));
            i22.k0(cursor.getLong(35));
        }
        i22.e0((cursor.isNull(33) || cursor.getInt(33) == 0) ? false : true);
        if (cursor.isNull(34)) {
            valueOf = null;
        } else {
            valueOf = Boolean.valueOf(cursor.getInt(34) != 0);
        }
        i22.S(valueOf);
        i22.C(cursor.getInt(37));
        i22.E(cursor.getInt(38));
        i22.H(cursor.isNull(40) ? "" : (String) G0.A.r(cursor.getString(40)));
        if (!cursor.isNull(41)) {
            i22.g0(Long.valueOf(cursor.getLong(41)));
        }
        if (!cursor.isNull(42)) {
            i22.i0(Long.valueOf(cursor.getLong(42)));
        }
        i22.J(cursor.getBlob(43));
        if (!cursor.isNull(44)) {
            i22.L(cursor.getInt(44));
        }
        i22.n0();
        if (cursor.moveToNext()) {
            c12370p3.a().o().b("Got multiple records for app, expected one. appId", B2.x(str));
        }
        cursor.close();
        return i22;
    }

    @WorkerThread
    public final long M(String str, String[] strArr) {
        AutoCloseable autoCloseable = null;
        try {
            try {
                Cursor rawQuery = w0().rawQuery(str, strArr);
                if (!rawQuery.moveToFirst()) {
                    throw new SQLiteException("Database returned empty set");
                }
                long j10 = rawQuery.getLong(0);
                rawQuery.close();
                return j10;
            } catch (SQLiteException e10) {
                this.f62917a.a().o().c("Database error", str, e10);
                throw e10;
            }
        } catch (Throwable th2) {
            if (0 != 0) {
                autoCloseable.close();
            }
            throw th2;
        }
    }

    @WorkerThread
    public final void M0(I2 i22, boolean z10, boolean z11) {
        G0.A.r(i22);
        h();
        j();
        String o02 = i22.o0();
        G0.A.r(o02);
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", o02);
        if (z10) {
            contentValues.put("app_instance_id", (String) null);
        } else if (this.f62657b.g(o02).o(Y3.ANALYTICS_STORAGE)) {
            contentValues.put("app_instance_id", i22.p0());
        }
        contentValues.put("gmp_app_id", i22.r0());
        c7 c7Var = this.f62657b;
        if (c7Var.g(o02).o(Y3.AD_STORAGE)) {
            contentValues.put("resettable_device_id_hash", i22.v0());
        }
        contentValues.put("last_bundle_index", Long.valueOf(i22.g()));
        contentValues.put("last_bundle_start_timestamp", Long.valueOf(i22.z0()));
        contentValues.put("last_bundle_end_timestamp", Long.valueOf(i22.B0()));
        contentValues.put("app_version", i22.D0());
        contentValues.put("app_store", i22.H0());
        contentValues.put("gmp_version", Long.valueOf(i22.J0()));
        contentValues.put("dev_cert_hash", Long.valueOf(i22.L0()));
        contentValues.put("measurement_enabled", Boolean.valueOf(i22.d()));
        contentValues.put("day", Long.valueOf(i22.n()));
        contentValues.put("daily_public_events_count", Long.valueOf(i22.p()));
        contentValues.put("daily_events_count", Long.valueOf(i22.r()));
        contentValues.put("daily_conversions_count", Long.valueOf(i22.t()));
        contentValues.put("config_fetched_time", Long.valueOf(i22.h()));
        contentValues.put("failed_config_fetch_time", Long.valueOf(i22.j()));
        contentValues.put("app_version_int", Long.valueOf(i22.F0()));
        contentValues.put("firebase_instance_id", i22.x0());
        contentValues.put("daily_error_events_count", Long.valueOf(i22.x()));
        contentValues.put("daily_realtime_events_count", Long.valueOf(i22.v()));
        contentValues.put("health_monitor_sample", i22.z());
        contentValues.put("android_id", (Long) 0L);
        contentValues.put("adid_reporting_enabled", Boolean.valueOf(i22.P()));
        contentValues.put("dynamite_version", Long.valueOf(i22.b()));
        if (c7Var.g(o02).o(Y3.ANALYTICS_STORAGE)) {
            contentValues.put("session_stitching_token", i22.t0());
        }
        contentValues.put("sgtm_upload_enabled", Boolean.valueOf(i22.V()));
        contentValues.put("target_os_version", Long.valueOf(i22.X()));
        contentValues.put("session_stitching_token_hash", Long.valueOf(i22.Z()));
        C12227x7.a();
        C12370p3 c12370p3 = this.f62917a;
        if (c12370p3.w().H(o02, C12281e2.f63169Q0)) {
            contentValues.put("ad_services_version", Integer.valueOf(i22.b0()));
            contentValues.put("attribution_eligibility_status", Long.valueOf(i22.j0()));
        }
        contentValues.put("unmatched_first_open_without_ad_id", Boolean.valueOf(i22.d0()));
        contentValues.put("npa_metadata_value", i22.R());
        contentValues.put("bundle_delivery_index", Long.valueOf(i22.G()));
        contentValues.put("sgtm_preview_key", i22.l0());
        contentValues.put("dma_consent_state", Integer.valueOf(i22.B()));
        contentValues.put("daily_realtime_dcu_count", Integer.valueOf(i22.D()));
        contentValues.put("serialized_npa_metadata", i22.I());
        contentValues.put("client_upload_eligibility", Integer.valueOf(i22.M()));
        List T10 = i22.T();
        if (T10 != null) {
            if (T10.isEmpty()) {
                c12370p3.a().r().b("Safelisted events should not be an empty list. appId", o02);
            } else {
                contentValues.put("safelisted_events", TextUtils.join(DocLint.SEPARATOR, T10));
            }
        }
        com.google.android.gms.internal.measurement.Y6.a();
        if (c12370p3.w().H(null, C12281e2.f63159L0) && !contentValues.containsKey("safelisted_events")) {
            contentValues.put("safelisted_events", (String) null);
        }
        contentValues.put("unmatched_pfo", i22.f0());
        contentValues.put("unmatched_uwa", i22.h0());
        contentValues.put("ad_campaign_info", i22.K());
        try {
            SQLiteDatabase w02 = w0();
            if (w02.update("apps", contentValues, "app_id = ?", new String[]{o02}) == 0 && w02.insertWithOnConflict("apps", null, contentValues, 5) == -1) {
                c12370p3.a().o().b("Failed to insert/update app (got -1). appId", B2.x(o02));
            }
        } catch (SQLiteException e10) {
            this.f62917a.a().o().c("Error storing app. appId", B2.x(o02), e10);
        }
    }

    @WorkerThread
    public final long N(String str, String[] strArr, long j10) {
        Cursor cursor = null;
        try {
            try {
                cursor = w0().rawQuery(str, strArr);
                if (cursor.moveToFirst()) {
                    j10 = cursor.getLong(0);
                }
                cursor.close();
                return j10;
            } catch (SQLiteException e10) {
                this.f62917a.a().o().c("Database error", str, e10);
                throw e10;
            }
        } catch (Throwable th2) {
            if (cursor != null) {
                cursor.close();
            }
            throw th2;
        }
    }

    @WorkerThread
    public final C12389s N0(long j10, String str, boolean z10, boolean z11, boolean z12, boolean z13, boolean z14, boolean z15, boolean z16) {
        return O0(j10, str, 1L, false, false, z12, false, z14, z15, z16);
    }

    @WorkerThread
    public final String O(String str, String[] strArr, String str2) {
        Cursor cursor = null;
        try {
            try {
                cursor = w0().rawQuery(str, strArr);
                if (!cursor.moveToFirst()) {
                    cursor.close();
                    return "";
                }
                String string = cursor.getString(0);
                cursor.close();
                return string;
            } catch (SQLiteException e10) {
                this.f62917a.a().o().c("Database error", str, e10);
                throw e10;
            }
        } catch (Throwable th2) {
            if (cursor != null) {
                cursor.close();
            }
            throw th2;
        }
    }

    @WorkerThread
    public final C12389s O0(long j10, String str, long j11, boolean z10, boolean z11, boolean z12, boolean z13, boolean z14, boolean z15, boolean z16) {
        G0.A.l(str);
        h();
        j();
        String[] strArr = {str};
        C12389s c12389s = new C12389s();
        Cursor cursor = null;
        try {
            try {
                SQLiteDatabase w02 = w0();
                cursor = w02.query("apps", new String[]{"day", "daily_events_count", "daily_public_events_count", "daily_conversions_count", "daily_error_events_count", "daily_realtime_events_count", "daily_realtime_dcu_count", "daily_registered_triggers_count"}, "app_id=?", new String[]{str}, null, null, null);
                if (cursor.moveToFirst()) {
                    if (cursor.getLong(0) == j10) {
                        c12389s.f63563b = cursor.getLong(1);
                        c12389s.f63562a = cursor.getLong(2);
                        c12389s.f63564c = cursor.getLong(3);
                        c12389s.f63565d = cursor.getLong(4);
                        c12389s.f63566e = cursor.getLong(5);
                        c12389s.f63567f = cursor.getLong(6);
                        c12389s.f63568g = cursor.getLong(7);
                    }
                    if (z10) {
                        c12389s.f63563b += j11;
                    }
                    if (z11) {
                        c12389s.f63562a += j11;
                    }
                    if (z12) {
                        c12389s.f63564c += j11;
                    }
                    if (z13) {
                        c12389s.f63565d += j11;
                    }
                    if (z14) {
                        c12389s.f63566e += j11;
                    }
                    if (z15) {
                        c12389s.f63567f += j11;
                    }
                    if (z16) {
                        c12389s.f63568g += j11;
                    }
                    ContentValues contentValues = new ContentValues();
                    contentValues.put("day", Long.valueOf(j10));
                    contentValues.put("daily_public_events_count", Long.valueOf(c12389s.f63562a));
                    contentValues.put("daily_events_count", Long.valueOf(c12389s.f63563b));
                    contentValues.put("daily_conversions_count", Long.valueOf(c12389s.f63564c));
                    contentValues.put("daily_error_events_count", Long.valueOf(c12389s.f63565d));
                    contentValues.put("daily_realtime_events_count", Long.valueOf(c12389s.f63566e));
                    contentValues.put("daily_realtime_dcu_count", Long.valueOf(c12389s.f63567f));
                    contentValues.put("daily_registered_triggers_count", Long.valueOf(c12389s.f63568g));
                    w02.update("apps", contentValues, "app_id=?", strArr);
                } else {
                    this.f62917a.a().r().b("Not updating daily counts, app is not known. appId", B2.x(str));
                }
            } catch (SQLiteException e10) {
                this.f62917a.a().o().c("Error updating daily counts. appId", B2.x(str), e10);
            }
            if (cursor != null) {
                cursor.close();
            }
            return c12389s;
        } catch (Throwable th2) {
            if (0 != 0) {
                cursor.close();
            }
            throw th2;
        }
    }

    @WorkerThread
    public final void P(String str, String str2, ContentValues contentValues) {
        try {
            SQLiteDatabase w02 = w0();
            if (contentValues.getAsString("app_id") == null) {
                this.f62917a.a().q().b("Value of the primary key is not set.", B2.x("app_id"));
                return;
            }
            StringBuilder sb2 = new StringBuilder(10);
            sb2.append("app_id");
            sb2.append(" = ?");
            if (w02.update("consent_settings", contentValues, sb2.toString(), new String[]{r2}) == 0 && w02.insertWithOnConflict("consent_settings", null, contentValues, 5) == -1) {
                this.f62917a.a().o().c("Failed to insert/update table (got -1). key", B2.x("consent_settings"), B2.x("app_id"));
            }
        } catch (SQLiteException e10) {
            this.f62917a.a().o().d("Error storing into table. key", B2.x("consent_settings"), B2.x("app_id"), e10);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x0089  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x0083  */
    @WorkerThread
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final r P0(String str) {
        SQLiteException e10;
        Cursor cursor;
        G0.A.l(str);
        h();
        j();
        Cursor cursor2 = null;
        try {
            cursor = w0().query("apps", new String[]{"remote_config", "config_last_modified_time", "e_tag"}, "app_id=?", new String[]{str}, null, null, null);
            try {
                try {
                    if (cursor.moveToFirst()) {
                        byte[] blob = cursor.getBlob(0);
                        String string = cursor.getString(1);
                        String string2 = cursor.getString(2);
                        if (cursor.moveToNext()) {
                            this.f62917a.a().o().b("Got multiple records for app config, expected one. appId", B2.x(str));
                        }
                        if (blob != null) {
                            r rVar = new r(blob, string, string2);
                            cursor.close();
                            return rVar;
                        }
                    }
                } catch (SQLiteException e11) {
                    e10 = e11;
                    this.f62917a.a().o().c("Error querying remote config. appId", B2.x(str), e10);
                    if (cursor != null) {
                    }
                    return null;
                }
            } catch (Throwable th2) {
                th = th2;
                cursor2 = cursor;
                if (cursor2 != null) {
                    cursor2.close();
                }
                throw th;
            }
        } catch (SQLiteException e12) {
            e10 = e12;
            cursor = null;
        } catch (Throwable th3) {
            th = th3;
            if (cursor2 != null) {
            }
            throw th;
        }
        if (cursor != null) {
            cursor.close();
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:53:0x0131  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x012b  */
    @WorkerThread
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final E Q(String str, String str2, String str3) {
        Cursor cursor;
        Boolean bool;
        G0.A.l(str2);
        G0.A.l(str3);
        h();
        j();
        Cursor cursor2 = null;
        try {
            cursor = w0().query(str, (String[]) new ArrayList(Arrays.asList("lifetime_count", "current_bundle_count", "last_fire_timestamp", "last_bundled_timestamp", "last_bundled_day", "last_sampled_complex_event_id", "last_sampling_rate", "last_exempt_from_sampling", "current_session_count")).toArray(new String[0]), "app_id=? and name=?", new String[]{str2, str3}, null, null, null);
            try {
                try {
                } catch (SQLiteException e10) {
                    e = e10;
                    C12370p3 c12370p3 = this.f62917a;
                    c12370p3.a().o().d("Error querying events. appId", B2.x(str2), c12370p3.D().a(str3), e);
                    if (cursor != null) {
                    }
                    return null;
                }
            } catch (Throwable th2) {
                th = th2;
                cursor2 = cursor;
                if (cursor2 != null) {
                    cursor2.close();
                }
                throw th;
            }
        } catch (SQLiteException e11) {
            e = e11;
            cursor = null;
        } catch (Throwable th3) {
            th = th3;
            if (cursor2 != null) {
            }
            throw th;
        }
        if (!cursor.moveToFirst()) {
            if (cursor != null) {
                cursor.close();
            }
            return null;
        }
        long j10 = cursor.getLong(0);
        long j11 = cursor.getLong(1);
        long j12 = cursor.getLong(2);
        long j13 = cursor.isNull(3) ? 0L : cursor.getLong(3);
        Long valueOf = cursor.isNull(4) ? null : Long.valueOf(cursor.getLong(4));
        Long valueOf2 = cursor.isNull(5) ? null : Long.valueOf(cursor.getLong(5));
        Long valueOf3 = cursor.isNull(6) ? null : Long.valueOf(cursor.getLong(6));
        if (cursor.isNull(7)) {
            bool = null;
        } else {
            bool = Boolean.valueOf(cursor.getLong(7) == 1);
        }
        E e12 = new E(str2, str3, j10, j11, cursor.isNull(8) ? 0L : cursor.getLong(8), j12, j13, valueOf, valueOf2, valueOf3, bool);
        if (cursor.moveToNext()) {
            this.f62917a.a().o().b("Got multiple records for event aggregates, expected one. appId", B2.x(str2));
        }
        cursor.close();
        return e12;
    }

    /* JADX WARN: Code restructure failed: missing block: B:4:0x0043, code lost:
    
        if (r3 > (com.google.android.gms.measurement.internal.C12342m.q() + r1)) goto L6;
     */
    @WorkerThread
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean Q0(C12134n3 c12134n3, boolean z10) {
        h();
        j();
        G0.A.r(c12134n3);
        G0.A.l(c12134n3.E());
        G0.A.x(c12134n3.t2());
        u();
        C12370p3 c12370p3 = this.f62917a;
        long a10 = c12370p3.e().a();
        long u22 = c12134n3.u2();
        c12370p3.w();
        if (u22 >= a10 - C12342m.q()) {
            long u23 = c12134n3.u2();
            c12370p3.w();
        }
        c12370p3.a().r().d("Storing bundle outside of the max uploading time span. appId, now, timestamp", B2.x(c12134n3.E()), Long.valueOf(a10), Long.valueOf(c12134n3.u2()));
        try {
            byte[] V10 = this.f62657b.K0().V(c12134n3.g());
            C12370p3 c12370p32 = this.f62917a;
            c12370p32.a().w().b("Saving bundle, size", Integer.valueOf(V10.length));
            ContentValues contentValues = new ContentValues();
            contentValues.put("app_id", c12134n3.E());
            contentValues.put("bundle_end_timestamp", Long.valueOf(c12134n3.u2()));
            contentValues.put("data", V10);
            contentValues.put("has_realtime", Integer.valueOf(z10 ? 1 : 0));
            if (c12134n3.F0()) {
                contentValues.put("retry_count", Integer.valueOf(c12134n3.G0()));
            }
            try {
                if (w0().insert("queue", null, contentValues) != -1) {
                    return true;
                }
                c12370p32.a().o().b("Failed to insert bundle (got -1). appId", B2.x(c12134n3.E()));
                return false;
            } catch (SQLiteException e10) {
                this.f62917a.a().o().c("Error storing bundle. appId", B2.x(c12134n3.E()), e10);
                return false;
            }
        } catch (IOException e11) {
            this.f62917a.a().o().c("Data loss. Failed to serialize bundle. appId", B2.x(c12134n3.E()), e11);
            return false;
        }
    }

    @WorkerThread
    public final void R(String str, E e10) {
        G0.A.r(e10);
        h();
        j();
        ContentValues contentValues = new ContentValues();
        String str2 = e10.f62600a;
        contentValues.put("app_id", str2);
        contentValues.put("name", e10.f62601b);
        contentValues.put("lifetime_count", Long.valueOf(e10.f62602c));
        contentValues.put("current_bundle_count", Long.valueOf(e10.f62603d));
        contentValues.put("last_fire_timestamp", Long.valueOf(e10.f62605f));
        contentValues.put("last_bundled_timestamp", Long.valueOf(e10.f62606g));
        contentValues.put("last_bundled_day", e10.f62607h);
        contentValues.put("last_sampled_complex_event_id", e10.f62608i);
        contentValues.put("last_sampling_rate", e10.f62609j);
        contentValues.put("current_session_count", Long.valueOf(e10.f62604e));
        Boolean bool = e10.f62610k;
        contentValues.put("last_exempt_from_sampling", (bool == null || !bool.booleanValue()) ? null : 1L);
        try {
            if (w0().insertWithOnConflict(str, null, contentValues, 5) == -1) {
                this.f62917a.a().o().b("Failed to insert/update event aggregates (got -1). appId", B2.x(str2));
            }
        } catch (SQLiteException e11) {
            this.f62917a.a().o().c("Error storing event aggregates. appId", B2.x(e10.f62600a), e11);
        }
    }

    public final void S(String str, String str2) {
        G0.A.l(str2);
        h();
        j();
        try {
            w0().delete(str, "app_id=?", new String[]{str2});
        } catch (SQLiteException e10) {
            this.f62917a.a().o().c("Error deleting snapshot. appId", B2.x(str2), e10);
        }
    }

    public final f7 T(String str, long j10, byte[] bArr, String str2, String str3, int i10, int i11, long j11, long j12, long j13) {
        if (TextUtils.isEmpty(str2)) {
            this.f62917a.a().v().a("Upload uri is null or empty. Destination is unknown. Dropping batch. ");
            return null;
        }
        try {
            C12089i3 c12089i3 = (C12089i3) h7.W(C12116l3.L(), bArr);
            EnumC12332k5 a10 = EnumC12332k5.a(i10);
            if (a10 != EnumC12332k5.GOOGLE_SIGNAL && a10 != EnumC12332k5.GOOGLE_SIGNAL_PENDING && i11 > 0) {
                ArrayList arrayList = new ArrayList();
                Iterator it = c12089i3.t().iterator();
                while (it.hasNext()) {
                    C12125m3 c12125m3 = (C12125m3) ((C12134n3) it.next()).q();
                    c12125m3.B0(i11);
                    arrayList.add((C12134n3) c12125m3.q());
                }
                c12089i3.z();
                c12089i3.y(arrayList);
            }
            HashMap hashMap = new HashMap();
            if (str3 != null) {
                String[] split = str3.split(C13208a.f86201f);
                int length = split.length;
                int i12 = 0;
                while (true) {
                    if (i12 >= length) {
                        break;
                    }
                    String str4 = split[i12];
                    if (str4.isEmpty()) {
                        break;
                    }
                    String[] split2 = str4.split("=", 2);
                    if (split2.length != 2) {
                        this.f62917a.a().o().b("Invalid upload header: ", str4);
                        break;
                    }
                    hashMap.put(split2[0], split2[1]);
                    i12++;
                }
            }
            e7 e7Var = new e7();
            e7Var.b(j10);
            e7Var.c((C12116l3) c12089i3.q());
            e7Var.d(str2);
            e7Var.e(hashMap);
            e7Var.f(a10);
            e7Var.g(j11);
            e7Var.h(j12);
            e7Var.i(j13);
            e7Var.j(i11);
            return e7Var.a();
        } catch (IOException e10) {
            this.f62917a.a().o().c("Failed to queued MeasurementBatch from upload_queue. appId", str, e10);
            return null;
        }
    }

    public final String U() {
        C12370p3 c12370p3 = this.f62917a;
        long a10 = c12370p3.e().a();
        Locale locale = Locale.US;
        EnumC12332k5 enumC12332k5 = EnumC12332k5.GOOGLE_SIGNAL;
        Integer valueOf = Integer.valueOf(enumC12332k5.N1());
        Long valueOf2 = Long.valueOf(a10);
        c12370p3.w();
        Long l10 = (Long) C12281e2.f63174T.b(null);
        l10.longValue();
        String format = String.format(locale, "(upload_type = %d AND ABS(creation_timestamp - %d) > %d)", valueOf, valueOf2, l10);
        Integer valueOf3 = Integer.valueOf(enumC12332k5.N1());
        c12370p3.w();
        String format2 = String.format(locale, "(upload_type != %d AND ABS(creation_timestamp - %d) > %d)", valueOf3, valueOf2, Long.valueOf(C12342m.q()));
        StringBuilder sb2 = new StringBuilder(format.length() + 5 + format2.length() + 1);
        sb2.append("(");
        sb2.append(format);
        sb2.append(" OR ");
        sb2.append(format2);
        sb2.append(")");
        return sb2.toString();
    }

    @WorkerThread
    public final boolean W(String str, C6 c62) {
        h();
        j();
        G0.A.r(c62);
        G0.A.l(str);
        C12370p3 c12370p3 = this.f62917a;
        long a10 = c12370p3.e().a();
        C12273d2 c12273d2 = C12281e2.f63244w0;
        long longValue = a10 - ((Long) c12273d2.b(null)).longValue();
        long j10 = c62.f62584c;
        if (j10 < longValue || j10 > ((Long) c12273d2.b(null)).longValue() + a10) {
            c12370p3.a().r().d("Storing trigger URI outside of the max retention time span. appId, now, timestamp", B2.x(str), Long.valueOf(a10), Long.valueOf(j10));
        }
        c12370p3.a().w().a("Saving trigger URI");
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", str);
        contentValues.put("trigger_uri", c62.f62583b);
        contentValues.put("source", Integer.valueOf(c62.f62585d));
        contentValues.put("timestamp_millis", Long.valueOf(j10));
        try {
            if (w0().insert("trigger_uris", null, contentValues) != -1) {
                return true;
            }
            c12370p3.a().o().b("Failed to insert trigger URI (got -1). appId", B2.x(str));
            return false;
        } catch (SQLiteException e10) {
            this.f62917a.a().o().c("Error storing trigger URI. appId", B2.x(str), e10);
            return false;
        }
    }

    public final void X(String str, Z3 z32) {
        G0.A.r(str);
        G0.A.r(z32);
        h();
        j();
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", str);
        contentValues.put("consent_state", z32.l());
        contentValues.put("consent_source", Integer.valueOf(z32.b()));
        P("consent_settings", "app_id", contentValues);
    }

    public final A Y(String str) {
        G0.A.r(str);
        h();
        j();
        return A.g(O("select dma_consent_settings from consent_settings where app_id=? limit 1;", new String[]{str}, ""));
    }

    public final void Z(String str, A a10) {
        G0.A.r(str);
        G0.A.r(a10);
        h();
        j();
        Z3 L10 = L(str);
        Z3 z32 = Z3.f62987c;
        if (L10 == z32) {
            X(str, z32);
        }
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", str);
        contentValues.put("dma_consent_settings", a10.e());
        P("consent_settings", "app_id", contentValues);
    }

    public final void a0(String str, Z3 z32) {
        G0.A.r(str);
        G0.A.r(z32);
        h();
        j();
        X(str, L(str));
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", str);
        contentValues.put("storage_consent_at_bundling", z32.l());
        P("consent_settings", "app_id", contentValues);
    }

    public final Z3 b0(String str) {
        G0.A.r(str);
        h();
        j();
        return Z3.f(O("select storage_consent_at_bundling from consent_settings where app_id=? limit 1;", new String[]{str}, ""), 100);
    }

    /* JADX WARN: Code restructure failed: missing block: B:100:0x0254, code lost:
    
        r8 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:101:0x0238, code lost:
    
        r8 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:103:0x01e2, code lost:
    
        r0 = r23.f62917a.a().r();
        r10 = com.google.android.gms.measurement.internal.B2.x(r24);
        r12 = java.lang.Integer.valueOf(r9);
     */
    /* JADX WARN: Code restructure failed: missing block: B:104:0x01fa, code lost:
    
        if (r11.E() == false) goto L65;
     */
    /* JADX WARN: Code restructure failed: missing block: B:105:0x01fc, code lost:
    
        r16 = java.lang.Integer.valueOf(r11.F());
     */
    /* JADX WARN: Code restructure failed: missing block: B:106:0x0209, code lost:
    
        r0.d("Event filter had no event name. Audience definition ignored. appId, audienceId, filterId", r10, r12, java.lang.String.valueOf(r16));
        r21 = r7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:107:0x0207, code lost:
    
        r16 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:109:0x029a, code lost:
    
        r21 = r7;
        r0 = r0.G().iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:111:0x02a8, code lost:
    
        if (r0.hasNext() == false) goto L177;
     */
    /* JADX WARN: Code restructure failed: missing block: B:112:0x02aa, code lost:
    
        r3 = (com.google.android.gms.internal.measurement.U1) r0.next();
        j();
        h();
        G0.A.l(r24);
        G0.A.r(r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:113:0x02c4, code lost:
    
        if (r3.G().isEmpty() == false) goto L92;
     */
    /* JADX WARN: Code restructure failed: missing block: B:114:0x02f6, code lost:
    
        r7 = r3.g();
        r10 = new android.content.ContentValues();
        r10.put("app_id", r24);
        r10.put("audience_id", java.lang.Integer.valueOf(r9));
     */
    /* JADX WARN: Code restructure failed: missing block: B:115:0x030d, code lost:
    
        if (r3.E() == false) goto L95;
     */
    /* JADX WARN: Code restructure failed: missing block: B:116:0x030f, code lost:
    
        r11 = java.lang.Integer.valueOf(r3.F());
     */
    /* JADX WARN: Code restructure failed: missing block: B:117:0x0319, code lost:
    
        r10.put("filter_id", r11);
        r22 = r0;
        r10.put("property_name", r3.G());
     */
    /* JADX WARN: Code restructure failed: missing block: B:118:0x032b, code lost:
    
        if (r3.K() == false) goto L99;
     */
    /* JADX WARN: Code restructure failed: missing block: B:119:0x032d, code lost:
    
        r0 = java.lang.Boolean.valueOf(r3.L());
     */
    /* JADX WARN: Code restructure failed: missing block: B:120:0x0337, code lost:
    
        r10.put("session_scoped", r0);
        r10.put("data", r7);
     */
    /* JADX WARN: Code restructure failed: missing block: B:123:0x034b, code lost:
    
        if (w0().insertWithOnConflict("property_filters", null, r10, 5) != (-1)) goto L107;
     */
    /* JADX WARN: Code restructure failed: missing block: B:124:0x0363, code lost:
    
        r0 = r22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:126:0x034d, code lost:
    
        r23.f62917a.a().o().b("Failed to insert property filter (got -1). appId", com.google.android.gms.measurement.internal.B2.x(r24));
     */
    /* JADX WARN: Code restructure failed: missing block: B:128:0x0361, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:129:0x0367, code lost:
    
        r23.f62917a.a().o().c("Error storing property filter. appId", com.google.android.gms.measurement.internal.B2.x(r24), r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:130:0x0336, code lost:
    
        r0 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:131:0x0318, code lost:
    
        r11 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:133:0x02c6, code lost:
    
        r0 = r23.f62917a.a().r();
        r8 = com.google.android.gms.measurement.internal.B2.x(r24);
        r10 = java.lang.Integer.valueOf(r9);
     */
    /* JADX WARN: Code restructure failed: missing block: B:134:0x02de, code lost:
    
        if (r3.E() == false) goto L90;
     */
    /* JADX WARN: Code restructure failed: missing block: B:135:0x02e0, code lost:
    
        r16 = java.lang.Integer.valueOf(r3.F());
     */
    /* JADX WARN: Code restructure failed: missing block: B:136:0x02ed, code lost:
    
        r0.d("Property filter had no property name. Audience definition ignored. appId, audienceId, filterId", r8, r10, java.lang.String.valueOf(r16));
     */
    /* JADX WARN: Code restructure failed: missing block: B:137:0x02eb, code lost:
    
        r16 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x017b, code lost:
    
        r10 = r0.G().iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x0187, code lost:
    
        if (r10.hasNext() == false) goto L163;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x0193, code lost:
    
        if (((com.google.android.gms.internal.measurement.U1) r10.next()).E() != false) goto L171;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x0195, code lost:
    
        r23.f62917a.a().r().c("Property filter with no ID. Audience definition ignored. appId, audienceId", com.google.android.gms.measurement.internal.B2.x(r24), java.lang.Integer.valueOf(r9));
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x01ae, code lost:
    
        r10 = r0.J().iterator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x01c4, code lost:
    
        if (r10.hasNext() == false) goto L173;
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x01c6, code lost:
    
        r11 = (com.google.android.gms.internal.measurement.M1) r10.next();
        j();
        h();
        G0.A.l(r24);
        G0.A.r(r11);
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x01e0, code lost:
    
        if (r11.G().isEmpty() == false) goto L67;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x0214, code lost:
    
        r3 = r11.g();
        r21 = r7;
        r7 = new android.content.ContentValues();
        r7.put("app_id", r24);
        r7.put("audience_id", java.lang.Integer.valueOf(r9));
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x022d, code lost:
    
        if (r11.E() == false) goto L70;
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x022f, code lost:
    
        r8 = java.lang.Integer.valueOf(r11.F());
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x0239, code lost:
    
        r7.put("filter_id", r8);
        r7.put("event_name", r11.G());
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x0249, code lost:
    
        if (r11.O() == false) goto L74;
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x024b, code lost:
    
        r8 = java.lang.Boolean.valueOf(r11.P());
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x0255, code lost:
    
        r7.put("session_scoped", r8);
        r7.put("data", r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x0269, code lost:
    
        if (w0().insertWithOnConflict("event_filters", null, r7, 5) != (-1)) goto L175;
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x026b, code lost:
    
        r23.f62917a.a().o().b("Failed to insert event filter (got -1). appId", com.google.android.gms.measurement.internal.B2.x(r24));
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x027e, code lost:
    
        r7 = r21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x0284, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:96:0x0285, code lost:
    
        r23.f62917a.a().o().c("Error storing event filter. appId", com.google.android.gms.measurement.internal.B2.x(r24), r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x037a, code lost:
    
        j();
        h();
        G0.A.l(r24);
        r0 = w0();
        r7 = r18;
        r0.delete("property_filters", r7, new java.lang.String[]{r24, java.lang.String.valueOf(r9)});
        r0.delete("event_filters", r7, new java.lang.String[]{r24, java.lang.String.valueOf(r9)});
        r18 = r7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x03a3, code lost:
    
        r7 = r21;
     */
    /* JADX WARN: Multi-variable type inference failed */
    @WorkerThread
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void c0(String str, List list) {
        boolean z10;
        String str2 = "app_id=? and audience_id=?";
        G0.A.r(list);
        int i10 = 0;
        while (i10 < list.size()) {
            com.google.android.gms.internal.measurement.J1 j12 = (com.google.android.gms.internal.measurement.J1) ((com.google.android.gms.internal.measurement.K1) list.get(i10)).q();
            if (j12.w() != 0) {
                int i11 = 0;
                while (i11 < j12.w()) {
                    com.google.android.gms.internal.measurement.L1 l12 = (com.google.android.gms.internal.measurement.L1) j12.x(i11).q();
                    com.google.android.gms.internal.measurement.L1 l13 = (com.google.android.gms.internal.measurement.L1) l12.clone();
                    String b10 = C12251a4.b(l12.t());
                    if (b10 != null) {
                        l13.u(b10);
                        z10 = true;
                    } else {
                        z10 = false;
                    }
                    int i12 = 0;
                    while (i12 < l12.v()) {
                        com.google.android.gms.internal.measurement.O1 w10 = l12.w(i12);
                        com.google.android.gms.internal.measurement.L1 l14 = l12;
                        String str3 = str2;
                        String c10 = C12340l5.c(w10.L(), C12259b4.f63020a, C12259b4.f63021b);
                        if (c10 != null) {
                            com.google.android.gms.internal.measurement.N1 n12 = (com.google.android.gms.internal.measurement.N1) w10.q();
                            n12.t(c10);
                            l13.x(i12, (com.google.android.gms.internal.measurement.O1) n12.q());
                            z10 = true;
                        }
                        i12++;
                        l12 = l14;
                        str2 = str3;
                    }
                    String str4 = str2;
                    if (z10) {
                        j12.y(i11, l13);
                        list.set(i10, (com.google.android.gms.internal.measurement.K1) j12.q());
                    }
                    i11++;
                    str2 = str4;
                }
            }
            String str5 = str2;
            if (j12.t() != 0) {
                for (int i13 = 0; i13 < j12.t(); i13++) {
                    com.google.android.gms.internal.measurement.U1 u10 = j12.u(i13);
                    String c11 = C12340l5.c(u10.G(), C12267c4.f63070a, C12267c4.f63071b);
                    if (c11 != null) {
                        com.google.android.gms.internal.measurement.T1 t12 = (com.google.android.gms.internal.measurement.T1) u10.q();
                        t12.t(c11);
                        j12.v(i13, t12);
                        list.set(i10, (com.google.android.gms.internal.measurement.K1) j12.q());
                    }
                }
            }
            i10++;
            str2 = str5;
        }
        String str6 = str2;
        j();
        h();
        G0.A.l(str);
        G0.A.r(list);
        SQLiteDatabase w02 = w0();
        w02.beginTransaction();
        try {
            j();
            h();
            G0.A.l(str);
            SQLiteDatabase w03 = w0();
            w03.delete("property_filters", "app_id=?", new String[]{str});
            w03.delete("event_filters", "app_id=?", new String[]{str});
            Iterator it = list.iterator();
            while (it.hasNext()) {
                com.google.android.gms.internal.measurement.K1 k12 = (com.google.android.gms.internal.measurement.K1) it.next();
                j();
                h();
                G0.A.l(str);
                G0.A.r(k12);
                if (k12.E()) {
                    int F10 = k12.F();
                    Iterator it2 = k12.J().iterator();
                    while (true) {
                        if (it2.hasNext()) {
                            if (!((com.google.android.gms.internal.measurement.M1) it2.next()).E()) {
                                this.f62917a.a().r().c("Event filter with no ID. Audience definition ignored. appId, audienceId", B2.x(str), Integer.valueOf(F10));
                                break;
                            }
                        } else {
                            break;
                        }
                    }
                } else {
                    this.f62917a.a().r().b("Audience with no ID. appId", B2.x(str));
                }
            }
            ArrayList arrayList = new ArrayList();
            Iterator it3 = list.iterator();
            while (it3.hasNext()) {
                com.google.android.gms.internal.measurement.K1 k13 = (com.google.android.gms.internal.measurement.K1) it3.next();
                arrayList.add(k13.E() ? Integer.valueOf(k13.F()) : null);
            }
            G0.A.l(str);
            j();
            h();
            SQLiteDatabase w04 = w0();
            try {
                long M10 = M("select count(1) from audience_filter_values where app_id=?", new String[]{str});
                int i14 = 0;
                int max = Math.max(0, Math.min(2000, this.f62917a.w().E(str, C12281e2.f63178V)));
                if (M10 > max) {
                    ArrayList arrayList2 = new ArrayList();
                    while (true) {
                        if (i14 >= arrayList.size()) {
                            String join = TextUtils.join(DocLint.SEPARATOR, arrayList2);
                            StringBuilder sb2 = new StringBuilder(String.valueOf(join).length() + 2);
                            sb2.append("(");
                            sb2.append(join);
                            sb2.append(")");
                            String sb3 = sb2.toString();
                            StringBuilder sb4 = new StringBuilder(sb3.length() + 140);
                            sb4.append("audience_id in (select audience_id from audience_filter_values where app_id=? and audience_id not in ");
                            sb4.append(sb3);
                            sb4.append(" order by rowid desc limit -1 offset ?)");
                            w04.delete("audience_filter_values", sb4.toString(), new String[]{str, Integer.toString(max)});
                            break;
                        }
                        Integer num = (Integer) arrayList.get(i14);
                        if (num == null) {
                            break;
                        }
                        arrayList2.add(Integer.toString(num.intValue()));
                        i14++;
                    }
                }
            } catch (SQLiteException e10) {
                this.f62917a.a().o().c("Database error querying filters. appId", B2.x(str), e10);
            }
            w02.setTransactionSuccessful();
            w02.endTransaction();
        } catch (Throwable th2) {
            w02.endTransaction();
            throw th2;
        }
    }

    @WorkerThread
    public final E d0(String str, C12026b3 c12026b3, String str2) {
        E Q10 = Q("events", str, c12026b3.H());
        if (Q10 == null) {
            C12370p3 c12370p3 = this.f62917a;
            c12370p3.a().r().c("Event aggregate wasn't created during raw event logging. appId, event", B2.x(str), c12370p3.D().a(str2));
            return new E(str, c12026b3.H(), 1L, 1L, 1L, c12026b3.J(), 0L, null, null, null, null);
        }
        long j10 = Q10.f62604e + 1;
        long j11 = Q10.f62603d + 1;
        return new E(Q10.f62600a, Q10.f62601b, Q10.f62602c + 1, j11, j10, Q10.f62605f, Q10.f62606g, Q10.f62607h, Q10.f62608i, Q10.f62609j, Q10.f62610k);
    }

    @VisibleForTesting
    public final boolean e0() {
        C12370p3 c12370p3 = this.f62917a;
        Context d10 = c12370p3.d();
        c12370p3.w();
        return d10.getDatabasePath("google_app_measurement.db").exists();
    }

    public final long f0(String str, String[] strArr, long j10) {
        return N("select rowid from raw_events where app_id = ? and timestamp < ? order by rowid desc limit 1", strArr, -1L);
    }

    @Override
    public final boolean l() {
        return false;
    }

    @WorkerThread
    public final long m(String str, C12116l3 c12116l3, String str2, Map map, EnumC12332k5 enumC12332k5, Long l10) {
        int delete;
        h();
        j();
        G0.A.r(c12116l3);
        G0.A.l(str);
        h();
        j();
        if (e0()) {
            c7 c7Var = this.f62657b;
            long a10 = c7Var.L0().f63333f.a();
            C12370p3 c12370p3 = this.f62917a;
            long c10 = c12370p3.e().c();
            long abs = Math.abs(c10 - a10);
            c12370p3.w();
            if (abs > C12342m.r()) {
                c7Var.L0().f63333f.b(c10);
                h();
                j();
                if (e0() && (delete = w0().delete("upload_queue", U(), new String[0])) > 0) {
                    c12370p3.a().w().b("Deleted stale MeasurementBatch rows from upload_queue. rowsDeleted", Integer.valueOf(delete));
                }
                G0.A.l(str);
                h();
                j();
                try {
                    int E10 = c12370p3.w().E(str, C12281e2.f63136A);
                    if (E10 > 0) {
                        w0().delete("upload_queue", "rowid in (SELECT rowid FROM upload_queue WHERE app_id=? ORDER BY rowid DESC LIMIT -1 OFFSET ?)", new String[]{str, String.valueOf(E10)});
                    }
                } catch (SQLiteException e10) {
                    this.f62917a.a().o().c("Error deleting over the limit queued batches. appId", B2.x(str), e10);
                }
            }
        }
        ArrayList arrayList = new ArrayList();
        for (Map.Entry entry : map.entrySet()) {
            String str3 = (String) entry.getKey();
            String str4 = (String) entry.getValue();
            StringBuilder sb2 = new StringBuilder(String.valueOf(str3).length() + 1 + String.valueOf(str4).length());
            sb2.append(str3);
            sb2.append("=");
            sb2.append(str4);
            arrayList.add(sb2.toString());
        }
        byte[] g10 = c12116l3.g();
        ContentValues contentValues = new ContentValues();
        contentValues.put("app_id", str);
        contentValues.put("measurement_batch", g10);
        contentValues.put("upload_uri", str2);
        contentValues.put("upload_headers", String.join(C13208a.f86201f, arrayList));
        contentValues.put("upload_type", Integer.valueOf(enumC12332k5.N1()));
        C12370p3 c12370p32 = this.f62917a;
        contentValues.put(C14345a.C1879a.f97713m, Long.valueOf(c12370p32.e().a()));
        contentValues.put("retry_count", (Integer) 0);
        if (l10 != null) {
            contentValues.put("associated_row_id", l10);
        }
        try {
            long insert = w0().insert("upload_queue", null, contentValues);
            if (insert != -1) {
                return insert;
            }
            c12370p32.a().o().b("Failed to insert MeasurementBatch (got -1) to upload_queue. appId", str);
            return -1L;
        } catch (SQLiteException e11) {
            this.f62917a.a().o().c("Error storing MeasurementBatch to upload_queue. appId", str, e11);
            return -1L;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:24:0x00b6  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x00ae  */
    @WorkerThread
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final f7 n(long j10) {
        C12421w c12421w;
        Cursor cursor;
        h();
        j();
        Cursor cursor2 = null;
        try {
            cursor = w0().query("upload_queue", new String[]{"rowId", "app_id", "measurement_batch", "upload_uri", "upload_headers", "upload_type", "retry_count", C14345a.C1879a.f97713m, "associated_row_id", "last_upload_timestamp"}, "rowId=?", new String[]{String.valueOf(j10)}, null, null, null, "1");
            try {
            } catch (SQLiteException e10) {
                e = e10;
                c12421w = this;
                try {
                    c12421w.f62917a.a().o().c("Error to querying MeasurementBatch from upload_queue. rowId", Long.valueOf(j10), e);
                    if (cursor != null) {
                    }
                    return null;
                } catch (Throwable th2) {
                    th = th2;
                    cursor2 = cursor;
                    if (cursor2 != null) {
                        cursor2.close();
                    }
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
                cursor2 = cursor;
                if (cursor2 != null) {
                }
                throw th;
            }
        } catch (SQLiteException e11) {
            e = e11;
            c12421w = this;
            cursor = null;
        } catch (Throwable th4) {
            th = th4;
            if (cursor2 != null) {
            }
            throw th;
        }
        if (cursor.moveToFirst()) {
            f7 T10 = T((String) G0.A.r(cursor.getString(1)), j10, cursor.getBlob(2), cursor.getString(3), cursor.getString(4), cursor.getInt(5), cursor.getInt(6), cursor.getLong(7), cursor.getLong(8), cursor.getLong(9));
            cursor.close();
            return T10;
        }
        if (cursor != null) {
            cursor.close();
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:31:0x00e3  */
    @WorkerThread
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final List o(String str, J6 j62, int i10) {
        List emptyList;
        G0.A.l(str);
        h();
        j();
        Cursor cursor = null;
        try {
            SQLiteDatabase w02 = w0();
            String[] strArr = {"rowId", "app_id", "measurement_batch", "upload_uri", "upload_headers", "upload_type", "retry_count", C14345a.C1879a.f97713m, "associated_row_id", "last_upload_timestamp"};
            String V10 = V(j62.f62752b);
            String U10 = U();
            StringBuilder sb2 = new StringBuilder(String.valueOf(V10).length() + 17 + U10.length());
            sb2.append("app_id=?");
            sb2.append(V10);
            sb2.append(" AND NOT ");
            sb2.append(U10);
            cursor = w02.query("upload_queue", strArr, sb2.toString(), new String[]{str}, null, null, "creation_timestamp ASC", i10 > 0 ? String.valueOf(i10) : null);
            emptyList = new ArrayList();
            while (cursor.moveToNext()) {
                f7 T10 = T(str, cursor.getLong(0), cursor.getBlob(2), cursor.getString(3), cursor.getString(4), cursor.getInt(5), cursor.getInt(6), cursor.getLong(7), cursor.getLong(8), cursor.getLong(9));
                if (T10 != null) {
                    emptyList.add(T10);
                }
            }
        } catch (SQLiteException e10) {
            try {
                this.f62917a.a().o().c("Error to querying MeasurementBatch from upload_queue. appId", str, e10);
                emptyList = Collections.emptyList();
            } catch (Throwable th2) {
                th = th2;
                if (cursor != null) {
                    cursor.close();
                }
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
            if (cursor != null) {
            }
            throw th;
        }
        if (cursor != null) {
            cursor.close();
        }
        return emptyList;
    }

    @WorkerThread
    public final boolean p(String str) {
        EnumC12332k5[] enumC12332k5Arr = {EnumC12332k5.GOOGLE_SIGNAL};
        ArrayList arrayList = new ArrayList(1);
        arrayList.add(Integer.valueOf(enumC12332k5Arr[0].N1()));
        String V10 = V(arrayList);
        String U10 = U();
        StringBuilder sb2 = new StringBuilder(String.valueOf(V10).length() + 61 + U10.length());
        sb2.append("SELECT COUNT(1) > 0 FROM upload_queue WHERE app_id=?");
        sb2.append(V10);
        sb2.append(" AND NOT ");
        sb2.append(U10);
        return M(sb2.toString(), new String[]{str}) != 0;
    }

    @WorkerThread
    public final void q(Long l10) {
        h();
        j();
        G0.A.r(l10);
        try {
            if (w0().delete("upload_queue", "rowid=?", new String[]{l10.toString()}) != 1) {
                this.f62917a.a().r().a("Deleted fewer rows from upload_queue than expected");
            }
        } catch (SQLiteException e10) {
            this.f62917a.a().o().b("Failed to delete a MeasurementBatch in a upload_queue table", e10);
            throw e10;
        }
    }

    public final B6 q0() {
        return this.f63668e;
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x0038  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x003e  */
    @WorkerThread
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final String r() {
        SQLiteException e10;
        Cursor cursor;
        SQLiteDatabase w02 = w0();
        SQLiteDatabase sQLiteDatabase = null;
        try {
            try {
                cursor = w02.rawQuery("select app_id from queue order by has_realtime desc, rowid asc limit 1;", null);
                try {
                    if (cursor.moveToFirst()) {
                        String string = cursor.getString(0);
                        cursor.close();
                        return string;
                    }
                } catch (SQLiteException e11) {
                    e10 = e11;
                    this.f62917a.a().o().b("Database error getting next bundle app id", e10);
                    if (cursor != null) {
                    }
                    return null;
                }
            } catch (Throwable th2) {
                sQLiteDatabase = w02;
                th = th2;
                if (sQLiteDatabase != null) {
                    sQLiteDatabase.close();
                }
                throw th;
            }
        } catch (SQLiteException e12) {
            e10 = e12;
            cursor = null;
        } catch (Throwable th3) {
            th = th3;
            if (sQLiteDatabase != null) {
            }
            throw th;
        }
        if (cursor != null) {
            cursor.close();
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:17:0x01fa A[DONT_GENERATE] */
    /* JADX WARN: Removed duplicated region for block: B:20:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r7v0 */
    /* JADX WARN: Type inference failed for: r7v1 */
    /* JADX WARN: Type inference failed for: r7v2, types: [boolean] */
    /* JADX WARN: Type inference failed for: r7v25 */
    /* JADX WARN: Type inference failed for: r7v3 */
    /* JADX WARN: Type inference failed for: r7v4 */
    /* JADX WARN: Type inference failed for: r7v5 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void r0(String str, long j10, long j11, Y6 y62) {
        ?? r72;
        String str2;
        SQLiteDatabase w02;
        String[] strArr;
        String str3;
        String string;
        String str4;
        String[] strArr2;
        G0.A.r(y62);
        h();
        j();
        Cursor cursor = null;
        try {
            try {
                w02 = w0();
                r72 = TextUtils.isEmpty(str);
            } catch (SQLiteException e10) {
                e = e10;
                r72 = str;
            }
            if (r72 != 0) {
                String[] strArr3 = j11 != -1 ? new String[]{String.valueOf(j11), String.valueOf(j10)} : new String[]{String.valueOf(j10)};
                str3 = j11 != -1 ? "rowid <= ? and " : "";
                StringBuilder sb2 = new StringBuilder(str3.length() + 148);
                sb2.append("select app_id, metadata_fingerprint from raw_events where ");
                sb2.append(str3);
                sb2.append("app_id in (select app_id from apps where config_fetched_time >= ?) order by rowid limit 1;");
                cursor = w02.rawQuery(sb2.toString(), strArr3);
                try {
                } catch (SQLiteException e11) {
                    e = e11;
                    str2 = str;
                }
                if (!cursor.moveToFirst()) {
                    if (cursor != null) {
                        return;
                    } else {
                        return;
                    }
                }
                str2 = cursor.getString(0);
                try {
                    string = cursor.getString(1);
                    cursor.close();
                } catch (SQLiteException e12) {
                    e = e12;
                    this.f62917a.a().o().c("Data loss. Error selecting raw event. appId", B2.x(str2), e);
                }
            } else {
                try {
                    if (j11 != -1) {
                        String str5 = str;
                        strArr = new String[]{str5, String.valueOf(j11)};
                        r72 = str5;
                    } else {
                        r72 = str;
                        strArr = new String[]{str};
                    }
                    str3 = j11 != -1 ? " and rowid <= ?" : "";
                    StringBuilder sb3 = new StringBuilder(str3.length() + 84);
                    sb3.append("select metadata_fingerprint from raw_events where app_id = ?");
                    sb3.append(str3);
                    sb3.append(" order by rowid limit 1;");
                    cursor = w02.rawQuery(sb3.toString(), strArr);
                } catch (SQLiteException e13) {
                    e = e13;
                    str2 = r72;
                    this.f62917a.a().o().c("Data loss. Error selecting raw event. appId", B2.x(str2), e);
                }
                if (cursor.moveToFirst()) {
                    string = cursor.getString(0);
                    cursor.close();
                    str2 = r72;
                }
            }
            cursor = w02.query("raw_events_metadata", new String[]{"metadata"}, "app_id = ? and metadata_fingerprint = ?", new String[]{str2, string}, null, null, "rowid", "2");
            if (cursor.moveToFirst()) {
                try {
                    C12134n3 c12134n3 = (C12134n3) ((C12125m3) h7.W(C12134n3.j0(), cursor.getBlob(0))).q();
                    if (cursor.moveToNext()) {
                        this.f62917a.a().r().b("Get multiple raw event metadata records, expected one. appId", B2.x(str2));
                    }
                    cursor.close();
                    G0.A.r(c12134n3);
                    y62.f62978a = c12134n3;
                    if (j11 != -1) {
                        str4 = "app_id = ? and metadata_fingerprint = ? and rowid <= ?";
                        strArr2 = new String[]{str2, string, String.valueOf(j11)};
                    } else {
                        str4 = "app_id = ? and metadata_fingerprint = ?";
                        strArr2 = new String[]{str2, string};
                    }
                    cursor = w02.query("raw_events", new String[]{"rowid", "name", "timestamp", "data"}, str4, strArr2, null, null, "rowid", null);
                    if (!cursor.moveToFirst()) {
                        this.f62917a.a().r().b("Raw event data disappeared while in transaction. appId", B2.x(str2));
                    }
                    do {
                        long j12 = cursor.getLong(0);
                        try {
                            C12017a3 c12017a3 = (C12017a3) h7.W(C12026b3.O(), cursor.getBlob(3));
                            c12017a3.E(cursor.getString(1));
                            c12017a3.H(cursor.getLong(2));
                            if (!y62.a(j12, (C12026b3) c12017a3.q())) {
                                break;
                            }
                        } catch (IOException e14) {
                            this.f62917a.a().o().c("Data loss. Failed to merge raw event. appId", B2.x(str2), e14);
                        }
                    } while (cursor.moveToNext());
                } catch (IOException e15) {
                    this.f62917a.a().o().c("Data loss. Failed to merge raw event metadata. appId", B2.x(str2), e15);
                }
            } else {
                this.f62917a.a().o().b("Raw event metadata record is missing. appId", B2.x(str2));
            }
        } finally {
            if (0 != 0) {
                cursor.close();
            }
        }
    }

    public final boolean s() {
        return M("select count(1) > 0 from queue where has_realtime = 1", null) != 0;
    }

    @WorkerThread
    public final void t(long j10) {
        h();
        j();
        try {
            if (w0().delete("queue", "rowid=?", new String[]{String.valueOf(j10)}) == 1) {
            } else {
                throw new SQLiteException("Deleted fewer rows from queue than expected");
            }
        } catch (SQLiteException e10) {
            this.f62917a.a().o().b("Failed to delete a bundle in a queue table", e10);
            throw e10;
        }
    }

    @WorkerThread
    public final void t0() {
        j();
        w0().beginTransaction();
    }

    @WorkerThread
    public final void u() {
        h();
        j();
        if (e0()) {
            c7 c7Var = this.f62657b;
            long a10 = c7Var.L0().f63332e.a();
            C12370p3 c12370p3 = this.f62917a;
            long c10 = c12370p3.e().c();
            long abs = Math.abs(c10 - a10);
            c12370p3.w();
            if (abs > C12342m.r()) {
                c7Var.L0().f63332e.b(c10);
                h();
                j();
                if (e0()) {
                    SQLiteDatabase w02 = w0();
                    String valueOf = String.valueOf(c12370p3.e().a());
                    c12370p3.w();
                    int delete = w02.delete("queue", "abs(bundle_end_timestamp - ?) > cast(? as integer)", new String[]{valueOf, String.valueOf(C12342m.q())});
                    if (delete > 0) {
                        c12370p3.a().w().b("Deleted stale rows. rowsDeleted", Integer.valueOf(delete));
                    }
                }
            }
        }
    }

    @WorkerThread
    public final void u0() {
        j();
        w0().setTransactionSuccessful();
    }

    @VisibleForTesting
    @WorkerThread
    public final void v(List list) {
        h();
        j();
        G0.A.r(list);
        G0.A.t(list.size());
        if (e0()) {
            String join = TextUtils.join(DocLint.SEPARATOR, list);
            StringBuilder sb2 = new StringBuilder(String.valueOf(join).length() + 2);
            sb2.append("(");
            sb2.append(join);
            sb2.append(")");
            String sb3 = sb2.toString();
            StringBuilder sb4 = new StringBuilder(sb3.length() + 80);
            sb4.append("SELECT COUNT(1) FROM queue WHERE rowid IN ");
            sb4.append(sb3);
            sb4.append(" AND retry_count =  2147483647 LIMIT 1");
            if (M(sb4.toString(), null) > 0) {
                this.f62917a.a().r().a("The number of upload retries exceeds the limit. Will remain unchanged.");
            }
            try {
                SQLiteDatabase w02 = w0();
                StringBuilder sb5 = new StringBuilder(sb3.length() + 127);
                sb5.append("UPDATE queue SET retry_count = IFNULL(retry_count, 0) + 1 WHERE rowid IN ");
                sb5.append(sb3);
                sb5.append(" AND (retry_count IS NULL OR retry_count < 2147483647)");
                w02.execSQL(sb5.toString());
            } catch (SQLiteException e10) {
                this.f62917a.a().o().b("Error incrementing retry count. error", e10);
            }
        }
    }

    @WorkerThread
    public final void v0() {
        j();
        w0().endTransaction();
    }

    @WorkerThread
    public final void w(Long l10) {
        h();
        j();
        G0.A.r(l10);
        if (e0()) {
            StringBuilder sb2 = new StringBuilder(l10.toString().length() + 86);
            sb2.append("SELECT COUNT(1) FROM upload_queue WHERE rowid = ");
            sb2.append((Object) l10);
            sb2.append(" AND retry_count =  2147483647 LIMIT 1");
            if (M(sb2.toString(), null) > 0) {
                this.f62917a.a().r().a("The number of upload retries exceeds the limit. Will remain unchanged.");
            }
            try {
                SQLiteDatabase w02 = w0();
                long a10 = this.f62917a.e().a();
                StringBuilder sb3 = new StringBuilder(String.valueOf(a10).length() + 60);
                sb3.append(" SET retry_count = retry_count + 1, last_upload_timestamp = ");
                sb3.append(a10);
                String sb4 = sb3.toString();
                StringBuilder sb5 = new StringBuilder(sb4.length() + 34 + l10.toString().length() + 29);
                sb5.append("UPDATE upload_queue");
                sb5.append(sb4);
                sb5.append(" WHERE rowid = ");
                sb5.append((Object) l10);
                sb5.append(" AND retry_count < 2147483647");
                w02.execSQL(sb5.toString());
            } catch (SQLiteException e10) {
                this.f62917a.a().o().b("Error incrementing retry count. error", e10);
            }
        }
    }

    @VisibleForTesting
    @WorkerThread
    public final SQLiteDatabase w0() {
        h();
        try {
            return this.f63667d.getWritableDatabase();
        } catch (SQLiteException e10) {
            this.f62917a.a().r().b("Error opening database", e10);
            throw e10;
        }
    }

    @VisibleForTesting
    @WorkerThread
    public final Object x(Cursor cursor, int i10) {
        int type = cursor.getType(i10);
        if (type == 0) {
            this.f62917a.a().o().a("Loaded invalid null value from database");
            return null;
        }
        if (type == 1) {
            return Long.valueOf(cursor.getLong(i10));
        }
        if (type == 2) {
            return Double.valueOf(cursor.getDouble(i10));
        }
        if (type == 3) {
            return cursor.getString(i10);
        }
        if (type != 4) {
            this.f62917a.a().o().b("Loaded invalid unknown value type, ignoring it", Integer.valueOf(type));
            return null;
        }
        this.f62917a.a().o().a("Loaded invalid blob type value, ignoring it");
        return null;
    }

    @WorkerThread
    public final E x0(String str, String str2) {
        return Q("events", str, str2);
    }

    @WorkerThread
    public final long y() {
        return N("select max(bundle_end_timestamp) from queue", null, 0L);
    }

    @WorkerThread
    public final void y0(E e10) {
        R("events", e10);
    }

    /* JADX WARN: Can't wrap try/catch for region: R(9:1|2|3|4|(2:6|(3:8|9|10)(1:13))|14|15|(3:17|9|10)(4:18|19|9|10)|(1:(0))) */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x00ae, code lost:
    
        r3 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x00b8, code lost:
    
        r13.f62917a.a().o().d("Error inserting column. appId", com.google.android.gms.measurement.internal.B2.x(r14), "first_open_count", r3);
     */
    @VisibleForTesting
    @WorkerThread
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final long z(String str, String str2) {
        long j10;
        long j11;
        G0.A.l(str);
        G0.A.l("first_open_count");
        h();
        j();
        SQLiteDatabase w02 = w0();
        w02.beginTransaction();
        try {
            try {
                StringBuilder sb2 = new StringBuilder(48);
                sb2.append("select ");
                sb2.append("first_open_count");
                sb2.append(" from app2 where app_id=?");
                j11 = -1;
                j10 = N(sb2.toString(), new String[]{str}, -1L);
            } finally {
                w02.endTransaction();
            }
        } catch (SQLiteException e10) {
            SQLiteException e11 = e10;
            j10 = 0;
        }
        if (j10 == -1) {
            ContentValues contentValues = new ContentValues();
            contentValues.put("app_id", str);
            contentValues.put("first_open_count", (Integer) 0);
            contentValues.put("previous_install_count", (Integer) 0);
            if (w02.insertWithOnConflict("app2", null, contentValues, 5) == -1) {
                this.f62917a.a().o().c("Failed to insert column (got -1). appId", B2.x(str), "first_open_count");
                return j11;
            }
            j10 = 0;
        }
        ContentValues contentValues2 = new ContentValues();
        contentValues2.put("app_id", str);
        contentValues2.put("first_open_count", Long.valueOf(1 + j10));
        if (w02.update("app2", contentValues2, "app_id = ?", new String[]{str}) == 0) {
            this.f62917a.a().o().c("Failed to update column (got 0). appId", B2.x(str), "first_open_count");
            return j11;
        }
        w02.setTransactionSuccessful();
        j11 = j10;
        return j11;
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x0049, code lost:
    
        if (r2.moveToNext() != false) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:4:0x002d, code lost:
    
        if (r2.moveToFirst() != false) goto L5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:5:0x002f, code lost:
    
        r1 = r2.getString(0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x0033, code lost:
    
        if (r1 == null) goto L14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x0035, code lost:
    
        r1 = Q("events", r13, r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x003b, code lost:
    
        if (r1 == null) goto L14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x003d, code lost:
    
        R("events_snapshot", r1);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void z0(String str) {
        S("events_snapshot", str);
        Cursor cursor = null;
        try {
            try {
                cursor = w0().query("events", (String[]) Collections.singletonList("name").toArray(new String[0]), "app_id=?", new String[]{str}, null, null, null);
            } catch (SQLiteException e10) {
                this.f62917a.a().o().c("Error creating snapshot. appId", B2.x(str), e10);
            }
            if (cursor != null) {
                cursor.close();
            }
        } catch (Throwable th2) {
            if (cursor != null) {
                cursor.close();
            }
            throw th2;
        }
    }
}
