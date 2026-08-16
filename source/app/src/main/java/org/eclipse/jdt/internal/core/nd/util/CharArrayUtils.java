package org.eclipse.jdt.internal.core.nd.util;

import java.util.Arrays;

public class CharArrayUtils {
    public static final char[] EMPTY;
    public static final char[][] EMPTY_ARRAY_OF_CHAR_ARRAYS = new char[0];
    public static final char[] EMPTY_CHAR_ARRAY;

    static {
        char[] cArr = new char[0];
        EMPTY_CHAR_ARRAY = cArr;
        EMPTY = cArr;
    }

    private CharArrayUtils() {
    }

    public static final int compare(char[] cArr, char[] cArr2) {
        if (cArr == cArr2) {
            return 0;
        }
        int min = Math.min(cArr.length, cArr2.length);
        for (int i10 = 0; i10 < min; i10++) {
            int i11 = cArr[i10] - cArr2[i10];
            if (i11 != 0) {
                return i11;
            }
        }
        return cArr.length - cArr2.length;
    }

    public static final char[] concat(char[] cArr, char[] cArr2) {
        if (cArr == null) {
            return cArr2;
        }
        if (cArr2 == null) {
            return cArr;
        }
        int length = cArr.length;
        int length2 = cArr2.length;
        char[] cArr3 = new char[length + length2];
        System.arraycopy(cArr, 0, cArr3, 0, length);
        System.arraycopy(cArr2, 0, cArr3, length, length2);
        return cArr3;
    }

    public static boolean endsWith(char[] cArr, char c10) {
        return cArr.length != 0 && cArr[cArr.length - 1] == c10;
    }

    public static final boolean equals(char[] cArr, char[] cArr2) {
        return Arrays.equals(cArr, cArr2);
    }

    public static final char[] extract(char[] cArr, int i10, int i11) {
        if (i10 == 0 && i11 == cArr.length) {
            return cArr;
        }
        char[] cArr2 = new char[i11];
        System.arraycopy(cArr, i10, cArr2, 0, i11);
        return cArr2;
    }

    public static char[] extractChars(StringBuilder sb2) {
        int length = sb2.length();
        if (length == 0) {
            return EMPTY_CHAR_ARRAY;
        }
        char[] cArr = new char[length];
        sb2.getChars(0, length, cArr, 0);
        return cArr;
    }

    public static final boolean hasCharAt(char c10, int i10, char[] cArr) {
        return cArr.length > i10 && cArr[i10] == c10;
    }

    public static final int hash(char[] cArr, int i10, int i11) {
        int i12 = i11 + i10;
        int i13 = 0;
        while (i10 < i12) {
            i13 = (i13 * 31) + cArr[i10];
            i10++;
        }
        return i13;
    }

    public static final int indexOf(char c10, char[] cArr) {
        for (int i10 = 0; i10 < cArr.length; i10++) {
            if (c10 == cArr[i10]) {
                return i10;
            }
        }
        return -1;
    }

    public static final int lastIndexOf(char[] cArr, char[] cArr2) {
        return lastIndexOf(cArr, cArr2, 0);
    }

    public static final char[] lastSegment(char[] cArr, char[] cArr2) {
        int lastIndexOf = lastIndexOf(cArr2, cArr);
        return lastIndexOf < 0 ? cArr : subarray(cArr, lastIndexOf + cArr2.length, cArr.length);
    }

    public static char[] notNull(char[] cArr) {
        return cArr == null ? EMPTY_CHAR_ARRAY : cArr;
    }

    public static void overWrite(char[] cArr, int i10, char[] cArr2) {
        if (cArr.length < cArr2.length + i10) {
            return;
        }
        for (int i11 = 0; i11 < cArr2.length; i11++) {
            cArr[i10 + i11] = cArr2[i11];
        }
    }

    public static final char[] replace(char[] cArr, char[] cArr2, char[] cArr3) {
        int i10;
        int length = cArr.length;
        int length2 = cArr2.length;
        int length3 = cArr3.length;
        int[] iArr = new int[5];
        if (equals(cArr2, cArr3)) {
            i10 = 0;
        } else {
            int[] iArr2 = iArr;
            i10 = 0;
            for (int i11 = 0; i11 < length; i11++) {
                int i12 = 0;
                while (true) {
                    if (i12 < length2) {
                        int i13 = i11 + i12;
                        if (i13 == length) {
                            break;
                        }
                        int i14 = i12 + 1;
                        if (cArr[i13] != cArr2[i12]) {
                            break;
                        }
                        i12 = i14;
                    } else {
                        if (i10 == iArr2.length) {
                            int[] iArr3 = new int[i10 * 2];
                            System.arraycopy(iArr2, 0, iArr3, 0, i10);
                            iArr2 = iArr3;
                        }
                        iArr2[i10] = i11;
                        i10++;
                    }
                }
            }
            iArr = iArr2;
        }
        if (i10 == 0) {
            return cArr;
        }
        char[] cArr4 = new char[((length3 - length2) * i10) + length];
        int i15 = 0;
        int i16 = 0;
        for (int i17 = 0; i17 < i10; i17++) {
            int i18 = iArr[i17] - i15;
            System.arraycopy(cArr, i15, cArr4, i16, i18);
            int i19 = i16 + i18;
            System.arraycopy(cArr3, 0, cArr4, i19, length3);
            i15 = i15 + i18 + length2;
            i16 = i19 + length3;
        }
        System.arraycopy(cArr, i15, cArr4, i16, length - i15);
        return cArr4;
    }

