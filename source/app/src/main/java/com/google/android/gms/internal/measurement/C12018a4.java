package com.google.android.gms.internal.measurement;

import android.content.ContentProviderClient;
import android.content.ContentResolver;
import android.database.ContentObserver;
import android.database.Cursor;
import android.database.sqlite.SQLiteException;
import android.net.Uri;
import android.os.RemoteException;
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

public final class C12018a4 implements InterfaceC12054e4 {

    @GuardedBy("ConfigurationContentLoader.class")
    public static final Map f62208h = new ArrayMap();

    public static final String[] f62209i = {"key", "value"};

    public final ContentResolver f62210a;

    public final Uri f62211b;

    public final Runnable f62212c;

    public final ContentObserver f62213d;

    public volatile Map f62215f;

    public final Object f62214e = new Object();

    @GuardedBy("this")
    public final List f62216g = new ArrayList();

    public C12018a4(ContentResolver contentResolver, Uri uri, Runnable runnable) {
        w2.H.E(contentResolver);
        w2.H.E(uri);
        this.f62210a = contentResolver;
        this.f62211b = uri;
        this.f62212c = runnable;
        this.f62213d = new Y3(this, null);
    }

    public static C12018a4 c(ContentResolver contentResolver, Uri uri, Runnable runnable) {
        C12018a4 c12018a4;
        synchronized (C12018a4.class) {
            Map map = f62208h;
            c12018a4 = (C12018a4) map.get(uri);
            if (c12018a4 == null) {
                try {
                    C12018a4 c12018a42 = new C12018a4(contentResolver, uri, runnable);
                    try {
                        contentResolver.registerContentObserver(uri, false, c12018a42.f62213d);
                        map.put(uri, c12018a42);
                    } catch (SecurityException unused) {
                    }
                    c12018a4 = c12018a42;
                } catch (SecurityException unused2) {
                }
            }
        }
        return c12018a4;
    }

    public static synchronized void f() {
        synchronized (C12018a4.class) {
            try {
                Map map = f62208h;
                for (C12018a4 c12018a4 : map.values()) {
                    c12018a4.f62210a.unregisterContentObserver(c12018a4.f62213d);
                }
                map.clear();
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    @Override
    public final Object a(String str) {
        return (String) d().get(str);
    }

    public final Map d() {
        Map emptyMap;
        Map map = this.f62215f;
        if (map == null) {
            synchronized (this.f62214e) {
                map = this.f62215f;
                if (map == null) {
                    StrictMode.ThreadPolicy allowThreadDiskReads = StrictMode.allowThreadDiskReads();
                    try {
                        try {
                            emptyMap = (Map) InterfaceC12054e4.b(new InterfaceC12045d4() {
                                @Override
                                public final Object N1() {
                                    return C12018a4.this.g();
                                }
                            });
                        } finally {
                            StrictMode.setThreadPolicy(allowThreadDiskReads);
                        }
                    } catch (SQLiteException | IllegalStateException | SecurityException e10) {
                        Log.w("ConfigurationContentLdr", "Unable to query ContentProvider, using default values", e10);
                        emptyMap = Collections.emptyMap();
                    }
                    this.f62215f = emptyMap;
                    map = emptyMap;
                }
            }
        }
        return map != null ? map : Collections.emptyMap();
    }

    public final void e() {
        synchronized (this.f62214e) {
            this.f62215f = null;
            this.f62212c.run();
        }
        synchronized (this) {
            try {
                Iterator it = this.f62216g.iterator();
                while (it.hasNext()) {
                    ((InterfaceC12027b4) it.next()).N1();
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public final Map g() {
        Map emptyMap;
        Cursor query;
        Map emptyMap2;
        ContentResolver contentResolver = this.f62210a;
        Uri uri = this.f62211b;
        ContentProviderClient acquireUnstableContentProviderClient = contentResolver.acquireUnstableContentProviderClient(uri);
        try {
            if (acquireUnstableContentProviderClient == null) {
                Log.w("ConfigurationContentLdr", "Unable to acquire ContentProviderClient, using default values");
                return Collections.emptyMap();
            }
            try {
                query = acquireUnstableContentProviderClient.query(uri, f62209i, null, null, null);
                try {
                } catch (Throwable th2) {
                    if (query != null) {
                        try {
                            query.close();
                        } catch (Throwable th3) {
                            th2.addSuppressed(th3);
                        }
                    }
                    throw th2;
                }
            } catch (RemoteException e10) {
                Log.w("ConfigurationContentLdr", "ContentProvider query failed, using default values", e10);
                emptyMap = Collections.emptyMap();
            }
            if (query == null) {
                Log.w("ConfigurationContentLdr", "ContentProvider query returned null cursor, using default values");
                emptyMap = Collections.emptyMap();
                acquireUnstableContentProviderClient.release();
                return emptyMap;
            }
            int count = query.getCount();
            if (count == 0) {
                emptyMap2 = Collections.emptyMap();
            } else {
                Map arrayMap = count <= 256 ? new ArrayMap(count) : new HashMap(count, 1.0f);
                while (query.moveToNext()) {
                    arrayMap.put(query.getString(0), query.getString(1));
                }
                if (query.isAfterLast()) {
                    query.close();
                    acquireUnstableContentProviderClient.release();
                    return arrayMap;
                }
                Log.w("ConfigurationContentLdr", "Cursor read incomplete (ContentProvider dead?), using default values");
                emptyMap2 = Collections.emptyMap();
            }
            query.close();
            acquireUnstableContentProviderClient.release();
            return emptyMap2;
        } catch (Throwable th4) {
            acquireUnstableContentProviderClient.release();
            throw th4;
        }
    }
}
