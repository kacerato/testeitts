package com.android.tools.r8.internal;

public abstract class AbstractC8786of {
    public static int a(int i10) {
        if (i10 < 0) {
            return 1;
        }
        return i10 == 0 ? 2 : 3;
    }

    public static final boolean b(int i10) {
        return i10 == 2;
    }

    public static int c(int i10) {
        if (i10 == 1) {
            return -1;
        }
        if (i10 == 2) {
            return 0;
        }
        if (i10 == 3) {
            return 1;
        }
        throw null;
    }
}
