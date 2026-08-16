package com.android.tools.r8.internal;

public abstract class FJ {
    public static void a(int i10, String str) {
        if (i10 == 0) {
            StackTraceElement[] stackTrace = Thread.currentThread().getStackTrace();
            String name = GJ.class.getName();
            int i11 = 0;
            while (!stackTrace[i11].getClassName().equals(name)) {
                i11++;
            }
            while (stackTrace[i11].getClassName().equals(name)) {
                i11++;
            }
            StackTraceElement stackTraceElement = stackTrace[i11];
            throw ((NullPointerException) GJ.a((RuntimeException) new NullPointerException("Parameter specified as non-null is null: method " + stackTraceElement.getClassName() + "." + stackTraceElement.getMethodName() + ", parameter " + str), GJ.class.getName()));
        }
    }
}