    public static final boolean startsWith(char[] cArr, String str) {
        int length = str.length();
        if (cArr.length < length) {
            return false;
        }
        for (int i10 = 0; i10 < length; i10++) {
            if (cArr[i10] != str.charAt(i10)) {
                return false;
            }
        }
        return true;
    }

    public static final char[][] subarray(char[][] cArr, int i10, int i11) {
        if (i11 == -1) {
            i11 = cArr.length;
        }
        if (i10 > i11 || i10 < 0 || i11 > cArr.length) {
            return null;
        }
        int i12 = i11 - i10;
        char[][] cArr2 = new char[i12];
        System.arraycopy(cArr, i10, cArr2, 0, i12);
        return cArr2;
    }

    public static final char[] trim(char[] cArr) {
        if (cArr == null) {
            return null;
        }
        int length = cArr.length;
        int i10 = 0;
        while (i10 < length && cArr[i10] == ' ') {
            i10++;
        }
        if (i10 == length) {
            return EMPTY_CHAR_ARRAY;
        }
        int i11 = length;
        while (true) {
            int i12 = i11 - 1;
            if (i12 <= i10 || cArr[i12] != ' ') {
                break;
            }
            i11 = i12;
        }
        return (i10 == 0 && i11 == length) ? cArr : subarray(cArr, i10, i11);
    }

    public static final boolean equals(char[][] cArr, char[][] cArr2) {
        if (cArr == cArr2) {
            return true;
        }
        if (cArr == null || cArr2 == null || cArr.length != cArr2.length) {
            return false;
        }
        for (int i10 = 0; i10 < cArr2.length; i10++) {
            if (!Arrays.equals(cArr[i10], cArr2[i10])) {
                return false;
            }
        }
        return true;
    }

    public static final int hash(char[] cArr) {
        return hash(cArr, 0, cArr.length);
    }

    public static int lastIndexOf(char c10, char[] cArr) {
        return lastIndexOf(c10, cArr, 0);
    }

    public static int indexOf(char c10, char[] cArr, int i10, int i11) {
        if (i10 < 0 || i10 > cArr.length || i11 > cArr.length) {
            return -1;
        }
        while (i10 < i11) {
            if (c10 == cArr[i10]) {
                return i10;
            }
            i10++;
        }
        return -1;
    }

    public static int lastIndexOf(char c10, char[] cArr, int i10) {
        int length = cArr.length;
        do {
            length--;
            if (length < i10) {
                return -1;
            }
        } while (cArr[length] != c10);
        return length;
    }

    public static boolean startsWith(char[] cArr, char c10) {
        return cArr.length > 0 && cArr[0] == c10;
    }

    public static final boolean equals(char[] cArr, String str) {
        int length = cArr.length;
        if (str.length() != length) {
            return false;
        }
        for (int i10 = 0; i10 < length; i10++) {
            if (cArr[i10] != str.charAt(i10)) {
                return false;
            }
        }
        return true;
    }

    public static final int indexOf(char[] cArr, char[] cArr2) {
        if (cArr.length > cArr2.length) {
            return -1;
        }
        int i10 = 0;
        for (int i11 = 0; i11 < cArr2.length; i11++) {
            if (cArr[i10] == cArr2[i11]) {
                i10++;
                if (i10 == cArr.length) {
                    return (i11 - i10) + 1;
                }
            } else {
                i10 = 0;
            }
        }
        return -1;
    }

    public static int lastIndexOf(char[] cArr, char[] cArr2, int i10) {
        int length = cArr2.length;
        int length2 = cArr.length;
        while (true) {
            length2--;
            if (length2 < 0) {
                return length;
            }
            length--;
            if (length < i10) {
                return -1;
            }
            if (cArr[length2] != cArr2[length]) {
                length += (cArr.length - length2) - 1;
                length2 = cArr.length;
            }
        }
    }

