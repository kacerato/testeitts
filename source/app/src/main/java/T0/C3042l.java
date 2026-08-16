package T0;

import B0.C2326k;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.apps.common.proguard.SideEffectFree;

@C0.a
public final class C3042l {

    @Nullable
    public static Boolean f23823a;

    @Nullable
    public static Boolean f23824b;

    @Nullable
    public static Boolean f23825c;

    @Nullable
    public static Boolean f23826d;

    @Nullable
    public static Boolean f23827e;

    @Nullable
    public static Boolean f23828f;

    @Nullable
    public static Boolean f23829g;

    @Nullable
    public static Boolean f23830h;

    @Nullable
    public static Boolean f23831i;

    @Nullable
    public static Boolean f23832j;

    @Nullable
    public static Boolean f23833k;

    @Nullable
    public static Boolean f23834l;

    @Nullable
    public static Boolean f23835m;

    @Nullable
    public static Boolean f23836n;

    @C0.a
    public static boolean a(@NonNull Context context) {
        PackageManager packageManager = context.getPackageManager();
        if (f23832j == null) {
            boolean z10 = false;
            if (v.n() && packageManager.hasSystemFeature(PackageManager.FEATURE_AUTOMOTIVE)) {
                z10 = true;
            }
            f23832j = Boolean.valueOf(z10);
        }
        return f23832j.booleanValue();
    }

    @C0.a
    public static boolean b(@NonNull Context context) {
        if (f23835m == null) {
            boolean z10 = false;
            if (v.q() && context.getPackageManager().hasSystemFeature("com.google.android.play.feature.HPE_EXPERIENCE")) {
                z10 = true;
            }
            f23835m = Boolean.valueOf(z10);
        }
        return f23835m.booleanValue();
    }

    @C0.a
    public static boolean c(@NonNull Context context) {
        if (f23825c == null) {
            boolean z10 = false;
            if (v.q() && context.getPackageManager().hasSystemFeature("android.hardware.sensor.hinge_angle")) {
                z10 = true;
            }
            f23825c = Boolean.valueOf(z10);
        }
        return f23825c.booleanValue();
    }

    @C0.a
    public static boolean d(@NonNull Context context) {
        if (f23829g == null) {
            PackageManager packageManager = context.getPackageManager();
            boolean z10 = false;
            if (packageManager.hasSystemFeature("com.google.android.feature.services_updater") && packageManager.hasSystemFeature("cn.google.services")) {
                z10 = true;
            }
            f23829g = Boolean.valueOf(z10);
        }
        return f23829g.booleanValue();
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x006c, code lost:
    
        if (n(r4) == false) goto L32;
     */
    @C0.a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static boolean e(@NonNull Context context) {
        if (f23823a == null) {
            boolean z10 = true;
            if (!c(context)) {
                if (!h(context) && !l(context) && !p(context)) {
                    if (f23831i == null) {
                        f23831i = Boolean.valueOf(context.getPackageManager().hasSystemFeature("org.chromium.arc"));
                    }
                    if (!f23831i.booleanValue() && !a(context) && !j(context)) {
                        if (f23834l == null) {
                            f23834l = Boolean.valueOf(context.getPackageManager().hasSystemFeature("com.google.android.feature.AMATI_EXPERIENCE"));
                        }
                        if (!f23834l.booleanValue()) {
                            if (!b(context)) {
                            }
                        }
                    }
                }
                z10 = false;
            }
            f23823a = Boolean.valueOf(z10);
        }
        return f23823a.booleanValue();
    }

    @C0.a
    public static boolean f(@NonNull Context context) {
        return q(context.getResources());
    }

    @C0.a
    @TargetApi(21)
    public static boolean g(@NonNull Context context) {
        return o(context);
    }

    @C0.a
    public static boolean h(@NonNull Context context) {
        return i(context.getResources());
    }

    @C0.a
    public static boolean i(@NonNull Resources resources) {
        if (resources == null) {
            return false;
        }
        if (f23824b == null) {
            f23824b = Boolean.valueOf((resources.getConfiguration().screenLayout & 15) > 3 || q(resources));
        }
        return f23824b.booleanValue();
    }

    @C0.a
    public static boolean j(@NonNull Context context) {
        PackageManager packageManager = context.getPackageManager();
        if (f23833k == null) {
            boolean z10 = true;
            if (!packageManager.hasSystemFeature("com.google.android.tv") && !packageManager.hasSystemFeature(PackageManager.FEATURE_TELEVISION) && !packageManager.hasSystemFeature(PackageManager.FEATURE_LEANBACK) && !packageManager.hasSystemFeature("com.google.android.feature.AMATI_EXPERIENCE")) {
                z10 = false;
            }
            f23833k = Boolean.valueOf(z10);
        }
        return f23833k.booleanValue();
    }

    @C0.a
    public static boolean k() {
        int i10 = C2326k.f1252a;
        return "user".equals(Build.TYPE);
    }

    @SideEffectFree
    @C0.a
    @TargetApi(20)
    public static boolean l(@NonNull Context context) {
        return r(context.getPackageManager());
    }

    @C0.a
    @TargetApi(26)
    public static boolean m(@NonNull Context context) {
        if (l(context) && !v.m()) {
            return true;
        }
        if (o(context)) {
            return !v.n() || v.q();
        }
        return false;
    }

    @C0.a
    public static boolean n(@NonNull Context context) {
        PackageManager packageManager = context.getPackageManager();
        if (f23836n == null) {
            f23836n = Boolean.valueOf(packageManager.hasSystemFeature("android.software.xr.immersive"));
        }
        return f23836n.booleanValue();
    }

    @TargetApi(21)
    public static boolean o(@NonNull Context context) {
        if (f23828f == null) {
            f23828f = Boolean.valueOf(context.getPackageManager().hasSystemFeature("cn.google"));
        }
        return f23828f.booleanValue();
    }

    public static boolean p(@NonNull Context context) {
        if (f23830h == null) {
            boolean z10 = true;
            if (!context.getPackageManager().hasSystemFeature("android.hardware.type.iot") && !context.getPackageManager().hasSystemFeature(PackageManager.FEATURE_EMBEDDED)) {
                z10 = false;
            }
            f23830h = Boolean.valueOf(z10);
        }
        return f23830h.booleanValue();
    }

    public static boolean q(@NonNull Resources resources) {
        boolean z10 = false;
        if (resources == null) {
            return false;
        }
        if (f23826d == null) {
            Configuration configuration = resources.getConfiguration();
            if ((configuration.screenLayout & 15) <= 3 && configuration.smallestScreenWidthDp >= 600) {
                z10 = true;
            }
            f23826d = Boolean.valueOf(z10);
        }
        return f23826d.booleanValue();
    }

    @SideEffectFree
    @TargetApi(20)
    public static boolean r(@NonNull PackageManager packageManager) {
        if (f23827e == null) {
            f23827e = Boolean.valueOf(packageManager.hasSystemFeature(PackageManager.FEATURE_WATCH));
        }
        return f23827e.booleanValue();
    }
}
