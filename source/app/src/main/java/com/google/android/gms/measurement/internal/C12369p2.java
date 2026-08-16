package com.google.android.gms.measurement.internal;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.text.TextUtils;
import androidx.annotation.WorkerThread;
import com.google.android.gms.internal.measurement.C12227x7;
import com.google.android.gms.internal.measurement.T7;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import vm.InterfaceC15866d;

public final class C12369p2 extends AbstractC12305h2 {

    public String f63472c;

    public String f63473d;

    public int f63474e;

    public String f63475f;

    public String f63476g;

    public long f63477h;

    public final long f63478i;

    public final long f63479j;

    public List f63480k;

    public String f63481l;

    public int f63482m;

    public String f63483n;

    public String f63484o;

    public long f63485p;

    public String f63486q;

    public C12369p2(C12370p3 c12370p3, long j10, long j11) {
        super(c12370p3);
        this.f63485p = 0L;
        this.f63486q = null;
        this.f63478i = j10;
        this.f63479j = j11;
    }

    @Override
    public final boolean m() {
        return true;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(15:1|(1:3)(6:59|60|(1:62)(2:77|(1:79))|63|64|(16:66|(1:68)(1:75)|69|70|5|(2:7|(2:9|(2:11|(2:13|(2:15|(2:17|(1:19)(1:52))(1:53))(1:54))(1:55))(1:56))(1:57))(1:58)|20|21|22|(1:24)(1:49)|25|(1:27)|29|(3:31|(1:33)(3:40|(3:43|(1:45)(1:46)|41)|47)|(2:35|36)(2:38|39))|48|(0)(0)))|4|5|(0)(0)|20|21|22|(0)(0)|25|(0)|29|(0)|48|(0)(0)) */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x0199, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x019a, code lost:
    
        r11.f62917a.a().o().c("Fetching Google App Id failed with exception. appId", com.google.android.gms.measurement.internal.B2.x(r1), r0);
     */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0181  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0187 A[Catch: IllegalStateException -> 0x0199, TRY_LEAVE, TryCatch #2 {IllegalStateException -> 0x0199, blocks: (B:22:0x016d, B:25:0x0183, B:27:0x0187), top: B:21:0x016d }] */
    /* JADX WARN: Removed duplicated region for block: B:31:0x01c2  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x01f7  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x0202  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0182  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0157  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x00c7  */
    @Override
    @InterfaceC15866d({"appId", "appStore", "appName", "gmpAppId", "gaAppId"})
    @WorkerThread
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void n() {
        String str;
        String str2;
        PackageInfo packageInfo;
        int h10;
        List K10;
        String a10;
        C12370p3 c12370p3 = this.f62917a;
        c12370p3.a().w().c("sdkVersion bundled with app, dynamiteVersion", Long.valueOf(this.f63479j), Long.valueOf(this.f63478i));
        String packageName = c12370p3.d().getPackageName();
        PackageManager packageManager = c12370p3.d().getPackageManager();
        String str3 = "";
        int i10 = Integer.MIN_VALUE;
        String str4 = "Unknown";
        String str5 = "unknown";
        if (packageManager == null) {
            c12370p3.a().o().b("PackageManager is null, app identity information might be inaccurate. appId", B2.x(packageName));
        } else {
            try {
                str5 = packageManager.getInstallerPackageName(packageName);
            } catch (IllegalArgumentException unused) {
                this.f62917a.a().o().b("Error retrieving app installer package name. appId", B2.x(packageName));
            }
            if (str5 == null) {
                str5 = "manual_install";
            } else if ("com.android.vending".equals(str5)) {
                str5 = "";
            }
            try {
                packageInfo = packageManager.getPackageInfo(this.f62917a.d().getPackageName(), 0);
            } catch (PackageManager.NameNotFoundException unused2) {
                str = "Unknown";
            }
            if (packageInfo != null) {
                CharSequence applicationLabel = packageManager.getApplicationLabel(packageInfo.applicationInfo);
                str2 = !TextUtils.isEmpty(applicationLabel) ? applicationLabel.toString() : "Unknown";
                try {
                    str4 = packageInfo.versionName;
                    i10 = packageInfo.versionCode;
                } catch (PackageManager.NameNotFoundException unused3) {
                    str = str4;
                    str4 = str2;
                    this.f62917a.a().o().c("Error retrieving package info. appId, appName", B2.x(packageName), str4);
                    str2 = str4;
                    str4 = str;
                    this.f63472c = packageName;
                    this.f63475f = str5;
                    this.f63473d = str4;
                    this.f63474e = i10;
                    this.f63476g = str2;
                    this.f63477h = 0L;
                    C12370p3 c12370p32 = this.f62917a;
                    h10 = c12370p32.h();
                    if (h10 == 0) {
                    }
                    this.f63483n = "";
                    C12370p3 c12370p33 = this.f62917a;
                    c12370p33.c();
                    a10 = C12340l5.a(c12370p33.d(), K2.p.f10763i, c12370p32.H());
                    if (!TextUtils.isEmpty(a10)) {
                    }
                    this.f63483n = str3;
                    if (h10 == 0) {
                    }
                    this.f63480k = null;
                    C12370p3 c12370p34 = this.f62917a;
                    c12370p34.c();
                    K10 = c12370p34.w().K("analytics.safelisted_events");
                    if (K10 != null) {
                    }
                    this.f63480k = K10;
                    if (packageManager == null) {
                    }
                }
                this.f63472c = packageName;
                this.f63475f = str5;
                this.f63473d = str4;
                this.f63474e = i10;
                this.f63476g = str2;
                this.f63477h = 0L;
                C12370p3 c12370p322 = this.f62917a;
                h10 = c12370p322.h();
                if (h10 == 0) {
                    this.f62917a.a().w().a("App measurement collection enabled");
                } else if (h10 == 1) {
                    this.f62917a.a().u().a("App measurement deactivated via the manifest");
                } else if (h10 == 3) {
                    this.f62917a.a().u().a("App measurement disabled by setAnalyticsCollectionEnabled(false)");
                } else if (h10 == 4) {
                    this.f62917a.a().u().a("App measurement disabled via the manifest");
                } else if (h10 == 6) {
                    this.f62917a.a().t().a("App measurement deactivated via resources. This method is being deprecated. Please refer to https://firebase.google.com/support/guides/disable-analytics");
                } else if (h10 == 7) {
                    this.f62917a.a().u().a("App measurement disabled via the global data collection setting");
                } else if (h10 != 8) {
                    C12370p3 c12370p35 = this.f62917a;
                    c12370p35.a().u().a("App measurement disabled");
                    c12370p35.a().p().a("Invalid scion state in identity");
                } else {
                    this.f62917a.a().u().a("App measurement disabled due to denied storage consent");
                }
                this.f63483n = "";
                C12370p3 c12370p332 = this.f62917a;
                c12370p332.c();
                a10 = C12340l5.a(c12370p332.d(), K2.p.f10763i, c12370p322.H());
                if (!TextUtils.isEmpty(a10)) {
                    str3 = a10;
                }
                this.f63483n = str3;
                if (h10 == 0) {
                    c12370p332.a().w().c("App measurement enabled for app package, google app id", this.f63472c, this.f63483n);
                }
                this.f63480k = null;
                C12370p3 c12370p342 = this.f62917a;
                c12370p342.c();
                K10 = c12370p342.w().K("analytics.safelisted_events");
                if (K10 != null) {
                    if (K10.isEmpty()) {
                        c12370p342.a().t().a("Safelisted event list is empty. Ignoring");
                    } else {
                        Iterator it = K10.iterator();
                        while (it.hasNext()) {
                            if (!c12370p342.C().u0("safelisted event", (String) it.next())) {
                                break;
                            }
                        }
                    }
                    if (packageManager == null) {
                        this.f63482m = V0.b.a(c12370p342.d()) ? 1 : 0;
                        return;
                    } else {
                        this.f63482m = 0;
                        return;
                    }
                }
                this.f63480k = K10;
                if (packageManager == null) {
                }
            }
        }
        str2 = "Unknown";
        this.f63472c = packageName;
        this.f63475f = str5;
        this.f63473d = str4;
        this.f63474e = i10;
        this.f63476g = str2;
        this.f63477h = 0L;
        C12370p3 c12370p3222 = this.f62917a;
        h10 = c12370p3222.h();
        if (h10 == 0) {
        }
        this.f63483n = "";
        C12370p3 c12370p3322 = this.f62917a;
        c12370p3322.c();
        a10 = C12340l5.a(c12370p3322.d(), K2.p.f10763i, c12370p3222.H());
        if (!TextUtils.isEmpty(a10)) {
        }
        this.f63483n = str3;
        if (h10 == 0) {
        }
        this.f63480k = null;
        C12370p3 c12370p3422 = this.f62917a;
        c12370p3422.c();
        K10 = c12370p3422.w().K("analytics.safelisted_events");
        if (K10 != null) {
        }
        this.f63480k = K10;
        if (packageManager == null) {
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:29:0x0175  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x01b2  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x01cd  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x01eb  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0249  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x02a2  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x02bc  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x02c7  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x02ad  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x024d A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:67:0x01f3  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x01b4  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x017a  */
    @WorkerThread
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final o7 o(String str) {
        Class<?> loadClass;
        Object invoke;
        String str2;
        C12370p3 c12370p3;
        long j10;
        long j11;
        List list;
        String str3;
        C12370p3 c12370p32;
        int i10;
        int i11;
        long j12;
        ApplicationInfo c10;
        long j13;
        h();
        String q10 = q();
        String r10 = r();
        j();
        String str4 = this.f63473d;
        j();
        long j14 = this.f63474e;
        j();
        G0.A.r(this.f63475f);
        String str5 = this.f63475f;
        C12370p3 c12370p33 = this.f62917a;
        c12370p33.w().A();
        j();
        h();
        long j15 = this.f63477h;
        if (j15 == 0) {
            m7 C10 = this.f62917a.C();
            Context d10 = c12370p33.d();
            String packageName = c12370p33.d().getPackageName();
            C10.h();
            G0.A.r(d10);
            G0.A.l(packageName);
            PackageManager packageManager = d10.getPackageManager();
            MessageDigest C11 = m7.C();
            if (C11 == null) {
                C10.f62917a.a().o().a("Could not get MD5 instance");
                j15 = -1;
            } else {
                if (packageManager != null) {
                    try {
                        if (C10.S(d10, packageName)) {
                            j13 = 0;
                        } else {
                            V0.c a10 = V0.d.a(d10);
                            C12370p3 c12370p34 = C10.f62917a;
                            Signature[] signatureArr = a10.f(c12370p34.d().getPackageName(), 64).signatures;
                            if (signatureArr == null || signatureArr.length <= 0) {
                                c12370p34.a().r().a("Could not get signatures");
                                j13 = -1;
                            } else {
                                j13 = m7.D(C11.digest(signatureArr[0].toByteArray()));
                            }
                        }
                        j15 = j13;
                    } catch (PackageManager.NameNotFoundException e10) {
                        C10.f62917a.a().o().b("Package name not found", e10);
                    }
                }
                j15 = 0;
            }
            this.f63477h = j15;
        }
        long j16 = j15;
        C12370p3 c12370p35 = this.f62917a;
        boolean g10 = c12370p35.g();
        boolean z10 = !c12370p35.x().f62864s;
        h();
        if (c12370p35.g()) {
            T7.a();
            if (c12370p35.w().H(null, C12281e2.f63153I0)) {
                this.f62917a.a().w().a("Disabled IID for tests.");
            } else {
                try {
                    loadClass = c12370p35.d().getClassLoader().loadClass("com.google.firebase.analytics.FirebaseAnalytics");
                } catch (ClassNotFoundException unused) {
                }
                if (loadClass != null) {
                    try {
                        invoke = loadClass.getDeclaredMethod("getInstance", Context.class).invoke(null, this.f62917a.d());
                    } catch (Exception unused2) {
                        this.f62917a.a().s().a("Failed to obtain Firebase Analytics instance");
                    }
                    if (invoke != null) {
                        try {
                            str2 = (String) loadClass.getDeclaredMethod("getFirebaseInstanceId", null).invoke(invoke, null);
                        } catch (Exception unused3) {
                            this.f62917a.a().t().a("Failed to retrieve Firebase Instance Id");
                        }
                        C12370p3 c12370p36 = this.f62917a;
                        long a11 = c12370p36.x().f62851f.a();
                        long min = a11 != 0 ? c12370p36.f63491D : Math.min(c12370p36.f63491D, a11);
                        j();
                        int i12 = this.f63482m;
                        c12370p3 = this.f62917a;
                        boolean M10 = c12370p3.w().M();
                        P2 x10 = c12370p3.x();
                        x10.h();
                        boolean z11 = x10.p().getBoolean("deferred_analytics_collection", false);
                        boolean z12 = c12370p3.w().O("google_analytics_default_allow_ad_personalization_signals", true) == W3.GRANTED;
                        long j17 = this.f63478i;
                        Boolean valueOf = Boolean.valueOf(z12);
                        List list2 = this.f63480k;
                        String l10 = c12370p3.x().w().l();
                        if (this.f63481l == null) {
                            this.f63481l = c12370p3.C().l0();
                        }
                        String str6 = this.f63481l;
                        if (c12370p3.x().w().o(Y3.ANALYTICS_STORAGE)) {
                            j11 = j17;
                            j10 = 0;
                            str3 = null;
                            list = list2;
                        } else {
                            h();
                            j10 = 0;
                            if (this.f63485p == 0) {
                                j11 = j17;
                                list = list2;
                            } else {
                                j11 = j17;
                                list = list2;
                                long a12 = c12370p3.e().a() - this.f63485p;
                                if (this.f63484o != null && a12 > 86400000 && this.f63486q == null) {
                                    p();
                                }
                            }
                            if (this.f63484o == null) {
                                p();
                            }
                            str3 = this.f63484o;
                        }
                        boolean P10 = c12370p3.w().P();
                        m7 C12 = c12370p3.C();
                        String q11 = q();
                        c12370p32 = C12.f62917a;
                        if (c12370p32.d().getPackageManager() != null) {
                            j12 = j10;
                            i10 = 0;
                        } else {
                            try {
                                i10 = 0;
                                try {
                                    c10 = V0.d.a(c12370p32.d()).c(q11, 0);
                                } catch (PackageManager.NameNotFoundException unused4) {
                                    C12370p3 c12370p37 = C12.f62917a;
                                    c12370p37.c();
                                    c12370p37.a().u().b("PackageManager failed to find running app: app_id", q11);
                                    i11 = i10;
                                    j12 = i11;
                                    C12370p3 c12370p38 = this.f62917a;
                                    int b10 = c12370p38.x().w().b();
                                    String e11 = c12370p38.x().u().e();
                                    C12227x7.a();
                                    C12342m w10 = c12370p38.w();
                                    C12273d2 c12273d2 = C12281e2.f63171R0;
                                    if (w10.H(null, c12273d2)) {
                                    }
                                    C12227x7.a();
                                    if (c12370p38.w().H(null, c12273d2)) {
                                    }
                                    String R10 = c12370p38.w().R();
                                    String b11 = new C12288f1(c12370p38.w().O("google_analytics_default_allow_ad_personalization_signals", true)).b();
                                    C12370p3 c12370p39 = this.f62917a;
                                    return new o7(q10, r10, str4, j14, str5, 130000L, j16, str, g10, z10, str2, min, i12, M10, z11, valueOf, j11, list, l10, str6, str3, P10, j12, b10, e11, r46, r47, R10, b11, c12370p39.f63491D, c12370p39.N().q().N1());
                                }
                            } catch (PackageManager.NameNotFoundException unused5) {
                                i10 = 0;
                            }
                            if (c10 != null) {
                                i11 = c10.targetSdkVersion;
                                j12 = i11;
                            }
                            i11 = i10;
                            j12 = i11;
                        }
                        C12370p3 c12370p382 = this.f62917a;
                        int b102 = c12370p382.x().w().b();
                        String e112 = c12370p382.x().u().e();
                        C12227x7.a();
                        C12342m w102 = c12370p382.w();
                        C12273d2 c12273d22 = C12281e2.f63171R0;
                        int I10 = w102.H(null, c12273d22) ? c12370p382.C().I() : i10;
                        C12227x7.a();
                        long J10 = c12370p382.w().H(null, c12273d22) ? c12370p382.C().J() : j10;
                        String R102 = c12370p382.w().R();
                        String b112 = new C12288f1(c12370p382.w().O("google_analytics_default_allow_ad_personalization_signals", true)).b();
                        C12370p3 c12370p392 = this.f62917a;
                        return new o7(q10, r10, str4, j14, str5, 130000L, j16, str, g10, z10, str2, min, i12, M10, z11, valueOf, j11, list, l10, str6, str3, P10, j12, b102, e112, I10, J10, R102, b112, c12370p392.f63491D, c12370p392.N().q().N1());
                    }
                }
            }
        }
        str2 = null;
        C12370p3 c12370p362 = this.f62917a;
        long a112 = c12370p362.x().f62851f.a();
        if (a112 != 0) {
        }
        j();
        int i122 = this.f63482m;
        c12370p3 = this.f62917a;
        boolean M102 = c12370p3.w().M();
        P2 x102 = c12370p3.x();
        x102.h();
        boolean z112 = x102.p().getBoolean("deferred_analytics_collection", false);
        if (c12370p3.w().O("google_analytics_default_allow_ad_personalization_signals", true) == W3.GRANTED) {
        }
        long j172 = this.f63478i;
        Boolean valueOf2 = Boolean.valueOf(z12);
        List list22 = this.f63480k;
        String l102 = c12370p3.x().w().l();
        if (this.f63481l == null) {
        }
        String str62 = this.f63481l;
        if (c12370p3.x().w().o(Y3.ANALYTICS_STORAGE)) {
        }
        boolean P102 = c12370p3.w().P();
        m7 C122 = c12370p3.C();
        String q112 = q();
        c12370p32 = C122.f62917a;
        if (c12370p32.d().getPackageManager() != null) {
        }
        C12370p3 c12370p3822 = this.f62917a;
        int b1022 = c12370p3822.x().w().b();
        String e1122 = c12370p3822.x().u().e();
        C12227x7.a();
        C12342m w1022 = c12370p3822.w();
        C12273d2 c12273d222 = C12281e2.f63171R0;
        if (w1022.H(null, c12273d222)) {
        }
        C12227x7.a();
        if (c12370p3822.w().H(null, c12273d222)) {
        }
        String R1022 = c12370p3822.w().R();
        String b1122 = new C12288f1(c12370p3822.w().O("google_analytics_default_allow_ad_personalization_signals", true)).b();
        C12370p3 c12370p3922 = this.f62917a;
        return new o7(q10, r10, str4, j14, str5, 130000L, j16, str, g10, z10, str2, min, i122, M102, z112, valueOf2, j11, list, l102, str62, str3, P102, j12, b1022, e1122, I10, J10, R1022, b1122, c12370p3922.f63491D, c12370p3922.N().q().N1());
    }

    @WorkerThread
    public final void p() {
        String format;
        h();
        C12370p3 c12370p3 = this.f62917a;
        if (c12370p3.x().w().o(Y3.ANALYTICS_STORAGE)) {
            byte[] bArr = new byte[16];
            c12370p3.C().q0().nextBytes(bArr);
            format = String.format(Locale.US, "%032x", new BigInteger(1, bArr));
        } else {
            c12370p3.a().v().a("Analytics Storage consent is not granted");
            format = null;
        }
        c12370p3.a().v().a(String.format("Resetting session stitching token to %s", format == null ? "null" : "not null"));
        this.f63484o = format;
        this.f63485p = c12370p3.e().a();
    }

    @WorkerThread
    public final String q() {
        j();
        G0.A.r(this.f63472c);
        return this.f63472c;
    }

    @WorkerThread
    public final String r() {
        h();
        j();
        G0.A.r(this.f63483n);
        return this.f63483n;
    }

    @WorkerThread
    public final String s() {
        j();
        G0.A.r(this.f63476g);
        return this.f63476g;
    }

    @WorkerThread
    public final int t() {
        j();
        return this.f63474e;
    }

    public final long u() {
        return this.f63479j;
    }

    @WorkerThread
    public final int v() {
        j();
        return this.f63482m;
    }

    @WorkerThread
    public final List w() {
        return this.f63480k;
    }

    public final boolean x(String str) {
        String str2 = this.f63486q;
        boolean z10 = false;
        if (str2 != null && !str2.equals(str)) {
            z10 = true;
        }
        this.f63486q = str;
        return z10;
    }
}