    public static final char[] subarray(char[] cArr, int i10, int i11) {
        if (i11 == -1) {
            i11 = cArr.length;
        }
        if (i10 > i11 || i10 < 0 || i11 > cArr.length) {
            return null;
        }
        int i12 = i11 - i10;
        char[] cArr2 = new char[i12];
        System.arraycopy(cArr, i10, cArr2, 0, i12);
        return cArr2;
    }

    public static final char[] concat(char[] cArr, char[] cArr2, char[] cArr3) {
        if (cArr == null) {
            return concat(cArr2, cArr3);
        }
        if (cArr2 == null) {
            return concat(cArr, cArr3);
        }
        if (cArr3 == null) {
            return concat(cArr, cArr2);
        }
        int length = cArr.length;
        int length2 = cArr2.length;
        int length3 = cArr3.length;
        int i10 = length + length2;
        char[] cArr4 = new char[i10 + length3];
        System.arraycopy(cArr, 0, cArr4, 0, length);
        System.arraycopy(cArr2, 0, cArr4, length, length2);
        System.arraycopy(cArr3, 0, cArr4, i10, length3);
        return cArr4;
    }

    public static final boolean equals(char[] cArr, int i10, int i11, String str) {
        if (i11 != str.length() || cArr.length < i11 + i10) {
            return false;
        }
        int i12 = 0;
        while (i12 < i11) {
            int i13 = i10 + 1;
            if (cArr[i10] != str.charAt(i12)) {
                return false;
            }
            i12++;
            i10 = i13;
        }
        return true;
    }

    public static int indexOf(char[] cArr, char[][] cArr2) {
        for (int i10 = 0; i10 < cArr2.length; i10++) {
            if (equals(cArr2[i10], cArr)) {
                return i10;
            }
        }
        return -1;
    }

    public static char[] subarray(char[] cArr, int i10) {
        if (cArr.length <= i10) {
            return EMPTY_CHAR_ARRAY;
        }
        int length = cArr.length - i10;
        char[] cArr2 = new char[length];
        System.arraycopy(cArr, i10, cArr2, 0, length);
        return cArr2;
    }

    public static final boolean equals(char[] cArr, int i10, int i11, char[] cArr2) {
        if (i11 != cArr2.length || cArr.length < i11 + i10) {
            return false;
        }
        if (cArr == cArr2 && i10 == 0) {
            return true;
        }
        int i12 = 0;
        while (i12 < i11) {
            int i13 = i10 + 1;
            if (cArr[i10] != cArr2[i12]) {
                return false;
            }
            i12++;
            i10 = i13;
        }
        return true;
    }

    public static final boolean equals(char[] cArr, int i10, int i11, char[] cArr2, boolean z10) {
        if (!z10) {
            return equals(cArr, i10, i11, cArr2);
        }
        if (i11 != cArr2.length || cArr.length < i10 + i11) {
            return false;
        }
        int i12 = 0;
        while (i12 < i11) {
            int i13 = i10 + 1;
            if (Character.toLowerCase(cArr[i10]) != Character.toLowerCase(cArr2[i12])) {
                return false;
            }
            i12++;
            i10 = i13;
        }
        return true;
    }

    public static final char[] concat(char[] cArr, char[] cArr2, char[] cArr3, char[] cArr4) {
        if (cArr == null) {
            return concat(cArr2, cArr3, cArr4);
        }
        if (cArr2 == null) {
            return concat(cArr, cArr3, cArr4);
        }
        if (cArr3 == null) {
            return concat(cArr, cArr2, cArr4);
        }
        if (cArr4 == null) {
            return concat(cArr, cArr2, cArr3);
        }
        int length = cArr.length;
        int length2 = cArr2.length;
        int length3 = cArr3.length;
        int length4 = cArr4.length;
        int i10 = length + length2;
        int i11 = i10 + length3;
        char[] cArr5 = new char[i11 + length4];
        System.arraycopy(cArr, 0, cArr5, 0, length);
        System.arraycopy(cArr2, 0, cArr5, length, length2);
        System.arraycopy(cArr3, 0, cArr5, i10, length3);
        System.arraycopy(cArr4, 0, cArr5, i11, length4);
        return cArr5;
    }

    public static char[] concat(char[]... cArr) {
        int i10 = 0;
        for (char[] cArr2 : cArr) {
            i10 += cArr2.length;
        }
        char[] cArr3 = new char[i10];
        int i11 = 0;
        for (char[] cArr4 : cArr) {
            if (cArr4 != null) {
                System.arraycopy(cArr4, 0, cArr3, i11, cArr4.length);
                i11 += cArr4.length;
            }
        }
        return cArr3;
    }
}
