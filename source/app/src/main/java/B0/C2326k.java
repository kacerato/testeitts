package B0;

import B0.r;
import G0.C2604z0;
import G0.InterfaceC2586q;
import T0.C3035e;
import T0.C3042l;
import android.annotation.TargetApi;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageInstaller;
import android.content.pm.PackageManager;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.UserManager;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.common.GooglePlayServicesIncorrectManifestValueException;
import com.google.android.gms.common.GooglePlayServicesMissingManifestValueException;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesRepairableException;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicBoolean;

@G0.F
@C0.a
public class C2326k {

    @C0.a
    @Deprecated
    public static final int f1252a = 12451000;

    @NonNull
    @C0.a
    @Deprecated
    public static final String f1253b = "com.google.android.gms";

    @NonNull
    @C0.a
    public static final String f1254c = "com.google.android.play.games";

    @NonNull
    @C0.a
    public static final String f1255d = "com.google.android.gsf";

    @NonNull
    @C0.a
    public static final String f1256e = "com.android.vending";

    @C0.a
    public static final int f1257f = 39789;

    @C0.a
    public static final int f1258g = 10436;

    public static boolean f1260i = false;

    @VisibleForTesting
    public static boolean f1261j = false;

    @C0.a
    @Deprecated
    public static final AtomicBoolean f1259h = new AtomicBoolean();

    public static final AtomicBoolean f1262k = new AtomicBoolean();

    @C0.a
    public C2326k() {
    }

    @C0.a
    @Deprecated
    public static void a(@NonNull Context context) {
        if (f1259h.getAndSet(true)) {
            return;
        }
        try {
            NotificationManager notificationManager = (NotificationManager) context.getSystemService(Context.NOTIFICATION_SERVICE);
            if (notificationManager != null) {
                notificationManager.cancel(f1258g);
            }
        } catch (SecurityException e10) {
            Log.d("GooglePlayServicesUtil", "Suppressing Security Exception %s in cancelAvailabilityErrorNotifications.", e10);
        }
    }

    @G0.F
    @C0.a
    public static void b() {
        f1262k.set(true);
    }

    @C0.a
    @Deprecated
    public static void c(@NonNull Context context, int i10) throws GooglePlayServicesRepairableException, GooglePlayServicesNotAvailableException {
        int k10 = C2324i.i().k(context, i10);
        if (k10 != 0) {
            Intent e10 = C2324i.i().e(context, k10, com.itsmagic.engine.Engines.Engine.Animation.a.f72598f);
            Log.e("GooglePlayServicesUtil", "GooglePlayServices not available due to error " + k10);
            if (e10 != null) {
                throw new GooglePlayServicesRepairableException(k10, "Google Play Services not available", e10);
            }
            throw new GooglePlayServicesNotAvailableException(k10);
        }
    }

    @G0.F
    @C0.a
    @Deprecated
    public static int d(@NonNull Context context) {
        try {
            return context.getPackageManager().getPackageInfo("com.google.android.gms", 0).versionCode;
        } catch (PackageManager.NameNotFoundException unused) {
            Log.w("GooglePlayServicesUtil", "Google Play services is missing.");
            return 0;
        }
    }

    @G0.F
    @C0.a
    @Deprecated
    public static int e(@NonNull Context context) {
        G0.A.x(true);
        return C3035e.a(context, context.getPackageName());
    }

    @Nullable
    @C0.a
    @Deprecated
    public static PendingIntent f(int i10, @NonNull Context context, int i11) {
        return C2324i.i().f(context, i10, i11);
    }

    @NonNull
    @C0.a
    @Deprecated
    public static String g(int i10) {
        return C2318c.w0(i10);
    }

    @G0.F
    @Deprecated
    @Nullable
    @C0.a
    public static Intent h(int i10) {
        return C2324i.i().e(null, i10, null);
    }

    @Nullable
    @C0.a
    public static Context i(@NonNull Context context) {
        try {
            return context.createPackageContext("com.google.android.gms", 3);
        } catch (PackageManager.NameNotFoundException unused) {
            return null;
        }
    }

    @Nullable
    @C0.a
    public static Resources j(@NonNull Context context) {
        try {
            return context.getPackageManager().getResourcesForApplication("com.google.android.gms");
        } catch (PackageManager.NameNotFoundException unused) {
            return null;
        }
    }

    @G0.F
    @C0.a
    public static boolean k(@NonNull Context context) {
        try {
            if (!f1261j) {
                try {
                    PackageInfo f10 = V0.d.a(context).f("com.google.android.gms", 64);
                    C2327l.a(context);
                    if (f10 == null || C2327l.f(f10, false) || !C2327l.f(f10, true)) {
                        f1260i = false;
                    } else {
                        f1260i = true;
                    }
                    f1261j = true;
                } catch (PackageManager.NameNotFoundException e10) {
                    Log.w("GooglePlayServicesUtil", "Cannot find Google Play services package name.", e10);
                    f1261j = true;
                }
            }
            return f1260i || !C3042l.k();
        } catch (Throwable th2) {
            f1261j = true;
            throw th2;
        }
    }

    @C0.a
    @InterfaceC2586q
    @Deprecated
    public static int l(@NonNull Context context) {
        return m(context, f1252a);
    }

