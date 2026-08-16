package com.google.android.gms.internal.auth;

import android.content.ContentResolver;
import android.database.Cursor;
import android.net.Uri;
import java.util.HashMap;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.regex.Pattern;

public final class C11931f0 {

    public static HashMap f61726f;

    public static Object f61731k;

    public static boolean f61732l;

    public static final Uri f61721a = Uri.parse("content://com.google.android.gsf.gservices");

    public static final Uri f61722b = Uri.parse("content://com.google.android.gsf.gservices/prefix");

    public static final Pattern f61723c = Pattern.compile("^(1|true|t|on|yes|y)$", 2);

    public static final Pattern f61724d = Pattern.compile("^(0|false|f|off|no|n)$", 2);

    public static final AtomicBoolean f61725e = new AtomicBoolean();

    public static final HashMap f61727g = new HashMap(16, 1.0f);

    public static final HashMap f61728h = new HashMap(16, 1.0f);

    public static final HashMap f61729i = new HashMap(16, 1.0f);

    public static final HashMap f61730j = new HashMap(16, 1.0f);

    public static final String[] f61733m = new String[0];

    public static String a(ContentResolver contentResolver, String str, String str2) {
        synchronized (C11931f0.class) {
            try {
                String str3 = null;
                if (f61726f == null) {
                    f61725e.set(false);
                    f61726f = new HashMap(16, 1.0f);
                    f61731k = new Object();
                    f61732l = false;
                    contentResolver.registerContentObserver(f61721a, true, new C11927e0(null));
                } else if (f61725e.getAndSet(false)) {
                    f61726f.clear();
                    f61727g.clear();
                    f61728h.clear();
                    f61729i.clear();
                    f61730j.clear();
                    f61731k = new Object();
                    f61732l = false;
                }
                Object obj = f61731k;
                if (f61726f.containsKey(str)) {
                    String str4 = (String) f61726f.get(str);
                    if (str4 != null) {
                        str3 = str4;
                    }
                    return str3;
                }
                int length = f61733m.length;
                Cursor query = contentResolver.query(f61721a, null, null, new String[]{str}, null);
                if (query == null) {
                    return null;
                }
                try {
                    if (!query.moveToFirst()) {
                        c(obj, str, null);
                        return null;
                    }
                    String string = query.getString(1);
                    if (string != null && string.equals(null)) {
                        string = null;
                    }
                    c(obj, str, string);
                    if (string != null) {
                        return string;
                    }
                    return null;
                } finally {
                    query.close();
                }
            } finally {
            }
        }
    }

    public static void c(Object obj, String str, String str2) {
        synchronized (C11931f0.class) {
            try {
                if (obj == f61731k) {
                    f61726f.put(str, str2);
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }
}
