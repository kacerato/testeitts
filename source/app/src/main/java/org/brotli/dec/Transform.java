package org.brotli.dec;

import b3.s;
import org.eclipse.jdt.internal.core.JavadocConstants;
import org.openjdk.tools.doclint.DocLint;

final class Transform {
    static final Transform[] TRANSFORMS = {new Transform("", 0, ""), new Transform("", 0, " "), new Transform(" ", 0, " "), new Transform("", 12, ""), new Transform("", 10, " "), new Transform("", 0, " the "), new Transform(" ", 0, ""), new Transform("s ", 0, " "), new Transform("", 0, " of "), new Transform("", 10, ""), new Transform("", 0, " and "), new Transform("", 13, ""), new Transform("", 1, ""), new Transform(", ", 0, " "), new Transform("", 0, ", "), new Transform(" ", 10, " "), new Transform("", 0, " in "), new Transform("", 0, " to "), new Transform("e ", 0, " "), new Transform("", 0, JavadocConstants.ANCHOR_PREFIX_END), new Transform("", 0, "."), new Transform("", 0, "\">"), new Transform("", 0, "\n"), new Transform("", 3, ""), new Transform("", 0, "]"), new Transform("", 0, " for "), new Transform("", 14, ""), new Transform("", 2, ""), new Transform("", 0, " a "), new Transform("", 0, " that "), new Transform(" ", 10, ""), new Transform("", 0, ". "), new Transform(".", 0, ""), new Transform(" ", 0, ", "), new Transform("", 15, ""), new Transform("", 0, " with "), new Transform("", 0, "'"), new Transform("", 0, " from "), new Transform("", 0, " by "), new Transform("", 16, ""), new Transform("", 17, ""), new Transform(" the ", 0, ""), new Transform("", 4, ""), new Transform("", 0, ". The "), new Transform("", 11, ""), new Transform("", 0, " on "), new Transform("", 0, " as "), new Transform("", 0, " is "), new Transform("", 7, ""), new Transform("", 1, "ing "), new Transform("", 0, "\n\t"), new Transform("", 0, s.f32937c), new Transform(" ", 0, ". "), new Transform("", 0, "ed "), new Transform("", 20, ""), new Transform("", 18, ""), new Transform("", 6, ""), new Transform("", 0, "("), new Transform("", 10, ", "), new Transform("", 8, ""), new Transform("", 0, " at "), new Transform("", 0, "ly "), new Transform(" the ", 0, " of "), new Transform("", 5, ""), new Transform("", 9, ""), new Transform(" ", 10, ", "), new Transform("", 10, JavadocConstants.ANCHOR_PREFIX_END), new Transform(".", 0, "("), new Transform("", 11, " "), new Transform("", 10, "\">"), new Transform("", 0, "=\""), new Transform(" ", 0, "."), new Transform(".com/", 0, ""), new Transform(" the ", 0, " of the "), new Transform("", 10, "'"), new Transform("", 0, ". This "), new Transform("", 0, DocLint.SEPARATOR), new Transform(".", 0, " "), new Transform("", 10, "("), new Transform("", 10, "."), new Transform("", 0, " not "), new Transform(" ", 0, "=\""), new Transform("", 0, "er "), new Transform(" ", 11, " "), new Transform("", 0, "al "), new Transform(" ", 11, ""), new Transform("", 0, "='"), new Transform("", 11, JavadocConstants.ANCHOR_PREFIX_END), new Transform("", 10, ". "), new Transform(" ", 0, "("), new Transform("", 0, "ful "), new Transform(" ", 10, ". "), new Transform("", 0, "ive "), new Transform("", 0, "less "), new Transform("", 11, "'"), new Transform("", 0, "est "), new Transform(" ", 10, "."), new Transform("", 11, "\">"), new Transform(" ", 0, "='"), new Transform("", 10, DocLint.SEPARATOR), new Transform("", 0, "ize "), new Transform("", 11, "."), new Transform("\u00c2\u00a0", 0, ""), new Transform(" ", 0, DocLint.SEPARATOR), new Transform("", 10, "=\""), new Transform("", 11, "=\""), new Transform("", 0, "ous "), new Transform("", 11, ", "), new Transform("", 10, "='"), new Transform(" ", 10, DocLint.SEPARATOR), new Transform(" ", 11, "=\""), new Transform(" ", 11, ", "), new Transform("", 11, DocLint.SEPARATOR), new Transform("", 11, "("), new Transform("", 11, ". "), new Transform(" ", 11, "."), new Transform("", 11, "='"), new Transform(" ", 11, ". "), new Transform(" ", 10, "=\""), new Transform(" ", 11, "='"), new Transform(" ", 10, "='")};
    private final byte[] prefix;
    private final byte[] suffix;
    private final int type;

    public Transform(String str, int i10, String str2) {
        this.prefix = readUniBytes(str);
        this.type = i10;
        this.suffix = readUniBytes(str2);
    }

    public static byte[] readUniBytes(String str) {
        int length = str.length();
        byte[] bArr = new byte[length];
        for (int i10 = 0; i10 < length; i10++) {
            bArr[i10] = (byte) str.charAt(i10);
        }
        return bArr;
    }

    public static int transformDictionaryWord(byte[] bArr, int i10, byte[] bArr2, int i11, int i12, Transform transform) {
        int i13 = i10;
        for (byte b10 : transform.prefix) {
            bArr[i13] = b10;
            i13++;
        }
        int i14 = transform.type;
        int omitFirst = WordTransformType.getOmitFirst(i14);
        if (omitFirst > i12) {
            omitFirst = i12;
        }
        int i15 = i11 + omitFirst;
        int omitLast = (i12 - omitFirst) - WordTransformType.getOmitLast(i14);
        int i16 = omitLast;
        while (i16 > 0) {
            bArr[i13] = bArr2[i15];
            i16--;
            i13++;
            i15++;
        }
        if (i14 == 11 || i14 == 10) {
            int i17 = i13 - omitLast;
            if (i14 == 10) {
                omitLast = 1;
            }
            while (omitLast > 0) {
                byte b11 = bArr[i17];
                int i18 = b11 & 255;
                if (i18 < 192) {
                    if (i18 >= 97 && i18 <= 122) {
                        bArr[i17] = (byte) (b11 ^ 32);
                    }
                    i17++;
                    omitLast--;
                } else if (i18 < 224) {
                    int i19 = i17 + 1;
                    bArr[i19] = (byte) (bArr[i19] ^ 32);
                    i17 += 2;
                    omitLast -= 2;
                } else {
                    int i20 = i17 + 2;
                    bArr[i20] = (byte) (bArr[i20] ^ 5);
                    i17 += 3;
                    omitLast -= 3;
                }
            }
        }
        for (byte b12 : transform.suffix) {
            bArr[i13] = b12;
            i13++;
        }
        return i13 - i10;
    }
}
