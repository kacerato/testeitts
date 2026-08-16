package V0;

import T0.v;
import android.annotation.TargetApi;
import android.app.AppOpsManager;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.graphics.drawable.Drawable;
import android.os.Binder;
import android.os.Process;
import androidx.annotation.NonNull;
import androidx.core.util.Pair;

@C0.a
public class c {

    @NonNull
    public final Context f26427a;

    public c(@NonNull Context context) {
        this.f26427a = context;
    }

    @C0.a
    public int a(@NonNull String str) {
        return this.f26427a.checkCallingOrSelfPermission(str);
    }

    @C0.a
    public int b(@NonNull String str, @NonNull String str2) {
        return this.f26427a.getPackageManager().checkPermission(str, str2);
    }

    @NonNull
    @C0.a
    public ApplicationInfo c(@NonNull String str, int i10) throws PackageManager.NameNotFoundException {
        return this.f26427a.getPackageManager().getApplicationInfo(str, i10);
    }

    @NonNull
    @C0.a
    public CharSequence d(@NonNull String str) throws PackageManager.NameNotFoundException {
        Context context = this.f26427a;
        return context.getPackageManager().getApplicationLabel(context.getPackageManager().getApplicationInfo(str, 0));
    }

    @NonNull
    @C0.a
    public Pair<CharSequence, Drawable> e(@NonNull String str) throws PackageManager.NameNotFoundException {
        ApplicationInfo applicationInfo = this.f26427a.getPackageManager().getApplicationInfo(str, 0);
        return Pair.create(this.f26427a.getPackageManager().getApplicationLabel(applicationInfo), this.f26427a.getPackageManager().getApplicationIcon(applicationInfo));
    }

    @NonNull
    @C0.a
    public PackageInfo f(@NonNull String str, int i10) throws PackageManager.NameNotFoundException {
        return this.f26427a.getPackageManager().getPackageInfo(str, i10);
    }

    @NonNull
    @C0.a
    public String[] g(int i10) {
        return this.f26427a.getPackageManager().getPackagesForUid(i10);
    }

    @C0.a
    public boolean h() {
        String nameForUid;
        if (Binder.getCallingUid() == Process.myUid()) {
            return b.a(this.f26427a);
        }
        if (!v.n() || (nameForUid = this.f26427a.getPackageManager().getNameForUid(Binder.getCallingUid())) == null) {
            return false;
        }
        return this.f26427a.getPackageManager().isInstantApp(nameForUid);
    }

    @TargetApi(19)
    public final boolean i(int i10, @NonNull String str) {
        try {
            AppOpsManager appOpsManager = (AppOpsManager) this.f26427a.getSystemService(Context.APP_OPS_SERVICE);
            if (appOpsManager == null) {
                throw new NullPointerException("context.getSystemService(Context.APP_OPS_SERVICE) is null");
            }
            appOpsManager.checkPackage(i10, str);
            return true;
        } catch (SecurityException unused) {
            return false;
        }
    }
}
