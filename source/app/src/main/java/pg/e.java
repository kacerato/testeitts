package Pg;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

public class e<T> {

    public final Class<?> f21477a;

    public final String f21478b;

    public final Class[] f21479c;

    public e(Class<?> cls, String str, Class... clsArr) {
        this.f21477a = cls;
        this.f21478b = str;
        this.f21479c = clsArr;
    }

    public static Method b(Class<?> cls, String str, Class[] clsArr) {
        try {
            Method method = cls.getMethod(str, clsArr);
            try {
                if ((method.getModifiers() & 1) == 0) {
                    return null;
                }
            } catch (NoSuchMethodException unused) {
            }
            return method;
        } catch (NoSuchMethodException unused2) {
            return null;
        }
    }

    public final Method a(Class<?> cls) {
        Class<?> cls2;
        String str = this.f21478b;
        if (str == null) {
            return null;
        }
        Method b10 = b(cls, str, this.f21479c);
        if (b10 == null || (cls2 = this.f21477a) == null || cls2.isAssignableFrom(b10.getReturnType())) {
            return b10;
        }
        return null;
    }

    public Object c(T t10, Object... objArr) throws InvocationTargetException {
        Method a10 = a(t10.getClass());
        if (a10 == null) {
            throw new AssertionError((Object) ("Method " + this.f21478b + " not supported for object " + ((Object) t10)));
        }
        try {
            return a10.invoke(t10, objArr);
        } catch (IllegalAccessException e10) {
            AssertionError assertionError = new AssertionError((Object) ("Unexpectedly could not call: " + ((Object) a10)));
            assertionError.initCause(e10);
            throw assertionError;
        }
    }

    public Object d(T t10, Object... objArr) throws InvocationTargetException {
        Method a10 = a(t10.getClass());
        if (a10 == null) {
            return null;
        }
        try {
            return a10.invoke(t10, objArr);
        } catch (IllegalAccessException unused) {
            return null;
        }
    }

    public Object e(T t10, Object... objArr) {
        try {
            return d(t10, objArr);
        } catch (InvocationTargetException e10) {
            Throwable targetException = e10.getTargetException();
            if (targetException instanceof RuntimeException) {
                throw ((RuntimeException) targetException);
            }
            AssertionError assertionError = new AssertionError((Object) "Unexpected exception");
            assertionError.initCause(targetException);
            throw assertionError;
        }
    }

    public Object f(T t10, Object... objArr) {
        try {
            return c(t10, objArr);
        } catch (InvocationTargetException e10) {
            Throwable targetException = e10.getTargetException();
            if (targetException instanceof RuntimeException) {
                throw ((RuntimeException) targetException);
            }
            AssertionError assertionError = new AssertionError((Object) "Unexpected exception");
            assertionError.initCause(targetException);
            throw assertionError;
        }
    }

    public boolean g(T t10) {
        return a(t10.getClass()) != null;
    }
}
