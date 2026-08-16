package java.lang;

import java.lang.constant.Constable;
import java.lang.constant.ConstantDesc;
import java.lang.invoke.MethodHandles;
import java.math.BigInteger;
import java.util.Objects;
import java.util.Optional;
import jdk.internal.ValueBased;
import jdk.internal.misc.CDS;
import jdk.internal.util.DecimalDigits;
import jdk.internal.vm.annotation.ForceInline;
import jdk.internal.vm.annotation.IntrinsicCandidate;
import jdk.internal.vm.annotation.Stable;
import sk.C15316b;
import yd.C16181m;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/lang/Long.class
 */
@ValueBased
public final class Long extends Number implements Comparable<Long>, Constable, ConstantDesc {
    public static final long MIN_VALUE = Long.MIN_VALUE;
    public static final long MAX_VALUE = Long.MAX_VALUE;
    public static final Class<Long> TYPE = Class.getPrimitiveClass("long");
    private final long value;
    public static final int SIZE = 64;
    public static final int BYTES = 8;
    private static final long serialVersionUID = 4290774380558885855L;

    public static String toString(long i10, int radix) {
        if (radix < 2 || radix > 36) {
            radix = 10;
        }
        if (radix == 10) {
            return toString(i10);
        }
        if (String.COMPACT_STRINGS) {
            byte[] buf = new byte[65];
            int charPos = 64;
            boolean negative = i10 < 0;
            if (!negative) {
                i10 = -i10;
            }
            while (i10 <= (-radix)) {
                int i11 = charPos;
                charPos--;
                buf[i11] = Integer.digits[(int) (-(i10 % radix))];
                i10 /= radix;
            }
            buf[charPos] = Integer.digits[(int) (-i10)];
            if (negative) {
                charPos--;
                buf[charPos] = 45;
            }
            return StringLatin1.newString(buf, charPos, 65 - charPos);
        }
        return toStringUTF16(i10, radix);
    }

    private static String toStringUTF16(long i10, int radix) {
        byte[] buf = new byte[130];
        int charPos = 64;
        boolean negative = i10 < 0;
        if (!negative) {
            i10 = -i10;
        }
        while (i10 <= (-radix)) {
            int i11 = charPos;
            charPos--;
            StringUTF16.putChar(buf, i11, Integer.digits[(int) (-(i10 % radix))]);
            i10 /= radix;
        }
        StringUTF16.putChar(buf, charPos, Integer.digits[(int) (-i10)]);
        if (negative) {
            charPos--;
            StringUTF16.putChar(buf, charPos, 45);
        }
        return StringUTF16.newString(buf, charPos, 65 - charPos);
    }

    public static String toUnsignedString(long i10, int radix) {
        if (i10 >= 0) {
            return toString(i10, radix);
        }
        switch (radix) {
            case 2:
                return toBinaryString(i10);
            case 4:
                return toUnsignedString0(i10, 2);
            case 8:
                return toOctalString(i10);
            case 10:
                long quot = (i10 >>> 1) / 5;
                long rem = i10 - (quot * 10);
                return toString(quot) + rem;
            case 16:
                return toHexString(i10);
            case 32:
                return toUnsignedString0(i10, 5);
            default:
                return toUnsignedBigInteger(i10).toString(radix);
        }
    }

    private static BigInteger toUnsignedBigInteger(long i10) {
        if (i10 >= 0) {
            return BigInteger.valueOf(i10);
        }
        int upper = (int) (i10 >>> 32);
        int lower = (int) i10;
        return BigInteger.valueOf(Integer.toUnsignedLong(upper)).shiftLeft(32).add(BigInteger.valueOf(Integer.toUnsignedLong(lower)));
    }

    public static String toHexString(long i10) {
        return toUnsignedString0(i10, 4);
    }

    public static String toOctalString(long i10) {
        return toUnsignedString0(i10, 3);
    }

    public static String toBinaryString(long i10) {
        return toUnsignedString0(i10, 1);
    }

    static String toUnsignedString0(long val, int shift) {
        int mag = 64 - numberOfLeadingZeros(val);
        int chars = Math.max((mag + (shift - 1)) / shift, 1);
        if (String.COMPACT_STRINGS) {
            byte[] buf = new byte[chars];
            formatUnsignedLong0(val, shift, buf, 0, chars);
            return new String(buf, (byte) 0);
        }
        byte[] buf2 = new byte[chars * 2];
        formatUnsignedLong0UTF16(val, shift, buf2, 0, chars);
        return new String(buf2, (byte) 1);
    }

