package com.google.protobuf;

public final class C12662c0 {

    public static final String f69060a = "com.google.protobuf.ExtensionRegistry";

    public static final Class<?> f69061b = e();

    public static C12666d0 a() {
        C12666d0 c10 = c("newInstance");
        return c10 != null ? c10 : new C12666d0();
    }

    public static C12666d0 b() {
        C12666d0 c10 = c("getEmptyRegistry");
        return c10 != null ? c10 : C12666d0.f69070f;
    }

    public static final C12666d0 c(String methodName) {
        Class<?> cls = f69061b;
        if (cls == null) {
            return null;
        }
        try {
            return (C12666d0) cls.getDeclaredMethod(methodName, null).invoke(null, null);
        } catch (Exception unused) {
            return null;
        }
    }

    public static boolean d(C12666d0 registry) {
        Class<?> cls = f69061b;
        return cls != null && cls.isAssignableFrom(registry.getClass());
    }

    public static Class<?> e() {
        try {
            return Class.forName("com.google.protobuf.b0");
        } catch (ClassNotFoundException unused) {
            return null;
        }
    }
}
