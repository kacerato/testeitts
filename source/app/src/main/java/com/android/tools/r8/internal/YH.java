package com.android.tools.r8.internal;

import java.math.RoundingMode;

public abstract class YH {

    public static final int[] f45961a = {Integer.MAX_VALUE, Integer.MAX_VALUE, 65536, 2345, 477, 193, 110, 75, 58, 49, 43, 39, 37, 35, 34, 34, 33};

    public static int a(int i10) {
        RoundingMode roundingMode = RoundingMode.UNNECESSARY;
        if (i10 > 0) {
            switch (XH.f45647a[roundingMode.ordinal()]) {
                case 1:
                    if (!((i10 > 0) & (((i10 + (-1)) & i10) == 0))) {
                        throw new ArithmeticException("mode was UNNECESSARY, but rounding was necessary");
                    }
                    break;
                case 2:
                case 3:
                    break;
                case 4:
                case 5:
                    return 32 - Integer.numberOfLeadingZeros(i10 - 1);
                case 6:
                case 7:
                case 8:
                    int numberOfLeadingZeros = Integer.numberOfLeadingZeros(i10);
                    return ((~(~((E2.f.f5383b >>> numberOfLeadingZeros) - i10))) >>> 31) + (31 - numberOfLeadingZeros);
                default:
                    throw new AssertionError();
            }
            return 31 - Integer.numberOfLeadingZeros(i10);
        }
        throw new IllegalArgumentException(HC.a(i10, "x (", ") must be > 0"));
    }

    public static int a(int i10, int i11) {
        RoundingMode roundingMode = RoundingMode.CEILING;
        roundingMode.getClass();
        if (i11 != 0) {
            int i12 = i10 / i11;
            int i13 = i10 - (i11 * i12);
            if (i13 == 0) {
                return i12;
            }
            int i14 = ((i10 ^ i11) >> 31) | 1;
            switch (XH.f45647a[roundingMode.ordinal()]) {
                case 1:
                    if (i13 == 0) {
                        return i12;
                    }
                    throw new ArithmeticException("mode was UNNECESSARY, but rounding was necessary");
                case 2:
                    return i12;
                case 3:
                    if (i14 >= 0) {
                        return i12;
                    }
                    break;
                case 4:
                    break;
                case 5:
                    if (i14 <= 0) {
                        return i12;
                    }
                    break;
                case 6:
                case 7:
                case 8:
                    int abs = Math.abs(i13);
                    int abs2 = abs - (Math.abs(i11) - abs);
                    if (abs2 == 0) {
                        RoundingMode roundingMode2 = RoundingMode.HALF_UP;
                        RoundingMode roundingMode3 = RoundingMode.HALF_EVEN;
                        return i12;
                    }
                    if (abs2 <= 0) {
                        return i12;
                    }
                    break;
                default:
                    throw new AssertionError();
            }
            return i12 + i14;
        }
        throw new ArithmeticException("/ by zero");
    }
}
