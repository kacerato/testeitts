package com.google.android.gms.internal.measurement;

import android.content.ContentProviderClient;
import android.content.ContentResolver;
import android.database.Cursor;
import android.net.Uri;
import android.os.RemoteException;
import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import java.util.HashMap;
import java.util.concurrent.atomic.AtomicBoolean;

public final class V3 implements S3 {

    public final AtomicBoolean f62136a = new AtomicBoolean();

    @Nullable
    @GuardedBy("this")
    public HashMap f62137b = null;

    @GuardedBy("this")
    public final HashMap f62138c = new HashMap(16, 1.0f);

    @GuardedBy("this")
    public final HashMap f62139d = new HashMap(16, 1.0f);

    @GuardedBy("this")
    public final HashMap f62140e = new HashMap(16, 1.0f);

    @GuardedBy("this")
    public final HashMap f62141f = new HashMap(16, 1.0f);

    @Nullable
    @GuardedBy("this")
    public Object f62142g = null;

    @GuardedBy("this")
    public boolean f62143h = false;

    @GuardedBy("this")
    public final String[] f62144i = new String[0];

    @Override
    @Nullable
    public final String a(@Nullable ContentResolver contentResolver, String str, @Nullable String str2) {
        String str3;
        if (contentResolver == null) {
            throw new IllegalStateException("ContentResolver needed with GservicesDelegateSupplier.init()");
        }
        synchronized (this) {
            try {
                String str4 = null;
                if (this.f62137b == null) {
                    this.f62136a.set(false);
                    this.f62137b = new HashMap(16, 1.0f);
                    this.f62142g = new Object();
                    contentResolver.registerContentObserver(R3.f62103a, true, new U3(this, null));
                } else if (this.f62136a.getAndSet(false)) {
                    this.f62137b.clear();
                    this.f62138c.clear();
                    this.f62139d.clear();
                    this.f62140e.clear();
                    this.f62141f.clear();
                    this.f62142g = new Object();
                    this.f62143h = false;
                }
                Object obj = this.f62142g;
                if (this.f62137b.containsKey(str)) {
                    String str5 = (String) this.f62137b.get(str);
                    if (str5 != null) {
                        str4 = str5;
                    }
                    return str4;
                }
                try {
                    Uri uri = R3.f62103a;
                    ContentProviderClient acquireUnstableContentProviderClient = contentResolver.acquireUnstableContentProviderClient(uri);
                    try {
                        if (acquireUnstableContentProviderClient == null) {
                            throw new zzjk("Unable to acquire ContentProviderClient");
                        }
                        try {
                            Cursor query = acquireUnstableContentProviderClient.query(uri, null, null, new String[]{str}, null);
                            try {
                                if (query == null) {
                                    throw new zzjk("ContentProvider query returned null cursor");
                                }
                                if (query.moveToFirst()) {
                                    str3 = query.getString(1);
                                    query.close();
                                } else {
                                    query.close();
                                    str3 = null;
                                }
                                if (str3 != null && str3.equals(null)) {
                                    str3 = null;
                                }
                                synchronized (this) {
                                    try {
                                        if (obj == this.f62142g) {
                                            this.f62137b.put(str, str3);
                                        }
                                    } finally {
                                    }
                                }
                                if (str3 != null) {
                                    return str3;
                                }
                                return null;
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
                            throw new zzjk("ContentProvider query failed", e10);
                        }
                    } finally {
                        acquireUnstableContentProviderClient.release();
                    }
                } catch (zzjk unused) {
                    return null;
                }
            } finally {
            }
        }
    }

    public final AtomicBoolean b() {
        return this.f62136a;
    }
}