    private static void formatUnsignedLong0(long val, int shift, byte[] buf, int offset, int len) {
        int charPos = offset + len;
        int radix = 1 << shift;
        int mask = radix - 1;
        do {
            charPos--;
            buf[charPos] = Integer.digits[((int) val) & mask];
            val >>>= shift;
        } while (charPos > offset);
    }

    private static void formatUnsignedLong0UTF16(long val, int shift, byte[] buf, int offset, int len) {
        int charPos = offset + len;
        int radix = 1 << shift;
        int mask = radix - 1;
        do {
            charPos--;
            StringUTF16.putChar(buf, charPos, Integer.digits[((int) val) & mask]);
            val >>>= shift;
        } while (charPos > offset);
    }

    public static String toString(long i10) {
        int size = DecimalDigits.stringSize(i10);
        if (String.COMPACT_STRINGS) {
            byte[] buf = new byte[size];
            DecimalDigits.uncheckedGetCharsLatin1(i10, size, buf);
            return new String(buf, (byte) 0);
        }
        byte[] buf2 = new byte[size * 2];
        DecimalDigits.uncheckedGetCharsUTF16(i10, size, buf2);
        return new String(buf2, (byte) 1);
    }

    public static String toUnsignedString(long i10) {
        return toUnsignedString(i10, 10);
    }

    public static long parseLong(String s10, int radix) throws NumberFormatException {
        if (s10 == null) {
            throw new NumberFormatException("Cannot parse null string");
        }
        if (radix < 2) {
            throw new NumberFormatException(String.format("radix %s less than Character.MIN_RADIX", Integer.valueOf(radix)));
        }
        if (radix > 36) {
            throw new NumberFormatException(String.format("radix %s greater than Character.MAX_RADIX", Integer.valueOf(radix)));
        }
        int len = s10.length();
        if (len == 0) {
            throw NumberFormatException.forInputString("", radix);
        }
        int digit = -256;
        int i10 = 0 + 1;
        char firstChar = s10.charAt(0);
        if (firstChar != '-' && firstChar != '+') {
            digit = Character.digit(firstChar, radix);
        }
        if (digit >= 0 || (digit == -256 && len > 1)) {
            long limit = firstChar != '-' ? -9223372036854775807L : Long.MIN_VALUE;
            long multmin = limit / radix;
            long result = -(digit & 255);
            boolean inRange = true;
            while (i10 < len) {
                int i11 = i10;
                i10++;
                int digit2 = Character.digit(s10.charAt(i11), radix);
                digit = digit2;
                if (digit2 >= 0) {
                    boolean z10 = result > multmin || (result == multmin && digit <= ((int) ((((long) radix) * multmin) - limit)));
                    inRange = z10;
                    if (!z10) {
                        break;
                    }
                    result = (radix * result) - digit;
                } else {
                    break;
                }
            }
            if (inRange && i10 == len && digit >= 0) {
                return firstChar != '-' ? -result : result;
            }
        }
        throw NumberFormatException.forInputString(s10, radix);
    }

    public static long parseLong(CharSequence s10, int beginIndex, int endIndex, int radix) throws NumberFormatException {
        Objects.requireNonNull(s10);
        Objects.checkFromToIndex(beginIndex, endIndex, s10.length());
        if (radix < 2) {
            throw new NumberFormatException(String.format("radix %s less than Character.MIN_RADIX", Integer.valueOf(radix)));
        }
        if (radix > 36) {
            throw new NumberFormatException(String.format("radix %s greater than Character.MAX_RADIX", Integer.valueOf(radix)));
        }
        if (beginIndex == endIndex) {
            throw NumberFormatException.forInputString("", radix);
        }
        int digit = -256;
        int i10 = beginIndex + 1;
        char firstChar = s10.charAt(beginIndex);
        if (firstChar != '-' && firstChar != '+') {
            digit = Character.digit(firstChar, radix);
        }
        if (digit >= 0 || (digit == -256 && endIndex - beginIndex > 1)) {
            long limit = firstChar != '-' ? -9223372036854775807L : Long.MIN_VALUE;
            long multmin = limit / radix;
            long result = -(digit & 255);
            boolean inRange = true;
            while (i10 < endIndex) {
                int i11 = i10;
                i10++;
                int digit2 = Character.digit(s10.charAt(i11), radix);
                digit = digit2;
                if (digit2 >= 0) {
                    boolean z10 = result > multmin || (result == multmin && digit <= ((int) ((((long) radix) * multmin) - limit)));
                    inRange = z10;
                    if (!z10) {
                        break;
                    }
                    result = (radix * result) - digit;
                } else {
                    break;
                }
            }
            if (inRange && i10 == endIndex && digit >= 0) {
                return firstChar != '-' ? -result : result;
            }
        }
        throw NumberFormatException.forCharSequence(s10, beginIndex, endIndex, i10 - (digit < -1 ? 0 : 1));
    }

