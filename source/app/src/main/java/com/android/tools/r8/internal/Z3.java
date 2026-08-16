package com.android.tools.r8.internal;

import java.util.RandomAccess;

public final class Z3 extends AbstractC7683i0 implements RandomAccess {

    public final int[] f46152b;

    public Z3(int[] iArr) {
        this.f46152b = iArr;
    }

    @Override
    public final int a() {
        return this.f46152b.length;
    }

    @Override
    public final boolean contains(Object obj) {
        if (!(obj instanceof Integer)) {
            return false;
        }
        int intValue = ((Number) obj).intValue();
        int[] iArr = this.f46152b;
        GJ.c(iArr, "<this>");
        int length = iArr.length;
        int i10 = 0;
        while (true) {
            if (i10 >= length) {
                i10 = -1;
                break;
            }
            if (intValue == iArr[i10]) {
                break;
            }
            i10++;
        }
        return i10 >= 0;
    }

    @Override
    public final Object get(int i10) {
        return Integer.valueOf(this.f46152b[i10]);
    }

    @Override
    public final int indexOf(Object obj) {
        if (!(obj instanceof Integer)) {
            return -1;
        }
        int intValue = ((Number) obj).intValue();
        int[] iArr = this.f46152b;
        GJ.c(iArr, "<this>");
        int length = iArr.length;
        for (int i10 = 0; i10 < length; i10++) {
            if (intValue == iArr[i10]) {
                return i10;
            }
        }
        return -1;
    }

    @Override
    public final boolean isEmpty() {
        return this.f46152b.length == 0;
    }

    @Override
    public final int lastIndexOf(Object obj) {
        if (!(obj instanceof Integer)) {
            return -1;
        }
        int intValue = ((Number) obj).intValue();
        int[] iArr = this.f46152b;
        GJ.c(iArr, "<this>");
        int length = iArr.length - 1;
        if (length >= 0) {
            while (true) {
                int i10 = length - 1;
                if (intValue == iArr[length]) {
                    return length;
                }
                if (i10 < 0) {
                    break;
                }
                length = i10;
            }
        }
        return -1;
    }
}