    @C0.a
    @Deprecated
    public static int m(@NonNull Context context, int i10) {
        PackageInfo packageInfo;
        try {
            context.getResources().getString(r.b.f1276a);
        } catch (Throwable unused) {
            Log.e("GooglePlayServicesUtil", "The Google Play services resources were not found. Check your project configuration to ensure that the resources are included.");
        }
        if (!"com.google.android.gms".equals(context.getPackageName()) && !f1262k.get()) {
            int a10 = C2604z0.a(context);
            if (a10 == 0) {
                throw new GooglePlayServicesMissingManifestValueException();
            }
            if (a10 != f1252a) {
                throw new GooglePlayServicesIncorrectManifestValueException(a10);
            }
        }
        boolean z10 = (C3042l.m(context) || C3042l.p(context)) ? false : true;
        G0.A.a(i10 >= 0);
        String packageName = context.getPackageName();
        PackageManager packageManager = context.getPackageManager();
        if (z10) {
            try {
                packageInfo = packageManager.getPackageInfo("com.android.vending", 8256);
            } catch (PackageManager.NameNotFoundException unused2) {
                Log.w("GooglePlayServicesUtil", String.valueOf(packageName).concat(" requires the Google Play Store, but it is missing."));
            }
        } else {
            packageInfo = null;
        }
        try {
            PackageInfo packageInfo2 = packageManager.getPackageInfo("com.google.android.gms", 64);
            C2327l.a(context);
            if (C2327l.f(packageInfo2, true)) {
                if (z10) {
                    G0.A.r(packageInfo);
                    if (!C2327l.f(packageInfo, true)) {
                        Log.w("GooglePlayServicesUtil", String.valueOf(packageName).concat(" requires Google Play Store, but its signature is invalid."));
                    }
                }
                if (!z10 || packageInfo == null || packageInfo.signatures[0].equals(packageInfo2.signatures[0])) {
                    if (T0.G.a(packageInfo2.versionCode) >= T0.G.a(i10)) {
                        ApplicationInfo applicationInfo = packageInfo2.applicationInfo;
                        if (applicationInfo == null) {
                            try {
                                applicationInfo = packageManager.getApplicationInfo("com.google.android.gms", 0);
                            } catch (PackageManager.NameNotFoundException e10) {
                                Log.wtf("GooglePlayServicesUtil", String.valueOf(packageName).concat(" requires Google Play services, but they're missing when getting application info."), e10);
                                return 1;
                            }
                        }
                        return !applicationInfo.enabled ? 3 : 0;
                    }
                    Log.w("GooglePlayServicesUtil", "Google Play services out of date for " + packageName + ".  Requires " + i10 + " but found " + packageInfo2.versionCode);
                    return 2;
                }
                Log.w("GooglePlayServicesUtil", String.valueOf(packageName).concat(" requires Google Play Store, but its signature doesn't match that of Google Play services."));
            } else {
                Log.w("GooglePlayServicesUtil", String.valueOf(packageName).concat(" requires Google Play services, but their signature is invalid."));
            }
            return 9;
        } catch (PackageManager.NameNotFoundException unused3) {
            Log.w("GooglePlayServicesUtil", String.valueOf(packageName).concat(" requires Google Play services, but they are missing."));
            return 1;
        }
    }

    @C0.a
    @Deprecated
    public static boolean n(@NonNull Context context, int i10) {
        return T0.E.a(context, i10);
    }

    @G0.F
    @C0.a
    @Deprecated
    public static boolean o(@NonNull Context context, int i10) {
        if (i10 == 18) {
            return true;
        }
        if (i10 == 1) {
            return u(context, "com.google.android.gms");
        }
        return false;
    }

    @G0.F
    @C0.a
    @Deprecated
    public static boolean p(@NonNull Context context, int i10) {
        if (i10 == 9) {
            return u(context, "com.android.vending");
        }
        return false;
    }

    @C0.a
    @TargetApi(18)
    public static boolean q(@NonNull Context context) {
        Object systemService = context.getSystemService("user");
        G0.A.r(systemService);
        Bundle applicationRestrictions = ((UserManager) systemService).getApplicationRestrictions(context.getPackageName());
        return applicationRestrictions != null && "true".equals(applicationRestrictions.getString("restricted_profile"));
    }

    @G0.F
    @C0.a
    @Deprecated
    public static boolean r(@NonNull Context context) {
        return C3042l.g(context);
    }

    @C0.a
    @Deprecated
    public static boolean s(int i10) {
        return i10 == 1 || i10 == 2 || i10 == 3 || i10 == 9;
    }

    @C0.a
    @TargetApi(19)
    @Deprecated
    public static boolean t(@NonNull Context context, int i10, @NonNull String str) {
        return T0.E.b(context, i10, str);
    }

    @TargetApi(21)
    public static boolean u(Context context, String str) {
        ApplicationInfo applicationInfo;
        boolean equals = str.equals("com.google.android.gms");
        try {
            Iterator<PackageInstaller.SessionInfo> it = context.getPackageManager().getPackageInstaller().getAllSessions().iterator();
            while (it.hasNext()) {
                if (str.equals(it.next().getAppPackageName())) {
                    return true;
                }
            }
            applicationInfo = context.getPackageManager().getApplicationInfo(str, 8192);
        } catch (PackageManager.NameNotFoundException | Exception unused) {
        }
        return equals ? applicationInfo.enabled : applicationInfo.enabled && !q(context);
    }
}
