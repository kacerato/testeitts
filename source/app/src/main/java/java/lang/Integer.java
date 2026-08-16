package java.lang;

import com.google.common.collect.R1;
import java.lang.constant.Constable;
import java.lang.constant.ConstantDesc;
import java.lang.invoke.MethodHandles;
import java.util.Objects;
import java.util.Optional;
import jdk.internal.ValueBased;
import jdk.internal.misc.CDS;
import jdk.internal.misc.VM;
import jdk.internal.util.DecimalDigits;
import jdk.internal.vm.annotation.ForceInline;
import jdk.internal.vm.annotation.IntrinsicCandidate;
import jdk.internal.vm.annotation.Stable;
import mk.C14289h;
import org.eclipse.jdt.internal.compiler.codegen.Opcodes;
import yd.C16181m;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/lang/Integer.class
 */
@ValueBased
public final class Integer extends Number implements Comparable<Integer>, Constable, ConstantDesc {
    public static final int MIN_VALUE = Integer.MIN_VALUE;
    public static final int MAX_VALUE = Integer.MAX_VALUE;
    public static final Class<Integer> TYPE = Class.getPrimitiveClass("int");

    @Stable
    static final byte[] digits = {48, Opcodes.OPC_daload, 50, 51, 52, Opcodes.OPC_saload, 54, Opcodes.OPC_lstore, Opcodes.OPC_fstore, Opcodes.OPC_dstore, Opcodes.OPC_ladd, Opcodes.OPC_fadd, Opcodes.OPC_dadd, 100, 101, 102, Opcodes.OPC_dsub, Opcodes.OPC_imul, 105, 106, 107, Opcodes.OPC_idiv, Opcodes.OPC_ldiv, 110, 111, 112, 113, Opcodes.OPC_frem, Opcodes.OPC_drem, Opcodes.OPC_ineg, Opcodes.OPC_lneg, Opcodes.OPC_fneg, Opcodes.OPC_dneg, 120, 121, 122};
    private final int value;
    public static final int SIZE = 32;
    public static final int BYTES = 4;
    private static final long serialVersionUID = 1360826667806852920L;

    public static String toString(int i10, int radix) {
        if (radix < 2 || radix > 36) {
            radix = 10;
        }
        if (radix == 10) {
            return toString(i10);
        }
        if (String.COMPACT_STRINGS) {
            byte[] buf = new byte[33];
            boolean negative = i10 < 0;
            int charPos = 32;
            if (!negative) {
                i10 = -i10;
            }
            while (i10 <= (-radix)) {
                int i11 = charPos;
                charPos--;
                buf[i11] = digits[-(i10 % radix)];
                i10 /= radix;
            }
            buf[charPos] = digits[-i10];
            if (negative) {
                charPos--;
                buf[charPos] = 45;
            }
            return StringLatin1.newString(buf, charPos, 33 - charPos);
        }
        return toStringUTF16(i10, radix);
    }

    private static String toStringUTF16(int i10, int radix) {
        byte[] buf = new byte[66];
        boolean negative = i10 < 0;
        int charPos = 32;
        if (!negative) {
            i10 = -i10;
        }
        while (i10 <= (-radix)) {
            int i11 = charPos;
            charPos--;
            StringUTF16.putChar(buf, i11, digits[-(i10 % radix)]);
            i10 /= radix;
        }
        StringUTF16.putChar(buf, charPos, digits[-i10]);
        if (negative) {
            charPos--;
            StringUTF16.putChar(buf, charPos, 45);
        }
        return StringUTF16.newString(buf, charPos, 33 - charPos);
    }

    public static String toUnsignedString(int i10, int radix) {
        return Long.toUnsignedString(toUnsignedLong(i10), radix);
    }

    public static String toHexString(int i10) {
        return toUnsignedString0(i10, 4);
    }

    public static String toOctalString(int i10) {
        return toUnsignedString0(i10, 3);
    }

    public static String toBinaryString(int i10) {
        return toUnsignedString0(i10, 1);
    }

