package com.android.tools.r8.internal;

import java.util.List;
import java.util.ServiceLoader;

public final class C10265xW {

    public static final C10265xW f53770a = new C10265xW();

    public static final C8155kr0 f53771b;

    static {
        InterfaceC8342ly interfaceC8342ly = new InterfaceC8342ly() {
            @Override
            public final Object a() {
                return C10265xW.a();
            }
        };
        GJ.c(interfaceC8342ly, "initializer");
        f53771b = new C8155kr0(interfaceC8342ly);
    }

    public static final List a() {
        ServiceLoader load = ServiceLoader.load(InterfaceC10432yW.class, InterfaceC10432yW.class.getClassLoader());
        GJ.b(load, "load(...)");
        List b10 = AbstractC6303Ze.b(load);
        if (b10.isEmpty()) {
            throw new IllegalStateException("No MetadataExtensions instances found in the classpath. Please ensure that the META-INF/services/ is not stripped from your application and that the Java virtual machine is not running under a security manager");
        }
        return b10;
    }
}
