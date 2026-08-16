package com.android.tools.r8;

public abstract class AbstractC4291c {

    public static final int[] f35626a = {1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15};

    public static Integer a(int i10) {
        if (i10 == 0) {
            return null;
        }
        return Integer.valueOf(i10 - 1);
    }

    public static boolean b(int i10, int i11) {
        if (i10 != 0) {
            return i10 == i11;
        }
        throw null;
    }

    public static int[] c(int i10) {
        int[] iArr = new int[i10];
        System.arraycopy(f35626a, 0, iArr, 0, i10);
        return iArr;
    }

    public static int a(int i10, int i11) {
        if (i10 == 0 || i11 == 0) {
            throw null;
        }
        return i10 - i11;
    }

    public static int b(int i10) {
        if (i10 != 0) {
            return i10 - 1;
        }
        throw null;
    }
}
