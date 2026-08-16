package org.eclipse.jdt.core.compiler;

import java.lang.reflect.Array;
import java.util.Arrays;
import java.util.List;
import org.eclipse.jdt.internal.compiler.parser.ScannerHelper;
import org.eclipse.jdt.internal.core.search.indexing.IIndexConstants;

public final class CharOperation {
    public static final char[] NO_CHAR = new char[0];
    public static final char[][] NO_CHAR_CHAR = new char[0];
    public static final String[] NO_STRINGS = new String[0];
    public static final char[] ALL_PREFIX = {'*'};
    public static final char[] COMMA_SEPARATOR = {IIndexConstants.PARAMETER_SEPARATOR};

    public static final char[] append(char[] cArr, char c10) {
        if (cArr == null) {
            return new char[]{c10};
        }
        int length = cArr.length;
        char[] cArr2 = new char[1 + length];
        System.arraycopy(cArr, 0, cArr2, 0, length);
        cArr2[length] = c10;
        return cArr2;
    }

    public static final char[][] arrayConcat(char[][] cArr, char[][] cArr2) {
        if (cArr == null) {
            return cArr2;
        }
        if (cArr2 == null) {
            return cArr;
        }
        int length = cArr.length;
        int length2 = cArr2.length;
        char[][] cArr3 = new char[length + length2];
        System.arraycopy(cArr, 0, cArr3, 0, length);
        System.arraycopy(cArr2, 0, cArr3, length, length2);
        return cArr3;
    }

    public static final boolean camelCaseMatch(char[] cArr, char[] cArr2) {
        if (cArr == null) {
            return true;
        }
        if (cArr2 == null) {
            return false;
        }
        return camelCaseMatch(cArr, 0, cArr.length, cArr2, 0, cArr2.length, false);
    }

    public static String[] charArrayToStringArray(char[][] cArr) {
        if (cArr == null) {
            return null;
        }
        int length = cArr.length;
        if (length == 0) {
            return NO_STRINGS;
        }
        String[] strArr = new String[length];
        for (int i10 = 0; i10 < length; i10++) {
            strArr[i10] = new String(cArr[i10]);
        }
        return strArr;
    }

    public static String charToString(char[] cArr) {
        if (cArr == null) {
            return null;
        }
        return new String(cArr);
    }

    private static final boolean checkSubstringMatch(char[] cArr, char[] cArr2) {
        for (int i10 = 0; i10 < (cArr2.length - cArr.length) + 1; i10++) {
            int i11 = 0;
            while (true) {
                if (i11 >= cArr.length) {
                    break;
                }
                int i12 = i10 + i11;
                if (Character.toLowerCase(cArr2[i12]) != Character.toLowerCase(cArr[i11])) {
                    char c10 = cArr2[i12];
                    if (c10 == '(' || c10 == ':') {
                        return false;
                    }
                } else {
                    if (i11 == cArr.length - 1) {
                        return true;
                    }
                    i11++;
                }
            }
        }
        return false;
    }

    public static final int compareTo(char[] cArr, char[] cArr2) {
        int length = cArr.length;
        int length2 = cArr2.length;
        int min = Math.min(length, length2);
        for (int i10 = 0; i10 < min; i10++) {
            char c10 = cArr[i10];
            char c11 = cArr2[i10];
            if (c10 != c11) {
                return c10 - c11;
            }
        }
        return length - length2;
    }

