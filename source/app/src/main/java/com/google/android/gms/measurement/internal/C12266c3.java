package com.google.android.gms.measurement.internal;

import android.content.ContentValues;
import android.database.sqlite.SQLiteException;
import android.media.tv.TvContract;
import android.text.TextUtils;
import androidx.annotation.VisibleForTesting;
import androidx.annotation.WorkerThread;
import androidx.collection.ArrayMap;
import androidx.collection.LruCache;
import com.google.android.gms.internal.measurement.C12025b2;
import com.google.android.gms.internal.measurement.C12043d2;
import com.google.android.gms.internal.measurement.C12050e0;
import com.google.android.gms.internal.measurement.C12106k2;
import com.google.android.gms.internal.measurement.C12133n2;
import com.google.android.gms.internal.measurement.C12151p2;
import com.google.android.gms.internal.measurement.C12160q2;
import com.google.android.gms.internal.measurement.C12177s2;
import com.google.android.gms.internal.measurement.C12186t2;
import com.google.android.gms.internal.measurement.M7;
import com.google.android.gms.internal.measurement.a8;
import com.google.android.gms.internal.measurement.b8;
import com.google.android.gms.internal.measurement.zzd;
import com.google.android.gms.internal.measurement.zzmq;
import com.google.firebase.analytics.FirebaseAnalytics;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import java.util.SortedSet;
import java.util.TreeSet;
import java.util.concurrent.Callable;

public final class C12266c3 extends N6 implements InterfaceC12334l {

    public final Map f63059d;

    @VisibleForTesting
    public final Map f63060e;

    @VisibleForTesting
    public final Map f63061f;

    @VisibleForTesting
    public final Map f63062g;

    public final Map f63063h;

    public final Map f63064i;

    @VisibleForTesting
    public final LruCache f63065j;

    public final M7 f63066k;

    public final Map f63067l;

    public final Map f63068m;

    public final Map f63069n;

    public C12266c3(c7 c7Var) {
        super(c7Var);
        this.f63059d = new ArrayMap();
        this.f63060e = new ArrayMap();
        this.f63061f = new ArrayMap();
        this.f63062g = new ArrayMap();
        this.f63063h = new ArrayMap();
        this.f63067l = new ArrayMap();
        this.f63068m = new ArrayMap();
        this.f63069n = new ArrayMap();
        this.f63064i = new ArrayMap();
        this.f63065j = new V2(this, 20);
        this.f63066k = new W2(this);
    }

    public static final Map u(C12186t2 c12186t2) {
        ArrayMap arrayMap = new ArrayMap();
        if (c12186t2 != null) {
            for (com.google.android.gms.internal.measurement.B2 b22 : c12186t2.I()) {
                arrayMap.put(b22.E(), b22.F());
            }
        }
        return arrayMap;
    }

    public static final Y3 v(int i10) {
        int i11 = i10 - 1;
        if (i11 == 1) {
            return Y3.AD_STORAGE;
        }
        if (i11 == 2) {
            return Y3.ANALYTICS_STORAGE;
        }
        if (i11 == 3) {
            return Y3.AD_USER_DATA;
        }
        if (i11 != 4) {
            return null;
        }
        return Y3.AD_PERSONALIZATION;
    }

    @WorkerThread
    public final void A(String str) {
        h();
        this.f63068m.put(str, null);
    }

    @WorkerThread
    public final void B(String str) {
        h();
        this.f63063h.remove(str);
    }

    @WorkerThread
    public final boolean C(String str, byte[] bArr, String str2, String str3) {
        j();
        h();
        G0.A.l(str);
        C12177s2 c12177s2 = (C12177s2) t(str, bArr).q();
        r(str, c12177s2);
        s(str, (C12186t2) c12177s2.q());
        this.f63063h.put(str, (C12186t2) c12177s2.q());
        this.f63067l.put(str, c12177s2.A());
        this.f63068m.put(str, str2);
        this.f63069n.put(str, str3);
        this.f63059d.put(str, u((C12186t2) c12177s2.q()));
        this.f62657b.F0().c0(str, new ArrayList(c12177s2.w()));
        try {
            c12177s2.x();
            bArr = ((C12186t2) c12177s2.q()).g();
        } catch (RuntimeException e10) {
            this.f62917a.a().r().c("Unable to serialize reduced-size config. Storing full config instead. appId", B2.x(str), e10);
        }
        C12421w F02 = this.f62657b.F0();
        G0.A.l(str);
        F02.h();
        F02.j();
        ContentValues contentValues = new ContentValues();
        contentValues.put("remote_config", bArr);
        contentValues.put("config_last_modified_time", str2);
        contentValues.put("e_tag", str3);
        try {
            if (F02.w0().update("apps", contentValues, "app_id = ?", new String[]{str}) == 0) {
                F02.f62917a.a().o().b("Failed to update remote config (got 0). appId", B2.x(str));
            }
        } catch (SQLiteException e11) {
            F02.f62917a.a().o().c("Error storing remote config. appId", B2.x(str), e11);
        }
        c12177s2.y();
        this.f63063h.put(str, (C12186t2) c12177s2.q());
        return true;
    }

