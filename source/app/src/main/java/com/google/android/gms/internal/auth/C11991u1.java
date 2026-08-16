package com.google.android.gms.internal.auth;

public final class C11991u1 {

    public static final AbstractC11983s1 f61848a = new C11987t1();

    public static final AbstractC11983s1 f61849b;

    static {
        AbstractC11983s1 abstractC11983s1 = null;
        try {
            abstractC11983s1 = (AbstractC11983s1) Class.forName("com.google.protobuf.f0").getDeclaredConstructor(null).newInstance(null);
        } catch (Exception unused) {
        }
        f61849b = abstractC11983s1;
    }

    public static AbstractC11983s1 a() {
        AbstractC11983s1 abstractC11983s1 = f61849b;
        if (abstractC11983s1 != null) {
            return abstractC11983s1;
        }
        throw new IllegalStateException("Protobuf runtime is not correctly loaded.");
    }

    public static AbstractC11983s1 b() {
        return f61848a;
    }
}