    public static long parseLong(String s10) throws NumberFormatException {
        return parseLong(s10, 10);
    }

    public static long parseUnsignedLong(String s10, int radix) throws NumberFormatException {
        if (s10 == null) {
            throw new NumberFormatException("Cannot parse null string");
        }
        if (radix < 2) {
            throw new NumberFormatException(String.format("radix %s less than Character.MIN_RADIX", Integer.valueOf(radix)));
        }
        if (radix > 36) {
            throw new NumberFormatException(String.format("radix %s greater than Character.MAX_RADIX", Integer.valueOf(radix)));
        }
        int len = s10.length();
        if (len == 0) {
            throw NumberFormatException.forInputString(s10, radix);
        }
        int i10 = 0 + 1;
        char firstChar = s10.charAt(0);
        if (firstChar == '-') {
            throw new NumberFormatException(String.format("Illegal leading minus sign on unsigned string %s.", s10));
        }
        int digit = -256;
        if (firstChar != '+') {
            digit = Character.digit(firstChar, radix);
        }
        if (digit >= 0 || (digit == -256 && len > 1)) {
            long multmax = divideUnsigned(-1L, radix);
            long result = digit & 255;
            boolean inRange = true;
            while (i10 < len) {
                int i11 = i10;
                i10++;
                int digit2 = Character.digit(s10.charAt(i11), radix);
                digit = digit2;
                if (digit2 >= 0) {
                    boolean z10 = compareUnsigned(result, multmax) < 0 || (result == multmax && digit < ((int) (((long) (-radix)) * multmax)));
                    inRange = z10;
                    if (!z10) {
                        break;
                    }
                    result = (radix * result) + digit;
                } else {
                    break;
                }
            }
            if (inRange && i10 == len && digit >= 0) {
                return result;
            }
        }
        if (digit < 0) {
            throw NumberFormatException.forInputString(s10, radix);
        }
        throw new NumberFormatException(String.format("String value %s exceeds range of unsigned long.", s10));
    }

    public static long parseUnsignedLong(CharSequence s10, int beginIndex, int endIndex, int radix) throws NumberFormatException {
        Objects.requireNonNull(s10);
        Objects.checkFromToIndex(beginIndex, endIndex, s10.length());
        if (radix < 2) {
            throw new NumberFormatException(String.format("radix %s less than Character.MIN_RADIX", Integer.valueOf(radix)));
        }
        if (radix > 36) {
            throw new NumberFormatException(String.format("radix %s greater than Character.MAX_RADIX", Integer.valueOf(radix)));
        }
        if (beginIndex == endIndex) {
            throw NumberFormatException.forInputString("", radix);
        }
        int i10 = beginIndex + 1;
        char firstChar = s10.charAt(beginIndex);
        if (firstChar == '-') {
            throw new NumberFormatException("Illegal leading minus sign on unsigned string " + ((Object) s10) + ".");
        }
        int digit = -256;
        if (firstChar != '+') {
            digit = Character.digit(firstChar, radix);
        }
        if (digit >= 0 || (digit == -256 && endIndex - beginIndex > 1)) {
            long multmax = divideUnsigned(-1L, radix);
            long result = digit & 255;
            boolean inRange = true;
            while (i10 < endIndex) {
                int i11 = i10;
                i10++;
                int digit2 = Character.digit(s10.charAt(i11), radix);
                digit = digit2;
                if (digit2 >= 0) {
                    boolean z10 = compareUnsigned(result, multmax) < 0 || (result == multmax && digit < ((int) (((long) (-radix)) * multmax)));
                    inRange = z10;
                    if (!z10) {
                        break;
                    }
                    result = (radix * result) + digit;
                } else {
                    break;
                }
            }
            if (inRange && i10 == endIndex && digit >= 0) {
                return result;
            }
        }
        if (digit < 0) {
            throw NumberFormatException.forCharSequence(s10, beginIndex, endIndex, i10 - (digit < -1 ? 0 : 1));
        }
        throw new NumberFormatException(String.format("String value %s exceeds range of unsigned long.", s10));
    }