    @WorkerThread
    public final boolean D(String str, String str2) {
        Boolean bool;
        h();
        q(str);
        if (H(str) && m7.N(str2)) {
            return true;
        }
        if (I(str) && m7.r0(str2)) {
            return true;
        }
        Map map = (Map) this.f63061f.get(str);
        if (map == null || (bool = (Boolean) map.get(str2)) == null) {
            return false;
        }
        return bool.booleanValue();
    }

    @WorkerThread
    public final boolean E(String str, String str2) {
        Boolean bool;
        h();
        q(str);
        if ("ecommerce_purchase".equals(str2) || FirebaseAnalytics.c.f67629D.equals(str2) || FirebaseAnalytics.c.f67630E.equals(str2)) {
            return true;
        }
        Map map = (Map) this.f63062g.get(str);
        if (map == null || (bool = (Boolean) map.get(str2)) == null) {
            return false;
        }
        return bool.booleanValue();
    }

    @WorkerThread
    public final Set F(String str) {
        h();
        q(str);
        return (Set) this.f63060e.get(str);
    }

    @WorkerThread
    public final int G(String str, String str2) {
        Integer num;
        h();
        q(str);
        Map map = (Map) this.f63064i.get(str);
        if (map == null || (num = (Integer) map.get(str2)) == null) {
            return 1;
        }
        return num.intValue();
    }

    public final boolean H(String str) {
        return "1".equals(f(str, "measurement.upload.blacklist_internal"));
    }

    public final boolean I(String str) {
        return "1".equals(f(str, "measurement.upload.blacklist_public"));
    }

    @WorkerThread
    public final boolean J(String str) {
        h();
        q(str);
        Map map = this.f63060e;
        if (map.get(str) != null) {
            return ((Set) map.get(str)).contains("device_model") || ((Set) map.get(str)).contains("device_info");
        }
        return false;
    }

    @WorkerThread
    public final boolean K(String str) {
        h();
        q(str);
        Map map = this.f63060e;
        if (map.get(str) != null) {
            return ((Set) map.get(str)).contains("os_version") || ((Set) map.get(str)).contains("device_info");
        }
        return false;
    }

    @WorkerThread
    public final boolean L(String str) {
        h();
        q(str);
        Map map = this.f63060e;
        return map.get(str) != null && ((Set) map.get(str)).contains("user_id");
    }

    @WorkerThread
    public final boolean M(String str) {
        h();
        q(str);
        Map map = this.f63060e;
        return map.get(str) != null && ((Set) map.get(str)).contains("google_signals");
    }

    @WorkerThread
    public final boolean N(String str) {
        h();
        q(str);
        Map map = this.f63060e;
        return map.get(str) != null && ((Set) map.get(str)).contains("app_instance_id");
    }

    @WorkerThread
    public final boolean O(String str) {
        h();
        q(str);
        Map map = this.f63060e;
        return map.get(str) != null && ((Set) map.get(str)).contains("enhanced_user_id");
    }

    @WorkerThread
    public final boolean P(String str, Y3 y32) {
        h();
        q(str);
        C12133n2 R10 = R(str);
        if (R10 == null) {
            return false;
        }
        Iterator it = R10.E().iterator();
        while (true) {
            if (!it.hasNext()) {
                break;
            }
            C12025b2 c12025b2 = (C12025b2) it.next();
            if (y32 == v(c12025b2.F())) {
                if (c12025b2.G() == 2) {
                    return true;
                }
            }
        }
        return false;
    }

    @WorkerThread
    public final Y3 Q(String str, Y3 y32) {
        h();
        q(str);
        C12133n2 R10 = R(str);
        if (R10 == null) {
            return null;
        }
        for (C12043d2 c12043d2 : R10.F()) {
            if (y32 == v(c12043d2.F())) {
                return v(c12043d2.G());
            }
        }
        return null;
    }

    @WorkerThread
    public final C12133n2 R(String str) {
        h();
        q(str);
        C12186t2 w10 = w(str);
        if (w10 == null || !w10.Q()) {
            return null;
        }
        return w10.R();
    }

