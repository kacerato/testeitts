package org.apache.commons.lang3.math;

import java.lang.reflect.Array;
import java.math.BigDecimal;
import java.math.BigInteger;
import org.apache.commons.lang3.StringUtils;
import org.apache.commons.lang3.Validate;
import yd.C16181m;

public class NumberUtils {
    public static final Long LONG_ZERO = 0L;
    public static final Long LONG_ONE = 1L;
    public static final Long LONG_MINUS_ONE = -1L;
    public static final Integer INTEGER_ZERO = 0;
    public static final Integer INTEGER_ONE = 1;
    public static final Integer INTEGER_MINUS_ONE = -1;
    public static final Short SHORT_ZERO = 0;
    public static final Short SHORT_ONE = 1;
    public static final Short SHORT_MINUS_ONE = -1;
    public static final Byte BYTE_ZERO = (byte) 0;
    public static final Byte BYTE_ONE = (byte) 1;
    public static final Byte BYTE_MINUS_ONE = (byte) -1;
    public static final Double DOUBLE_ZERO = Double.valueOf(0.0d);
    public static final Double DOUBLE_ONE = Double.valueOf(1.0d);
    public static final Double DOUBLE_MINUS_ONE = Double.valueOf(-1.0d);
    public static final Float FLOAT_ZERO = Float.valueOf(0.0f);
    public static final Float FLOAT_ONE = Float.valueOf(1.0f);
    public static final Float FLOAT_MINUS_ONE = Float.valueOf(-1.0f);

    public static int compare(byte b10, byte b11) {
        return b10 - b11;
    }

    public static BigDecimal createBigDecimal(String str) {
        if (str == null) {
            return null;
        }
        if (StringUtils.isBlank(str)) {
            throw new NumberFormatException("A blank string is not a valid number");
        }
        if (!str.trim().startsWith("--")) {
            return new BigDecimal(str);
        }
        throw new NumberFormatException(str + " is not a valid number.");
    }

    public static BigInteger createBigInteger(String str) {
        int i10;
        if (str == null) {
            return null;
        }
        boolean startsWith = str.startsWith("-");
        int i11 = 16;
        if (str.startsWith("0x", startsWith ? 1 : 0) || str.startsWith("0X", startsWith ? 1 : 0)) {
            i10 = (startsWith ? 1 : 0) + 2;
        } else if (str.startsWith(C16181m.f130230g, startsWith ? 1 : 0)) {
            i10 = (startsWith ? 1 : 0) + 1;
        } else {
            if (str.startsWith("0", startsWith ? 1 : 0)) {
                int length = str.length();
                int i12 = (startsWith ? 1 : 0) + 1;
                if (length > i12) {
                    i11 = 8;
                    i10 = i12;
                }
            }
            i11 = 10;
            i10 = startsWith ? 1 : 0;
        }
        BigInteger bigInteger = new BigInteger(str.substring(i10), i11);
        return startsWith ? bigInteger.negate() : bigInteger;
    }

    public static Double createDouble(String str) {
        if (str == null) {
            return null;
        }
        return Double.valueOf(str);
    }

    public static Float createFloat(String str) {
        if (str == null) {
            return null;
        }
        return Float.valueOf(str);
    }

    public static Integer createInteger(String str) {
        if (str == null) {
            return null;
        }
        return Integer.decode(str);
    }

    public static Long createLong(String str) {
        if (str == null) {
            return null;
        }
        return Long.decode(str);
    }

