package com.android.tools.r8.internal;

import java.lang.reflect.Method;

public abstract class AbstractC8702o60 {

    public static final Method f51169a;

    static {
        Method method;
        Method[] methods = Throwable.class.getMethods();
        GJ.a(methods);
        int length = methods.length;
        int i10 = 0;
        while (true) {
            method = null;
            if (i10 >= length) {
                break;
            }
            Method method2 = methods[i10];
            if (GJ.a((Object) method2.getName(), (Object) "addSuppressed")) {
                Class<?>[] parameterTypes = method2.getParameterTypes();
                GJ.b(parameterTypes, "getParameterTypes(...)");
                if (GJ.a(parameterTypes.length == 1 ? parameterTypes[0] : null, Throwable.class)) {
                    method = method2;
                    break;
                }
            }
            i10++;
        }
        f51169a = method;
        int length2 = methods.length;
        for (int i11 = 0; i11 < length2 && !GJ.a((Object) methods[i11].getName(), (Object) "getSuppressed"); i11++) {
        }
    }
}
