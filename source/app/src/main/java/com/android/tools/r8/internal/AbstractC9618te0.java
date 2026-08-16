package com.android.tools.r8.internal;

public abstract class AbstractC9618te0 {

    public static final C9785ue0 f52649a;

    static {
        C9785ue0 c9785ue0;
        try {
            c9785ue0 = (C9785ue0) Class.forName("kotlin.reflect.jvm.internal.ReflectionFactoryImpl").newInstance();
        } catch (ClassCastException | ClassNotFoundException | IllegalAccessException | InstantiationException unused) {
            c9785ue0 = null;
        }
        if (c9785ue0 == null) {
            c9785ue0 = new C9785ue0();
        }
        f52649a = c9785ue0;
    }

    public static C6129Wd a(Class cls) {
        f52649a.getClass();
        return new C6129Wd(cls);
    }
}