    /* JADX WARN: Code restructure failed: missing block: B:70:0x0137, code lost:
    
        if (r1 == 'l') goto L83;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static Number createNumber(String str) throws NumberFormatException {
        int i10;
        String mantissa;
        String str2;
        Float createFloat;
        Double createDouble;
        String str3 = null;
        if (str == null) {
            return null;
        }
        if (StringUtils.isBlank(str)) {
            throw new NumberFormatException("A blank string is not a valid number");
        }
        String[] strArr = {"0x", "0X", "-0x", "-0X", C16181m.f130230g, "-#"};
        char c10 = 0;
        int i11 = 0;
        while (true) {
            if (i11 >= 6) {
                i10 = 0;
                break;
            }
            String str4 = strArr[i11];
            if (str.startsWith(str4)) {
                i10 = str4.length();
                break;
            }
            i11++;
        }
        if (i10 > 0) {
            int i12 = i10;
            while (i10 < str.length() && (c10 = str.charAt(i10)) == '0') {
                i12++;
                i10++;
            }
            int length = str.length() - i12;
            return (length > 16 || (length == 16 && c10 > '7')) ? createBigInteger(str) : (length > 8 || (length == 8 && c10 > '7')) ? createLong(str) : createInteger(str);
        }
        char charAt = str.charAt(str.length() - 1);
        int indexOf = str.indexOf(46);
        int indexOf2 = str.indexOf(101) + str.indexOf(69);
        int i13 = indexOf2 + 1;
        if (indexOf > -1) {
            if (i13 <= -1) {
                str2 = str.substring(indexOf + 1);
            } else {
                if (i13 < indexOf || i13 > str.length()) {
                    throw new NumberFormatException(str + " is not a valid number.");
                }
                str2 = str.substring(indexOf + 1, i13);
            }
            mantissa = getMantissa(str, indexOf);
        } else {
            if (i13 <= -1) {
                mantissa = getMantissa(str);
            } else {
                if (i13 > str.length()) {
                    throw new NumberFormatException(str + " is not a valid number.");
                }
                mantissa = getMantissa(str, i13);
            }
            str2 = null;
        }
        if (Character.isDigit(charAt) || charAt == '.') {
            if (i13 > -1 && i13 < str.length() - 1) {
                str3 = str.substring(indexOf2 + 2, str.length());
            }
            if (str2 == null && str3 == null) {
                try {
                    try {
                        return createInteger(str);
                    } catch (NumberFormatException unused) {
                        return createLong(str);
                    }
                } catch (NumberFormatException unused2) {
                    return createBigInteger(str);
                }
            }
            if (isAllZeros(mantissa) && isAllZeros(str3)) {
                c10 = 1;
            }
            try {
                createFloat = createFloat(str);
                createDouble = createDouble(str);
            } catch (NumberFormatException unused3) {
            }
            if (!createFloat.isInfinite() && ((createFloat.floatValue() != 0.0f || c10 != 0) && createFloat.toString().equals(createDouble.toString()))) {
                return createFloat;
            }
            if (!createDouble.isInfinite() && (createDouble.doubleValue() != 0.0d || c10 != 0)) {
                BigDecimal createBigDecimal = createBigDecimal(str);
                return createBigDecimal.compareTo(BigDecimal.valueOf(createDouble.doubleValue())) == 0 ? createDouble : createBigDecimal;
            }
            return createBigDecimal(str);
        }
        if (i13 > -1 && i13 < str.length() - 1) {
            str3 = str.substring(indexOf2 + 2, str.length() - 1);
        }
        String substring = str.substring(0, str.length() - 1);
        boolean z10 = isAllZeros(mantissa) && isAllZeros(str3);
        if (charAt != 'D') {
            if (charAt != 'F') {
                if (charAt != 'L') {
                    if (charAt != 'd') {
                        if (charAt != 'f') {
                        }
                    }
                }
                if (str2 == null && str3 == null && ((substring.charAt(0) == '-' && isDigits(substring.substring(1))) || isDigits(substring))) {
                    try {
                        return createLong(substring);
                    } catch (NumberFormatException unused4) {
                        return createBigInteger(substring);
                    }
                }
                throw new NumberFormatException(str + " is not a valid number.");
            }
            try {
                Float createFloat2 = createFloat(str);
                if (!createFloat2.isInfinite()) {
                    if (createFloat2.floatValue() != 0.0f || z10) {
                        return createFloat2;
                    }
                }
            } catch (NumberFormatException unused5) {
            }
        }
        try {
            Double createDouble2 = createDouble(str);
            if (!createDouble2.isInfinite()) {
                if (createDouble2.floatValue() != 0.0d || z10) {
                    return createDouble2;
                }
            }
        } catch (NumberFormatException unused6) {
        }
        try {
            return createBigDecimal(substring);
        } catch (NumberFormatException unused7) {
            throw new NumberFormatException(str + " is not a valid number.");
        }
    }

    private static String getMantissa(String str) {
        return getMantissa(str, str.length());
    }

    private static boolean isAllZeros(String str) {
        if (str == null) {
            return true;
        }
        for (int length = str.length() - 1; length >= 0; length--) {
            if (str.charAt(length) != '0') {
                return false;
            }
        }
        return str.length() > 0;
    }

    /* JADX WARN: Code restructure failed: missing block: B:100:0x00d0, code lost:
    
        return r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:101:?, code lost:
    
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:102:?, code lost:
    
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:103:?, code lost:
    
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:104:?, code lost:
    
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:105:?, code lost:
    
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:106:0x00d1, code lost:
    
        if (r13 != false) goto L159;
     */
    /* JADX WARN: Code restructure failed: missing block: B:107:0x00d3, code lost:
    
        if (r14 == false) goto L160;
     */
    /* JADX WARN: Code restructure failed: missing block: B:109:0x00d6, code lost:
    
        return r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:110:?, code lost:
    
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:111:?, code lost:
    
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x008e, code lost:
    
        if (r7 >= r0.length) goto L101;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x0090, code lost:
    
        r0 = r0[r7];
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x0092, code lost:
    
        if (r0 < '0') goto L72;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x0094, code lost:
    
        if (r0 > '9') goto L72;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x0098, code lost:
    
        if (org.apache.commons.lang3.SystemUtils.IS_JAVA_1_6 == false) goto L71;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x009a, code lost:
    
        if (r3 == false) goto L71;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x009c, code lost:
    
        if (r16 != false) goto L71;
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x009e, code lost:
    
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x009f, code lost:
    
        return r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x00a0, code lost:
    
        if (r0 == 'e') goto L154;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x00a2, code lost:
    
        if (r0 != 'E') goto L75;
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x00a5, code lost:
    
        if (r0 != '.') goto L81;
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x00a7, code lost:
    
        if (r16 != false) goto L80;
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x00a9, code lost:
    
        if (r15 == false) goto L79;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x00ac, code lost:
    
        return r14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x00ad, code lost:
    
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x00ae, code lost:
    
        if (r13 != false) goto L90;
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x00b2, code lost:
    
        if (r0 == 'd') goto L89;
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x00b6, code lost:
    
        if (r0 == 'D') goto L89;
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x00b8, code lost:
    
        if (r0 == 'f') goto L89;
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x00bc, code lost:
    
        if (r0 != 'F') goto L90;
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x00be, code lost:
    
        return r14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x00c1, code lost:
    
        if (r0 == 'l') goto L96;
     */
    /* JADX WARN: Code restructure failed: missing block: B:94:0x00c5, code lost:
    
        if (r0 != 'L') goto L95;
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x00c8, code lost:
    
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:96:0x00c9, code lost:
    
        if (r14 == false) goto L155;
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x00cb, code lost:
    
        if (r15 != false) goto L156;
     */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x00cd, code lost:
    
