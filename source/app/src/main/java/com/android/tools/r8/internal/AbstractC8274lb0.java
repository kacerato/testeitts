package com.android.tools.r8.internal;

public abstract class AbstractC8274lb0 {

    public static final boolean f50011a = true;

    public static String a(String str) {
        boolean z10 = f50011a;
        if (!z10 && str.charAt(0) != 'L') {
            throw new AssertionError();
        }
        if (z10 || str.charAt(str.length() - 1) != ';') {
            return str.substring(1).replace('/', '.');
        }
        throw new AssertionError();
    }
}
