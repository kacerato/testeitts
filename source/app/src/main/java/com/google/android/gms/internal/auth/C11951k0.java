package com.google.android.gms.internal.auth;

import android.content.ContentResolver;
import android.database.ContentObserver;
import android.database.Cursor;
import android.database.sqlite.SQLiteException;
import android.net.Uri;
import android.os.StrictMode;
import android.util.Log;
import androidx.annotation.GuardedBy;
import androidx.collection.ArrayMap;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

public final class C11951k0 implements InterfaceC11971p0 {

    @GuardedBy("ConfigurationContentLoader.class")
    public static final Map f61780h = new ArrayMap();

    public static final String[] f61781i = {"key", "value"};

    public final ContentResolver f61782a;

    public final Uri f61783b;

    public final Runnable f61784c;

    public final ContentObserver f61785d;

    public final Object f61786e;

    public volatile Map f61787f;

    @GuardedBy("this")
    public final List f61788g;

    public C11951k0(ContentResolver contentResolver, Uri uri, Runnable runnable) {
        C11947j0 c11947j0 = new C11947j0(this, null);
        this.f61785d = c11947j0;
        this.f61786e = new Object();
        this.f61788g = new ArrayList();
        contentResolver.getClass();
        uri.getClass();
        this.f61782a = contentResolver;
        this.f61783b = uri;
        this.f61784c = runnable;
        contentResolver.registerContentObserver(uri, false, c11947j0);
    }

    public static C11951k0 b(ContentResolver contentResolver, Uri uri, Runnable runnable) {
        C11951k0 c11951k0;
        synchronized (C11951k0.class) {
            Map map = f61780h;
            c11951k0 = (C11951k0) map.get(uri);
            if (c11951k0 == null) {
                try {
                    C11951k0 c11951k02 = new C11951k0(contentResolver, uri, runnable);
                    try {
                        map.put(uri, c11951k02);
                    } catch (SecurityException unused) {
                    }
                    c11951k0 = c11951k02;
                } catch (SecurityException unused2) {
                }
            }
        }
        return c11951k0;
    }

    public static synchronized void d() {
        synchronized (C11951k0.class) {
            try {
                for (C11951k0 c11951k0 : f61780h.values()) {
                    c11951k0.f61782a.unregisterContentObserver(c11951k0.f61785d);
                }
                f61780h.clear();
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public final Object a(String str) {
        Map map;
        Map map2;
        Map map3 = this.f61787f;
        Map map4 = map3;
        if (map3 == null) {
            synchronized (this.f61786e) {
                Map map5 = this.f61787f;
                if (map5 != null) {
                    map2 = map5;
                } else {
                    StrictMode.ThreadPolicy allowThreadDiskReads = StrictMode.allowThreadDiskReads();
                    try {
                        try {
                            map = (Map) C11963n0.a(new InterfaceC11967o0() {
                                @Override
                                public final Object N1() {
                                    return C11951k0.this.c();
                                }
                            });
                        } catch (SQLiteException | IllegalStateException | SecurityException unused) {
                            Log.e("ConfigurationContentLdr", "PhenotypeFlag unable to load ContentProvider, using default values");
                            StrictMode.setThreadPolicy(allowThreadDiskReads);
                            map = null;
                        }
                        this.f61787f = map;
                        allowThreadDiskReads = map;
                        map2 = allowThreadDiskReads;
                    } finally {
                        StrictMode.setThreadPolicy(allowThreadDiskReads);
                    }
                }
            }
            map4 = map2;
        }
        if (map4 == null) {
            map4 = Collections.emptyMap();
        }
        return (String) map4.get(str);
    }

    public final Map c() {
        Cursor query = this.f61782a.query(this.f61783b, f61781i, null, null, null);
        if (query == null) {
            return Collections.emptyMap();
        }
        try {
            int count = query.getCount();
            if (count == 0) {
                return Collections.emptyMap();
            }
            Map arrayMap = count <= 256 ? new ArrayMap(count) : new HashMap(count, 1.0f);
            while (query.moveToNext()) {
                arrayMap.put(query.getString(0), query.getString(1));
            }
            return arrayMap;
        } finally {
            query.close();
        }
    }

    public final void e() {
        synchronized (this.f61786e) {
            this.f61787f = null;
            H0.c();
        }
        synchronized (this) {
            try {
                Iterator it = this.f61788g.iterator();
                while (it.hasNext()) {
                    ((InterfaceC11955l0) it.next()).N1();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
