package com.android.tools.r8.internal;

public abstract class SH {

    public static final QH f44174a = new QH();

    public static int a(PH ph2, int[] iArr) {
        int i10;
        int length = iArr.length;
        if (length < 0) {
            throw new IllegalArgumentException(HC.a(length, "The maximum number of elements (", ") is negative"));
        }
        if (length > iArr.length) {
            throw new IllegalArgumentException();
        }
        int i11 = 0;
        int i12 = length;
        while (true) {
            i10 = i12 - 1;
            if (i12 == 0 || !ph2.hasNext()) {
                break;
            }
            iArr[i11] = ph2.r();
            i11++;
            i12 = i10;
        }
        return (length - i10) - 1;
    }
}