    @WorkerThread
    public final boolean S(String str) {
        h();
        q(str);
        C12133n2 R10 = R(str);
        return R10 == null || !R10.H() || R10.I();
    }

    @WorkerThread
    public final SortedSet T(String str) {
        h();
        q(str);
        TreeSet treeSet = new TreeSet();
        C12133n2 R10 = R(str);
        if (R10 != null) {
            Iterator it = R10.G().iterator();
            while (it.hasNext()) {
                treeSet.add(((C12106k2) it.next()).E());
            }
        }
        return treeSet;
    }

    @Override
    @WorkerThread
    public final String f(String str, String str2) {
        h();
        q(str);
        Map map = (Map) this.f63059d.get(str);
        if (map != null) {
            return (String) map.get(str2);
        }
        return null;
    }

    @Override
    public final boolean l() {
        return false;
    }

    @WorkerThread
    public final W3 m(String str, Y3 y32) {
        h();
        q(str);
        C12133n2 R10 = R(str);
        if (R10 == null) {
            return W3.UNINITIALIZED;
        }
        for (C12025b2 c12025b2 : R10.J()) {
            if (v(c12025b2.F()) == y32) {
                int G10 = c12025b2.G() - 1;
                return G10 != 1 ? G10 != 2 ? W3.UNINITIALIZED : W3.DENIED : W3.GRANTED;
            }
        }
        return W3.UNINITIALIZED;
    }

    @WorkerThread
    public final boolean n(String str) {
        h();
        q(str);
        C12133n2 R10 = R(str);
        if (R10 == null) {
            return false;
        }
        for (C12025b2 c12025b2 : R10.E()) {
            if (c12025b2.F() == 3 && c12025b2.H() == 3) {
                return true;
            }
        }
        return false;
    }

    public final C12050e0 o(String str) {
        j();
        G0.A.l(str);
        r P02 = this.f62657b.F0().P0(str);
        if (P02 == null) {
            return null;
        }
        this.f62917a.a().w().b("Populate EES config from database on cache miss. appId", str);
        s(str, t(str, P02.f63536a));
        return (C12050e0) this.f63065j.snapshot().get(str);
    }

    public final Map p() {
        return this.f63059d;
    }

    @WorkerThread
    public final void q(String str) {
        j();
        h();
        G0.A.l(str);
        Map map = this.f63063h;
        if (map.get(str) == null) {
            r P02 = this.f62657b.F0().P0(str);
            if (P02 != null) {
                C12177s2 c12177s2 = (C12177s2) t(str, P02.f63536a).q();
                r(str, c12177s2);
                this.f63059d.put(str, u((C12186t2) c12177s2.q()));
                map.put(str, (C12186t2) c12177s2.q());
                s(str, (C12186t2) c12177s2.q());
                this.f63067l.put(str, c12177s2.A());
                this.f63068m.put(str, P02.f63537b);
                this.f63069n.put(str, P02.f63538c);
                return;
            }
            this.f63059d.put(str, null);
            this.f63061f.put(str, null);
            this.f63060e.put(str, null);
            this.f63062g.put(str, null);
            map.put(str, null);
            this.f63067l.put(str, null);
            this.f63068m.put(str, null);
            this.f63069n.put(str, null);
            this.f63064i.put(str, null);
        }
    }

    public final void r(String str, C12177s2 c12177s2) {
        HashSet hashSet = new HashSet();
        ArrayMap arrayMap = new ArrayMap();
        ArrayMap arrayMap2 = new ArrayMap();
        ArrayMap arrayMap3 = new ArrayMap();
        Iterator it = c12177s2.z().iterator();
        while (it.hasNext()) {
            hashSet.add(((C12151p2) it.next()).E());
        }
        for (int i10 = 0; i10 < c12177s2.t(); i10++) {
            C12160q2 c12160q2 = (C12160q2) c12177s2.u(i10).q();
            if (c12160q2.t().isEmpty()) {
                this.f62917a.a().r().a("EventConfig contained null event name");
            } else {
                String t10 = c12160q2.t();
                String b10 = C12251a4.b(c12160q2.t());
                if (!TextUtils.isEmpty(b10)) {
                    c12160q2.u(b10);
                    c12177s2.v(i10, c12160q2);
                }
                if (c12160q2.v() && c12160q2.w()) {
                    arrayMap.put(t10, Boolean.TRUE);
                }
                if (c12160q2.x() && c12160q2.y()) {
                    arrayMap2.put(c12160q2.t(), Boolean.TRUE);
                }
                if (c12160q2.z()) {
                    if (c12160q2.A() < 2 || c12160q2.A() > 65535) {
                        this.f62917a.a().r().c("Invalid sampling rate. Event name, sample rate", c12160q2.t(), Integer.valueOf(c12160q2.A()));
                    } else {
                        arrayMap3.put(c12160q2.t(), Integer.valueOf(c12160q2.A()));
                    }
                }
            }
        }
        this.f63060e.put(str, hashSet);
        this.f63061f.put(str, arrayMap);
        this.f63062g.put(str, arrayMap2);
        this.f63064i.put(str, arrayMap3);
    }

