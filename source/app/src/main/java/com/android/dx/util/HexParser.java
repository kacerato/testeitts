package com.android.dx.util;

import org.eclipse.jdt.internal.core.JavadocConstants;

public final class HexParser {
    private HexParser() {
    }

    public static byte[] parse(String str) {
        int indexOf;
        int length = str.length();
        int i10 = length / 2;
        byte[] bArr = new byte[i10];
        int i11 = 0;
        int i12 = 0;
        int i13 = 0;
        while (i12 < length) {
            int indexOf2 = str.indexOf(10, i12);
            if (indexOf2 < 0) {
                indexOf2 = length;
            }
            int indexOf3 = str.indexOf(35, i12);
            String substring = (indexOf3 < 0 || indexOf3 >= indexOf2) ? str.substring(i12, indexOf2) : str.substring(i12, indexOf3);
            int i14 = indexOf2 + 1;
            int indexOf4 = substring.indexOf(58);
            if (indexOf4 != -1 && ((indexOf = substring.indexOf(34)) == -1 || indexOf >= indexOf4)) {
                String trim = substring.substring(i11, indexOf4).trim();
                substring = substring.substring(indexOf4 + 1);
                if (Integer.parseInt(trim, 16) != i13) {
                    throw new RuntimeException("bogus offset marker: " + trim);
                }
            }
            int length2 = substring.length();
            int i15 = i11;
            int i16 = i15;
            int i17 = -1;
            while (i15 < length2) {
                char charAt = substring.charAt(i15);
                if (i16 != 0) {
                    if (charAt == '\"') {
                        i16 = 0;
                    } else {
                        bArr[i13] = (byte) charAt;
                        i13++;
                    }
                } else if (charAt > ' ') {
                    if (charAt != '\"') {
                        int digit = Character.digit(charAt, 16);
                        if (digit == -1) {
                            throw new RuntimeException("bogus digit character: \"" + charAt + JavadocConstants.ANCHOR_PREFIX_END);
                        }
                        if (i17 == -1) {
                            i17 = digit;
                        } else {
                            bArr[i13] = (byte) ((i17 << 4) | digit);
                            i13++;
                            i17 = -1;
                        }
                    } else {
                        if (i17 != -1) {
                            throw new RuntimeException("spare digit around offset " + Hex.u4(i13));
                        }
                        i16 = 1;
                    }
                }
                i15++;
            }
            if (i17 != -1) {
                throw new RuntimeException("spare digit around offset " + Hex.u4(i13));
            }
            if (i16 != 0) {
                throw new RuntimeException("unterminated quote around offset " + Hex.u4(i13));
            }
            i12 = i14;
            i11 = 0;
        }
        if (i13 >= i10) {
            return bArr;
        }
        byte[] bArr2 = new byte[i13];
        System.arraycopy(bArr, 0, bArr2, 0, i13);
        return bArr2;
    }
}