        if (r16 != false) goto L157;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static boolean isCreatable(String str) {
        char c10;
        if (StringUtils.isEmpty(str)) {
            return false;
        }
        char[] charArray = str.toCharArray();
        int length = charArray.length;
        char c11 = charArray[0];
        boolean z10 = true;
        int i10 = (c11 == '-' || c11 == '+') ? 1 : 0;
        boolean z11 = i10 == 1 && c11 == '+';
        int i11 = i10 + 1;
        if (length > i11 && charArray[i10] == '0') {
            char c12 = charArray[i11];
            if (c12 == 'x' || c12 == 'X') {
                int i12 = i10 + 2;
                if (i12 == length) {
                    return false;
                }
                while (i12 < charArray.length) {
                    char c13 = charArray[i12];
                    if ((c13 < '0' || c13 > '9') && ((c13 < 'a' || c13 > 'f') && (c13 < 'A' || c13 > 'F'))) {
                        return false;
                    }
                    i12++;
                }
                return true;
            }
            if (Character.isDigit(c12)) {
                while (i11 < charArray.length) {
                    char c14 = charArray[i11];
                    if (c14 < '0' || c14 > '7') {
                        return false;
                    }
                    i11++;
                }
                return true;
            }
        }
        int i13 = length - 1;
        boolean z12 = false;
        boolean z13 = false;
        boolean z14 = false;
        boolean z15 = false;
        while (true) {
            if (i10 < i13 || (i10 < length && z12 && !z13)) {
                char c15 = charArray[i10];
                if (c15 >= '0' && c15 <= '9') {
                    z12 = false;
                    c10 = '+';
                    z13 = true;
                } else if (c15 == '.') {
                    if (z15 || z14) {
                        break;
                    }
                    c10 = '+';
                    z15 = true;
                } else if (c15 == 'e' || c15 == 'E') {
                    c10 = '+';
                    if (z14 || !z13) {
                        return false;
                    }
                    z12 = true;
                    z14 = true;
                } else {
                    c10 = '+';
                    if ((c15 != '+' && c15 != '-') || !z12) {
                        return false;
                    }
                    z12 = false;
                    z13 = false;
                }
                i10++;
                z10 = true;
            }
        }
        return false;
    }

    public static boolean isDigits(String str) {
        return StringUtils.isNumeric(str);
    }

