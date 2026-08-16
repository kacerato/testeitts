package com.android.dx.util;

import org.eclipse.jdt.internal.core.JavaElement;
import org.eclipse.jdt.internal.core.search.indexing.IIndexConstants;

public final class Bits {
    private Bits() {
    }

    public static boolean anyInRange(int[] iArr, int i10, int i11) {
        int findFirst = findFirst(iArr, i10);
        return findFirst >= 0 && findFirst < i11;
    }

    public static int bitCount(int[] iArr) {
        int i10 = 0;
        for (int i11 : iArr) {
            i10 += Integer.bitCount(i11);
        }
        return i10;
    }

    public static void clear(int[] iArr, int i10) {
        int i11 = i10 >> 5;
        iArr[i11] = (~(1 << (i10 & 31))) & iArr[i11];
    }

    public static int findFirst(int[] iArr, int i10) {
        int findFirst;
        int length = iArr.length;
        int i11 = i10 & 31;
        int i12 = i10 >> 5;
        while (i12 < length) {
            int i13 = iArr[i12];
            if (i13 != 0 && (findFirst = findFirst(i13, i11)) >= 0) {
                return (i12 << 5) + findFirst;
            }
            i12++;
            i11 = 0;
        }
        return -1;
    }

    public static boolean get(int[] iArr, int i10) {
        return (iArr[i10 >> 5] & (1 << (i10 & 31))) != 0;
    }

    public static int getMax(int[] iArr) {
        return iArr.length * 32;
    }

    public static boolean isEmpty(int[] iArr) {
        for (int i10 : iArr) {
            if (i10 != 0) {
                return false;
            }
        }
        return true;
    }

    public static int[] makeBitSet(int i10) {
        return new int[(i10 + 31) >> 5];
    }

    public static void or(int[] iArr, int[] iArr2) {
        for (int i10 = 0; i10 < iArr2.length; i10++) {
            iArr[i10] = iArr[i10] | iArr2[i10];
        }
    }

    public static void set(int[] iArr, int i10, boolean z10) {
        int i11 = i10 >> 5;
        int i12 = 1 << (i10 & 31);
        if (z10) {
            iArr[i11] = i12 | iArr[i11];
        } else {
            iArr[i11] = (~i12) & iArr[i11];
        }
    }

    public static String toHuman(int[] iArr) {
        StringBuilder sb2 = new StringBuilder();
        sb2.append(JavaElement.JEM_COMPILATIONUNIT);
        int length = iArr.length * 32;
        boolean z10 = false;
        for (int i10 = 0; i10 < length; i10++) {
            if (get(iArr, i10)) {
                if (z10) {
                    sb2.append(IIndexConstants.PARAMETER_SEPARATOR);
                }
                sb2.append(i10);
                z10 = true;
            }
        }
        sb2.append(JavaElement.JEM_ANNOTATION);
        return sb2.toString();
    }

    public static void set(int[] iArr, int i10) {
        int i11 = i10 >> 5;
        iArr[i11] = (1 << (i10 & 31)) | iArr[i11];
    }

    public static int findFirst(int i10, int i11) {
        int numberOfTrailingZeros = Integer.numberOfTrailingZeros(i10 & (~((1 << i11) - 1)));
        if (numberOfTrailingZeros == 32) {
            return -1;
        }
        return numberOfTrailingZeros;
    }
}