    public static final int compareWith(char[] cArr, char[] cArr2) {
        int length = cArr.length;
        int length2 = cArr2.length;
        int min = Math.min(length, length2);
        int i10 = 0;
        while (true) {
            int i11 = min - 1;
            if (min == 0) {
                return length2 == i10 ? 0 : -1;
            }
            char c10 = cArr[i10];
            int i12 = i10 + 1;
            char c11 = cArr2[i10];
            if (c10 != c11) {
                return c10 - c11;
            }
            min = i11;
            i10 = i12;
        }
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

    public static final char[] concatAll(char[] cArr, char[] cArr2, char c10) {
        if (cArr == null) {
            return cArr2;
        }
        if (cArr2 == null) {
            return cArr;
        }
        int length = cArr.length;
        if (length == 0) {
            return cArr2;
        }
        int length2 = cArr2.length;
        char[] cArr3 = new char[length + length2 + 1];
        System.arraycopy(cArr, 0, cArr3, 0, length);
        cArr3[length] = c10;
        if (length2 > 0) {
            System.arraycopy(cArr2, 0, cArr3, length + 1, length2);
        }
        return cArr3;
    }

    public static final char[] concatNonEmpty(char[] cArr, char[] cArr2, char c10) {
        return (cArr == null || cArr.length == 0) ? cArr2 : (cArr2 == null || cArr2.length == 0) ? cArr : concat(cArr, cArr2, c10);
    }

    public static final char[] concatWith(char[] cArr, char[][] cArr2, char c10) {
        int length = cArr == null ? 0 : cArr.length;
        if (length == 0) {
            return concatWith(cArr2, c10);
        }
        int length2 = cArr2 == null ? 0 : cArr2.length;
        if (length2 == 0) {
            return cArr;
        }
        int i10 = length;
        int i11 = length2;
        while (true) {
            i11--;
            if (i11 < 0) {
                break;
            }
            char[] cArr3 = cArr2[i11];
            if (cArr3.length > 0) {
                i10 += cArr3.length + 1;
            }
        }
        char[] cArr4 = new char[i10];
        for (int i12 = length2 - 1; i12 >= 0; i12--) {
            char[] cArr5 = cArr2[i12];
            int length3 = cArr5.length;
            if (length3 > 0) {
                int i13 = i10 - length3;
                System.arraycopy(cArr5, 0, cArr4, i13, length3);
                i10 = i13 - 1;
                cArr4[i10] = c10;
            }
        }
        System.arraycopy(cArr, 0, cArr4, 0, length);
        return cArr4;
    }

    public static final char[] concatWithAll(char[][] cArr, char c10) {
        int length = cArr == null ? 0 : cArr.length;
        if (length == 0) {
            return NO_CHAR;
        }
        int i10 = length - 1;
        int i11 = length;
        while (true) {
            i11--;
            if (i11 < 0) {
                break;
            }
            i10 += cArr[i11].length;
        }
        char[] cArr2 = new char[i10];
        while (true) {
            length--;
            if (length < 0) {
                return cArr2;
            }
            char[] cArr3 = cArr[length];
            int length2 = cArr3.length;
            if (length2 > 0) {
                i10 -= length2;
                System.arraycopy(cArr3, 0, cArr2, i10, length2);
            }
            i10--;
            if (i10 >= 0) {
                cArr2[i10] = c10;
            }
        }
    }

    public static final boolean contains(char c10, char[][] cArr) {
        int length = cArr.length;
        while (true) {
            length--;
            if (length < 0) {
                return false;
            }
            char[] cArr2 = cArr[length];
            int length2 = cArr2.length;
            do {
                length2--;
                if (length2 < 0) {
                    break;
                }
            } while (cArr2[length2] != c10);
            return true;
        }
    }

    public static boolean containsEqual(char[][] cArr, char[] cArr2) {
        for (char[] cArr3 : cArr) {
            if (equals(cArr3, cArr2)) {
                return true;
            }
        }
        return false;
    }

    public static final char[][] deepCopy(char[][] cArr) {
        int length = cArr.length;
        char[][] cArr2 = new char[length];
        for (int i10 = 0; i10 < length; i10++) {
            char[] cArr3 = cArr[i10];
            int length2 = cArr3.length;
            char[] cArr4 = new char[length2];
            System.arraycopy(cArr3, 0, cArr4, 0, length2);
            cArr2[i10] = cArr4;
        }
        return cArr2;
    }

    public static final boolean endsWith(char[] cArr, char[] cArr2) {
        int length = cArr2.length;
        int length2 = cArr.length - length;
        if (length2 < 0) {
            return false;
        }
        do {
            length--;
            if (length < 0) {
                return true;
            }
        } while (cArr2[length] == cArr[length + length2]);
        return false;
    }

    public static final boolean equals(char[][] cArr, char[][] cArr2) {
        if (cArr == cArr2) {
            return true;
        }
        if (cArr == null || cArr2 == null || cArr.length != cArr2.length) {
            return false;
        }
        int length = cArr.length;
        do {
            length--;
            if (length < 0) {
                return true;
            }
        } while (equals(cArr[length], cArr2[length]));
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0016, code lost:
    
        if (r4[r0] == r5[r0 + r6]) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0018, code lost:
    
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x000f, code lost:
    
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0019, code lost:
    
        r0 = r0 - 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x001b, code lost:
    
        if (r0 >= 0) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x002c, code lost:
    
        if (org.eclipse.jdt.internal.compiler.parser.ScannerHelper.toLowerCase(r4[r0]) == org.eclipse.jdt.internal.compiler.parser.ScannerHelper.toLowerCase(r5[r0 + r6])) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x002e, code lost:
    
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x001d, code lost:
    
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x0009, code lost:
    
        if (r7 != false) goto L7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x000b, code lost:
    
        r0 = r0 - 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x000d, code lost:
    
        if (r0 >= 0) goto L10;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final boolean fragmentEquals(char[] cArr, char[] cArr2, int i10, boolean z10) {
        int length = cArr.length;
        if (cArr2.length < length + i10) {
            return false;
        }
    }

    public static final int hashCode(char[] cArr) {
        return Arrays.hashCode(cArr) & Integer.MAX_VALUE;
    }

    public static final int indexOf(char c10, char[] cArr) {
        return indexOf(c10, cArr, 0);
    }

    public static boolean isWhitespace(char c10) {
        return c10 < '\u0080' && (ScannerHelper.OBVIOUS_IDENT_CHAR_NATURES[c10] & 256) != 0;
    }

    public static final int lastIndexOf(char c10, char[] cArr) {
        int length = cArr.length;
        do {
            length--;
            if (length < 0) {
                return -1;
            }
        } while (c10 != cArr[length]);
        return length;
    }

    public static final char[] lastSegment(char[] cArr, char c10) {
        int lastIndexOf = lastIndexOf(c10, cArr);
        return lastIndexOf < 0 ? cArr : subarray(cArr, lastIndexOf + 1, cArr.length);
    }

    public static final boolean match(char[] cArr, char[] cArr2, boolean z10) {
        if (cArr2 == null) {
            return false;
        }
        if (cArr == null) {
            return true;
        }
        return match(cArr, 0, cArr.length, cArr2, 0, cArr2.length, z10);
    }

    public static final int occurencesOf(char c10, char[] cArr) {
        int i10 = 0;
        for (char c11 : cArr) {
            if (c10 == c11) {
                i10++;
            }
        }
        return i10;
    }

    public static final int parseInt(char[] cArr, int i10, int i11) throws NumberFormatException {
        if (i11 != 1) {
            return Integer.parseInt(new String(cArr, i10, i11));
        }
        int i12 = cArr[i10] - '0';
        if (i12 < 0 || i12 > 9) {
            throw new NumberFormatException("invalid digit");
        }
        return i12;
    }

    /* JADX WARN: Code restructure failed: missing block: B:100:0x00b4, code lost:
    
        if (r4 < r14) goto L77;
     */
    /* JADX WARN: Code restructure failed: missing block: B:101:0x00b6, code lost:
    
        if (r1 >= r12) goto L86;
     */
    /* JADX WARN: Code restructure failed: missing block: B:103:0x00ba, code lost:
    
        if (r1 != (r12 - 2)) goto L83;
     */
    /* JADX WARN: Code restructure failed: missing block: B:105:0x00be, code lost:
    
        if (r20[r1] != r6) goto L83;
     */
    /* JADX WARN: Code restructure failed: missing block: B:107:0x00c4, code lost:
    
        if (r20[r1 + 1] == r6) goto L86;
     */
    /* JADX WARN: Code restructure failed: missing block: B:108:0x00c6, code lost:
    
        if (r1 != r12) goto L85;
     */
    /* JADX WARN: Code restructure failed: missing block: B:109:0x00c8, code lost:
    
        if (r13 != false) goto L86;
     */
    /* JADX WARN: Code restructure failed: missing block: B:110:0x00ca, code lost:
    
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:111:0x00cb, code lost:
    
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:112:0x00a0, code lost:
    
        r15 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:114:0x008a, code lost:
    
        if (r15 != (r1 + 2)) goto L66;
     */
    /* JADX WARN: Code restructure failed: missing block: B:116:0x008e, code lost:
    
        if (r20[r1] != '*') goto L66;
     */
    /* JADX WARN: Code restructure failed: missing block: B:118:0x0094, code lost:
    
        if (r20[r1 + 1] != '*') goto L66;
     */
    /* JADX WARN: Code restructure failed: missing block: B:119:0x00a3, code lost:
    
        if (r1 < r12) goto L70;
     */
    /* JADX WARN: Code restructure failed: missing block: B:120:0x00a5, code lost:
    
        if (r4 < r14) goto L69;
     */
    /* JADX WARN: Code restructure failed: missing block: B:121:0x00a7, code lost:
    
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:122:0x00a8, code lost:
    
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:123:0x00a9, code lost:
    
        r0 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0086, code lost:
    
        if (r13 != false) goto L61;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0096, code lost:
    
        r1 = r15 + 1;
        r0 = indexOf(r23, r20, r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x009c, code lost:
    
        if (r0 >= 0) goto L64;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x009e, code lost:
    
        r15 = r12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x00a1, code lost:
    
        r0 = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x00aa, code lost:
    
        r5 = r15;
        r17 = r16;
        r15 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x00ae, code lost:
    
        r16 = r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x00b0, code lost:
    
        if (r4 < r14) goto L87;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x00cc, code lost:
    
        if (r1 < r12) goto L149;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x00f5, code lost:
    
        if (r5 != (r1 + 2)) goto L115;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x00f9, code lost:
    
        if (r20[r1] != r6) goto L115;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x00ff, code lost:
    
        if (r20[r1 + 1] != r6) goto L115;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x0101, code lost:
    
        r1 = r5 + 1;
        r0 = indexOf(r23, r20, r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x0107, code lost:
    
        if (r0 >= 0) goto L111;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x0109, code lost:
    
        r5 = r12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x010c, code lost:
    
        if (r1 < r12) goto L114;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x010f, code lost:
    
        r15 = r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x010e, code lost:
    
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x010b, code lost:
    
        r5 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x0111, code lost:
    
        r18 = r5;
        r19 = r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x0122, code lost:
    
        if (match(r20, r1, r5, r21, r4, r17, r22) != false) goto L130;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x0124, code lost:
    
        r0 = indexOf(r23, r20, r15);
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x0128, code lost:
    
        if (r0 >= 0) goto L120;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x012a, code lost:
    
        r5 = r12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x012d, code lost:
    
        r0 = indexOf(r23, r21, r16 + 1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x0133, code lost:
    
        if (r0 >= 0) goto L124;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x0135, code lost:
    
        r0 = r14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x0139, code lost:
    
        r17 = indexOf(r23, r21, r0);
        r4 = r0;
        r16 = r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x0140, code lost:
    
        if (r17 >= 0) goto L128;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x0142, code lost:
    
        r17 = r14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x0144, code lost:
    
        r1 = r15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x0145, code lost:
    
        r6 = r19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x0137, code lost:
    
        r0 = r0 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x012c, code lost:
    
        r5 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x0149, code lost:
    
        r1 = r18 + 1;
        r0 = indexOf(r23, r20, r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x014f, code lost:
    
        if (r0 >= 0) goto L133;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x0151, code lost:
    
        r5 = r12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x0154, code lost:
    
        r4 = r17 + 1;
        r17 = indexOf(r23, r21, r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x015a, code lost:
    
        if (r17 >= 0) goto L129;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x015c, code lost:
    
        r17 = r14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x0153, code lost:
    
        r5 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x00ce, code lost:
    
        if (r13 == false) goto L90;
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x00d1, code lost:
    
        r0 = indexOf(r23, r20, r15);
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x00d5, code lost:
    
        if (r0 >= 0) goto L93;
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x00d7, code lost:
    
        r5 = r12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x00da, code lost:
    
        r0 = indexOf(r23, r21, r16 + 1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x00e0, code lost:
    
        if (r0 >= 0) goto L97;
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x00e2, code lost:
    
        r0 = r14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x00e6, code lost:
    
        r17 = indexOf(r23, r21, r0);
        r4 = r0;
        r16 = r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x00ed, code lost:
    
        if (r17 >= 0) goto L101;
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x00ef, code lost:
    
        r17 = r14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x00f1, code lost:
    
        r1 = r15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:94:0x00e4, code lost:
    
        r0 = r0 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x00d9, code lost:
    
        r5 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x00d0, code lost:
    
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x00b2, code lost:
    
        if (r15 >= r5) goto L86;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final boolean pathMatch(char[] cArr, char[] cArr2, boolean z10, char c10) {
        if (cArr2 == null) {
            return false;
        }
        if (cArr == null) {
            return true;
        }
        int i10 = cArr[0] == c10 ? 1 : 0;
        int length = cArr.length;
        int indexOf = indexOf(c10, cArr, i10 + 1);
        if (indexOf < 0) {
            indexOf = length;
        }
        boolean z11 = cArr[length + (-1)] == c10;
        int length2 = cArr2.length;
        int i11 = cArr2[0] != c10 ? 0 : 1;
        if (i11 != i10) {
            return false;
        }
        int indexOf2 = indexOf(c10, cArr2, i11 + 1);
        int i12 = indexOf;
        int i13 = i11;
        int i14 = indexOf2 < 0 ? length2 : indexOf2;
        int i15 = i10;
        while (true) {
            char c11 = '*';
            if (i15 >= length || ((i12 == length && z11) || (i12 == i15 + 2 && cArr[i15] == '*' && cArr[i15 + 1] == '*'))) {
                break;
            }
            if (i13 >= length2 || !match(cArr, i15, i12, cArr2, i13, i14, z10)) {
                return false;
            }
            i15 = i12 + 1;
            int indexOf3 = indexOf(c10, cArr, i15);
            i12 = indexOf3 < 0 ? length : indexOf3;
            i13 = i14 + 1;
            i14 = indexOf(c10, cArr2, i13);
            if (i14 < 0) {
                i14 = length2;
            }
        }
    }

    public static final boolean prefixEquals(char[] cArr, char[] cArr2) {
        int length = cArr.length;
        if (cArr2.length < length) {
            return false;
        }
        do {
            length--;
            if (length < 0) {
                return true;
            }
        } while (cArr[length] == cArr2[length]);
        return false;
    }

    public static final char[] prepend(char c10, char[] cArr) {
        if (cArr == null) {
            return new char[]{c10};
        }
        int length = cArr.length;
        char[] cArr2 = new char[length + 1];
        System.arraycopy(cArr, 0, cArr2, 1, length);
        cArr2[0] = c10;
        return cArr2;
    }

    public static final char[] remove(char[] cArr, char c10) {
        char[] cArr2 = null;
        if (cArr == null) {
            return null;
        }
        int length = cArr.length;
        if (length == 0) {
            return cArr;
        }
        int i10 = 0;
        for (int i11 = 0; i11 < length; i11++) {
            char c11 = cArr[i11];
            if (c11 == c10) {
                if (cArr2 == null) {
                    cArr2 = new char[length];
                    System.arraycopy(cArr, 0, cArr2, 0, i11);
                    i10 = i11;
                }
            } else if (cArr2 != null) {
                cArr2[i10] = c11;
                i10++;
            }
        }
        if (cArr2 == null) {
            return cArr;
        }
        char[] cArr3 = new char[i10];
        System.arraycopy(cArr2, 0, cArr3, 0, i10);
        return cArr3;
    }

    public static final void replace(char[] cArr, char c10, char c11) {
        if (c10 != c11) {
            int length = cArr.length;
            for (int i10 = 0; i10 < length; i10++) {
                if (cArr[i10] == c10) {
                    cArr[i10] = c11;
                }
            }
        }
    }

    public static final char[] replaceOnCopy(char[] cArr, char c10, char c11) {
        int length = cArr.length;
        char[] cArr2 = null;
        for (int i10 = 0; i10 < length; i10++) {
            char c12 = cArr[i10];
            if (c12 == c10) {
                if (cArr2 == null) {
                    cArr2 = new char[length];
                    System.arraycopy(cArr, 0, cArr2, 0, i10);
                }
                cArr2[i10] = c11;
            } else if (cArr2 != null) {
                cArr2[i10] = c12;
            }
        }
        return cArr2 == null ? cArr : cArr2;
    }

    public static final char[][] splitAndTrimOn(char c10, char[] cArr) {
        int length = cArr == null ? 0 : cArr.length;
        if (length == 0) {
            return NO_CHAR_CHAR;
        }
        int i10 = 1;
        for (int i11 = 0; i11 < length; i11++) {
            if (cArr[i11] == c10) {
                i10++;
            }
        }
        char[][] cArr2 = new char[i10];
        int i12 = 0;
        int i13 = 0;
        for (int i14 = 0; i14 < length; i14++) {
            if (cArr[i14] == c10) {
                int i15 = i14 - 1;
                while (i12 < i14 && cArr[i12] == ' ') {
                    i12++;
                }
                while (i15 > i12 && cArr[i15] == ' ') {
                    i15--;
                }
                int i16 = (i15 - i12) + 1;
                char[] cArr3 = new char[i16];
                cArr2[i13] = cArr3;
                i13++;
                System.arraycopy(cArr, i12, cArr3, 0, i16);
                i12 = i14 + 1;
            }
        }
        int i17 = length - 1;
        while (i12 < length && cArr[i12] == ' ') {
            i12++;
        }
        while (i17 > i12 && cArr[i17] == ' ') {
            i17--;
        }
        int i18 = (i17 - i12) + 1;
        char[] cArr4 = new char[i18];
        cArr2[i13] = cArr4;
        System.arraycopy(cArr, i12, cArr4, 0, i18);
        return cArr2;
    }

    public static final char[][] splitOn(char c10, char[] cArr) {
        int length = cArr == null ? 0 : cArr.length;
        if (length == 0) {
            return NO_CHAR_CHAR;
        }
        int i10 = 1;
        for (int i11 = 0; i11 < length; i11++) {
            if (cArr[i11] == c10) {
                i10++;
            }
        }
        char[][] cArr2 = new char[i10];
        int i12 = 0;
        int i13 = 0;
        for (int i14 = 0; i14 < length; i14++) {
            if (cArr[i14] == c10) {
                int i15 = i14 - i13;
                char[] cArr3 = new char[i15];
                cArr2[i12] = cArr3;
                i12++;
                System.arraycopy(cArr, i13, cArr3, 0, i15);
                i13 = i14 + 1;
            }
        }
        int i16 = length - i13;
        char[] cArr4 = new char[i16];
        cArr2[i12] = cArr4;
        System.arraycopy(cArr, i13, cArr4, 0, i16);
        return cArr2;
    }

    public static final char[][] splitOnWithEnclosures(char c10, char c11, char c12, char[] cArr, int i10, int i11) {
        if ((cArr == null ? 0 : cArr.length) == 0 || i10 > i11) {
            return NO_CHAR_CHAR;
        }
        int i12 = 0;
        int i13 = 1;
        for (int i14 = i10; i14 < i11; i14++) {
            char c13 = cArr[i14];
            if (c13 == c11) {
                i12++;
            } else if (c13 == c10) {
                i13++;
            }
        }
        if (i12 == 0) {
            return splitOn(c10, cArr, i10, i11);
        }
        if (c11 == c10 || c12 == c10) {
            return NO_CHAR_CHAR;
        }
        int[][] iArr = (int[][]) Array.newInstance(Integer.TYPE, i13, 2);
        int i15 = i10;
        int i16 = i15;
        int i17 = 0;
        int i18 = 0;
        while (i10 < i11) {
            char c14 = cArr[i10];
            if (c14 == c11) {
                i17++;
            } else if (c14 == c12) {
                if (i17 > 0) {
                    i17--;
                }
            } else if (c14 == c10 && i17 == 0) {
                int[] iArr2 = iArr[i18];
                iArr2[0] = i16;
                i18++;
                iArr2[1] = i10;
                i16 = i10 + 1;
                i15 = i10;
            }
            i10++;
        }
        if (i15 < i11 - 1) {
            int[] iArr3 = iArr[i18];
            iArr3[0] = i16;
            i18++;
            iArr3[1] = i11;
        }
        int i19 = i18;
        char[][] cArr2 = new char[i19];
        for (int i20 = 0; i20 < i19; i20++) {
            int[] iArr4 = iArr[i20];
            int i21 = iArr4[0];
            int i22 = iArr4[1] - i21;
            char[] cArr3 = new char[i22];
            cArr2[i20] = cArr3;
            System.arraycopy(cArr, i21, cArr3, 0, i22);
        }
        return cArr2;
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

    public static final boolean substringMatch(String str, String str2) {
        if (str == null || str.length() == 0) {
            return true;
        }
        if (str2 == null) {
            return false;
        }
        return checkSubstringMatch(str.toCharArray(), str2.toCharArray());
    }

    public static char[][] toCharArrays(List<String> list) {
        if (list == null) {
            return null;
        }
        int size = list.size();
        char[][] cArr = new char[size];
        for (int i10 = 0; i10 < size; i10++) {
            cArr[i10] = list.get(i10).toCharArray();
        }
        return cArr;
    }

    public static final char[] toLowerCase(char[] cArr) {
        char[] cArr2 = null;
        if (cArr == null) {
            return null;
        }
        int length = cArr.length;
        for (int i10 = 0; i10 < length; i10++) {
            char c10 = cArr[i10];
            char lowerCase = ScannerHelper.toLowerCase(c10);
            if (c10 != lowerCase || cArr2 != null) {
                if (cArr2 == null) {
                    cArr2 = new char[length];
                    System.arraycopy(cArr, 0, cArr2, 0, i10);
                }
                cArr2[i10] = lowerCase;
            }
        }
        return cArr2 == null ? cArr : cArr2;
    }

    public static final String toString(char[][] cArr) {
        return new String(concatWith(cArr, '.'));
    }

    public static final String[] toStrings(char[][] cArr) {
        int length;
        if (cArr != null && (length = cArr.length) != 0) {
            String[] strArr = new String[length];
            for (int i10 = 0; i10 < length; i10++) {
                strArr[i10] = new String(cArr[i10]);
            }
            return strArr;
        }
        return NO_STRINGS;
    }

    public static final char[] toUpperCase(char[] cArr) {
        char[] cArr2 = null;
        if (cArr == null) {
            return null;
        }
        int length = cArr.length;
        for (int i10 = 0; i10 < length; i10++) {
            char c10 = cArr[i10];
            char upperCase = ScannerHelper.toUpperCase(c10);
            if (c10 != upperCase || cArr2 != null) {
                if (cArr2 == null) {
                    cArr2 = new char[length];
                    System.arraycopy(cArr, 0, cArr2, 0, i10);
                }
                cArr2[i10] = upperCase;
            }
        }
        return cArr2 == null ? cArr : cArr2;
    }

    public static final char[] trim(char[] cArr) {
        if (cArr == null) {
            return null;
        }
        int length = cArr.length;
        int i10 = length - 1;
        int i11 = 0;
        while (i11 < length && cArr[i11] == ' ') {
            i11++;
        }
        int i12 = i10;
        while (i12 > i11 && cArr[i12] == ' ') {
            i12--;
        }
        return (i11 == 0 && i12 == i10) ? cArr : subarray(cArr, i11, i12 + 1);
    }

    public static final boolean camelCaseMatch(char[] cArr, char[] cArr2, boolean z10) {
        if (cArr == null) {
            return true;
        }
        if (cArr2 == null) {
            return false;
        }
        return camelCaseMatch(cArr, 0, cArr.length, cArr2, 0, cArr2.length, z10);
    }

    public static final int indexOf(char[] cArr, char[] cArr2, boolean z10) {
        return indexOf(cArr, cArr2, z10, 0);
    }

    public static final boolean camelCaseMatch(char[] cArr, int i10, int i11, char[] cArr2, int i12, int i13) {
        return camelCaseMatch(cArr, i10, i11, cArr2, i12, i13, false);
    }

    public static final int indexOf(char[] cArr, char[] cArr2, boolean z10, int i10) {
        return indexOf(cArr, cArr2, z10, i10, cArr2.length);
    }

    public static final int lastIndexOf(char c10, char[] cArr, int i10) {
        int length = cArr.length;
        do {
            length--;
            if (length < i10) {
                return -1;
            }
        } while (c10 != cArr[length]);
        return length;
    }

    public static final int occurencesOf(char c10, char[] cArr, int i10) {
        int i11 = 0;
        while (i10 < cArr.length) {
            if (c10 == cArr[i10]) {
                i11++;
            }
            i10++;
        }
        return i11;
    }

    public static final boolean substringMatch(char[] cArr, char[] cArr2) {
        if (cArr == null || cArr.length == 0) {
            return true;
        }
        if (cArr2 == null) {
            return false;
        }
        return checkSubstringMatch(cArr, cArr2);
    }

    public static final boolean camelCaseMatch(char[] cArr, int i10, int i11, char[] cArr2, int i12, int i13, boolean z10) {
        if (cArr2 == null) {
            return false;
        }
        if (cArr == null) {
            return true;
        }
        if (i11 < 0) {
            i11 = cArr.length;
        }
        if (i13 < 0) {
            i13 = cArr2.length;
        }
        if (i11 <= i10) {
            return i13 <= i12;
        }
        if (i13 <= i12 || cArr2[i12] != cArr[i10]) {
            return false;
        }
        while (true) {
            i10++;
            i12++;
            if (i10 == i11) {
                if (!z10 || i12 == i13) {
                    return true;
                }
                while (i12 != i13) {
                    char c10 = cArr2[i12];
                    if (c10 < '\u0080') {
                        if ((ScannerHelper.OBVIOUS_IDENT_CHAR_NATURES[c10] & 32) != 0) {
                            return false;
                        }
                    } else if (!Character.isJavaIdentifierPart(c10) || Character.isUpperCase(c10)) {
                        return false;
                    }
                    i12++;
                }
                return true;
            }
            if (i12 == i13) {
                return false;
            }
            char c11 = cArr[i10];
            if (c11 != cArr2[i12]) {
                if (c11 < '\u0080') {
                    if ((ScannerHelper.OBVIOUS_IDENT_CHAR_NATURES[c11] & 36) == 0) {
                        return false;
                    }
                } else if (Character.isJavaIdentifierPart(c11) && !Character.isUpperCase(c11) && !Character.isDigit(c11)) {
                    return false;
                }
                while (i12 != i13) {
                    char c12 = cArr2[i12];
                    if (c12 < '\u0080') {
                        int i14 = ScannerHelper.OBVIOUS_IDENT_CHAR_NATURES[c12];
                        if ((i14 & 144) != 0) {
                            continue;
                        } else if ((i14 & 4) != 0) {
                            if (c11 == c12) {
                                break;
                            }
                        } else if (c11 != c12) {
                            return false;
                        }
                        i12++;
                    } else {
                        if (!Character.isJavaIdentifierPart(c12) || Character.isUpperCase(c12)) {
                            if (Character.isDigit(c12)) {
                                if (c11 == c12) {
                                    break;
                                }
                            } else if (c11 != c12) {
                                return false;
                            }
                        }
                        i12++;
                    }
                }
                return false;
            }
        }
    }

    public static final char[] concatNonEmpty(char[] cArr, char c10, char[] cArr2, char c11, char[] cArr3) {
        if (cArr != null && cArr.length != 0) {
            if (cArr2 != null && cArr2.length != 0) {
                if (cArr3 != null && cArr3.length != 0) {
                    return concat(cArr, c10, cArr2, c11, cArr3);
                }
                return concatNonEmpty(cArr, cArr2, c10);
            }
            return concatNonEmpty(cArr, cArr3, c10);
        }
        return concatNonEmpty(cArr2, cArr3, c11);
    }

    public static final boolean equals(char[][] cArr, char[][] cArr2, boolean z10) {
        if (z10) {
            return equals(cArr, cArr2);
        }
        if (cArr == cArr2) {
            return true;
        }
        if (cArr == null || cArr2 == null || cArr.length != cArr2.length) {
            return false;
        }
        int length = cArr.length;
        do {
            length--;
            if (length < 0) {
                return true;
            }
        } while (equals(cArr[length], cArr2[length], false));
        return false;
    }

    public static final int indexOf(char[] cArr, char[] cArr2, boolean z10, int i10, int i11) {
        int length = cArr.length;
        if (length > i11 || i10 < 0) {
            return -1;
        }
        if (length == 0) {
            return 0;
        }
        if (length == i11) {
            if (z10) {
                while (i10 < i11) {
                    if (cArr2[i10] != cArr[i10]) {
                        return -1;
                    }
                    i10++;
                }
                return 0;
            }
            while (i10 < i11) {
                if (ScannerHelper.toLowerCase(cArr2[i10]) != ScannerHelper.toLowerCase(cArr[i10])) {
                    return -1;
                }
                i10++;
            }
            return 0;
        }
        if (z10) {
            int i12 = (i11 - length) + 1;
            while (i10 < i12) {
                if (cArr2[i10] == cArr[0]) {
                    for (int i13 = 1; i13 < length; i13++) {
                        if (cArr2[i10 + i13] != cArr[i13]) {
                            break;
                        }
                    }
                    return i10;
                }
                i10++;
            }
        } else {
            int i14 = (i11 - length) + 1;
            while (i10 < i14) {
                if (ScannerHelper.toLowerCase(cArr2[i10]) == ScannerHelper.toLowerCase(cArr[0])) {
                    for (int i15 = 1; i15 < length; i15++) {
                        if (ScannerHelper.toLowerCase(cArr2[i10 + i15]) != ScannerHelper.toLowerCase(cArr[i15])) {
                            break;
                        }
                    }
                    return i10;
                }
                i10++;
            }
        }
        return -1;
    }

    public static final boolean match(char[] cArr, int i10, int i11, char[] cArr2, int i12, int i13, boolean z10) {
        int i14;
        char lowerCase;
        if (cArr2 == null) {
            return false;
        }
        if (cArr == null) {
            return true;
        }
        if (i11 < 0) {
            i11 = cArr.length;
        }
        if (i13 < 0) {
            i13 = cArr2.length;
        }
        while (i10 != i11) {
            char c10 = cArr[i10];
            if (c10 == '*') {
                if (c10 == '*') {
                    i10++;
                    i14 = i10;
                } else {
                    i14 = 0;
                }
                int i15 = i12;
                while (i12 < i13) {
                    if (i10 != i11) {
                        char c11 = cArr[i10];
                        if (c11 == '*') {
                            i14 = i10 + 1;
                            if (i14 == i11) {
                                return true;
                            }
                            i15 = i12;
                            i10 = i14;
                        } else {
                            if ((z10 ? cArr2[i12] : ScannerHelper.toLowerCase(cArr2[i12])) == c11 || c11 == '?') {
                                i12++;
                                i10++;
                            }
                        }
                    }
                    i15++;
                    i10 = i14;
                    i12 = i15;
                }
                return i14 == i11 || (i12 == i13 && i10 == i11) || (i10 == i11 - 1 && cArr[i10] == '*');
            }
            if (i12 == i13) {
                return false;
            }
            if (z10) {
                lowerCase = cArr2[i12];
            } else {
                lowerCase = ScannerHelper.toLowerCase(cArr2[i12]);
            }
            if (c10 != lowerCase && c10 != '?') {
                return false;
            }
            i12++;
            i10++;
        }
        return i12 == i13;
    }

    public static final boolean prefixEquals(char[] cArr, char[] cArr2, boolean z10) {
        return prefixEquals(cArr, cArr2, z10, 0);
    }

    public static final void replace(char[] cArr, char[] cArr2, char c10) {
        replace(cArr, cArr2, c10, 0, cArr.length);
    }

    public static final char[] append(char[] cArr, char[] cArr2) {
        if (cArr2 != null && cArr2.length != 0) {
            int length = cArr.length;
            int length2 = cArr2.length;
            int i10 = length + length2;
            if (i10 > length) {
                char[] cArr3 = new char[i10];
                System.arraycopy(cArr, 0, cArr3, 0, length);
                cArr = cArr3;
            }
            System.arraycopy(cArr2, 0, cArr, length, length2);
        }
        return cArr;
    }

    public static final int compareTo(char[] cArr, char[] cArr2, int i10, int i11) {
        int length = cArr.length;
        int length2 = cArr2.length;
        int min = Math.min(Math.min(length, length2), i11);
        while (i10 < min) {
            char c10 = cArr[i10];
            char c11 = cArr2[i10];
            if (c10 != c11) {
                return c10 - c11;
            }
            i10++;
        }
        return length - length2;
    }

    public static final boolean contains(char c10, char[] cArr) {
        int length = cArr.length;
        do {
            length--;
            if (length < 0) {
                return false;
            }
        } while (cArr[length] != c10);
        return true;
    }

    public static final int lastIndexOf(char c10, char[] cArr, int i10, int i11) {
        do {
            i11--;
            if (i11 < i10) {
                return -1;
            }
        } while (c10 != cArr[i11]);
        return i11;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0015, code lost:
    
        if (r4[r0] == r5[r7 + r0]) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0017, code lost:
    
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x000e, code lost:
    
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0018, code lost:
    
        r0 = r0 - 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x001a, code lost:
    
        if (r0 >= 0) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x002b, code lost:
    
        if (org.eclipse.jdt.internal.compiler.parser.ScannerHelper.toLowerCase(r4[r0]) == org.eclipse.jdt.internal.compiler.parser.ScannerHelper.toLowerCase(r5[r7 + r0])) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x002d, code lost:
    
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x001c, code lost:
    
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x0008, code lost:
    
        if (r6 != false) goto L7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x000a, code lost:
    
        r0 = r0 - 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x000c, code lost:
    
        if (r0 >= 0) goto L10;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final boolean prefixEquals(char[] cArr, char[] cArr2, boolean z10, int i10) {
        int length = cArr.length;
        if (cArr2.length - i10 < length) {
            return false;
        }
    }

    public static final void replace(char[] cArr, char[] cArr2, char c10, int i10, int i11) {
        while (true) {
            i11--;
            if (i11 < i10) {
                return;
            }
            int length = cArr2.length;
            while (true) {
                length--;
                if (length < 0) {
                    break;
                } else if (cArr[i11] == cArr2[length]) {
                    cArr[i11] = c10;
                }
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

    public static final char[][] arrayConcat(char[][] cArr, char[] cArr2) {
        if (cArr2 == null) {
            return cArr;
        }
        if (cArr == null) {
            return new char[][]{cArr2};
        }
        int length = cArr.length;
        char[][] cArr3 = new char[length + 1];
        System.arraycopy(cArr, 0, cArr3, 0, length);
        cArr3[length] = cArr2;
        return cArr3;
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

    public static final boolean contains(char[] cArr, char[] cArr2) {
        int length = cArr2.length;
        while (true) {
            length--;
            if (length < 0) {
                return false;
            }
            int length2 = cArr.length;
            do {
                length2--;
                if (length2 < 0) {
                    break;
                }
            } while (cArr2[length] != cArr[length2]);
            return true;
        }
    }

    public static final boolean equals(char[] cArr, char[] cArr2) {
        if (cArr == cArr2) {
            return true;
        }
        if (cArr == null || cArr2 == null || cArr.length != cArr2.length) {
            return false;
        }
        int length = cArr.length;
        do {
            length--;
            if (length < 0) {
                return true;
            }
        } while (cArr[length] == cArr2[length]);
        return false;
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
            int i11 = 0;
            i10 = 0;
            while (i11 < length) {
                int indexOf = indexOf(cArr2, cArr, true, i11);
                if (indexOf == -1) {
                    i11++;
                } else {
                    if (i10 == iArr.length) {
                        int[] iArr2 = new int[i10 * 2];
                        System.arraycopy(iArr, 0, iArr2, 0, i10);
                        iArr = iArr2;
                    }
                    iArr[i10] = indexOf;
                    i10++;
                    i11 = indexOf + length2;
                }
            }
        }
        if (i10 == 0) {
            return cArr;
        }
        char[] cArr4 = new char[((length3 - length2) * i10) + length];
        int i12 = 0;
        int i13 = 0;
        for (int i14 = 0; i14 < i10; i14++) {
            int i15 = iArr[i14] - i12;
            System.arraycopy(cArr, i12, cArr4, i13, i15);
            int i16 = i13 + i15;
            System.arraycopy(cArr3, 0, cArr4, i16, length3);
            i12 = i12 + i15 + length2;
            i13 = i16 + length3;
        }
        System.arraycopy(cArr, i12, cArr4, i13, length - i12);
        return cArr4;
    }

    public static final char[] append(char[] cArr, int i10, char[] cArr2, int i11, int i12) {
        int i13 = i12 - i11;
        int i14 = i13 + i10;
        if (i14 > cArr.length) {
            char[] cArr3 = new char[i14 * 2];
            System.arraycopy(cArr, 0, cArr3, 0, i10);
            cArr = cArr3;
        }
        System.arraycopy(cArr2, i11, cArr, i10, i13);
        return cArr;
    }

    public static final char[][] splitOn(char c10, char[] cArr, int i10, int i11) {
        if ((cArr == null ? 0 : cArr.length) != 0 && i10 <= i11) {
            int i12 = 1;
            for (int i13 = i10; i13 < i11; i13++) {
                if (cArr[i13] == c10) {
                    i12++;
                }
            }
            char[][] cArr2 = new char[i12];
            int i14 = i10;
            int i15 = 0;
            while (i10 < i11) {
                if (cArr[i10] == c10) {
                    int i16 = i10 - i14;
                    char[] cArr3 = new char[i16];
                    cArr2[i15] = cArr3;
                    i15++;
                    System.arraycopy(cArr, i14, cArr3, 0, i16);
                    i14 = i10 + 1;
                }
                i10++;
            }
            int i17 = i11 - i14;
            char[] cArr4 = new char[i17];
            cArr2[i15] = cArr4;
            System.arraycopy(cArr, i14, cArr4, 0, i17);
            return cArr2;
        }
        return NO_CHAR_CHAR;
    }

    public static final char[] concatWith(char[][] cArr, char[] cArr2, char c10) {
        int length = cArr2 == null ? 0 : cArr2.length;
        if (length == 0) {
            return concatWith(cArr, c10);
        }
        int length2 = cArr == null ? 0 : cArr.length;
        if (length2 == 0) {
            return cArr2;
        }
        int i10 = length;
        int i11 = length2;
        while (true) {
            i11--;
            if (i11 < 0) {
                break;
            }
            char[] cArr3 = cArr[i11];
            if (cArr3.length > 0) {
                i10 += cArr3.length + 1;
            }
        }
        char[] cArr4 = new char[i10];
        int i12 = 0;
        for (int i13 = 0; i13 < length2; i13++) {
            char[] cArr5 = cArr[i13];
            int length3 = cArr5.length;
            if (length3 > 0) {
                System.arraycopy(cArr5, 0, cArr4, i12, length3);
                int i14 = i12 + length3;
                cArr4[i14] = c10;
                i12 = i14 + 1;
            }
        }
        System.arraycopy(cArr2, 0, cArr4, i12, length);
        return cArr4;
    }

    public static final boolean equals(char[] cArr, char[] cArr2, int i10, int i11) {
        return equals(cArr, cArr2, i10, i11, true);
    }

    public static final int indexOf(char c10, char[] cArr, int i10) {
        while (i10 < cArr.length) {
            if (c10 == cArr[i10]) {
                return i10;
            }
            i10++;
        }
        return -1;
    }

    public static final boolean equals(char[] cArr, char[] cArr2, int i10, int i11, boolean z10) {
        if (cArr == cArr2) {
            return true;
        }
        if (cArr == null || cArr2 == null || cArr.length != i11 - i10) {
            return false;
        }
        if (z10) {
            int length = cArr.length;
            do {
                length--;
                if (length < 0) {
                }
            } while (cArr[length] == cArr2[length + i10]);
            return false;
        }
        int length2 = cArr.length;
        do {
            length2--;
            if (length2 < 0) {
            }
        } while (ScannerHelper.toLowerCase(cArr[length2]) == ScannerHelper.toLowerCase(cArr2[length2 + i10]));
        return false;
        return true;
    }

    public static final int indexOf(char c10, char[] cArr, int i10, int i11) {
        while (i10 < i11) {
            if (c10 == cArr[i10]) {
                return i10;
            }
            i10++;
        }
        return -1;
    }

    public static final char[] concat(char[] cArr, char[] cArr2, char c10) {
        if (cArr == null) {
            return cArr2;
        }
        if (cArr2 == null) {
            return cArr;
        }
        int length = cArr.length;
        if (length == 0) {
            return cArr2;
        }
        int length2 = cArr2.length;
        if (length2 == 0) {
            return cArr;
        }
        char[] cArr3 = new char[length + length2 + 1];
        System.arraycopy(cArr, 0, cArr3, 0, length);
        cArr3[length] = c10;
        System.arraycopy(cArr2, 0, cArr3, length + 1, length2);
        return cArr3;
    }

    public static final boolean equals(char[] cArr, char[] cArr2, boolean z10) {
        if (z10) {
            return equals(cArr, cArr2);
        }
        if (cArr == cArr2) {
            return true;
        }
        if (cArr == null || cArr2 == null || cArr.length != cArr2.length) {
            return false;
        }
        int length = cArr.length;
        do {
            length--;
            if (length < 0) {
                return true;
            }
        } while (ScannerHelper.toLowerCase(cArr[length]) == ScannerHelper.toLowerCase(cArr2[length]));
        return false;
    }

    public static final char[] concatWith(char[][] cArr, char c10) {
        int length = cArr == null ? 0 : cArr.length;
        if (length == 0) {
            return NO_CHAR;
        }
        int i10 = length - 1;
        int i11 = length;
        while (true) {
            i11--;
            if (i11 < 0) {
                break;
            }
            char[] cArr2 = cArr[i11];
            i10 = cArr2.length == 0 ? i10 - 1 : i10 + cArr2.length;
        }
        if (i10 <= 0) {
            return NO_CHAR;
        }
        char[] cArr3 = new char[i10];
        while (true) {
            length--;
            if (length < 0) {
                return cArr3;
            }
            char[] cArr4 = cArr[length];
            int length2 = cArr4.length;
            if (length2 > 0) {
                int i12 = i10 - length2;
                System.arraycopy(cArr4, 0, cArr3, i12, length2);
                i10 = i12 - 1;
                if (i10 >= 0) {
                    cArr3[i10] = c10;
                }
            }
        }
    }

    public static final char[] concat(char[] cArr, char c10, char[] cArr2, char c11, char[] cArr3) {
        if (cArr == null) {
            return concat(cArr2, cArr3, c11);
        }
        if (cArr2 == null) {
            return concat(cArr, cArr3, c10);
        }
        if (cArr3 == null) {
            return concat(cArr, cArr2, c10);
        }
        int length = cArr.length;
        int length2 = cArr2.length;
        int length3 = cArr3.length;
        int i10 = length + length2;
        char[] cArr4 = new char[i10 + length3 + 2];
        System.arraycopy(cArr, 0, cArr4, 0, length);
        cArr4[length] = c10;
        System.arraycopy(cArr2, 0, cArr4, length + 1, length2);
        cArr4[i10 + 1] = c11;
        System.arraycopy(cArr3, 0, cArr4, i10 + 2, length3);
        return cArr4;
    }

    public static final char[] concat(char c10, char[] cArr, char c11) {
        if (cArr == null) {
            return new char[]{c10, c11};
        }
        int length = cArr.length;
        char[] cArr2 = new char[2 + length];
        cArr2[0] = c10;
        System.arraycopy(cArr, 0, cArr2, 1, length);
        cArr2[length + 1] = c11;
        return cArr2;
    }
}
