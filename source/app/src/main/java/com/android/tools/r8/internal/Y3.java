package com.android.tools.r8.internal;

public abstract class Y3 {
    public static void a(int i10, int i11, int i12) {
        if (i11 < 0) {
            throw new ArrayIndexOutOfBoundsException(HC.a(i11, "Start index (", ") is negative"));
        }
        if (i11 > i12) {
            throw new IllegalArgumentException("Start index (" + i11 + ") is greater than end index (" + i12 + ")");
        }
        if (i12 <= i10) {
            return;
        }
        throw new ArrayIndexOutOfBoundsException("End index (" + i12 + ") is greater than array length (" + i10 + ")");
    }
}
