package i3;

import X2.c;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.Bundle;
import androidx.annotation.VisibleForTesting;
import androidx.core.content.ContextCompat;

public class C13579a {

    public static final String f91401e = "com.google.firebase.common.prefs:";

    @VisibleForTesting
    public static final String f91402f = "firebase_data_collection_default_enabled";

    public final Context f91403a;

    public final SharedPreferences f91404b;

    public final c f91405c;

    public boolean f91406d;

    public C13579a(Context context, String str, c cVar) {
        Context a10 = a(context);
        this.f91403a = a10;
        this.f91404b = a10.getSharedPreferences(f91401e + str, 0);
        this.f91405c = cVar;
        this.f91406d = c();
    }

    public static Context a(Context context) {
        return ContextCompat.createDeviceProtectedStorageContext(context);
    }

    public synchronized boolean b() {
        return this.f91406d;
    }

    public final boolean c() {
        return this.f91404b.contains(f91402f) ? this.f91404b.getBoolean(f91402f, true) : d();
    }

    public final boolean d() {
        ApplicationInfo applicationInfo;
        Bundle bundle;
        try {
            PackageManager packageManager = this.f91403a.getPackageManager();
            if (packageManager == null || (applicationInfo = packageManager.getApplicationInfo(this.f91403a.getPackageName(), 128)) == null || (bundle = applicationInfo.metaData) == null || !bundle.containsKey(f91402f)) {
                return true;
            }
            return applicationInfo.metaData.getBoolean(f91402f);
        } catch (PackageManager.NameNotFoundException unused) {
            return true;
        }
    }

    public synchronized void e(Boolean bool) {
        try {
            if (bool == null) {
                this.f91404b.edit().remove(f91402f).apply();
                f(d());
            } else {
                boolean equals = Boolean.TRUE.equals(bool);
                this.f91404b.edit().putBoolean(f91402f, equals).apply();
                f(equals);
            }
        } catch (Throwable th2) {
            throw th2;
        }
    }

    public final synchronized void f(boolean z10) {
        if (this.f91406d != z10) {
            this.f91406d = z10;
            this.f91405c.c(new X2.a<>(K2.c.class, new K2.c(z10)));
        }
    }
}
