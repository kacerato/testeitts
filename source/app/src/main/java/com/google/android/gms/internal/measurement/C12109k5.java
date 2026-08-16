package com.google.android.gms.internal.measurement;

public final class C12109k5 implements U5 {

    public static final C12109k5 f62345a = new C12109k5();

    public static C12109k5 c() {
        return f62345a;
    }

    @Override
    public final boolean a(Class cls) {
        return AbstractC12163q5.class.isAssignableFrom(cls);
    }

    @Override
    public final T5 b(Class cls) {
        if (!AbstractC12163q5.class.isAssignableFrom(cls)) {
            throw new IllegalArgumentException("Unsupported message type: ".concat(cls.getName()));
        }
        try {
            return (T5) AbstractC12163q5.s(cls.asSubclass(AbstractC12163q5.class)).D(3, null, null);
        } catch (Exception e10) {
            throw new RuntimeException("Unable to get message info for ".concat(cls.getName()), e10);
        }
    }
}