    @Deprecated
    public static boolean isNumber(String str) {
        return isCreatable(str);
    }

    public static boolean isParsable(String str) {
        if (StringUtils.isEmpty(str) || str.charAt(str.length() - 1) == '.') {
            return false;
        }
        if (str.charAt(0) != '-') {
            return withDecimalsParsing(str, 0);
        }
        if (str.length() == 1) {
            return false;
        }
        return withDecimalsParsing(str, 1);
    }

    public static byte max(byte b10, byte b11, byte b12) {
        if (b11 > b10) {
            b10 = b11;
        }
        return b12 > b10 ? b12 : b10;
    }

    public static byte min(byte b10, byte b11, byte b12) {
        if (b11 < b10) {
            b10 = b11;
        }
        return b12 < b10 ? b12 : b10;
    }

    public static byte toByte(String str) {
        return toByte(str, (byte) 0);
    }

    public static double toDouble(String str) {
        return toDouble(str, 0.0d);
    }

    public static float toFloat(String str) {
        return toFloat(str, 0.0f);
    }

    public static int toInt(String str) {
        return toInt(str, 0);
    }

    public static long toLong(String str) {
        return toLong(str, 0L);
    }

    public static short toShort(String str) {
        return toShort(str, (short) 0);
    }

    private static void validateArray(Object obj) {
        Validate.isTrue(obj != null, "The Array must not be null", new Object[0]);
        Validate.isTrue(Array.getLength(obj) != 0, "Array cannot be empty.", new Object[0]);
    }

    private static boolean withDecimalsParsing(String str, int i10) {
        int i11 = 0;
        while (i10 < str.length()) {
            boolean z10 = str.charAt(i10) == '.';
            if (z10) {
                i11++;
            }
            if (i11 > 1) {
                return false;
            }
            if (!z10 && !Character.isDigit(str.charAt(i10))) {
                return false;
            }
            i10++;
        }
        return true;
    }

    public static int compare(int i10, int i11) {
        if (i10 == i11) {
            return 0;
        }
        return i10 < i11 ? -1 : 1;
    }

    private static String getMantissa(String str, int i10) {
        char charAt = str.charAt(0);
        return str.substring((charAt == '-' || charAt == '+') ? 1 : 0, i10);
    }

    public static int max(int i10, int i11, int i12) {
        if (i11 > i10) {
            i10 = i11;
        }
        return i12 > i10 ? i12 : i10;
    }

    public static int min(int i10, int i11, int i12) {
        if (i11 < i10) {
            i10 = i11;
        }
        return i12 < i10 ? i12 : i10;
    }

    public static byte toByte(String str, byte b10) {
        if (str == null) {
            return b10;
        }
        try {
            return Byte.parseByte(str);
        } catch (NumberFormatException unused) {
            return b10;
        }
    }

    public static double toDouble(String str, double d10) {
        if (str == null) {
            return d10;
        }
        try {
            return Double.parseDouble(str);
        } catch (NumberFormatException unused) {
            return d10;
        }
    }

    public static float toFloat(String str, float f10) {
        if (str == null) {
            return f10;
        }
        try {
            return Float.parseFloat(str);
        } catch (NumberFormatException unused) {
            return f10;
        }
    }

    public static int toInt(String str, int i10) {
        if (str == null) {
            return i10;
        }
        try {
            return Integer.parseInt(str);
        } catch (NumberFormatException unused) {
            return i10;
        }
    }

    public static long toLong(String str, long j10) {
        if (str == null) {
            return j10;
        }
        try {
            return Long.parseLong(str);
        } catch (NumberFormatException unused) {
            return j10;
        }
    }

    public static short toShort(String str, short s10) {
        if (str == null) {
            return s10;
        }
        try {
            return Short.parseShort(str);
        } catch (NumberFormatException unused) {
            return s10;
        }
    }

    public static int compare(long j10, long j11) {
        if (j10 == j11) {
            return 0;
        }
        return j10 < j11 ? -1 : 1;
    }

    public static long max(long j10, long j11, long j12) {
        if (j11 > j10) {
            j10 = j11;
        }
        return j12 > j10 ? j12 : j10;
    }

    public static long min(long j10, long j11, long j12) {
        if (j11 < j10) {
            j10 = j11;
        }
        return j12 < j10 ? j12 : j10;
    }

    public static int compare(short s10, short s11) {
        if (s10 == s11) {
            return 0;
        }
        return s10 < s11 ? -1 : 1;
    }

    public static short max(short s10, short s11, short s12) {
        if (s11 > s10) {
            s10 = s11;
        }
        return s12 > s10 ? s12 : s10;
    }

