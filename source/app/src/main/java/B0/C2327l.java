package B0;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.Signature;
import android.util.Log;
import androidx.annotation.NonNull;
import java.util.Set;
import javax.annotation.Nullable;

@G0.F
@C0.a
public class C2327l {

    @Nullable
    public static C2327l f1263c;

    @Nullable
    public static volatile Set f1264d;

    @Nullable
    public static volatile Set f1265e;

    public final Context f1266a;

    public volatile String f1267b;

    public C2327l(@NonNull Context context) {
        this.f1266a = context.getApplicationContext();
    }

    @NonNull
    @C0.a
    public static C2327l a(@NonNull Context context) {
        G0.A.r(context);
        synchronized (C2327l.class) {
            try {
                if (f1263c == null) {
                    P.e(context);
                    f1263c = new C2327l(context);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
        return f1263c;
    }

    @Nullable
    public static final L e(PackageInfo packageInfo, L... lArr) {
        Signature[] signatureArr = packageInfo.signatures;
        if (signatureArr != null) {
            if (signatureArr.length != 1) {
                Log.w("GoogleSignatureVerifier", "Package has more than one signature.");
                return null;
            }
            M m10 = new M(packageInfo.signatures[0].toByteArray());
            for (int i10 = 0; i10 < lArr.length; i10++) {
                if (lArr[i10].equals(m10)) {
                    return lArr[i10];
                }
            }
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0032  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0047 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:23:0x0039  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final boolean f(@NonNull PackageInfo packageInfo, boolean z10) {
        PackageInfo packageInfo2;
        if (z10) {
            if (packageInfo == null) {
                packageInfo2 = null;
                if (packageInfo != null && packageInfo2.signatures != null) {
                    if ((!z10 ? e(packageInfo2, O.f1142a) : e(packageInfo2, O.f1142a[0])) == null) {
                        return true;
                    }
                }
                return false;
            }
            if ("com.android.vending".equals(packageInfo.packageName) || "com.google.android.gms".equals(packageInfo.packageName)) {
                ApplicationInfo applicationInfo = packageInfo.applicationInfo;
                z10 = (applicationInfo == null || (applicationInfo.flags & 129) == 0) ? false : true;
            }
        }
        packageInfo2 = packageInfo;
        if (packageInfo != null) {
            if ((!z10 ? e(packageInfo2, O.f1142a) : e(packageInfo2, O.f1142a[0])) == null) {
            }
        }
        return false;
    }

    @C0.a
    public boolean b(@NonNull PackageInfo packageInfo) {
        if (packageInfo == null) {
            return false;
        }
        if (f(packageInfo, false)) {
            return true;
        }
        if (f(packageInfo, true)) {
            if (C2326k.k(this.f1266a)) {
                return true;
            }
            Log.w("GoogleSignatureVerifier", "Test-keys aren't accepted on this build.");
        }
        return false;
    }

    @G0.F
    @C0.a
    public boolean c(@Nullable String str) {
        Z g10 = g(str, false, false);
        g10.e();
        return g10.f1166a;
    }

    @G0.F
    @C0.a
    public boolean d(int i10) {
        Z c10;
        int length;
        String[] packagesForUid = this.f1266a.getPackageManager().getPackagesForUid(i10);
        if (packagesForUid != null && (length = packagesForUid.length) != 0) {
            c10 = null;
            int i11 = 0;
            while (true) {
                if (i11 >= length) {
                    G0.A.r(c10);
                    break;
                }
                c10 = g(packagesForUid[i11], false, false);
                if (c10.f1166a) {
                    break;
                }
                i11++;
            }
        } else {
            c10 = Z.c("no pkgs");
        }
        c10.e();
        return c10.f1166a;
    }

    @SuppressLint({"PackageManagerGetSignatures"})
    public final Z g(@Nullable String str, boolean z10, boolean z11) {
        Z c10;
        ApplicationInfo applicationInfo;
        if (str == null) {
            return Z.c("null pkg");
        }
        if (str.equals(this.f1267b)) {
            return Z.b();
        }
        if (P.g()) {
            c10 = P.b(str, C2326k.k(this.f1266a), false, false);
        } else {
            try {
                PackageInfo packageInfo = this.f1266a.getPackageManager().getPackageInfo(str, 64);
                boolean k10 = C2326k.k(this.f1266a);
                if (packageInfo == null) {
                    c10 = Z.c("null pkg");
                } else {
                    Signature[] signatureArr = packageInfo.signatures;
                    if (signatureArr == null || signatureArr.length != 1) {
                        c10 = Z.c("single cert required");
                    } else {
                        M m10 = new M(packageInfo.signatures[0].toByteArray());
                        String str2 = packageInfo.packageName;
                        Z a10 = P.a(str2, m10, k10, false);
                        c10 = (!a10.f1166a || (applicationInfo = packageInfo.applicationInfo) == null || (applicationInfo.flags & 2) == 0 || !P.a(str2, m10, false, true).f1166a) ? a10 : Z.c("debuggable release cert app rejected");
                    }
                }
            } catch (PackageManager.NameNotFoundException e10) {
                return Z.d("no pkg ".concat(str), e10);
            }
        }
        if (c10.f1166a) {
            this.f1267b = str;
        }
        return c10;
    }
}
