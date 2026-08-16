package T0;

import B0.C2327l;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.pm.PackageManager;
import android.util.Log;
import androidx.annotation.NonNull;

@C0.a
public final class E {
    @C0.a
    public static boolean a(@NonNull Context context, int i10) {
        if (!b(context, i10, "com.google.android.gms")) {
            return false;
        }
        try {
            return C2327l.a(context).b(context.getPackageManager().getPackageInfo("com.google.android.gms", 64));
        } catch (PackageManager.NameNotFoundException unused) {
            if (!Log.isLoggable("UidVerifier", 3)) {
                return false;
            }
            Log.d("UidVerifier", "Package manager can't find google play services package, defaulting to false");
            return false;
        }
    }

    @C0.a
    @TargetApi(19)
    public static boolean b(@NonNull Context context, int i10, @NonNull String str) {
        return V0.d.a(context).i(i10, str);
    }
}
