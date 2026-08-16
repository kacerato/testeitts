package com.google.android.gms.measurement.internal;

import T0.C3041k;
import T0.InterfaceC3037g;
import android.Manifest;
import android.app.Application;
import android.app.BroadcastOptions;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.SharedPreferences;
import android.content.pm.ResolveInfo;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Pair;
import androidx.annotation.VisibleForTesting;
import androidx.annotation.WorkerThread;
import androidx.core.content.ContextCompat;
import com.google.android.gms.internal.measurement.AbstractC12215w4;
import com.google.android.gms.internal.measurement.C12227x7;
import com.google.android.gms.internal.measurement.EnumC12223x3;
import java.net.URL;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import java.util.Random;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
import org.eclipse.jdt.internal.core.JavaModelCache;
import org.json.JSONException;
import org.json.JSONObject;

public final class C12370p3 implements U3 {

    public static volatile C12370p3 f63487E;

    public int f63488A;

    public int f63489B;

    @VisibleForTesting
    public final long f63491D;

    public final Context f63492a;

    public final boolean f63493b;

    public final C12286f f63494c;

    public final C12342m f63495d;

    public final P2 f63496e;

    public final B2 f63497f;

    public final C12306h3 f63498g;

    public final C12436x6 f63499h;

    public final m7 f63500i;

    public final C12408u2 f63501j;

    public final InterfaceC3037g f63502k;

    public final C12411u5 f63503l;

    public final C12260b5 f63504m;

    public final E0 f63505n;

    public final C12300g5 f63506o;

    public final String f63507p;

    public C12392s2 f63508q;

    public C12293f6 f63509r;

    public C f63510s;

    public C12369p2 f63511t;

    public C12316i5 f63512u;

    public Boolean f63514w;

    public long f63515x;

    public volatile Boolean f63516y;

    public volatile boolean f63517z;

    public boolean f63513v = false;

    public final AtomicInteger f63490C = new AtomicInteger(0);

    public C12370p3(C12299g4 c12299g4) {
        G0.A.r(c12299g4);
        Context context = c12299g4.f63307a;
        C12286f c12286f = new C12286f(context);
        this.f63494c = c12286f;
        Y1.f62972a = c12286f;
        this.f63492a = context;
        this.f63493b = c12299g4.f63311e;
        this.f63516y = c12299g4.f63308b;
        this.f63507p = c12299g4.f63313g;
        this.f63517z = true;
        AbstractC12215w4.b(context);
        InterfaceC3037g e10 = C3041k.e();
        this.f63502k = e10;
        Long l10 = c12299g4.f63312f;
        this.f63491D = l10 != null ? l10.longValue() : e10.a();
        this.f63495d = new C12342m(this);
        P2 p22 = new P2(this);
        p22.m();
        this.f63496e = p22;
        B2 b22 = new B2(this);
        b22.m();
        this.f63497f = b22;
        m7 m7Var = new m7(this);
        m7Var.m();
        this.f63500i = m7Var;
        this.f63501j = new C12408u2(new C12291f4(c12299g4, this));
        this.f63505n = new E0(this);
        C12411u5 c12411u5 = new C12411u5(this);
        c12411u5.k();
        this.f63503l = c12411u5;
        C12260b5 c12260b5 = new C12260b5(this);
        c12260b5.k();
        this.f63504m = c12260b5;
        C12436x6 c12436x6 = new C12436x6(this);
        c12436x6.k();
        this.f63499h = c12436x6;
        C12300g5 c12300g5 = new C12300g5(this);
        c12300g5.m();
        this.f63506o = c12300g5;
        C12306h3 c12306h3 = new C12306h3(this);
        c12306h3.m();
        this.f63498g = c12306h3;
        com.google.android.gms.internal.measurement.I0 i02 = c12299g4.f63310d;
        boolean z10 = i02 == null || i02.f61942c == 0;
        if (context.getApplicationContext() instanceof Application) {
            t(c12260b5);
            if (c12260b5.f62917a.f63492a.getApplicationContext() instanceof Application) {
                Application application = (Application) c12260b5.f62917a.f63492a.getApplicationContext();
                if (c12260b5.f63024c == null) {
                    c12260b5.f63024c = new N4(c12260b5);
                }
                if (z10) {
                    application.unregisterActivityLifecycleCallbacks(c12260b5.f63024c);
                    application.registerActivityLifecycleCallbacks(c12260b5.f63024c);
                    B2 b23 = c12260b5.f62917a.f63497f;
                    u(b23);
                    b23.w().a("Registered activity lifecycle callback");
                }
            }
        } else {
            u(b22);
            b22.r().a("Application context is not an Application");
        }
        c12306h3.t(new RunnableC12314i3(this, c12299g4));
    }