    public static long parseUnsignedLong(String s10) throws NumberFormatException {
        return parseUnsignedLong(s10, 10);
    }

    public static Long valueOf(String s10, int radix) throws NumberFormatException {
        return valueOf(parseLong(s10, radix));
    }

    public static Long valueOf(String s10) throws NumberFormatException {
        return valueOf(parseLong(s10, 10));
    }

    public static final class LongCache {

        @Stable
        static final Long[] cache;
        static Long[] archivedCache;
        static final boolean $assertionsDisabled;

        static {
            $assertionsDisabled = !Long.class.desiredAssertionStatus();
            CDS.initializeFromArchive(LongCache.class);
            if (archivedCache == null) {
                Long[] c10 = new Long[256];
                long value = -128;
                for (int i10 = 0; i10 < 256; i10++) {
                    long j10 = value;
                    value = j10 + 1;
                    c10[i10] = new Long(j10);
                }
                archivedCache = c10;
            }
            cache = archivedCache;
            if (!$assertionsDisabled && cache.length != 256) {
                throw new AssertionError();
            }
        }

        private LongCache() {
        }
    }

    @IntrinsicCandidate
    public static Long valueOf(long l10) {
        if (l10 >= -128 && l10 <= 127) {
            return LongCache.cache[((int) l10) + 128];
        }
        return new Long(l10);
    }

    public static Long decode(String nm2) throws NumberFormatException {
        long result;
        int radix = 10;
        int index = 0;
        boolean negative = false;
        if (nm2.isEmpty()) {
            throw new NumberFormatException("Zero length string");
        }
        char firstChar = nm2.charAt(0);
        if (firstChar == '-') {
            negative = true;
            index = 0 + 1;
        } else if (firstChar == '+') {
            index = 0 + 1;
        }
        if (nm2.startsWith("0x", index) || nm2.startsWith("0X", index)) {
            index += 2;
            radix = 16;
        } else if (nm2.startsWith(C16181m.f130230g, index)) {
            index++;
            radix = 16;
        } else if (nm2.startsWith("0", index) && nm2.length() > 1 + index) {
            index++;
            radix = 8;
        }
        if (nm2.startsWith("-", index) || nm2.startsWith("+", index)) {
            throw new NumberFormatException("Sign character in wrong position");
        }
        try {
            long result2 = parseLong(nm2, index, nm2.length(), radix);
            result = negative ? -result2 : result2;
        } catch (NumberFormatException e10) {
            String constant = negative ? "-" + nm2.substring(index) : nm2.substring(index);
            result = parseLong(constant, radix);
        }
        return valueOf(result);
    }

    @Deprecated(since = "9")
    public Long(long value) {
        this.value = value;
    }

    @Deprecated(since = "9")
    public Long(String s10) throws NumberFormatException {
        this.value = parseLong(s10, 10);
    }

    @Override
    public byte byteValue() {
        return (byte) this.value;
    }

    @Override
    public short shortValue() {
        return (short) this.value;
    }

    @Override
    public int intValue() {
        return (int) this.value;
    }

    @Override
    @IntrinsicCandidate
    public long longValue() {
        return this.value;
    }

    @Override
    public float floatValue() {
        return (float) this.value;
    }

    @Override
    public double doubleValue() {
        return this.value;
    }

    public String toString() {
        return toString(this.value);
    }

    public int hashCode() {
        return hashCode(this.value);
    }

