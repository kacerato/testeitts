package G0;

import android.content.Context;
import android.content.pm.PackageManager;
import android.os.Bundle;
import android.util.Log;
import androidx.annotation.Nullable;

public final class C2604z0 {

    public static final Object f7500a = new Object();

    public static boolean f7501b;

    @Nullable
    public static String f7502c;

    public static int f7503d;

    public static int a(Context context) {
        c(context);
        return f7503d;
    }

    @Nullable
    public static String b(Context context) {
        c(context);
        return f7502c;
    }

    public static void c(Context context) {
        Bundle bundle;
        synchronized (f7500a) {
            try {
                if (f7501b) {
                    return;
                }
                f7501b = true;
                try {
                    bundle = V0.d.a(context).c(context.getPackageName(), 128).metaData;
                } catch (PackageManager.NameNotFoundException e10) {
                    Log.wtf("MetadataValueReader", "This should never happen.", e10);
                }
                if (bundle == null) {
                    return;
                }
                f7502c = bundle.getString("com.google.app.id");
                f7503d = bundle.getInt("com.google.android.gms.version");
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