    public static C12370p3 O(Context context, com.google.android.gms.internal.measurement.I0 i02, Long l10) {
        Bundle bundle;
        if (i02 != null) {
            Bundle bundle2 = i02.f61944e;
            i02 = new com.google.android.gms.internal.measurement.I0(i02.f61941b, i02.f61942c, i02.f61943d, bundle2, null);
        }
        G0.A.r(context);
        G0.A.r(context.getApplicationContext());
        if (f63487E == null) {
            synchronized (C12370p3.class) {
                try {
                    if (f63487E == null) {
                        f63487E = new C12370p3(new C12299g4(context, i02, l10));
                    }
                } finally {
                }
            }
        } else if (i02 != null && (bundle = i02.f61944e) != null && bundle.containsKey("dataCollectionDefaultEnabled")) {
            G0.A.r(f63487E);
            f63487E.f63516y = Boolean.valueOf(bundle.getBoolean("dataCollectionDefaultEnabled"));
        }
        G0.A.r(f63487E);
        return f63487E;
    }

    public static final void q() {
        throw new IllegalStateException("Unexpected call on client side");
    }

    public static final void r(G1 g12) {
        if (g12 == null) {
            throw new IllegalStateException("Component not created");
        }
    }

    public static final void s(S3 s32) {
        if (s32 == null) {
            throw new IllegalStateException("Component not created");
        }
    }

    public static final void t(AbstractC12305h2 abstractC12305h2) {
        if (abstractC12305h2 == null) {
            throw new IllegalStateException("Component not created");
        }
        if (!abstractC12305h2.i()) {
            throw new IllegalStateException("Component not initialized: ".concat(String.valueOf(abstractC12305h2.getClass())));
        }
    }

    public static final void u(T3 t32) {
        if (t32 == null) {
            throw new IllegalStateException("Component not created");
        }
        if (!t32.k()) {
            throw new IllegalStateException("Component not initialized: ".concat(String.valueOf(t32.getClass())));
        }
    }

    @Km.c
    public final C12306h3 A() {
        return this.f63498g;
    }

    @Km.b
    public final C12260b5 B() {
        C12260b5 c12260b5 = this.f63504m;
        t(c12260b5);
        return c12260b5;
    }

    @Km.b
    public final m7 C() {
        m7 m7Var = this.f63500i;
        s(m7Var);
        return m7Var;
    }

    @Km.b
    public final C12408u2 D() {
        return this.f63501j;
    }

    @Km.b
    public final C12392s2 E() {
        t(this.f63508q);
        return this.f63508q;
    }

    @Km.b
    public final C12300g5 F() {
        C12300g5 c12300g5 = this.f63506o;
        u(c12300g5);
        return c12300g5;
    }

    @Km.b
    public final boolean G() {
        return this.f63493b;
    }

    @Km.b
    public final String H() {
        return this.f63507p;
    }

    @Km.b
    public final C12411u5 I() {
        C12411u5 c12411u5 = this.f63503l;
        t(c12411u5);
        return c12411u5;
    }

    @Km.b
    public final C12293f6 J() {
        t(this.f63509r);
        return this.f63509r;
    }

    @Km.b
    public final C K() {
        u(this.f63510s);
        return this.f63510s;
    }

    @Km.b
    public final C12369p2 L() {
        t(this.f63511t);
        return this.f63511t;
    }

    @Km.b
    public final E0 M() {
        E0 e02 = this.f63505n;
        r(e02);
        return e02;
    }

    @Km.b
    public final C12316i5 N() {
        r(this.f63512u);
        return this.f63512u;
    }

    @WorkerThread
    public final void P(boolean z10) {
        this.f63516y = Boolean.valueOf(z10);
    }

    @Override
    @Km.b
    public final B2 a() {
        B2 b22 = this.f63497f;
        u(b22);
        return b22;
    }

    @Override
    @Km.b
    public final C12306h3 b() {
        C12306h3 c12306h3 = this.f63498g;
        u(c12306h3);
        return c12306h3;
    }

