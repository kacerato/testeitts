package com.google.android.gms.internal.auth;

public final class C11980r2 {

    public static final Class f61830a;

    public static final F2 f61831b;

    public static final F2 f61832c;

    public static final int f61833d = 0;

    /* JADX WARN: Unreachable blocks removed: 1, instructions: 1 */
    static {
        Class<?> cls;
        F2 f22 = null;
        try {
            cls = Class.forName("com.google.protobuf.t0");
        } catch (Throwable unused) {
            cls = null;
        }
        f61830a = cls;
        if (com.google.protobuf.u2.class != 0) {
            try {
                f22 = (F2) com.google.protobuf.u2.class.getConstructor(null).newInstance(null);
            } catch (Throwable unused2) {
            }
        }
        f61831b = f22;
        f61832c = new I2();
    }

    public static F2 a() {
        return f61831b;
    }

    public static F2 b() {
        return f61832c;
    }

    public static Object c(Object obj, int i10, int i11, Object obj2, F2 f22) {
        if (obj2 == null) {
            obj2 = f22.a(obj);
        }
        f22.d(obj2, i10, i11);
        return obj2;
    }

    public static void d(F2 f22, Object obj, Object obj2) {
        f22.f(obj, f22.c(f22.b(obj), f22.b(obj2)));
    }

    public static void e(Class cls) {
        Class cls2;
        if (!B1.class.isAssignableFrom(cls) && (cls2 = f61830a) != null && !cls2.isAssignableFrom(cls)) {
            throw new IllegalArgumentException("Message classes must extend GeneratedMessage or GeneratedMessageLite");
        }
    }

    public static boolean f(Object obj, Object obj2) {
        if (obj != obj2) {
            return obj != null && obj.equals(obj2);
        }
        return true;
    }
}
