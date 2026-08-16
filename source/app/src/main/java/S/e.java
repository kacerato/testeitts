package S;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.util.Log;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.List;

@Deprecated
public final class e {

    public static final String f22962b = "ManifestParser";

    public static final String f22963c = "GlideModule";

    public final Context f22964a;

    public e(Context context) {
        this.f22964a = context;
    }

    public static c b(String str) {
        try {
            Class<?> cls = Class.forName(str);
            Object obj = null;
            try {
                obj = cls.getDeclaredConstructor(null).newInstance(null);
            } catch (IllegalAccessException e10) {
                c(cls, e10);
            } catch (InstantiationException e11) {
                c(cls, e11);
            } catch (NoSuchMethodException e12) {
                c(cls, e12);
            } catch (InvocationTargetException e13) {
                c(cls, e13);
            }
            if (obj instanceof c) {
                return (c) obj;
            }
            throw new RuntimeException("Expected instanceof GlideModule, but found: " + obj);
        } catch (ClassNotFoundException e14) {
            throw new IllegalArgumentException("Unable to find GlideModule implementation", e14);
        }
    }

    public static void c(Class<?> cls, Exception exc) {
        throw new RuntimeException("Unable to instantiate GlideModule implementation for " + ((Object) cls), exc);
    }

    public List<c> a() {
        if (Log.isLoggable(f22962b, 3)) {
            Log.d(f22962b, "Loading Glide modules");
        }
        ArrayList arrayList = new ArrayList();
        try {
            ApplicationInfo applicationInfo = this.f22964a.getPackageManager().getApplicationInfo(this.f22964a.getPackageName(), 128);
            if (applicationInfo.metaData == null) {
                if (Log.isLoggable(f22962b, 3)) {
                    Log.d(f22962b, "Got null app info metadata");
                }
                return arrayList;
            }
            if (Log.isLoggable(f22962b, 2)) {
                Log.v(f22962b, "Got app info metadata: " + ((Object) applicationInfo.metaData));
            }
            for (String str : applicationInfo.metaData.keySet()) {
                if (f22963c.equals(applicationInfo.metaData.get(str))) {
                    arrayList.add(b(str));
                    if (Log.isLoggable(f22962b, 3)) {
                        Log.d(f22962b, "Loaded Glide module: " + str);
                    }
                }
            }
            if (Log.isLoggable(f22962b, 3)) {
                Log.d(f22962b, "Finished loading Glide modules");
            }
            return arrayList;
        } catch (PackageManager.NameNotFoundException e10) {
            throw new RuntimeException("Unable to find metadata to parse GlideModules", e10);
        }
    }
}
