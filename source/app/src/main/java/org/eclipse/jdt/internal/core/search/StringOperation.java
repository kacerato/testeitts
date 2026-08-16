package org.eclipse.jdt.internal.core.search;

import org.eclipse.jdt.internal.compiler.parser.ScannerHelper;

public final class StringOperation {
    private static final int[] EMPTY_REGIONS = new int[0];

    /* JADX WARN: Removed duplicated region for block: B:65:0x010e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final int[] getCamelCaseMatchingRegions(String str, int i10, int i11, String str2, int i12, int i13, boolean z10) {
        char c10;
        int i14 = i10;
        int i15 = i12;
        if (str2 == null) {
            return null;
        }
        if (str == null) {
            return EMPTY_REGIONS;
        }
        int length = i11 < 0 ? str.length() : i11;
        int length2 = i13 < 0 ? str2.length() : i13;
        int i16 = 0;
        int i17 = 2;
        int i18 = 1;
        if (length <= i14) {
            if (length2 <= i15) {
                return new int[]{i14, length - i14};
            }
            return null;
        }
        if (length2 <= i15 || str2.charAt(i12) != str.charAt(i10)) {
            return null;
        }
        int i19 = i14 + 1;
        int i20 = 1;
        while (true) {
            c10 = '\u0080';
            if (i19 >= length) {
                break;
            }
            char charAt = str.charAt(i19);
            if (charAt < '\u0080') {
                if ((ScannerHelper.OBVIOUS_IDENT_CHAR_NATURES[charAt] & 36) == 0) {
                    i19++;
                    i16 = 0;
                    i18 = 1;
                }
                i20++;
                i19++;
                i16 = 0;
                i18 = 1;
            } else {
                if (Character.isJavaIdentifierPart(charAt)) {
                    if (!Character.isUpperCase(charAt) && !Character.isDigit(charAt)) {
                    }
                    i20++;
                }
                i19++;
                i16 = 0;
                i18 = 1;
            }
        }
        int i21 = i15;
        int[] iArr = null;
        int i22 = i16;
        while (true) {
            i14 += i18;
            i15 += i18;
            if (i14 == length) {
                if (!z10 || i15 == length2) {
                    if (iArr == null) {
                        iArr = new int[i17];
                    }
                    int i23 = i22 + 1;
                    iArr[i22] = i21;
                    int i24 = i22 + i17;
                    iArr[i23] = i15 - i21;
                    if (i24 >= iArr.length) {
                        return iArr;
                    }
                    int[] iArr2 = new int[i24];
                    System.arraycopy(iArr, i16, iArr2, i16, i24);
                    return iArr2;
                }
                for (int i25 = i15; i25 != length2; i25++) {
                    char charAt2 = str2.charAt(i25);
                    if (charAt2 < c10) {
                        if ((ScannerHelper.OBVIOUS_IDENT_CHAR_NATURES[charAt2] & 32) != 0) {
                            return null;
                        }
                    } else if (!Character.isJavaIdentifierPart(charAt2) || Character.isUpperCase(charAt2)) {
                        return null;
                    }
                }
                if (iArr == null) {
                    iArr = new int[i17];
                }
                int i26 = i22 + 1;
                iArr[i22] = i21;
                int i27 = i22 + i17;
                iArr[i26] = i15 - i21;
                if (i27 >= iArr.length) {
                    return iArr;
                }
                int[] iArr3 = new int[i27];
                System.arraycopy(iArr, i16, iArr3, i16, i27);
                return iArr3;
            }
            if (i15 == length2) {
                return null;
            }
            char charAt3 = str.charAt(i14);
            if (charAt3 != str2.charAt(i15)) {
                if (charAt3 < c10) {
                    if ((ScannerHelper.OBVIOUS_IDENT_CHAR_NATURES[charAt3] & 36) == 0) {
                        return null;
                    }
                } else if (Character.isJavaIdentifierPart(charAt3) && !Character.isUpperCase(charAt3) && !Character.isDigit(charAt3)) {
                    return null;
                }
                int i28 = i15;
                while (i28 != length2) {
                    char charAt4 = str2.charAt(i28);
                    if (charAt4 < c10) {
                        int i29 = ScannerHelper.OBVIOUS_IDENT_CHAR_NATURES[charAt4];
                        if ((i29 & 144) == 0) {
                            if ((i29 & 4) != 0) {
                                if (charAt3 == charAt4) {
                                }
                            } else if (charAt3 != charAt4) {
                                return null;
                            }
                            i17 = 2;
                            if (iArr == null) {
                                iArr = new int[i20 * 2];
                            }
                            int i30 = i22 + 1;
                            iArr[i22] = i21;
                            i22 += 2;
                            iArr[i30] = i15 - i21;
                            i15 = i28;
                            i21 = i15;
                            i16 = 0;
                            i18 = 1;
                            c10 = '\u0080';
                        } else {
                            continue;
                        }
                        i28++;
                        c10 = '\u0080';
                    } else {
                        if (!Character.isJavaIdentifierPart(charAt4) || Character.isUpperCase(charAt4)) {
                            if (Character.isDigit(charAt4)) {
                                if (charAt3 == charAt4) {
                                }
                            } else if (charAt3 != charAt4) {
                                return null;
                            }
                            i17 = 2;
                            if (iArr == null) {
                            }
                            int i302 = i22 + 1;
                            iArr[i22] = i21;
                            i22 += 2;
                            iArr[i302] = i15 - i21;
                            i15 = i28;
                            i21 = i15;
                            i16 = 0;
                            i18 = 1;
                            c10 = '\u0080';
                        }
                        i28++;
                        c10 = '\u0080';
                    }
                }
                return null;
            }
            i16 = 0;
        }
    }

    public static final int[] getPatternMatchingRegions(String str, int i10, int i11, String str2, int i12, int i13, boolean z10) {
        char c10;
        char c11;
        char c12;
        int[] iArr = null;
        if (str2 == null) {
            return null;
        }
        if (str == null) {
            return EMPTY_REGIONS;
        }
        int length = i11 < 0 ? str.length() : i11;
        int length2 = i13 < 0 ? str2.length() : i13;
        int i14 = i10;
        int i15 = 0;
        int i16 = 0;
        char c13 = 0;
        while (true) {
            c10 = '*';
            c11 = '?';
            if (i14 >= length) {
                break;
            }
            char charAt = str.charAt(i14);
            if (charAt != '*') {
                if (charAt == '?') {
                    i16++;
                } else if (c13 == 0 || c13 == '*' || c13 == '?') {
                    i15++;
                }
            }
            i14++;
            c13 = charAt;
        }
        if (i15 == 0) {
            if (i16 <= length2 - i12) {
                return EMPTY_REGIONS;
            }
            return null;
        }
        int i17 = i15 * 2;
        int[] iArr2 = new int[i17];
        int i18 = i12;
        int i19 = i10;
        char c14 = 0;
        int i20 = 0;
        char c15 = 0;
        int i21 = i18;
        while (i19 < length) {
            c14 = str.charAt(i19);
            if (c14 == c10) {
                break;
            }
            if (i21 == length2) {
                return null;
            }
            if (c14 != c11) {
                if (z10) {
                    if (c14 != str2.charAt(i21)) {
                        return null;
                    }
                } else if (ScannerHelper.toLowerCase(c14) != ScannerHelper.toLowerCase(str2.charAt(i21))) {
                    return null;
                }
                if (c15 == 0 || c15 == '?') {
                    i18 = i19;
                }
            } else if (c15 != 0 && c15 != c11) {
                int i22 = i20 + 1;
                iArr2[i20] = i18;
                i20 += 2;
                iArr2[i22] = i19 - i18;
            }
            i21++;
            i19++;
            c15 = c14;
            c10 = '*';
            c11 = '?';
        }
        if (c14 != c10) {
            if (i21 != length2) {
                return null;
            }
            if (i20 == i17) {
                return iArr2;
            }
            char c16 = '?';
            if (c15 == '?') {
                int i23 = length;
                while (true) {
                    int i24 = i23 - 1;
                    if (str.charAt(i23 - 2) != c16) {
                        length = i24;
                        break;
                    }
                    if (i24 == i18) {
                        return new int[]{i10, length - i10};
                    }
                    i23 = i24;
                    c16 = '?';
                }
            }
            return new int[]{i18, length - i18};
        }
        if (i19 > 0 && c15 != '?') {
            int i25 = i20 + 1;
            iArr2[i20] = i18;
            i20 += 2;
            iArr2[i25] = i21 - i18;
            i18 = i21;
        }
        int i26 = i19 + 1;
        int i27 = i21;
        char c17 = c14;
        int i28 = i26;
        while (i21 < length2) {
            if (i26 == length) {
                i27++;
                i21 = i27;
                c17 = c14;
                i26 = i28;
            } else {
                char charAt2 = str.charAt(i26);
                if (charAt2 == '*') {
                    i28 = i26 + 1;
                    if (i28 == length) {
                        if (i20 < i17) {
                            iArr2[i20] = i18;
                            iArr2[i20 + 1] = i21 - i18;
                        }
                        return iArr2;
                    }
                    if (c17 != '*' && c17 != '?') {
                        int i29 = i20 + 1;
                        iArr2[i20] = i18;
                        i20 += 2;
                        iArr2[i29] = i21 - i18;
                    }
                    i27 = i21;
                    i18 = i27;
                    i26 = i28;
                    c14 = charAt2;
                    c17 = c14;
                } else {
                    if (charAt2 == '?') {
                        c12 = c14;
                        if (c17 != '*' && c17 != '?') {
                            int i30 = i20 + 1;
                            iArr2[i20] = i18;
                            i20 += 2;
                            iArr2[i30] = i21 - i18;
                        }
                    } else {
                        c12 = c14;
                        if (!z10 ? ScannerHelper.toLowerCase(str2.charAt(i21)) == ScannerHelper.toLowerCase(charAt2) : str2.charAt(i21) == charAt2) {
                            i18 = i27 + 1;
                            c14 = c12;
                            c17 = c14;
                            i27 = i18;
                            i21 = i27;
                            i26 = i28;
                        } else if (c17 == '?') {
                            i18 = i21;
                        }
                    }
                    i21++;
                    i26++;
                    c14 = c12;
                    c17 = charAt2;
                }
                iArr = null;
            }
        }
        if (i28 != length && ((i21 != length2 || i26 != length) && (i26 != length - 1 || str.charAt(i26) != '*'))) {
            return iArr;
        }
        if (i20 < i17) {
            iArr2[i20] = i18;
            iArr2[i20 + 1] = i21 - i18;
        }
        return iArr2;
    }
}
