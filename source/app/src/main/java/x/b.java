package X;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import java.util.UUID;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;

public final class b {

    public static final String f27875a = "AppVersionSignature";

    public static final ConcurrentMap<String, C.e> f27876b = new ConcurrentHashMap();

    @Nullable
    public static PackageInfo a(@NonNull Context context) {
        try {
            return context.getPackageManager().getPackageInfo(context.getPackageName(), 0);
        } catch (PackageManager.NameNotFoundException e10) {
            Log.e(f27875a, "Cannot resolve info for" + context.getPackageName(), e10);
            return null;
        }
    }

    @NonNull
    public static String b(@Nullable PackageInfo packageInfo) {
        return packageInfo != null ? String.valueOf(packageInfo.versionCode) : UUID.randomUUID().toString();
    }

    @NonNull
    public static C.e c(@NonNull Context context) {
        String packageName = context.getPackageName();
        ConcurrentMap<String, C.e> concurrentMap = f27876b;
        C.e eVar = concurrentMap.get(packageName);
        if (eVar != null) {
            return eVar;
        }
        C.e d10 = d(context);
        C.e putIfAbsent = concurrentMap.putIfAbsent(packageName, d10);
        return putIfAbsent == null ? d10 : putIfAbsent;
    }

    @NonNull
    public static C.e d(@NonNull Context context) {
        return new e(b(a(context)));
    }

    @VisibleForTesting
    public static void e() {
        f27876b.clear();
    }
}
