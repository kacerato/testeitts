package com.google.protobuf;

public final class C12671f {

    public static boolean f69092a;

    public static final Class<?> f69093b = a("libcore.io.Memory");

    public static final boolean f69094c;

    static {
        f69094c = (f69092a || a("org.robolectric.Robolectric") == null) ? false : true;
    }

    public static <T> Class<T> a(String str) {
        try {
            return (Class<T>) Class.forName(str);
        } catch (Throwable unused) {
            return null;
        }
    }

    public static Class<?> b() {
        return f69093b;
    }

    public static boolean c() {
        return f69092a || !(f69093b == null || f69094c);
    }
}
