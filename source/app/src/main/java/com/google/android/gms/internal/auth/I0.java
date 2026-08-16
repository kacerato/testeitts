package com.google.android.gms.internal.auth;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.StrictMode;
import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import androidx.collection.ArrayMap;
import java.util.Iterator;
import java.util.Map;

public final class I0 implements InterfaceC11971p0 {

    @GuardedBy("SharedPreferencesLoader.class")
    public static final Map f61625c = new ArrayMap();

    public final SharedPreferences f61626a;

    public final SharedPreferences.OnSharedPreferenceChangeListener f61627b;

    @Nullable
    public static I0 b(Context context, String str, Runnable runnable) {
        I0 i02;
        if (C11935g0.b()) {
            throw null;
        }
        synchronized (I0.class) {
            try {
                i02 = (I0) f61625c.get(null);
                if (i02 == null) {
                    StrictMode.ThreadPolicy allowThreadDiskReads = StrictMode.allowThreadDiskReads();
                    try {
                        throw null;
                    } catch (Throwable th2) {
                        StrictMode.setThreadPolicy(allowThreadDiskReads);
                        throw th2;
                    }
                }
            } catch (Throwable th3) {
                throw th3;
            }
        }
        return i02;
    }

    public static synchronized void c() {
        synchronized (I0.class) {
            Map map = f61625c;
            Iterator it = map.values().iterator();
            if (it.hasNext()) {
                SharedPreferences sharedPreferences = ((I0) it.next()).f61626a;
                throw null;
            }
            map.clear();
        }
    }

    @Override
    @Nullable
    public final Object a(String str) {
        throw null;
    }
}