    @Override
    @Km.b
    public final C12286f c() {
        return this.f63494c;
    }

    @Override
    @Km.b
    public final Context d() {
        return this.f63492a;
    }

    @Override
    @Km.b
    public final InterfaceC3037g e() {
        return this.f63502k;
    }

    @WorkerThread
    public final boolean f() {
        return this.f63516y != null && this.f63516y.booleanValue();
    }

    @WorkerThread
    public final boolean g() {
        return h() == 0;
    }

    @WorkerThread
    public final int h() {
        C12306h3 c12306h3 = this.f63498g;
        u(c12306h3);
        c12306h3.h();
        C12342m c12342m = this.f63495d;
        if (c12342m.L()) {
            return 1;
        }
        u(c12306h3);
        c12306h3.h();
        if (!this.f63517z) {
            return 8;
        }
        P2 p22 = this.f63496e;
        s(p22);
        Boolean t10 = p22.t();
        if (t10 != null) {
            return t10.booleanValue() ? 0 : 3;
        }
        C12286f c12286f = c12342m.f62917a.f63494c;
        Boolean J10 = c12342m.J("firebase_analytics_collection_enabled");
        return J10 != null ? J10.booleanValue() ? 0 : 4 : (this.f63516y == null || this.f63516y.booleanValue()) ? 0 : 7;
    }

    @WorkerThread
    public final void i(boolean z10) {
        C12306h3 c12306h3 = this.f63498g;
        u(c12306h3);
        c12306h3.h();
        this.f63517z = z10;
    }

    @WorkerThread
    public final boolean j() {
        C12306h3 c12306h3 = this.f63498g;
        u(c12306h3);
        c12306h3.h();
        return this.f63517z;
    }

    public final void k() {
        this.f63488A++;
    }

    public final void l() {
        this.f63490C.incrementAndGet();
    }

