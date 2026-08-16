package com.google.android.gms.measurement.internal;

import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.os.Bundle;
import android.text.TextUtils;
import androidx.annotation.Size;
import androidx.annotation.VisibleForTesting;
import androidx.annotation.WorkerThread;
import java.lang.reflect.InvocationTargetException;
import java.util.Arrays;
import java.util.List;
import vm.InterfaceC15866d;

public final class C12342m extends S3 {

    public Boolean f63388b;

    public String f63389c;

    public InterfaceC12334l f63390d;

    public Boolean f63391e;

    public C12342m(C12370p3 c12370p3) {
        super(c12370p3);
        this.f63390d = new InterfaceC12334l() {
            @Override
            public final String f(String str, String str2) {
                return null;
            }
        };
    }

    public static final long n() {
        return ((Long) C12281e2.f63200e.b(null)).longValue();
    }

    public static final int o() {
        return Math.max(0, ((Integer) C12281e2.f63215j.b(null)).intValue());
    }

    public static final long p() {
        return ((Integer) C12281e2.f63221l.b(null)).intValue();
    }

    public static final long q() {
        return ((Long) C12281e2.f63172S.b(null)).longValue();
    }

    public static final long r() {
        return ((Long) C12281e2.f63162N.b(null)).longValue();
    }

    public final long A() {
        this.f62917a.c();
        return 130000L;
    }

    @InterfaceC15866d({"this.isMainProcess"})
    public final boolean B() {
        if (this.f63391e == null) {
            synchronized (this) {
                try {
                    if (this.f63391e == null) {
                        C12370p3 c12370p3 = this.f62917a;
                        ApplicationInfo applicationInfo = c12370p3.d().getApplicationInfo();
                        String a10 = T0.z.a();
                        if (applicationInfo != null) {
                            String str = applicationInfo.processName;
                            boolean z10 = false;
                            if (str != null && str.equals(a10)) {
                                z10 = true;
                            }
                            this.f63391e = Boolean.valueOf(z10);
                        }
                        if (this.f63391e == null) {
                            this.f63391e = Boolean.TRUE;
                            c12370p3.a().o().a("My process not in the list of running processes");
                        }
                    }
                } finally {
                }
            }
        }
        return this.f63391e.booleanValue();
    }

    @WorkerThread
    public final String C(String str, C12273d2 c12273d2) {
        return TextUtils.isEmpty(str) ? (String) c12273d2.b(null) : (String) c12273d2.b(this.f63390d.f(str, c12273d2.a()));
    }

    @WorkerThread
    public final long D(String str, C12273d2 c12273d2) {
        if (TextUtils.isEmpty(str)) {
            return ((Long) c12273d2.b(null)).longValue();
        }
        String f10 = this.f63390d.f(str, c12273d2.a());
        if (TextUtils.isEmpty(f10)) {
            return ((Long) c12273d2.b(null)).longValue();
        }
        try {
            return ((Long) c12273d2.b(Long.valueOf(Long.parseLong(f10)))).longValue();
        } catch (NumberFormatException unused) {
            return ((Long) c12273d2.b(null)).longValue();
        }
    }

    @WorkerThread
    public final int E(String str, C12273d2 c12273d2) {
        if (TextUtils.isEmpty(str)) {
            return ((Integer) c12273d2.b(null)).intValue();
        }
        String f10 = this.f63390d.f(str, c12273d2.a());
        if (TextUtils.isEmpty(f10)) {
            return ((Integer) c12273d2.b(null)).intValue();
        }
        try {
            return ((Integer) c12273d2.b(Integer.valueOf(Integer.parseInt(f10)))).intValue();
        } catch (NumberFormatException unused) {
            return ((Integer) c12273d2.b(null)).intValue();
        }
    }

    @WorkerThread
    public final int F(String str, C12273d2 c12273d2, int i10, int i11) {
        return Math.max(Math.min(E(str, c12273d2), i11), i10);
    }

    @WorkerThread
    public final double G(String str, C12273d2 c12273d2) {
        if (TextUtils.isEmpty(str)) {
            return ((Double) c12273d2.b(null)).doubleValue();
        }
        String f10 = this.f63390d.f(str, c12273d2.a());
        if (TextUtils.isEmpty(f10)) {
            return ((Double) c12273d2.b(null)).doubleValue();
        }
        try {
            return ((Double) c12273d2.b(Double.valueOf(Double.parseDouble(f10)))).doubleValue();
        } catch (NumberFormatException unused) {
            return ((Double) c12273d2.b(null)).doubleValue();
        }
    }

    @WorkerThread
    public final boolean H(String str, C12273d2 c12273d2) {
        if (TextUtils.isEmpty(str)) {
            return ((Boolean) c12273d2.b(null)).booleanValue();
        }
        String f10 = this.f63390d.f(str, c12273d2.a());
        return TextUtils.isEmpty(f10) ? ((Boolean) c12273d2.b(null)).booleanValue() : ((Boolean) c12273d2.b(Boolean.valueOf("1".equals(f10)))).booleanValue();
    }

    @VisibleForTesting
    public final Bundle I() {
        try {
            C12370p3 c12370p3 = this.f62917a;
            if (c12370p3.d().getPackageManager() == null) {
                c12370p3.a().o().a("Failed to load metadata: PackageManager is null");
                return null;
            }
            ApplicationInfo c10 = V0.d.a(c12370p3.d()).c(c12370p3.d().getPackageName(), 128);
            if (c10 != null) {
                return c10.metaData;
            }
            c12370p3.a().o().a("Failed to load metadata: ApplicationInfo is null");
            return null;
        } catch (PackageManager.NameNotFoundException e10) {
            this.f62917a.a().o().b("Failed to load metadata: Package name not found", e10);
            return null;
        }
    }

