package com.google.common.reflect;

import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.lang.reflect.Proxy;
import java.util.Arrays;
import javax.annotation.CheckForNull;

@d
public abstract class a implements InvocationHandler {

    public static final Object[] f67101a = new Object[0];

    public static boolean b(Object obj, Class<?> cls) {
        return cls.isInstance(obj) || (Proxy.isProxyClass(obj.getClass()) && Arrays.equals(obj.getClass().getInterfaces(), cls.getInterfaces()));
    }

    @CheckForNull
    public abstract Object a(Object obj, Method method, Object[] objArr) throws Throwable;

    public boolean equals(@CheckForNull Object obj) {
        return super.equals(obj);
    }

    public int hashCode() {
        return super.hashCode();
    }

    @Override
    @CheckForNull
    public final Object invoke(Object obj, Method method, @CheckForNull Object[] objArr) throws Throwable {
        if (objArr == null) {
            objArr = f67101a;
        }
        if (objArr.length == 0 && method.getName().equals("hashCode")) {
            return Integer.valueOf(hashCode());
        }
        if (objArr.length != 1 || !method.getName().equals("equals") || method.getParameterTypes()[0] != Object.class) {
            return (objArr.length == 0 && method.getName().equals("toString")) ? toString() : a(obj, method, objArr);
        }
        Object obj2 = objArr[0];
        if (obj2 == null) {
            return Boolean.FALSE;
        }
        if (obj == obj2) {
            return Boolean.TRUE;
        }
        return Boolean.valueOf(b(obj2, obj.getClass()) && equals(Proxy.getInvocationHandler(obj2)));
    }

    public String toString() {
        return super.toString();
    }
}
