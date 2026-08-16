package T0;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

@C0.a
public class C3035e {
    @C0.a
    public static int a(@NonNull Context context, @NonNull String str) {
        ApplicationInfo applicationInfo;
        Bundle bundle;
        PackageInfo b10 = b(context, str);
        if (b10 == null || (applicationInfo = b10.applicationInfo) == null || (bundle = applicationInfo.metaData) == null) {
            return -1;
        }
        return bundle.getInt("com.google.android.gms.version", -1);
    }

    @Nullable
    @C0.a
    public static PackageInfo b(@NonNull Context context, @NonNull String str) {
        try {
            return V0.d.a(context).f(str, 128);
        } catch (PackageManager.NameNotFoundException unused) {
            return null;
        }
    }

    @C0.a
    public static boolean c() {
        return false;
    }
}