    @WorkerThread
    public final boolean m() {
        if (!this.f63513v) {
            throw new IllegalStateException("AppMeasurement is not initialized");
        }
        C12306h3 c12306h3 = this.f63498g;
        u(c12306h3);
        c12306h3.h();
        Boolean bool = this.f63514w;
        if (bool == null || this.f63515x == 0 || (!bool.booleanValue() && Math.abs(this.f63502k.c() - this.f63515x) > 1000)) {
            this.f63515x = this.f63502k.c();
            m7 m7Var = this.f63500i;
            s(m7Var);
            boolean z10 = false;
            if (m7Var.M(Manifest.permission.INTERNET)) {
                s(m7Var);
                if (m7Var.M("android.permission.ACCESS_NETWORK_STATE")) {
                    Context context = this.f63492a;
                    if (V0.d.a(context).h() || this.f63495d.m() || (m7.j0(context) && m7.E(context, false))) {
                        z10 = true;
                    }
                }
            }
            Boolean valueOf = Boolean.valueOf(z10);
            this.f63514w = valueOf;
            if (valueOf.booleanValue()) {
                s(m7Var);
                this.f63514w = Boolean.valueOf(m7Var.o(L().r()));
            }
        }
        return this.f63514w.booleanValue();
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0087, code lost:
    
        if (r4.W() >= 234200) goto L22;
     */
    /* JADX WARN: Multi-variable type inference failed */
    @WorkerThread
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean n() {
        NetworkInfo activeNetworkInfo;
        C12306h3 c12306h3 = this.f63498g;
        u(c12306h3);
        c12306h3.h();
        C12300g5 c12300g5 = this.f63506o;
        u(c12300g5);
        u(c12300g5);
        String q10 = L().q();
        if (!this.f63495d.M()) {
            B2 b22 = this.f63497f;
            u(b22);
            b22.w().a("ADID collection is disabled from Manifest. Skipping");
            return false;
        }
        P2 p22 = this.f63496e;
        s(p22);
        Pair o10 = p22.o(q10);
        if (((Boolean) o10.second).booleanValue() || TextUtils.isEmpty((CharSequence) o10.first)) {
            B2 b23 = this.f63497f;
            u(b23);
            b23.w().a("ADID unavailable to retrieve Deferred Deep Link. Skipping");
            return false;
        }
        u(c12300g5);
        c12300g5.l();
        ConnectivityManager connectivityManager = (ConnectivityManager) c12300g5.f62917a.f63492a.getSystemService(Context.CONNECTIVITY_SERVICE);
        if (connectivityManager != null) {
            try {
                activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
            } catch (SecurityException unused) {
            }
            if (activeNetworkInfo != null || !activeNetworkInfo.isConnected()) {
                B2 b24 = this.f63497f;
                u(b24);
                b24.r().a("Network is not available for Deferred Deep Link request. Skipping");
                return false;
            }
            StringBuilder sb2 = new StringBuilder();
            C12293f6 J10 = J();
            J10.h();
            J10.j();
            if (J10.y()) {
                m7 m7Var = J10.f62917a.f63500i;
                s(m7Var);
            }
            C12260b5 c12260b5 = this.f63504m;
            t(c12260b5);
            C12370p3 c12370p3 = c12260b5.f62917a;
            c12260b5.h();
            C12366p m02 = c12370p3.J().m0();
            Bundle bundle = m02 != null ? m02.f63469b : null;
            if (bundle == null) {
                int i10 = this.f63489B;
                this.f63489B = i10 + 1;
                boolean z10 = i10 < 10;
                B2 b25 = this.f63497f;
                u(b25);
                String str = i10 < 10 ? "Retrying." : "Skipping.";
                C12448z2 v10 = b25.v();
                StringBuilder sb3 = new StringBuilder(str.length() + 60);
                sb3.append("Failed to retrieve DMA consent from the service, ");
                sb3.append(str);
                sb3.append(" retryCount");
                v10.b(sb3.toString(), Integer.valueOf(this.f63489B));
                return z10;
            }
            Z3 e10 = Z3.e(bundle, 100);
            sb2.append("&gcs=");
            sb2.append(e10.k());
            A h10 = A.h(bundle, 100);
            sb2.append("&dma=");
            sb2.append(!Objects.equals(h10.j(), Boolean.FALSE) ? 1 : 0);
            if (!TextUtils.isEmpty(h10.k())) {
                sb2.append("&dma_cps=");
                sb2.append(h10.k());
            }
            int i11 = !Objects.equals(A.i(bundle), Boolean.TRUE) ? 1 : 0;
            sb2.append("&npa=");
            sb2.append(i11);
            B2 b26 = this.f63497f;
            u(b26);
            b26.w().b("Consent query parameters to Bow", sb2);
            m7 m7Var2 = this.f63500i;
            s(m7Var2);
            L().f62917a.f63495d.A();
            String str2 = (String) o10.first;
            P2 p23 = this.f63496e;
            s(p23);
            URL i02 = m7Var2.i0(130000L, q10, str2, (-1) + p23.f62867v.a(), sb2.toString());
            if (i02 != null) {
                C12300g5 c12300g52 = this.f63506o;
                u(c12300g52);
                InterfaceC12276d5 interfaceC12276d5 = new InterfaceC12276d5() {
                    @Override
                    public final void a(String str3, int i12, Throwable th2, byte[] bArr, Map map) {
                        C12370p3.this.o(str3, i12, th2, bArr, map);
                    }
                };
                c12300g52.l();
                G0.A.r(i02);
                G0.A.r(interfaceC12276d5);
                C12306h3 c12306h32 = c12300g52.f62917a.f63498g;
                u(c12306h32);
                c12306h32.w(new RunnableC12292f5(c12300g52, q10, i02, null, null, interfaceC12276d5));
            }
            return false;
        }
        activeNetworkInfo = null;
        if (activeNetworkInfo != null) {
        }
        B2 b242 = this.f63497f;
        u(b242);
        b242.r().a("Network is not available for Deferred Deep Link request. Skipping");
        return false;
    }

    public final void o(String str, int i10, Throwable th2, byte[] bArr, Map map) {
        int i11;
        BroadcastOptions makeBasic;
        BroadcastOptions shareIdentityEnabled;
        Bundle bundle;
        if (i10 == 200 || i10 == 204) {
            i11 = i10;
        } else {
            i11 = 304;
            if (i10 != 304) {
                i11 = i10;
                B2 b22 = this.f63497f;
                u(b22);
                b22.r().c("Network Request for Deferred Deep Link failed. response, exception", Integer.valueOf(i11), th2);
            }
        }
        if (th2 == null) {
            P2 p22 = this.f63496e;
            s(p22);
            p22.f62866u.b(true);
            if (bArr == null || bArr.length == 0) {
                B2 b23 = this.f63497f;
                u(b23);
                b23.v().a("Deferred Deep Link response empty.");
                return;
            }
            try {
                JSONObject jSONObject = new JSONObject(new String(bArr));
                String optString = jSONObject.optString("deeplink", "");
                if (TextUtils.isEmpty(optString)) {
                    B2 b24 = this.f63497f;
                    u(b24);
                    b24.v().a("Deferred Deep Link is empty.");
                    return;
                }
                String optString2 = jSONObject.optString("gclid", "");
                String optString3 = jSONObject.optString("gbraid", "");
                String optString4 = jSONObject.optString("gad_source", "");
                double optDouble = jSONObject.optDouble("timestamp", 0.0d);
                Bundle bundle2 = new Bundle();
                m7 m7Var = this.f63500i;
                s(m7Var);
                C12370p3 c12370p3 = m7Var.f62917a;
                if (!TextUtils.isEmpty(optString)) {
                    Context context = c12370p3.f63492a;
                    List<ResolveInfo> queryIntentActivities = context.getPackageManager().queryIntentActivities(new Intent("android.intent.action.VIEW", Uri.parse(optString)), 0);
                    if (queryIntentActivities != null && !queryIntentActivities.isEmpty()) {
                        if (!TextUtils.isEmpty(optString3)) {
                            bundle2.putString("gbraid", optString3);
                        }
                        if (!TextUtils.isEmpty(optString4)) {
                            bundle2.putString("gad_source", optString4);
                        }
                        bundle2.putString("gclid", optString2);
                        bundle2.putString("_cis", "ddp");
                        this.f63504m.t("auto", "_cmp", bundle2);
                        s(m7Var);
                        if (TextUtils.isEmpty(optString)) {
                            return;
                        }
                        try {
                            SharedPreferences.Editor edit = context.getSharedPreferences("google.analytics.deferred.deeplink.prefs", 0).edit();
                            edit.putString("deeplink", optString);
                            edit.putLong("timestamp", Double.doubleToRawLongBits(optDouble));
                            if (edit.commit()) {
                                Intent intent = new Intent("android.google.analytics.action.DEEPLINK_ACTION");
                                Context context2 = m7Var.f62917a.f63492a;
                                if (Build.VERSION.SDK_INT < 34) {
                                    context2.sendBroadcast(intent);
                                    return;
                                }
                                makeBasic = BroadcastOptions.makeBasic();
                                shareIdentityEnabled = makeBasic.setShareIdentityEnabled(true);
                                bundle = shareIdentityEnabled.toBundle();
                                C12362o3.a(context2, intent, null, bundle);
                                return;
                            }
                            return;
                        } catch (RuntimeException e10) {
                            B2 b25 = m7Var.f62917a.f63497f;
                            u(b25);
                            b25.o().b("Failed to persist Deferred Deep Link. exception", e10);
                            return;
                        }
                    }
                }
                B2 b26 = this.f63497f;
                u(b26);
                b26.r().d("Deferred Deep Link validation failed. gclid, gbraid, deep link", optString2, optString3, optString);
                return;
            } catch (JSONException e11) {
                B2 b27 = this.f63497f;
                u(b27);
                b27.o().b("Failed to parse the Deferred Deep Link response. exception", e11);
                return;
            }
        }
        B2 b222 = this.f63497f;
        u(b222);
        b222.r().c("Network Request for Deferred Deep Link failed. response, exception", Integer.valueOf(i11), th2);
    }

    public final void p(C12299g4 c12299g4) {
        C12306h3 c12306h3 = this.f63498g;
        u(c12306h3);
        c12306h3.h();
        C12342m c12342m = this.f63495d;
        c12342m.u();
        C c10 = new C(this);
        c10.m();
        this.f63510s = c10;
        com.google.android.gms.internal.measurement.I0 i02 = c12299g4.f63310d;
        C12369p2 c12369p2 = new C12369p2(this, c12299g4.f63309c, i02 == null ? 0L : i02.f61941b);
        c12369p2.k();
        this.f63511t = c12369p2;
        C12392s2 c12392s2 = new C12392s2(this);
        c12392s2.k();
        this.f63508q = c12392s2;
        C12293f6 c12293f6 = new C12293f6(this);
        c12293f6.k();
        this.f63509r = c12293f6;
        m7 m7Var = this.f63500i;
        m7Var.n();
        this.f63496e.n();
        this.f63511t.l();
        C12316i5 c12316i5 = new C12316i5(this);
        c12316i5.k();
        this.f63512u = c12316i5;
        c12316i5.l();
        B2 b22 = this.f63497f;
        u(b22);
        C12448z2 u10 = b22.u();
        c12342m.A();
        u10.b("App measurement initialized, version", 130000L);
        u(b22);
        b22.u().a("To enable debug logging run: adb shell setprop log.tag.FA VERBOSE");
        String q10 = c12369p2.q();
        s(m7Var);
        if (m7Var.P(q10, c12342m.R())) {
            u(b22);
            b22.u().a("Faster debug mode event logging enabled. To disable, run:\n  adb shell setprop debug.firebase.analytics.app .none.");
        } else {
            u(b22);
            b22.u().a("To enable faster debug mode event logging run:\n  adb shell setprop debug.firebase.analytics.app ".concat(String.valueOf(q10)));
        }
        u(b22);
        b22.v().a("Debug-level message logging enabled");
        int i10 = this.f63488A;
        AtomicInteger atomicInteger = this.f63490C;
        if (i10 != atomicInteger.get()) {
            u(b22);
            b22.o().c("Not all components initialized", Integer.valueOf(this.f63488A), Integer.valueOf(atomicInteger.get()));
        }
        this.f63513v = true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:6:0x0030, code lost:
    
        if (r1.G() == false) goto L9;
     */
    /* JADX WARN: Removed duplicated region for block: B:116:0x0169  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x00dc  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0100  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x01a6  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x01ce  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x03b5  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x0254  */
    @WorkerThread
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void v(com.google.android.gms.internal.measurement.I0 i02) {
        Z3 a10;
        C12260b5 c12260b5;
        W3 O10;
        W3 O11;
        Bundle bundle;
        A h10;
        Boolean J10;
        M2 m22;
        C12306h3 c12306h3 = this.f63498g;
        u(c12306h3);
        c12306h3.h();
        EnumC12223x3 q10 = N().q();
        EnumC12223x3 enumC12223x3 = EnumC12223x3.CLIENT_UPLOAD_ELIGIBLE;
        C12227x7.a();
        C12273d2 c12273d2 = C12281e2.f63171R0;
        C12342m c12342m = this.f63495d;
        boolean H10 = c12342m.H(null, c12273d2);
        boolean z10 = q10 == enumC12223x3;
        if (H10) {
            m7 m7Var = this.f63500i;
            s(m7Var);
        }
        if (z10) {
            z10 = true;
            m7 m7Var2 = this.f63500i;
            s(m7Var2);
            m7Var2.h();
            IntentFilter intentFilter = new IntentFilter();
            intentFilter.addAction("com.google.android.gms.measurement.TRIGGERS_AVAILABLE");
            intentFilter.addAction("com.google.android.gms.measurement.BATCHES_AVAILABLE");
            t7 t7Var = new t7(m7Var2.f62917a);
            C12370p3 c12370p3 = m7Var2.f62917a;
            ContextCompat.registerReceiver(c12370p3.f63492a, t7Var, intentFilter, 2);
            B2 b22 = c12370p3.f63497f;
            u(b22);
            b22.v().a("Registered app receiver");
            if (z10) {
                N().o(((Long) C12281e2.f63140C.b(null)).longValue());
            }
        }
        P2 p22 = this.f63496e;
        s(p22);
        Z3 w10 = p22.w();
        int b10 = w10.b();
        W3 O12 = c12342m.O("google_analytics_default_allow_ad_storage", false);
        W3 O13 = c12342m.O("google_analytics_default_allow_analytics_storage", false);
        W3 w32 = W3.UNINITIALIZED;
        if (O12 != w32 || O13 != w32) {
            s(p22);
            if (p22.v(-10)) {
                a10 = Z3.a(O12, O13, -10);
                if (a10 != null) {
                    C12260b5 c12260b52 = this.f63504m;
                    t(c12260b52);
                    c12260b52.q0(a10, true);
                    w10 = a10;
                }
                c12260b5 = this.f63504m;
                t(c12260b5);
                c12260b5.o(w10);
                s(p22);
                int b11 = p22.u().b();
                O10 = c12342m.O("google_analytics_default_allow_ad_personalization_signals", true);
                if (O10 != w32) {
                    B2 b23 = this.f63497f;
                    u(b23);
                    b23.w().b("Default ad personalization consent from Manifest", O10);
                }
                O11 = c12342m.O("google_analytics_default_allow_ad_user_data", true);
                if (O11 == w32 && Z3.u(-10, b11)) {
                    t(c12260b5);
                    c12260b5.p0(A.a(O11, -10), true);
                } else if (TextUtils.isEmpty(L().r()) && (b11 == 0 || b11 == 30)) {
                    t(c12260b5);
                    c12260b5.p0(new A((Boolean) null, -10, (Boolean) null, (String) null), true);
                } else if (TextUtils.isEmpty(L().r()) && i02 != null && (bundle = i02.f61944e) != null && Z3.u(30, b11)) {
                    h10 = A.h(bundle, 30);
                    if (h10.d()) {
                        t(c12260b5);
                        c12260b5.p0(h10, true);
                    }
                }
                J10 = c12342m.J("google_analytics_tcf_data_enabled");
                if (J10 != null || J10.booleanValue()) {
                    B2 b24 = this.f63497f;
                    u(b24);
                    b24.v().a("TCF client enabled.");
                    t(c12260b5);
                    c12260b5.s();
                    t(c12260b5);
                    c12260b5.r();
                }
                s(p22);
                m22 = p22.f62851f;
                if (m22.a() == 0) {
                    B2 b25 = this.f63497f;
                    u(b25);
                    long j10 = this.f63491D;
                    b25.w().b("Persisting first open", Long.valueOf(j10));
                    s(p22);
                    m22.b(j10);
                }
                t(c12260b5);
                c12260b5.f63039r.c();
                if (!m()) {
                    if (!TextUtils.isEmpty(L().r())) {
                        m7 m7Var3 = this.f63500i;
                        s(m7Var3);
                        String r10 = L().r();
                        s(p22);
                        p22.h();
                        if (m7Var3.p(r10, p22.p().getString("gmp_app_id", null))) {
                            B2 b26 = this.f63497f;
                            u(b26);
                            b26.u().a("Rechecking which service to use due to a GMP App Id change");
                            s(p22);
                            p22.h();
                            Boolean t10 = p22.t();
                            SharedPreferences.Editor edit = p22.p().edit();
                            edit.clear();
                            edit.apply();
                            if (t10 != null) {
                                p22.s(t10);
                            }
                            E().o();
                            this.f63509r.A();
                            this.f63509r.w();
                            s(p22);
                            m22.b(this.f63491D);
                            s(p22);
                            p22.f62853h.b(null);
                        }
                        s(p22);
                        String r11 = L().r();
                        p22.h();
                        SharedPreferences.Editor edit2 = p22.p().edit();
                        edit2.putString("gmp_app_id", r11);
                        edit2.apply();
                    }
                    s(p22);
                    if (!p22.w().o(Y3.ANALYTICS_STORAGE)) {
                        s(p22);
                        p22.f62853h.b(null);
                    }
                    t(c12260b5);
                    s(p22);
                    c12260b5.F(p22.f62853h.a());
                    m7 m7Var4 = this.f63500i;
                    s(m7Var4);
                    try {
                        m7Var4.f62917a.f63492a.getClassLoader().loadClass("com.google.firebase.remoteconfig.FirebaseRemoteConfig");
                    } catch (ClassNotFoundException unused) {
                        P2 p23 = this.f63496e;
                        s(p23);
                        O2 o22 = p23.f62868w;
                        if (!TextUtils.isEmpty(o22.a())) {
                            B2 b27 = this.f63497f;
                            u(b27);
                            b27.r().a("Remote config removed with active feature rollouts");
                            s(p23);
                            o22.b(null);
                        }
                    }
                    if (!TextUtils.isEmpty(L().r())) {
                        boolean g10 = g();
                        P2 p24 = this.f63496e;
                        s(p24);
                        if (!p24.z() && !this.f63495d.L()) {
                            s(p24);
                            p24.y(!g10);
                        }
                        if (g10) {
                            C12260b5 c12260b53 = this.f63504m;
                            t(c12260b53);
                            c12260b53.I();
                        }
                        C12436x6 c12436x6 = this.f63499h;
                        t(c12436x6);
                        c12436x6.f63703e.a();
                        J().q(new AtomicReference());
                        C12293f6 J11 = J();
                        s(p24);
                        J11.v(p24.f62871z.a());
                    }
                } else if (g()) {
                    m7 m7Var5 = this.f63500i;
                    s(m7Var5);
                    if (!m7Var5.M(Manifest.permission.INTERNET)) {
                        B2 b28 = this.f63497f;
                        u(b28);
                        b28.o().a("App is missing INTERNET permission");
                    }
                    s(m7Var5);
                    if (!m7Var5.M("android.permission.ACCESS_NETWORK_STATE")) {
                        B2 b29 = this.f63497f;
                        u(b29);
                        b29.o().a("App is missing ACCESS_NETWORK_STATE permission");
                    }
                    Context context = this.f63492a;
                    if (!V0.d.a(context).h() && !this.f63495d.m()) {
                        if (!m7.j0(context)) {
                            B2 b210 = this.f63497f;
                            u(b210);
                            b210.o().a("AppMeasurementReceiver not registered/enabled");
                        }
                        if (!m7.E(context, false)) {
                            B2 b211 = this.f63497f;
                            u(b211);
                            b211.o().a("AppMeasurementService not registered/enabled");
                        }
                    }
                    B2 b212 = this.f63497f;
                    u(b212);
                    b212.o().a("Uploading is not possible. App measurement disabled");
                }
                C12227x7.a();
                if (this.f63495d.H(null, C12281e2.f63171R0)) {
                    m7 m7Var6 = this.f63500i;
                    s(m7Var6);
                    if (m7Var6.G()) {
                        long max = Math.max(500L, ((((Integer) C12281e2.f63248y0.b(null)).intValue() * 1000) + new Random().nextInt(JavaModelCache.DEFAULT_CHILDREN_SIZE)) - this.f63502k.c());
                        if (max > 500) {
                            B2 b213 = this.f63497f;
                            u(b213);
                            b213.w().b("Waiting to fetch trigger URIs until some time after boot. Delay in millis", Long.valueOf(max));
                        }
                        C12260b5 c12260b54 = this.f63504m;
                        t(c12260b54);
                        c12260b54.s0(max);
                    }
                }
                P2 p25 = this.f63496e;
                s(p25);
                p25.f62861p.b(true);
            }
        }
        if (!TextUtils.isEmpty(L().r()) && (b10 == 0 || b10 == 30 || b10 == 10 || b10 == 40)) {
            C12260b5 c12260b55 = this.f63504m;
            t(c12260b55);
            c12260b55.q0(new Z3(null, null, -10), false);
        }
        a10 = null;
        if (a10 != null) {
        }
        c12260b5 = this.f63504m;
        t(c12260b5);
        c12260b5.o(w10);
        s(p22);
        int b112 = p22.u().b();
        O10 = c12342m.O("google_analytics_default_allow_ad_personalization_signals", true);
        if (O10 != w32) {
        }
        O11 = c12342m.O("google_analytics_default_allow_ad_user_data", true);
        if (O11 == w32) {
        }
        if (TextUtils.isEmpty(L().r())) {
        }
        if (TextUtils.isEmpty(L().r())) {
            h10 = A.h(bundle, 30);
            if (h10.d()) {
            }
        }
        J10 = c12342m.J("google_analytics_tcf_data_enabled");
        if (J10 != null) {
        }
        B2 b242 = this.f63497f;
        u(b242);
        b242.v().a("TCF client enabled.");
        t(c12260b5);
        c12260b5.s();
        t(c12260b5);
        c12260b5.r();
        s(p22);
        m22 = p22.f62851f;
        if (m22.a() == 0) {
        }
        t(c12260b5);
        c12260b5.f63039r.c();
        if (!m()) {
        }
        C12227x7.a();
        if (this.f63495d.H(null, C12281e2.f63171R0)) {
        }
        P2 p252 = this.f63496e;
        s(p252);
        p252.f62861p.b(true);
    }

    @Km.b
    public final C12342m w() {
        return this.f63495d;
    }

    @Km.b
    public final P2 x() {
        P2 p22 = this.f63496e;
        s(p22);
        return p22;
    }

    public final B2 y() {
        B2 b22 = this.f63497f;
        if (b22 == null || !b22.k()) {
            return null;
        }
        return b22;
    }

    @Km.b
    public final C12436x6 z() {
        C12436x6 c12436x6 = this.f63499h;
        t(c12436x6);
        return c12436x6;
    }
}
