package org.eclipse.jdt.internal.compiler.util;

public class FloatUtil {
    private static final int DOUBLE_EXPONENT_BIAS = 1023;
    private static final int DOUBLE_EXPONENT_SHIFT = 52;
    private static final int DOUBLE_FRACTION_WIDTH = 52;
    private static final int DOUBLE_PRECISION = 53;
    private static final int MAX_DOUBLE_EXPONENT = 1023;
    private static final int MAX_SINGLE_EXPONENT = 127;
    private static final int MIN_NORMALIZED_DOUBLE_EXPONENT = -1022;
    private static final int MIN_NORMALIZED_SINGLE_EXPONENT = -126;
    private static final int MIN_UNNORMALIZED_DOUBLE_EXPONENT = -1075;
    private static final int MIN_UNNORMALIZED_SINGLE_EXPONENT = -150;
    private static final int SINGLE_EXPONENT_BIAS = 127;
    private static final int SINGLE_EXPONENT_SHIFT = 23;
    private static final int SINGLE_FRACTION_WIDTH = 23;
    private static final int SINGLE_PRECISION = 24;

    /* JADX WARN: Code restructure failed: missing block: B:100:0x0100, code lost:
    
        if (r0 <= org.eclipse.jdt.internal.compiler.util.FloatUtil.MIN_UNNORMALIZED_DOUBLE_EXPONENT) goto L89;
     */
    /* JADX WARN: Code restructure failed: missing block: B:102:?, code lost:
    
        return r6 >>> ((-1021) - r15);
     */
    /* JADX WARN: Code restructure failed: missing block: B:104:0x010d, code lost:
    
        return java.lang.Double.doubleToLongBits(Double.NaN);
     */
    /* JADX WARN: Code restructure failed: missing block: B:105:0x00d6, code lost:
    
        r2 = (((r9 - r8) - 1) * (-4)) - r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:106:0x00dd, code lost:
    
        r2 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:107:0x00c8, code lost:
    
        r6 = r13 << (53 - r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:109:0x0110, code lost:
    
        if (r4 <= 24) goto L96;
     */
    /* JADX WARN: Code restructure failed: missing block: B:110:0x0112, code lost:
    
        r13 = r13 >>> (r4 - 25);
        r13 = r13 + (1 & r13);
        r6 = r13 >>> 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:111:0x0120, code lost:
    
        if ((r6 & 16777216) == 0) goto L97;
     */
    /* JADX WARN: Code restructure failed: missing block: B:112:0x0122, code lost:
    
        r6 = r13 >>> r5;
        r1 = r1 - 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:113:0x012b, code lost:
    
        if (r4 <= 0) goto L101;
     */
    /* JADX WARN: Code restructure failed: missing block: B:114:0x012d, code lost:
    
        if (r9 >= r8) goto L100;
     */
    /* JADX WARN: Code restructure failed: missing block: B:115:0x012f, code lost:
    
        r2 = ((r8 - r9) * 4) - r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:116:0x013d, code lost:
    
        r15 = (r15 * r10) + r2;
        r0 = r15 - 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:117:0x0143, code lost:
    
        if (r0 <= 127) goto L106;
     */
    /* JADX WARN: Code restructure failed: missing block: B:118:0x0145, code lost:
    
        r0 = java.lang.Float.floatToIntBits(Float.POSITIVE_INFINITY);
     */
    /* JADX WARN: Code restructure failed: missing block: B:120:0x016c, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:122:0x014f, code lost:
    
        if (r0 < (-126)) goto L109;
     */
    /* JADX WARN: Code restructure failed: missing block: B:124:?, code lost:
    
        return ((r15 - (-126)) << 23) | ((-8388609) & r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:126:0x015e, code lost:
    
        if (r0 <= org.eclipse.jdt.internal.compiler.util.FloatUtil.MIN_UNNORMALIZED_SINGLE_EXPONENT) goto L112;
     */
    /* JADX WARN: Code restructure failed: missing block: B:128:?, code lost:
    
        return r6 >>> ((-125) - r15);
     */
    /* JADX WARN: Code restructure failed: missing block: B:129:0x0165, code lost:
    
        r0 = java.lang.Float.floatToIntBits(Float.NaN);
     */
    /* JADX WARN: Code restructure failed: missing block: B:130:0x0135, code lost:
    
        r2 = (((r9 - r8) - 1) * (-4)) - r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:131:0x013c, code lost:
    
        r2 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:132:0x0127, code lost:
    
        r6 = r13 << (24 - r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:133:0x00a6, code lost:
    
        r1 = r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:134:0x00a7, code lost:
    
        r4 = r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:135:0x00a9, code lost:
    
        r1 = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:136:0x00ab, code lost:
    
        r1 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:137:0x007d, code lost:
    
        r0 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:139:0x017d, code lost:
    
        r7 = r7 + 1;
        r15 = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:141:0x0184, code lost:
    
        r15 = r15 - '7';
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x0035, code lost:
    
        switch(r15) {
            case 65: goto L119;
            case 66: goto L119;
            case 67: goto L119;
            case 68: goto L119;
            case 69: goto L119;
            case 70: goto L119;
            default: goto L21;
        };
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0038, code lost:
    
        switch(r15) {
            case 97: goto L118;
            case 98: goto L118;
            case 99: goto L118;
            case 100: goto L118;
            case 101: goto L118;
            case 102: goto L118;
            default: goto L137;
        };
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x0181, code lost:
    
        r15 = r15 - 'W';
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x003b, code lost:
    
        if (r8 >= 0) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x003d, code lost:
    
        r8 = r7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x0040, code lost:
    
        if (r15 == 'P') goto L31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x0044, code lost:
    
        if (r15 != 'p') goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x004c, code lost:
    
        throw new java.lang.NumberFormatException();
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x004d, code lost:
    
        r7 = r7 + 1;
        r10 = r2;
        r15 = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x0050, code lost:
    
        if (r7 < r1) goto L34;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x0053, code lost:
    
        r2 = r19[r7];
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x0057, code lost:
    
        if (r2 == '+') goto L143;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x005b, code lost:
    
        if (r2 == '-') goto L141;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x0177, code lost:
    
        r7 = r7 + 1;
        r15 = -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x005d, code lost:
    
        switch(r2) {
            case 48: goto L114;
            case 49: goto L114;
            case 50: goto L114;
            case 51: goto L114;
            case 52: goto L114;
            case 53: goto L114;
            case 54: goto L114;
            case 55: goto L114;
            case 56: goto L114;
            case 57: goto L114;
            default: goto L142;
        };
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x016d, code lost:
    
        r10 = (r10 * 10) + (r2 - '0');
        r7 = r7 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x0060, code lost:
    
        if (r7 >= r1) goto L52;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x0062, code lost:
    
        r0 = r19[r7];
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x0066, code lost:
    
        if (r0 == 'D') goto L52;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x006a, code lost:
    
        if (r0 == 'F') goto L51;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x006e, code lost:
    
        if (r0 == 'd') goto L52;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x0072, code lost:
    
        if (r0 != 'f') goto L49;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x007a, code lost:
    
        throw new java.lang.NumberFormatException();
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x007b, code lost:
    
        r0 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x0080, code lost:
    
        if (r13 != 0) goto L56;
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x0082, code lost:
    
        return 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x0083, code lost:
    
        r1 = r13 >>> (r4 - 4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x008c, code lost:
    
        if ((8 & r1) != 0) goto L66;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x008e, code lost:
    
        r6 = r4 - 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x0096, code lost:
    
        if ((r1 & 4) != 0) goto L65;
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x0098, code lost:
    
        r6 = r4 - 2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x00a0, code lost:
    
        if ((r1 & 2) != 0) goto L63;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x00a2, code lost:
    
        r4 = r4 - 3;
        r1 = 3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x00ae, code lost:
    
        if (r0 == false) goto L91;
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x00b2, code lost:
    
        if (r4 <= 53) goto L74;
     */
    /* JADX WARN: Code restructure failed: missing block: B:85:0x00b4, code lost:
    
        r13 = r13 >>> (r4 - 54);
        r13 = r13 + (1 & r13);
        r6 = r13 >>> 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x00c1, code lost:
    
        if ((r6 & 9007199254740992L) == 0) goto L75;
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x00c3, code lost:
    
        r6 = r13 >>> r5;
        r1 = r1 - 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:88:0x00cc, code lost:
    
        if (r4 <= 0) goto L79;
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x00ce, code lost:
    
        if (r9 >= r8) goto L78;
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x00d0, code lost:
    
        r2 = ((r8 - r9) * 4) - r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:91:0x00de, code lost:
    
        r15 = (r15 * r10) + r2;
        r0 = r15 - 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x00e4, code lost:
    
        if (r0 <= 1023) goto L83;
     */
    /* JADX WARN: Code restructure failed: missing block: B:94:?, code lost:
    
        return java.lang.Double.doubleToLongBits(Double.POSITIVE_INFINITY);
     */
    /* JADX WARN: Code restructure failed: missing block: B:96:0x00ef, code lost:
    
        if (r0 < (-1022)) goto L86;
     */
    /* JADX WARN: Code restructure failed: missing block: B:98:?, code lost:
    
        return ((r15 - (-1022)) << 52) | ((-4503599627370497L) & r6);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static long convertHexFloatingPointLiteralToBits(char[] cArr) {
        int i10;
        int length = cArr.length;
        int i11 = 0;
        if (cArr[0] != '0') {
            throw new NumberFormatException();
        }
        char c10 = cArr[1];
        if (c10 != 'X' && c10 != 'x') {
            throw new NumberFormatException();
        }
        int i12 = 2;
        int i13 = 2;
        int i14 = -1;
        while (true) {
            char c11 = cArr[i13];
            if (c11 == '.') {
                i14 = i13;
                i11 = 0;
                i13++;
            } else {
                if (c11 != '0') {
                    break;
                }
                i13++;
                i11 = 0;
            }
            i12 = 2;
        }
        int i15 = i11;
        long j10 = 0;
        int i16 = -1;
        while (true) {
            char c12 = cArr[i13];
            if (c12 != '.') {
                switch (c12) {
                    case '0':
                    case '1':
                    case '2':
                    case '3':
                    case '4':
                    case '5':
                    case '6':
                    case '7':
                    case '8':
                    case '9':
                        i10 = c12 - '0';
                        break;
                }
                if (i15 == 0) {
                    j10 = i10;
                    i16 = i13;
                    i15 = 4;
                } else if (i15 < 60) {
                    i15 += 4;
                    j10 = i10 | (j10 << 4);
                }
                i13++;
                i11 = 0;
            } else {
                i14 = i13;
                i11 = 0;
                i13++;
            }
            i12 = 2;
        }
    }

    public static double valueOfHexDoubleLiteral(char[] cArr) {
        return Double.longBitsToDouble(convertHexFloatingPointLiteralToBits(cArr));
    }

    public static float valueOfHexFloatLiteral(char[] cArr) {
        return Float.intBitsToFloat((int) convertHexFloatingPointLiteralToBits(cArr));
    }
}
