package com.android.tools.r8.internal;

import java.lang.annotation.RetentionPolicy;

public abstract class GM {

    public static final int[] f40468a;

    static {
        int[] iArr = new int[RetentionPolicy.values().length];
        f40468a = iArr;
        try {
            iArr[RetentionPolicy.RUNTIME.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            f40468a[RetentionPolicy.CLASS.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            f40468a[RetentionPolicy.SOURCE.ordinal()] = 3;
        } catch (NoSuchFieldError unused3) {
        }
    }
}
