package T2;

import android.app.Service;
import android.content.ComponentName;
import android.content.Context;
import android.content.pm.PackageManager;
import android.content.pm.ServiceInfo;
import android.os.Bundle;
import android.util.Log;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.google.firebase.components.ComponentRegistrar;
import com.google.firebase.components.InvalidRegistrarException;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;

public final class j<T> {

    public static final String f23997c = "ComponentDiscovery";

    public static final String f23998d = "com.google.firebase.components.ComponentRegistrar";

    public static final String f23999e = "com.google.firebase.components:";

    public final T f24000a;

    public final c<T> f24001b;

    public static class b implements c<Context> {

        public final Class<? extends Service> f24002a;

        public final Bundle b(Context context) {
            try {
                PackageManager packageManager = context.getPackageManager();
                if (packageManager == null) {
                    Log.w(j.f23997c, "Context has no PackageManager.");
                    return null;
                }
                ServiceInfo serviceInfo = packageManager.getServiceInfo(new ComponentName(context, this.f24002a), 128);
                if (serviceInfo != null) {
                    return serviceInfo.metaData;
                }
                Log.w(j.f23997c, ((Object) this.f24002a) + " has no service info.");
                return null;
            } catch (PackageManager.NameNotFoundException unused) {
                Log.w(j.f23997c, "Application info not found.");
                return null;
            }
        }

        @Override
        public List<String> a(Context context) {
            Bundle b10 = b(context);
            if (b10 == null) {
                Log.w(j.f23997c, "Could not retrieve metadata, returning empty list of registrars.");
                return Collections.emptyList();
            }
            ArrayList arrayList = new ArrayList();
            for (String str : b10.keySet()) {
                if (j.f23998d.equals(b10.get(str)) && str.startsWith(j.f23999e)) {
                    arrayList.add(str.substring(31));
                }
            }
            return arrayList;
        }

        public b(Class<? extends Service> cls) {
            this.f24002a = cls;
        }
    }

    @VisibleForTesting
    public interface c<T> {
        List<String> a(T t10);
    }

    @VisibleForTesting
    public j(T t10, c<T> cVar) {
        this.f24000a = t10;
        this.f24001b = cVar;
    }

    public static j<Context> d(Context context, Class<? extends Service> cls) {
        return new j<>(context, new b(cls));
    }

    @Nullable
    public static ComponentRegistrar e(String str) {
        try {
            Class<?> cls = Class.forName(str);
            if (ComponentRegistrar.class.isAssignableFrom(cls)) {
                return (ComponentRegistrar) cls.getDeclaredConstructor(null).newInstance(null);
            }
            throw new InvalidRegistrarException(String.format("Class %s is not an instance of %s", str, f23998d));
        } catch (ClassNotFoundException unused) {
            Log.w(f23997c, String.format("Class %s is not an found.", str));
            return null;
        } catch (IllegalAccessException e10) {
            throw new InvalidRegistrarException(String.format("Could not instantiate %s.", str), e10);
        } catch (InstantiationException e11) {
            throw new InvalidRegistrarException(String.format("Could not instantiate %s.", str), e11);
        } catch (NoSuchMethodException e12) {
            throw new InvalidRegistrarException(String.format("Could not instantiate %s", str), e12);
        } catch (InvocationTargetException e13) {
            throw new InvalidRegistrarException(String.format("Could not instantiate %s", str), e13);
        }
    }

    @Deprecated
    public List<ComponentRegistrar> b() {
        ArrayList arrayList = new ArrayList();
        Iterator<String> it = this.f24001b.a(this.f24000a).iterator();
        while (it.hasNext()) {
            try {
                ComponentRegistrar e10 = e(it.next());
                if (e10 != null) {
                    arrayList.add(e10);
                }
            } catch (InvalidRegistrarException e11) {
                Log.w(f23997c, "Invalid component registrar.", e11);
            }
        }
        return arrayList;
    }

    public List<a3.b<ComponentRegistrar>> c() {
        ArrayList arrayList = new ArrayList();
        for (final String str : this.f24001b.a(this.f24000a)) {
            arrayList.add(new a3.b() {
                @Override
                public final Object get() {
                    ComponentRegistrar e10;
                    e10 = j.e(String.this);
                    return e10;
                }
            });
        }
        return arrayList;
    }
}
