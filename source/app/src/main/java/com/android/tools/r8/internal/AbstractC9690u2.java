package com.android.tools.r8.internal;

public abstract class AbstractC9690u2 {

    public static final Class f52760a;

    public static final boolean f52761b;

    static {
        Class<?> cls;
        Class<?> cls2 = null;
        try {
            cls = Class.forName("libcore.io.Memory");
        } catch (Throwable unused) {
            cls = null;
        }
        f52760a = cls;
        try {
            cls2 = Class.forName("org.robolectric.Robolectric");
        } catch (Throwable unused2) {
        }
        f52761b = cls2 != null;
    }

    public static boolean a() {
        return (f52760a == null || f52761b) ? false : true;
    }
}