    public static short min(short s10, short s11, short s12) {
        if (s11 < s10) {
            s10 = s11;
        }
        return s12 < s10 ? s12 : s10;
    }

    public static long max(long... jArr) {
        validateArray(jArr);
        long j10 = jArr[0];
        for (int i10 = 1; i10 < jArr.length; i10++) {
            long j11 = jArr[i10];
            if (j11 > j10) {
                j10 = j11;
            }
        }
        return j10;
    }

    public static long min(long... jArr) {
        validateArray(jArr);
        long j10 = jArr[0];
        for (int i10 = 1; i10 < jArr.length; i10++) {
            long j11 = jArr[i10];
            if (j11 < j10) {
                j10 = j11;
            }
        }
        return j10;
    }

    public static int max(int... iArr) {
        validateArray(iArr);
        int i10 = iArr[0];
        for (int i11 = 1; i11 < iArr.length; i11++) {
            int i12 = iArr[i11];
            if (i12 > i10) {
                i10 = i12;
            }
        }
        return i10;
    }

    public static int min(int... iArr) {
        validateArray(iArr);
        int i10 = iArr[0];
        for (int i11 = 1; i11 < iArr.length; i11++) {
            int i12 = iArr[i11];
            if (i12 < i10) {
                i10 = i12;
            }
        }
        return i10;
    }

    public static short max(short... sArr) {
        validateArray(sArr);
        short s10 = sArr[0];
        for (int i10 = 1; i10 < sArr.length; i10++) {
            short s11 = sArr[i10];
            if (s11 > s10) {
                s10 = s11;
            }
        }
        return s10;
    }

    public static short min(short... sArr) {
        validateArray(sArr);
        short s10 = sArr[0];
        for (int i10 = 1; i10 < sArr.length; i10++) {
            short s11 = sArr[i10];
            if (s11 < s10) {
                s10 = s11;
            }
        }
        return s10;
    }

    public static byte max(byte... bArr) {
        validateArray(bArr);
        byte b10 = bArr[0];
        for (int i10 = 1; i10 < bArr.length; i10++) {
            byte b11 = bArr[i10];
            if (b11 > b10) {
                b10 = b11;
            }
        }
        return b10;
    }

    public static byte min(byte... bArr) {
        validateArray(bArr);
        byte b10 = bArr[0];
        for (int i10 = 1; i10 < bArr.length; i10++) {
            byte b11 = bArr[i10];
            if (b11 < b10) {
                b10 = b11;
            }
        }
        return b10;
    }

    public static double max(double... dArr) {
        validateArray(dArr);
        double d10 = dArr[0];
        for (int i10 = 1; i10 < dArr.length; i10++) {
            if (Double.isNaN(dArr[i10])) {
                return Double.NaN;
            }
            double d11 = dArr[i10];
            if (d11 > d10) {
                d10 = d11;
            }
        }
        return d10;
    }

    public static double min(double... dArr) {
        validateArray(dArr);
        double d10 = dArr[0];
        for (int i10 = 1; i10 < dArr.length; i10++) {
            if (Double.isNaN(dArr[i10])) {
                return Double.NaN;
            }
            double d11 = dArr[i10];
            if (d11 < d10) {
                d10 = d11;
            }
        }
        return d10;
    }

    public static float max(float... fArr) {
        validateArray(fArr);
        float f10 = fArr[0];
        for (int i10 = 1; i10 < fArr.length; i10++) {
            if (Float.isNaN(fArr[i10])) {
                return Float.NaN;
            }
            float f11 = fArr[i10];
            if (f11 > f10) {
                f10 = f11;
            }
        }
        return f10;
    }

    public static float min(float... fArr) {
        validateArray(fArr);
        float f10 = fArr[0];
        for (int i10 = 1; i10 < fArr.length; i10++) {
            if (Float.isNaN(fArr[i10])) {
                return Float.NaN;
            }
            float f11 = fArr[i10];
            if (f11 < f10) {
                f10 = f11;
            }
        }
        return f10;
    }

    public static double max(double d10, double d11, double d12) {
        return Math.max(Math.max(d10, d11), d12);
    }

    public static double min(double d10, double d11, double d12) {
        return Math.min(Math.min(d10, d11), d12);
    }

    public static float max(float f10, float f11, float f12) {
        return Math.max(Math.max(f10, f11), f12);
    }

    public static float min(float f10, float f11, float f12) {
        return Math.min(Math.min(f10, f11), f12);
    }
}
