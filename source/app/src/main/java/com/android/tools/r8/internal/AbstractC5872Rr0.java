package com.android.tools.r8.internal;

import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;

public abstract class AbstractC5872Rr0 {

    public static final Object f44010a;

    static {
        Object obj;
        Method method = null;
        try {
            obj = Class.forName(w2.T.f126224b, false, null).getMethod("getJavaLangAccess", null).invoke(null, null);
        } catch (ThreadDeath e10) {
            throw e10;
        } catch (Throwable unused) {
            obj = null;
        }
        f44010a = obj;
        if (obj != null) {
            try {
                Class.forName(w2.T.f126223a, false, null).getMethod("getStackTraceElement", Throwable.class, Integer.TYPE);
            } catch (ThreadDeath e11) {
                throw e11;
            } catch (Throwable unused2) {
            }
        }
        if (obj != null) {
            try {
                try {
                    method = Class.forName(w2.T.f126223a, false, null).getMethod("getStackTraceDepth", Throwable.class);
                } catch (ThreadDeath e12) {
                    throw e12;
                } catch (Throwable unused3) {
                }
                if (method == null) {
                } else {
                    method.invoke(obj, new Throwable());
                }
            } catch (IllegalAccessException | UnsupportedOperationException | InvocationTargetException unused4) {
            }
        }
    }
}
