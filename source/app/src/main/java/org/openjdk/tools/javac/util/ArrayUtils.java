package org.openjdk.tools.javac.util;

import java.lang.reflect.Array;

public class ArrayUtils {
    private static int calculateNewLength(int i10, int i11) {
        while (i10 < i11 + 1) {
            i10 *= 2;
        }
        return i10;
    }

    public static <T> T[] ensureCapacity(T[] tArr, int i10) {
        if (i10 < tArr.length) {
            return tArr;
        }
        T[] tArr2 = (T[]) ((Object[]) Array.newInstance(tArr.getClass().getComponentType(), calculateNewLength(tArr.length, i10)));
        System.arraycopy(tArr, 0, tArr2, 0, tArr.length);
        return tArr2;
    }

    public static byte[] ensureCapacity(byte[] bArr, int i10) {
        if (i10 < bArr.length) {
            return bArr;
        }
        byte[] bArr2 = new byte[calculateNewLength(bArr.length, i10)];
        System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        return bArr2;
    }

    public static char[] ensureCapacity(char[] cArr, int i10) {
        if (i10 < cArr.length) {
            return cArr;
        }
        char[] cArr2 = new char[calculateNewLength(cArr.length, i10)];
        System.arraycopy(cArr, 0, cArr2, 0, cArr.length);
        return cArr2;
    }

    public static int[] ensureCapacity(int[] iArr, int i10) {
        if (i10 < iArr.length) {
            return iArr;
        }
        int[] iArr2 = new int[calculateNewLength(iArr.length, i10)];
        System.arraycopy(iArr, 0, iArr2, 0, iArr.length);
        return iArr2;
    }
}
