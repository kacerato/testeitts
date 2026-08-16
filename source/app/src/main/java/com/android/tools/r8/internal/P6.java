package com.android.tools.r8.internal;

public class P6 {

    public static final boolean f43119a = true;

    public static boolean a(int i10, int i11) {
        if (f43119a || ((i10 - 1) & i10) == 0) {
            return ((i10 - 1) & i11) == 0;
        }
        throw new AssertionError();
    }

    public static boolean b(int i10, int i11) {
        return (i10 & i11) != 0;
    }

    public static boolean c(int i10, int i11) {
        return b(i10, 1 << (i11 - 1));
    }
}
