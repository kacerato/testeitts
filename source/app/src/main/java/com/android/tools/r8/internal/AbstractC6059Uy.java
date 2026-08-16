package com.android.tools.r8.internal;

import java.util.concurrent.ConcurrentHashMap;

public abstract class AbstractC6059Uy extends P0 implements InterfaceC8429mW {

    public static final ConcurrentHashMap f44922b = new ConcurrentHashMap();

    public static void a(Class cls) {
        ConcurrentHashMap concurrentHashMap = f44922b;
        if (concurrentHashMap.get(cls) != null) {
            throw new ClassCastException();
        }
        try {
            Class.forName(cls.getName(), true, cls.getClassLoader());
            if (concurrentHashMap.get(cls) != null) {
                throw new ClassCastException();
            }
            AbstractC6671bw0.a(cls).getClass();
            throw new ClassCastException();
        } catch (ClassNotFoundException e10) {
            throw new IllegalStateException("Class initialization cannot fail.", e10);
        }
    }
}