    private static String toUnsignedString0(int val, int shift) {
        int mag = 32 - numberOfLeadingZeros(val);
        int chars = Math.max((mag + (shift - 1)) / shift, 1);
        if (String.COMPACT_STRINGS) {
            byte[] buf = new byte[chars];
            formatUnsignedInt(val, shift, buf, chars);
            return new String(buf, (byte) 0);
        }
        byte[] buf2 = new byte[chars * 2];
        formatUnsignedIntUTF16(val, shift, buf2, chars);
        return new String(buf2, (byte) 1);
    }

    private static void formatUnsignedInt(int val, int shift, byte[] buf, int len) {
        int charPos = len;
        int radix = 1 << shift;
        int mask = radix - 1;
        do {
            charPos--;
            buf[charPos] = digits[val & mask];
            val >>>= shift;
        } while (charPos > 0);
    }

    private static void formatUnsignedIntUTF16(int val, int shift, byte[] buf, int len) {
        int charPos = len;
        int radix = 1 << shift;
        int mask = radix - 1;
        do {
            charPos--;
            StringUTF16.putChar(buf, charPos, digits[val & mask]);
            val >>>= shift;
        } while (charPos > 0);
    }

    @IntrinsicCandidate
    public static String toString(int i10) {
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

    public static String toUnsignedString(int i10) {
        return Long.toString(toUnsignedLong(i10));
    }

    public static int parseInt(String s10, int radix) throws NumberFormatException {
        if (s10 == null) {
            throw new NumberFormatException("Cannot parse null string");
        }
        if (radix < 2) {
            throw new NumberFormatException(String.format("radix %s less than Character.MIN_RADIX", valueOf(radix)));
        }
        if (radix > 36) {
            throw new NumberFormatException(String.format("radix %s greater than Character.MAX_RADIX", valueOf(radix)));
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
            int limit = firstChar != '-' ? C14289h.f97343g : Integer.MIN_VALUE;
            int multmin = limit / radix;
            int result = -(digit & 255);
            boolean inRange = true;
            while (i10 < len) {
                int i11 = i10;
                i10++;
                int digit2 = Character.digit(s10.charAt(i11), radix);
                digit = digit2;
                if (digit2 >= 0) {
                    boolean z10 = result > multmin || (result == multmin && digit <= (radix * multmin) - limit);
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

    public static int parseInt(CharSequence s10, int beginIndex, int endIndex, int radix) throws NumberFormatException {
        Objects.requireNonNull(s10);
        Objects.checkFromToIndex(beginIndex, endIndex, s10.length());
        if (radix < 2) {
            throw new NumberFormatException(String.format("radix %s less than Character.MIN_RADIX", valueOf(radix)));
        }
        if (radix > 36) {
            throw new NumberFormatException(String.format("radix %s greater than Character.MAX_RADIX", valueOf(radix)));
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
            int limit = firstChar != '-' ? C14289h.f97343g : Integer.MIN_VALUE;
            int multmin = limit / radix;
            int result = -(digit & 255);
            boolean inRange = true;
            while (i10 < endIndex) {
                int i11 = i10;
                i10++;
                int digit2 = Character.digit(s10.charAt(i11), radix);
                digit = digit2;
                if (digit2 >= 0) {
                    boolean z10 = result > multmin || (result == multmin && digit <= (radix * multmin) - limit);
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

    public static int parseInt(String s10) throws NumberFormatException {
        return parseInt(s10, 10);
    }

    public static int parseUnsignedInt(String s10, int radix) throws NumberFormatException {
        if (s10 == null) {
            throw new NumberFormatException("Cannot parse null string");
        }
        if (radix < 2) {
            throw new NumberFormatException(String.format("radix %s less than Character.MIN_RADIX", valueOf(radix)));
        }
        if (radix > 36) {
            throw new NumberFormatException(String.format("radix %s greater than Character.MAX_RADIX", valueOf(radix)));
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
            int multmax = divideUnsigned(-1, radix);
            int result = digit & 255;
            boolean inRange = true;
            while (i10 < len) {
                int i11 = i10;
                i10++;
                int digit2 = Character.digit(s10.charAt(i11), radix);
                digit = digit2;
                if (digit2 >= 0) {
                    boolean z10 = compareUnsigned(result, multmax) < 0 || (result == multmax && digit < (-radix) * multmax);
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
        throw new NumberFormatException(String.format("String value %s exceeds range of unsigned int.", s10));
    }

    public static int parseUnsignedInt(CharSequence s10, int beginIndex, int endIndex, int radix) throws NumberFormatException {
        Objects.requireNonNull(s10);
        Objects.checkFromToIndex(beginIndex, endIndex, s10.length());
        if (radix < 2) {
            throw new NumberFormatException(String.format("radix %s less than Character.MIN_RADIX", valueOf(radix)));
        }
        if (radix > 36) {
            throw new NumberFormatException(String.format("radix %s greater than Character.MAX_RADIX", valueOf(radix)));
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
            int multmax = divideUnsigned(-1, radix);
            int result = digit & 255;
            boolean inRange = true;
            while (i10 < endIndex) {
                int i11 = i10;
                i10++;
                int digit2 = Character.digit(s10.charAt(i11), radix);
                digit = digit2;
                if (digit2 >= 0) {
                    boolean z10 = compareUnsigned(result, multmax) < 0 || (result == multmax && digit < (-radix) * multmax);
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
        throw new NumberFormatException(String.format("String value %s exceeds range of unsigned int.", s10));
    }

    public static int parseUnsignedInt(String s10) throws NumberFormatException {
        return parseUnsignedInt(s10, 10);
    }

    public static Integer valueOf(String s10, int radix) throws NumberFormatException {
        return valueOf(parseInt(s10, radix));
    }

    public static Integer valueOf(String s10) throws NumberFormatException {
        return valueOf(parseInt(s10, 10));
    }

    public static final class IntegerCache {
        static final int low = -128;
        static final int high;

        @Stable
        static final Integer[] cache;
        static Integer[] archivedCache;
        static final boolean $assertionsDisabled;

        static {
            $assertionsDisabled = !Integer.class.desiredAssertionStatus();
            int h10 = 127;
            String integerCacheHighPropValue = VM.getSavedProperty("java.lang.Integer.IntegerCache.high");
            if (integerCacheHighPropValue != null) {
                try {
                    h10 = Math.min(Math.max(Integer.parseInt(integerCacheHighPropValue), 127), 2147483518);
                } catch (NumberFormatException e10) {
                }
            }
            high = h10;
            CDS.initializeFromArchive(IntegerCache.class);
            int size = (high - (-128)) + 1;
            if (archivedCache == null || size > archivedCache.length) {
                Integer[] c10 = new Integer[size];
                int j10 = -128;
                int archivedSize = archivedCache == null ? 0 : archivedCache.length;
                for (int i10 = 0; i10 < archivedSize; i10++) {
                    c10[i10] = archivedCache[i10];
                    if (!$assertionsDisabled && j10 != archivedCache[i10].intValue()) {
                        throw new AssertionError();
                    }
                    j10++;
                }
                for (int i11 = archivedSize; i11 < size; i11++) {
                    int i12 = j10;
                    j10++;
                    c10[i11] = new Integer(i12);
                }
                archivedCache = c10;
            }
            cache = archivedCache;
            if (!$assertionsDisabled && high < 127) {
                throw new AssertionError();
            }
        }

        private IntegerCache() {
        }
    }

    @IntrinsicCandidate
    public static Integer valueOf(int i10) {
        if (i10 >= -128 && i10 <= IntegerCache.high) {
            return IntegerCache.cache[i10 + 128];
        }
        return new Integer(i10);
    }

    @Deprecated(since = "9")
    public Integer(int value) {
        this.value = value;
    }

    @Deprecated(since = "9")
    public Integer(String s10) throws NumberFormatException {
        this.value = parseInt(s10, 10);
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
    @IntrinsicCandidate
    public int intValue() {
        return this.value;
    }

    @Override
    public long longValue() {
        return this.value;
    }

    @Override
    public float floatValue() {
        return this.value;
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

    public static int hashCode(int value) {
        return value;
    }

    public boolean equals(Object obj) {
        if (!(obj instanceof Integer)) {
            return false;
        }
        Integer i10 = (Integer) obj;
        return this.value == i10.intValue();
    }

    public static Integer getInteger(String nm2) {
        return getInteger(nm2, (Integer) null);
    }

    public static Integer getInteger(String nm2, int val) {
        Integer result = getInteger(nm2, (Integer) null);
        return result == null ? valueOf(val) : result;
    }

    public static Integer getInteger(String nm2, Integer val) {
        String v10 = (nm2 == null || nm2.isEmpty()) ? null : System.getProperty(nm2);
        if (v10 != null) {
            try {
                return decode(v10);
            } catch (NumberFormatException e10) {
            }
        }
        return val;
    }

    public static Integer decode(String nm2) throws NumberFormatException {
        int result;
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
            int result2 = parseInt(nm2, index, nm2.length(), radix);
            result = negative ? -result2 : result2;
        } catch (NumberFormatException e10) {
            String constant = negative ? "-" + nm2.substring(index) : nm2.substring(index);
            result = parseInt(constant, radix);
        }
        return valueOf(result);
    }

    @Override
    public int compareTo(Integer anotherInteger) {
        return compare(this.value, anotherInteger.value);
    }

    public static int compare(int x10, int y10) {
        if (x10 < y10) {
            return -1;
        }
        return x10 == y10 ? 0 : 1;
    }

    @IntrinsicCandidate
    public static int compareUnsigned(int x10, int y10) {
        return compare(x10 - 2147483648, y10 - 2147483648);
    }

    public static long toUnsignedLong(int x10) {
        return x10 & 4294967295L;
    }

    @IntrinsicCandidate
    public static int divideUnsigned(int dividend, int divisor) {
        return (int) (toUnsignedLong(dividend) / toUnsignedLong(divisor));
    }

    @IntrinsicCandidate
    public static int remainderUnsigned(int dividend, int divisor) {
        return (int) (toUnsignedLong(dividend) % toUnsignedLong(divisor));
    }

    public static int highestOneBit(int i10) {
        return i10 & (Integer.MIN_VALUE >>> numberOfLeadingZeros(i10));
    }

    public static int lowestOneBit(int i10) {
        return i10 & (-i10);
    }

    @IntrinsicCandidate
    public static int numberOfLeadingZeros(int i10) {
        if (i10 <= 0) {
            return i10 == 0 ? 32 : 0;
        }
        int n10 = 31;
        if (i10 >= 65536) {
            n10 = 31 - 16;
            i10 >>>= 16;
        }
        if (i10 >= 256) {
            n10 -= 8;
            i10 >>>= 8;
        }
        if (i10 >= 16) {
            n10 -= 4;
            i10 >>>= 4;
        }
        if (i10 >= 4) {
            n10 -= 2;
            i10 >>>= 2;
        }
        return n10 - (i10 >>> 1);
    }

    @IntrinsicCandidate
    public static int numberOfTrailingZeros(int i10) {
        int i11 = (i10 ^ (-1)) & (i10 - 1);
        if (i11 <= 0) {
            return i11 & 32;
        }
        int n10 = 1;
        if (i11 > 65536) {
            n10 = 1 + 16;
            i11 >>>= 16;
        }
        if (i11 > 256) {
            n10 += 8;
            i11 >>>= 8;
        }
        if (i11 > 16) {
            n10 += 4;
            i11 >>>= 4;
        }
        if (i11 > 4) {
            n10 += 2;
            i11 >>>= 2;
        }
        return n10 + (i11 >>> 1);
    }

    @IntrinsicCandidate
    public static int bitCount(int i10) {
        int i11 = i10 - ((i10 >>> 1) & R1.f66104h);
        int i12 = (i11 & 858993459) + ((i11 >>> 2) & 858993459);
        int i13 = (i12 + (i12 >>> 4)) & 252645135;
        int i14 = i13 + (i13 >>> 8);
        return (i14 + (i14 >>> 16)) & 63;
    }

    public static int rotateLeft(int i10, int distance) {
        return (i10 << distance) | (i10 >>> (-distance));
    }

    public static int rotateRight(int i10, int distance) {
        return (i10 >>> distance) | (i10 << (-distance));
    }

    @IntrinsicCandidate
    public static int reverse(int i10) {
        int i11 = ((i10 & R1.f66104h) << 1) | ((i10 >>> 1) & R1.f66104h);
        int i12 = ((i11 & 858993459) << 2) | ((i11 >>> 2) & 858993459);
        return reverseBytes(((i12 & 252645135) << 4) | ((i12 >>> 4) & 252645135));
    }

    @IntrinsicCandidate
    public static int compress(int i10, int mask) {
        int i11 = i10 & mask;
        int maskCount = (mask ^ (-1)) << 1;
        for (int j10 = 0; j10 < 5; j10++) {
            int maskPrefix = parallelSuffix(maskCount);
            int maskMove = maskPrefix & mask;
            mask = (mask ^ maskMove) | (maskMove >>> (1 << j10));
            int t10 = i11 & maskMove;
            i11 = (i11 ^ t10) | (t10 >>> (1 << j10));
            maskCount &= maskPrefix ^ (-1);
        }
        return i11;
    }

    @IntrinsicCandidate
    public static int expand(int i10, int mask) {
        int maskCount = (mask ^ (-1)) << 1;
        int maskPrefix = parallelSuffix(maskCount);
        int maskMove1 = maskPrefix & mask;
        int mask2 = (mask ^ maskMove1) | (maskMove1 >>> 1);
        int maskCount2 = maskCount & (maskPrefix ^ (-1));
        int maskPrefix2 = parallelSuffix(maskCount2);
        int maskMove2 = maskPrefix2 & mask2;
        int mask3 = (mask2 ^ maskMove2) | (maskMove2 >>> 2);
        int maskCount3 = maskCount2 & (maskPrefix2 ^ (-1));
        int maskPrefix3 = parallelSuffix(maskCount3);
        int maskMove3 = maskPrefix3 & mask3;
        int mask4 = (mask3 ^ maskMove3) | (maskMove3 >>> 4);
        int maskCount4 = maskCount3 & (maskPrefix3 ^ (-1));
        int maskPrefix4 = parallelSuffix(maskCount4);
        int maskMove4 = maskPrefix4 & mask4;
        int maskMove5 = parallelSuffix(maskCount4 & (maskPrefix4 ^ (-1))) & ((mask4 ^ maskMove4) | (maskMove4 >>> 8));
        int t10 = i10 << 16;
        int i11 = (i10 & (maskMove5 ^ (-1))) | (t10 & maskMove5);
        int t11 = i11 << 8;
        int i12 = (i11 & (maskMove4 ^ (-1))) | (t11 & maskMove4);
        int t12 = i12 << 4;
        int i13 = (i12 & (maskMove3 ^ (-1))) | (t12 & maskMove3);
        int t13 = i13 << 2;
        int i14 = (i13 & (maskMove2 ^ (-1))) | (t13 & maskMove2);
        int t14 = i14 << 1;
        return ((i14 & (maskMove1 ^ (-1))) | (t14 & maskMove1)) & mask;
    }

    @ForceInline
    private static int parallelSuffix(int maskCount) {
        int maskPrefix = maskCount ^ (maskCount << 1);
        int maskPrefix2 = maskPrefix ^ (maskPrefix << 2);
        int maskPrefix3 = maskPrefix2 ^ (maskPrefix2 << 4);
        int maskPrefix4 = maskPrefix3 ^ (maskPrefix3 << 8);
        return maskPrefix4 ^ (maskPrefix4 << 16);
    }

    public static int signum(int i10) {
        return (i10 >> 31) | ((-i10) >>> 31);
    }

    @IntrinsicCandidate
    public static int reverseBytes(int i10) {
        return (i10 << 24) | ((i10 & 65280) << 8) | ((i10 >>> 8) & 65280) | (i10 >>> 24);
    }

    public static int sum(int a10, int b10) {
        return a10 + b10;
    }

    public static int max(int a10, int b10) {
        return Math.max(a10, b10);
    }

    public static int min(int a10, int b10) {
        return Math.min(a10, b10);
    }

    @Override
    public Optional<Integer> describeConstable() {
        return Optional.of(this);
    }

    @Override
    public Integer resolveConstantDesc(MethodHandles.Lookup lookup) {
        return this;
    }
}