    public final Boolean J(@Size(min = 1) String str) {
        G0.A.l(str);
        Bundle I10 = I();
        if (I10 == null) {
            this.f62917a.a().o().a("Failed to load metadata: Metadata bundle is null");
            return null;
        }
        if (I10.containsKey(str)) {
            return Boolean.valueOf(I10.getBoolean(str));
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:8:0x002e A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final List K(@Size(min = 1) String str) {
        Integer valueOf;
        G0.A.l("analytics.safelisted_events");
        Bundle I10 = I();
        if (I10 == null) {
            this.f62917a.a().o().a("Failed to load metadata: Metadata bundle is null");
        } else if (I10.containsKey("analytics.safelisted_events")) {
            valueOf = Integer.valueOf(I10.getInt("analytics.safelisted_events"));
            if (valueOf != null) {
                try {
                    String[] stringArray = this.f62917a.d().getResources().getStringArray(valueOf.intValue());
                    if (stringArray == null) {
                        return null;
                    }
                    return Arrays.asList(stringArray);
                } catch (Resources.NotFoundException e10) {
                    this.f62917a.a().o().b("Failed to load string array from metadata: resource not found", e10);
                }
            }
            return null;
        }
        valueOf = null;
        if (valueOf != null) {
        }
        return null;
    }

    public final boolean L() {
        this.f62917a.c();
        Boolean J10 = J("firebase_analytics_collection_deactivated");
        return J10 != null && J10.booleanValue();
    }

    public final boolean M() {
        Boolean J10 = J("google_analytics_adid_collection_enabled");
        return J10 == null || J10.booleanValue();
    }

    public final boolean N() {
        Boolean J10 = J("google_analytics_automatic_screen_reporting_enabled");
        return J10 == null || J10.booleanValue();
    }

    public final W3 O(String str, boolean z10) {
        Object obj;
        G0.A.l(str);
        C12370p3 c12370p3 = this.f62917a;
        Bundle I10 = I();
        if (I10 == null) {
            c12370p3.a().o().a("Failed to load metadata: Metadata bundle is null");
            obj = null;
        } else {
            obj = I10.get(str);
        }
        if (obj == null) {
            return W3.UNINITIALIZED;
        }
        if (Boolean.TRUE.equals(obj)) {
            return W3.GRANTED;
        }
        if (Boolean.FALSE.equals(obj)) {
            return W3.DENIED;
        }
        if (z10 && "eu_consent_policy".equals(obj)) {
            return W3.POLICY;
        }
        c12370p3.a().r().b("Invalid manifest metadata for", str);
        return W3.UNINITIALIZED;
    }

    public final boolean P() {
        Boolean J10 = J("google_analytics_sgtm_upload_enabled");
        if (J10 == null) {
            return false;
        }
        return J10.booleanValue();
    }

    public final void Q(String str) {
        this.f63389c = str;
    }

    public final String R() {
        return this.f63389c;
    }

    public final String i() {
        return s("debug.firebase.analytics.app", "");
    }

    public final String j() {
        return s("debug.deferred.deeplink", "");
    }

    public final boolean k(String str) {
        return "1".equals(this.f63390d.f(str, "gaia_collection_enabled"));
    }

    public final boolean l(String str) {
        return "1".equals(this.f63390d.f(str, "measurement.event_sampling_enabled"));
    }

    @WorkerThread
    public final boolean m() {
        if (this.f63388b == null) {
            Boolean J10 = J("app_measurement_lite");
            this.f63388b = J10;
            if (J10 == null) {
                this.f63388b = Boolean.FALSE;
            }
        }
        return this.f63388b.booleanValue() || !this.f62917a.G();
    }

    public final String s(String str, String str2) {
        try {
            String str3 = (String) Class.forName("android.os.SystemProperties").getMethod("get", String.class, String.class).invoke(null, str, "");
            G0.A.r(str3);
            return str3;
        } catch (ClassNotFoundException e10) {
            this.f62917a.a().o().b("Could not find SystemProperties class", e10);
            return "";
        } catch (IllegalAccessException e11) {
            this.f62917a.a().o().b("Could not access SystemProperties.get()", e11);
            return "";
        } catch (NoSuchMethodException e12) {
            this.f62917a.a().o().b("Could not find SystemProperties.get() method", e12);
            return "";
        } catch (InvocationTargetException e13) {
            this.f62917a.a().o().b("SystemProperties.get() threw an exception", e13);
            return "";
        }
    }

    public final void t(InterfaceC12334l interfaceC12334l) {
        this.f63390d = interfaceC12334l;
    }

    public final String u() {
        this.f62917a.c();
        return "FA";
    }

    public final int v() {
        return this.f62917a.C().V(201500000, true) ? 100 : 25;
    }

    public final int w(@Size(min = 1) String str) {
        return F(str, C12281e2.f63184Y, 25, 100);
    }

    public final int x(String str, boolean z10) {
        if (z10) {
            return F(str, C12281e2.f63213i0, 100, 500);
        }
        return 500;
    }

    public final int y(String str, boolean z10) {
        return Math.max(x(str, z10), 256);
    }

    public final int z(@Size(min = 1) String str) {
        return F(str, C12281e2.f63182X, 500, 2000);
    }
}
