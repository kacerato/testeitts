package com.google.android.gms.internal.measurement;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.StrictMode;
import androidx.annotation.GuardedBy;
import androidx.collection.ArrayMap;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public final class C12233y4 implements InterfaceC12054e4 {

    @GuardedBy("SharedPreferencesLoader.class")
    public static final Map f62487f = new ArrayMap();

    public final SharedPreferences f62488a;

    public SharedPreferences.OnSharedPreferenceChangeListener f62489b;

    public volatile Map f62491d;

    public final Object f62490c = new Object();

    @GuardedBy("this")
    public final List f62492e = new ArrayList();

    public C12233y4(SharedPreferences sharedPreferences, Runnable runnable) {
        this.f62488a = sharedPreferences;
    }

    public static C12233y4 c(Context context, String str, Runnable runnable) {
        final C12233y4 c12233y4;
        SharedPreferences a10;
        if (W3.a() && !str.startsWith("direct_boot:") && !W3.c(context)) {
            return null;
        }
        synchronized (C12233y4.class) {
            Map map = f62487f;
            c12233y4 = (C12233y4) map.get(str);
            if (c12233y4 == null) {
                StrictMode.ThreadPolicy allowThreadDiskReads = StrictMode.allowThreadDiskReads();
                try {
                    if (str.startsWith("direct_boot:")) {
                        if (W3.a()) {
                            context = context.createDeviceProtectedStorageContext();
                        }
                        a10 = C12104k0.a(context, str.substring(12), 0, C12068g0.f62283a);
                    } else {
                        a10 = C12104k0.a(context, str, 0, C12068g0.f62283a);
                    }
                    StrictMode.setThreadPolicy(allowThreadDiskReads);
                    c12233y4 = new C12233y4(a10, runnable);
                    SharedPreferences.OnSharedPreferenceChangeListener onSharedPreferenceChangeListener = new SharedPreferences.OnSharedPreferenceChangeListener() {
                        @Override
                        public final void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str2) {
                            C12233y4.this.e(sharedPreferences, str2);
                        }
                    };
                    c12233y4.f62489b = onSharedPreferenceChangeListener;
                    c12233y4.f62488a.registerOnSharedPreferenceChangeListener(onSharedPreferenceChangeListener);
                    map.put(str, c12233y4);
                } catch (Throwable th2) {
                    StrictMode.setThreadPolicy(allowThreadDiskReads);
                    throw th2;
                }
            }
        }
        return c12233y4;
    }

    public static synchronized void d() {
        synchronized (C12233y4.class) {
            try {
                Map map = f62487f;
                for (C12233y4 c12233y4 : map.values()) {
                    c12233y4.f62488a.unregisterOnSharedPreferenceChangeListener((SharedPreferences.OnSharedPreferenceChangeListener) w2.H.E(c12233y4.f62489b));
                }
                map.clear();
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override
    public final Object a(String str) {
        Map<String, ?> map = this.f62491d;
        if (map == null) {
            synchronized (this.f62490c) {
                try {
                    map = this.f62491d;
                    if (map == null) {
                        StrictMode.ThreadPolicy allowThreadDiskReads = StrictMode.allowThreadDiskReads();
                        try {
                            Map<String, ?> all = this.f62488a.getAll();
                            this.f62491d = all;
                            StrictMode.setThreadPolicy(allowThreadDiskReads);
                            map = all;
                        } catch (Throwable th2) {
                            StrictMode.setThreadPolicy(allowThreadDiskReads);
                            throw th2;
                        }
                    }
                } finally {
                }
            }
        }
        if (map != null) {
            return map.get(str);
        }
        return null;
    }

    public final void e(SharedPreferences sharedPreferences, String str) {
        synchronized (this.f62490c) {
            this.f62491d = null;
            AbstractC12215w4.c();
        }
        synchronized (this) {
            try {
                Iterator it = this.f62492e.iterator();
                while (it.hasNext()) {
                    ((InterfaceC12027b4) it.next()).N1();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
