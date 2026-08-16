package V0;

import T0.v;
import android.content.Context;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

@C0.a
public class b {

    public static Context f26425a;

    @Nullable
    public static Boolean f26426b;

    @C0.a
    public static synchronized boolean a(@NonNull Context context) {
        Boolean bool;
        synchronized (b.class) {
            Context applicationContext = context.getApplicationContext();
            Context context2 = f26425a;
            if (context2 != null && (bool = f26426b) != null && context2 == applicationContext) {
                return bool.booleanValue();
            }
            f26426b = null;
            if (v.n()) {
                f26426b = Boolean.valueOf(applicationContext.getPackageManager().isInstantApp());
            } else {
                try {
                    context.getClassLoader().loadClass("com.google.android.instantapps.supervisor.InstantAppsRuntime");
                    f26426b = Boolean.TRUE;
                } catch (ClassNotFoundException unused) {
                    f26426b = Boolean.FALSE;
                }
            }
            f26425a = applicationContext;
            return f26426b.booleanValue();
        }
    }
}
