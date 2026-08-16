package com.android.tools.r8.internal;

import com.android.tools.r8.DiagnosticsLevel;

public abstract class AbstractC4978Cf0 {

    public static final int[] f39306a;

    static {
        int[] iArr = new int[DiagnosticsLevel.values().length];
        f39306a = iArr;
        try {
            iArr[DiagnosticsLevel.INFO.ordinal()] = 1;
        } catch (NoSuchFieldError unused) {
        }
        try {
            f39306a[DiagnosticsLevel.WARNING.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            f39306a[DiagnosticsLevel.ERROR.ordinal()] = 3;
        } catch (NoSuchFieldError unused3) {
        }
        try {
            f39306a[DiagnosticsLevel.NONE.ordinal()] = 4;
        } catch (NoSuchFieldError unused4) {
        }
    }
}