    public static int hashCode(long value) {
        return (int) (value ^ (value >>> 32));
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof Long)) {
            return false;
        }
        Long ell = (Long) obj;
        return this.value == ell.longValue();
    }

    public static Long getLong(String nm2) {
        return getLong(nm2, (Long) null);
    }

    public static Long getLong(String nm2, long val) {
        Long result = getLong(nm2, (Long) null);
        return result == null ? valueOf(val) : result;
    }

    public static Long getLong(String nm2, Long val) {
        String v10 = (nm2 == null || nm2.isEmpty()) ? null : System.getProperty(nm2);
        if (v10 != null) {
            try {
                return decode(v10);
            } catch (NumberFormatException e10) {
            }
        }
        return val;
    }

    @Override
    public int compareTo(Long anotherLong) {
        return compare(this.value, anotherLong.value);
    }

    public static int compare(long x10, long y10) {
        if (x10 < y10) {
            return -1;
        }
        return x10 == y10 ? 0 : 1;
    }

    @IntrinsicCandidate
    public static int compareUnsigned(long x10, long y10) {
        return compare(x10 - Long.MIN_VALUE, y10 - Long.MIN_VALUE);
    }

    @IntrinsicCandidate
    public static long divideUnsigned(long dividend, long divisor) {
        if (divisor >= 0) {
            long q10 = ((dividend >>> 1) / divisor) << 1;
            long r10 = dividend - (q10 * divisor);
            return q10 + ((r10 | ((r10 - divisor) ^ (-1))) >>> 63);
        }
        return (dividend & ((dividend - divisor) ^ (-1))) >>> 63;
    }

    @IntrinsicCandidate
    public static long remainderUnsigned(long dividend, long divisor) {
        if (divisor >= 0) {
            long q10 = ((dividend >>> 1) / divisor) << 1;
            long r10 = dividend - (q10 * divisor);
            return r10 - ((((r10 - divisor) ^ (-1)) >> 63) & divisor);
        }
        return dividend - (((dividend & ((dividend - divisor) ^ (-1))) >> 63) & divisor);
    }

    public static long highestOneBit(long i10) {
        return i10 & ((-9223372036854775808) >>> numberOfLeadingZeros(i10));
    }

    public static long lowestOneBit(long i10) {
        return i10 & (-i10);
    }

    @IntrinsicCandidate
    public static int numberOfLeadingZeros(long i10) {
        int x10 = (int) (i10 >>> 32);
        return x10 == 0 ? 32 + Integer.numberOfLeadingZeros((int) i10) : Integer.numberOfLeadingZeros(x10);
    }

    @IntrinsicCandidate
    public static int numberOfTrailingZeros(long i10) {
        int x10 = (int) i10;
        return x10 == 0 ? 32 + Integer.numberOfTrailingZeros((int) (i10 >>> 32)) : Integer.numberOfTrailingZeros(x10);
    }

    @IntrinsicCandidate
    public static int bitCount(long i10) {
        long i11 = i10 - ((i10 >>> 1) & C15316b.f109661b);
        long i12 = (i11 & 3689348814741910323L) + ((i11 >>> 2) & 3689348814741910323L);
        long i13 = (i12 + (i12 >>> 4)) & 1085102592571150095L;
        long i14 = i13 + (i13 >>> 8);
        long i15 = i14 + (i14 >>> 16);
        return ((int) (i15 + (i15 >>> 32))) & 127;
    }

    public static long rotateLeft(long i10, int distance) {
        return (i10 << distance) | (i10 >>> (-distance));
    }

    public static long rotateRight(long i10, int distance) {
        return (i10 >>> distance) | (i10 << (-distance));
    }

    @IntrinsicCandidate
    public static long reverse(long i10) {
        long i11 = ((i10 & C15316b.f109661b) << 1) | ((i10 >>> 1) & C15316b.f109661b);
        long i12 = ((i11 & 3689348814741910323L) << 2) | ((i11 >>> 2) & 3689348814741910323L);
        return reverseBytes(((i12 & 1085102592571150095L) << 4) | ((i12 >>> 4) & 1085102592571150095L));
    }

    @IntrinsicCandidate
    public static long compress(long i10, long mask) {
        long i11 = i10 & mask;
        long maskCount = (mask ^ (-1)) << 1;
        for (int j10 = 0; j10 < 6; j10++) {
            long maskPrefix = parallelSuffix(maskCount);
            long maskMove = maskPrefix & mask;
            mask = (mask ^ maskMove) | (maskMove >>> (1 << j10));
            long t10 = i11 & maskMove;
            i11 = (i11 ^ t10) | (t10 >>> (1 << j10));
            maskCount &= maskPrefix ^ (-1);
        }
        return i11;
    }

    @IntrinsicCandidate
    public static long expand(long i10, long mask) {
        long maskCount = (mask ^ (-1)) << 1;
        long maskPrefix = parallelSuffix(maskCount);
        long maskMove1 = maskPrefix & mask;
        long mask2 = (mask ^ maskMove1) | (maskMove1 >>> 1);
        long maskCount2 = maskCount & (maskPrefix ^ (-1));
        long maskPrefix2 = parallelSuffix(maskCount2);
        long maskMove2 = maskPrefix2 & mask2;
        long mask3 = (mask2 ^ maskMove2) | (maskMove2 >>> 2);
        long maskCount3 = maskCount2 & (maskPrefix2 ^ (-1));
        long maskPrefix3 = parallelSuffix(maskCount3);
        long maskMove3 = maskPrefix3 & mask3;
        long mask4 = (mask3 ^ maskMove3) | (maskMove3 >>> 4);
        long maskCount4 = maskCount3 & (maskPrefix3 ^ (-1));
        long maskPrefix4 = parallelSuffix(maskCount4);
        long maskMove4 = maskPrefix4 & mask4;
        long mask5 = (mask4 ^ maskMove4) | (maskMove4 >>> 8);
        long maskCount5 = maskCount4 & (maskPrefix4 ^ (-1));
        long maskPrefix5 = parallelSuffix(maskCount5);
        long maskMove5 = maskPrefix5 & mask5;
        long maskMove6 = parallelSuffix(maskCount5 & (maskPrefix5 ^ (-1))) & ((mask5 ^ maskMove5) | (maskMove5 >>> 16));
        long t10 = i10 << 32;
        long i11 = (i10 & (maskMove6 ^ (-1))) | (t10 & maskMove6);
        long t11 = i11 << 16;
        long i12 = (i11 & (maskMove5 ^ (-1))) | (t11 & maskMove5);
        long t12 = i12 << 8;
        long i13 = (i12 & (maskMove4 ^ (-1))) | (t12 & maskMove4);
        long t13 = i13 << 4;
        long i14 = (i13 & (maskMove3 ^ (-1))) | (t13 & maskMove3);
        long t14 = i14 << 2;
        long i15 = (i14 & (maskMove2 ^ (-1))) | (t14 & maskMove2);
        long t15 = i15 << 1;
        return ((i15 & (maskMove1 ^ (-1))) | (t15 & maskMove1)) & mask;
    }

    @ForceInline
    private static long parallelSuffix(long maskCount) {
        long maskPrefix = maskCount ^ (maskCount << 1);
        long maskPrefix2 = maskPrefix ^ (maskPrefix << 2);
        long maskPrefix3 = maskPrefix2 ^ (maskPrefix2 << 4);
        long maskPrefix4 = maskPrefix3 ^ (maskPrefix3 << 8);
        long maskPrefix5 = maskPrefix4 ^ (maskPrefix4 << 16);
        return maskPrefix5 ^ (maskPrefix5 << 32);
    }

    public static int signum(long i10) {
        return (int) ((i10 >> 63) | ((-i10) >>> 63));
    }

    @IntrinsicCandidate
    public static long reverseBytes(long i10) {
        long i11 = ((i10 & 71777214294589695L) << 8) | ((i10 >>> 8) & 71777214294589695L);
        return (i11 << 48) | ((i11 & 4294901760L) << 16) | ((i11 >>> 16) & 4294901760L) | (i11 >>> 48);
    }

    public static long sum(long a10, long b10) {
        return a10 + b10;
    }

    public static long max(long a10, long b10) {
        return Math.max(a10, b10);
    }

    public static long min(long a10, long b10) {
        return Math.min(a10, b10);
    }

    @Override
    public Optional<Long> describeConstable() {
        return Optional.of(this);
    }

    @Override
    public Long resolveConstantDesc(MethodHandles.Lookup lookup) {
        return this;
    }
}