    @WorkerThread
    public final void s(final String str, C12186t2 c12186t2) {
        if (c12186t2.N() == 0) {
            this.f63065j.remove(str);
            return;
        }
        C12370p3 c12370p3 = this.f62917a;
        c12370p3.a().w().b("EES programs found", Integer.valueOf(c12186t2.N()));
        com.google.android.gms.internal.measurement.L3 l32 = (com.google.android.gms.internal.measurement.L3) c12186t2.M().get(0);
        try {
            C12050e0 c12050e0 = new C12050e0();
            c12050e0.a("internal.remoteConfig", new Callable() {
                @Override
                public final Object call() {
                    return new com.google.android.gms.internal.measurement.K5("internal.remoteConfig", new X2(C12266c3.this, str));
                }
            });
            c12050e0.a("internal.appMetadata", new Callable() {
                @Override
                public final Object call() {
                    final C12266c3 c12266c3 = C12266c3.this;
                    final String str2 = str;
                    return new b8("internal.appMetadata", new Callable() {
                        @Override
                        public final Object call() {
                            C12266c3 c12266c32 = C12266c3.this;
                            C12421w F02 = c12266c32.f62657b.F0();
                            String str3 = str2;
                            I2 L02 = F02.L0(str3);
                            HashMap hashMap = new HashMap();
                            hashMap.put("platform", "android");
                            hashMap.put(TvContract.BaseTvColumns.COLUMN_PACKAGE_NAME, str3);
                            c12266c32.f62917a.w().A();
                            hashMap.put("gmp_version", 130000L);
                            if (L02 != null) {
                                String D02 = L02.D0();
                                if (D02 != null) {
                                    hashMap.put("app_version", D02);
                                }
                                hashMap.put("app_version_int", Long.valueOf(L02.F0()));
                                hashMap.put("dynamite_version", Long.valueOf(L02.b()));
                            }
                            return hashMap;
                        }
                    });
                }
            });
            c12050e0.a("internal.logger", new Callable() {
                @Override
                public final Object call() {
                    return new a8(C12266c3.this.f63066k);
                }
            });
            c12050e0.f(l32);
            this.f63065j.put(str, c12050e0);
            c12370p3.a().w().c("EES program loaded for appId, activities", str, Integer.valueOf(l32.F().F()));
            Iterator it = l32.F().E().iterator();
            while (it.hasNext()) {
                c12370p3.a().w().b("EES program activity", ((com.google.android.gms.internal.measurement.I3) it.next()).E());
            }
        } catch (zzd unused) {
            this.f62917a.a().o().b("Failed to load EES program. appId", str);
        }
    }

    @WorkerThread
    public final C12186t2 t(String str, byte[] bArr) {
        if (bArr == null) {
            return C12186t2.V();
        }
        try {
            C12186t2 c12186t2 = (C12186t2) ((C12177s2) h7.W(C12186t2.U(), bArr)).q();
            this.f62917a.a().w().c("Parsed config. version, gmp_app_id", c12186t2.E() ? Long.valueOf(c12186t2.F()) : null, c12186t2.G() ? c12186t2.H() : null);
            return c12186t2;
        } catch (zzmq e10) {
            this.f62917a.a().r().c("Unable to merge remote config. appId", B2.x(str), e10);
            return C12186t2.V();
        } catch (RuntimeException e11) {
            this.f62917a.a().r().c("Unable to merge remote config. appId", B2.x(str), e11);
            return C12186t2.V();
        }
    }

    @WorkerThread
    public final C12186t2 w(String str) {
        j();
        h();
        G0.A.l(str);
        q(str);
        return (C12186t2) this.f63063h.get(str);
    }

    @WorkerThread
    public final String x(String str) {
        h();
        q(str);
        return (String) this.f63067l.get(str);
    }

    @WorkerThread
    public final String y(String str) {
        h();
        return (String) this.f63068m.get(str);
    }

    @WorkerThread
    public final String z(String str) {
        h();
        return (String) this.f63069n.get(str);
    }
}
