package com.google.android.gms.internal.auth;

public final class C12007y1 implements InterfaceC11917b2 {

    public static final C12007y1 f61874a = new C12007y1();

    public static C12007y1 c() {
        return f61874a;
    }

    @Override
    public final InterfaceC11913a2 a(Class cls) {
        if (!B1.class.isAssignableFrom(cls)) {
            throw new IllegalArgumentException("Unsupported message type: ".concat(cls.getName()));
        }
        try {
            return (InterfaceC11913a2) B1.b(cls.asSubclass(B1.class)).m(3, null, null);
        } catch (Exception e10) {
            throw new RuntimeException("Unable to get message info for ".concat(cls.getName()), e10);
        }
    }

    @Override
    public final boolean b(Class cls) {
        return B1.class.isAssignableFrom(cls);
    }
}
