package com.android.tools.r8.internal;

import java.util.Arrays;

public abstract class GJ {
    public static int a(int i10, int i11) {
        if (i10 < i11) {
            return -1;
        }
        return i10 == i11 ? 0 : 1;
    }

    public static void b(Object obj, String str) {
        if (obj == null) {
            throw ((NullPointerException) a((RuntimeException) new NullPointerException(str.concat(" must not be null")), GJ.class.getName()));
        }
    }

    public static void c(Object obj, String str) {
        if (obj == null) {
            StackTraceElement[] stackTrace = Thread.currentThread().getStackTrace();
            String name = GJ.class.getName();
            int i10 = 0;
            while (!stackTrace[i10].getClassName().equals(name)) {
                i10++;
            }
            while (stackTrace[i10].getClassName().equals(name)) {
                i10++;
            }
            StackTraceElement stackTraceElement = stackTrace[i10];
            throw ((NullPointerException) a((RuntimeException) new NullPointerException("Parameter specified as non-null is null: method " + stackTraceElement.getClassName() + "." + stackTraceElement.getMethodName() + ", parameter " + str), GJ.class.getName()));
        }
    }

    public static void a(String str) {
        throw ((C7334fv0) a((RuntimeException) new C7334fv0(AbstractC4917Be0.a("lateinit property ", str, " has not been initialized")), GJ.class.getName()));
    }

    public static void a(Object obj) {
        if (obj == null) {
            throw ((NullPointerException) a((RuntimeException) new NullPointerException(), GJ.class.getName()));
        }
    }

    public static void a(Object obj, String str) {
        if (obj == null) {
            throw ((NullPointerException) a((RuntimeException) new NullPointerException(str), GJ.class.getName()));
        }
    }

    public static boolean a(Object obj, Object obj2) {
        if (obj == null) {
            return obj2 == null;
        }
        return obj.equals(obj2);
    }

    public static Throwable a(RuntimeException runtimeException, String str) {
        StackTraceElement[] stackTrace = runtimeException.getStackTrace();
        int length = stackTrace.length;
        int i10 = -1;
        for (int i11 = 0; i11 < length; i11++) {
            if (str.equals(stackTrace[i11].getClassName())) {
                i10 = i11;
            }
        }
        runtimeException.setStackTrace((StackTraceElement[]) Arrays.copyOfRange(stackTrace, i10 + 1, length));
        return runtimeException;
    }
}
