package java.lang;

import java.util.Arrays;
import java.util.Locale;
import java.util.Spliterator;
import java.util.function.Consumer;
import java.util.function.IntConsumer;
import java.util.stream.Stream;
import java.util.stream.StreamSupport;
import jdk.internal.misc.Unsafe;
import jdk.internal.util.ArraysSupport;
import jdk.internal.vm.annotation.ForceInline;
import jdk.internal.vm.annotation.IntrinsicCandidate;

public final class StringUTF16 {
    private static final int HI_BYTE_SHIFT;
    private static final int LO_BYTE_SHIFT;
    static final int MAX_LENGTH = 1073741823;
    static final boolean $assertionsDisabled;

    StringUTF16() {
    }

    static {
        $assertionsDisabled = !StringUTF16.class.desiredAssertionStatus();
        if (Unsafe.getUnsafe().isBigEndian()) {
            HI_BYTE_SHIFT = 8;
            LO_BYTE_SHIFT = 0;
        } else {
            HI_BYTE_SHIFT = 0;
            LO_BYTE_SHIFT = 8;
        }
    }

    public static byte[] newBytesFor(int len) {
        return new byte[newBytesLength(len)];
    }

    public static int newBytesLength(int len) {
        if (len < 0) {
            throw new NegativeArraySizeException();
        }
        if (len >= 1073741823) {
            throw new OutOfMemoryError("UTF16 String size is " + len + ", should be less than 1073741823");
        }
        return len << 1;
    }

    @IntrinsicCandidate
    public static void putChar(byte[] val, int index, int c10) {
        if (!$assertionsDisabled && (index < 0 || index >= length(val))) {
            throw new AssertionError((Object) "Trusted caller missed bounds check");
        }
        int index2 = index << 1;
        val[index2] = (byte) (c10 >> HI_BYTE_SHIFT);
        val[index2 + 1] = (byte) (c10 >> LO_BYTE_SHIFT);
    }

    @IntrinsicCandidate
    public static char getChar(byte[] val, int index) {
        if (!$assertionsDisabled && (index < 0 || index >= length(val))) {
            throw new AssertionError((Object) "Trusted caller missed bounds check");
        }
        int index2 = index << 1;
        return (char) (((val[index2] & 255) << HI_BYTE_SHIFT) | ((val[index2 + 1] & 255) << LO_BYTE_SHIFT));
    }

    public static int length(byte[] value) {
        return value.length >> 1;
    }

    private static int codePointAt(byte[] value, int index, int end, boolean checked) {
        int index2;
        if (!$assertionsDisabled && index >= end) {
            throw new AssertionError();
        }
        if (checked) {
            checkIndex(index, value);
        }
        char c12 = getChar(value, index);
        if (Character.isHighSurrogate(c12) && (index2 = index + 1) < end) {
            if (checked) {
                checkIndex(index2, value);
            }
            char c22 = getChar(value, index2);
            if (Character.isLowSurrogate(c22)) {
                return Character.toCodePoint(c12, c22);
            }
        }
        return c12;
    }

    public static int codePointAt(byte[] value, int index, int end) {
        return codePointAt(value, index, end, false);
    }

    private static int codePointBefore(byte[] value, int index, boolean checked) {
        int index2 = index - 1;
        if (checked) {
            checkIndex(index2, value);
        }
        char c22 = getChar(value, index2);
        if (Character.isLowSurrogate(c22) && index2 > 0) {
            int index3 = index2 - 1;
            if (checked) {
                checkIndex(index3, value);
            }
            char c12 = getChar(value, index3);
            if (Character.isHighSurrogate(c12)) {
                return Character.toCodePoint(c12, c22);
            }
        }
        return c22;
    }

    public static int codePointBefore(byte[] value, int index) {
        return codePointBefore(value, index, false);
    }

    private static int codePointCount(byte[] value, int beginIndex, int endIndex, boolean checked) {
        if (!$assertionsDisabled && beginIndex > endIndex) {
            throw new AssertionError();
        }
        int count = endIndex - beginIndex;
        int i10 = beginIndex;
        if (checked && i10 < endIndex) {
            checkBoundsBeginEnd(i10, endIndex, value);
        }
        while (i10 < endIndex - 1) {
            int i11 = i10;
            i10++;
            if (Character.isHighSurrogate(getChar(value, i11)) && Character.isLowSurrogate(getChar(value, i10))) {
                count--;
                i10++;
            }
        }
        return count;
    }

    public static int codePointCount(byte[] value, int beginIndex, int endIndex) {
        return codePointCount(value, beginIndex, endIndex, false);
    }

    public static char[] toChars(byte[] value) {
        char[] dst = new char[value.length >> 1];
        getChars(value, 0, dst.length, dst, 0);
        return dst;
    }

    @IntrinsicCandidate
    public static byte[] toBytes(char[] value, int off, int len) {
        byte[] val = newBytesFor(len);
        for (int i10 = 0; i10 < len; i10++) {
            putChar(val, i10, value[off]);
            off++;
        }
        return val;
    }

    @ForceInline
    public static byte coderFromArrayLen(byte[] value, int len) {
        return (byte) ((len - value.length) >>> 31);
    }

    @ForceInline
    public static byte[] compress(char[] val, int off, int count) {
        byte[] latin1 = new byte[count];
        int ndx = compress(val, off, latin1, 0, count);
        if (ndx != count) {
            byte[] utf16 = toBytes(val, off, count);
            if (getChar(utf16, ndx) > '\u00ff' || compress(utf16, 0, latin1, 0, count) != count) {
                return utf16;
            }
        }
        return latin1;
    }

    public static byte[] compress(byte[] val, int off, int count) {
        byte[] latin1 = new byte[count];
        int ndx = compress(val, off, latin1, 0, count);
        if (ndx != count) {
            byte[] utf16 = Arrays.copyOfRange(val, off << 1, newBytesLength(off + count));
            if (getChar(utf16, ndx) > '\u00ff' || compress(utf16, 0, latin1, 0, count) != count) {
                return utf16;
            }
        }
        return latin1;
    }

    public static byte[] compress(int[] val, int off, int count) {
        byte[] latin1 = new byte[count];
        int end = off + count;
        int ndx = 0;
        while (ndx < count) {
            int cp = val[off];
            if (cp >= 0 && cp <= 255) {
                latin1[ndx] = (byte) cp;
                ndx++;
                off++;
            } else {
                int estSize = ndx + computeCodePointSize(val, off, end);
                byte[] utf16 = newBytesFor(estSize);
                if (ndx > 0) {
                    StringLatin1.inflate(latin1, 0, utf16, 0, ndx);
                }
                if (estSize == count) {
                    putChar(utf16, ndx, cp);
                    int off2 = off + 1;
                    int i10 = ndx + 1;
                    while (i10 < count) {
                        putChar(utf16, i10, val[off2]);
                        i10++;
                        off2++;
                    }
                } else {
                    utf16 = extractCodepoints(val, off, end, utf16, ndx);
                    if (getChar(utf16, ndx) <= '\u00ff' && compress(utf16, 0, latin1, 0, count) == count) {
                        return latin1;
                    }
                }
                return utf16;
            }
        }
        return latin1;
    }

    private static byte[] extractCodepoints(int[] val, int off, int end, byte[] dst, int dstOff) {
        while (off < end) {
            int codePoint = val[off];
            int dstLimit = dstOff + Character.charCount(codePoint) + ((end - off) - 1);
            if (dstLimit > (dst.length >> 1)) {
                int maxRemaining = dstLimit + ((end - off) - 1);
                dst = Arrays.copyOf(dst, newBytesLength(maxRemaining));
            }
            while (true) {
                if (Character.isBmpCodePoint(codePoint)) {
                    int i10 = dstOff;
                    dstOff++;
                    putChar(dst, i10, codePoint);
                } else {
                    int i11 = dstOff;
                    int dstOff2 = dstOff + 1;
                    putChar(dst, i11, Character.highSurrogate(codePoint));
                    dstOff = dstOff2 + 1;
                    putChar(dst, dstOff2, Character.lowSurrogate(codePoint));
                }
                off++;
                if (dstOff + 2 > dstLimit) {
                    break;
                }
                codePoint = val[off];
            }
        }
        if (dstOff != (dst.length >> 1)) {
            return Arrays.copyOf(dst, newBytesLength(dstOff));
        }
        return dst;
    }

    private static int computeCodePointSize(int[] val, int off, int end) {
        int n10 = end - off;
        while (off < end) {
            int i10 = off;
            off++;
            int codePoint = val[i10];
            if (!Character.isBmpCodePoint(codePoint)) {
                if (Character.isValidCodePoint(codePoint)) {
                    n10++;
                } else {
                    throw new IllegalArgumentException(Integer.toString(codePoint));
                }
            }
        }
        return n10;
    }

    @IntrinsicCandidate
    public static int compress(char[] src, int srcOff, byte[] dst, int dstOff, int len) {
        for (int i10 = 0; i10 < len; i10++) {
            char c10 = src[srcOff];
            if (c10 > '\u00ff') {
                return i10;
            }
            dst[dstOff] = (byte) c10;
            srcOff++;
            dstOff++;
        }
        return len;
    }

    @IntrinsicCandidate
    public static int compress(byte[] src, int srcOff, byte[] dst, int dstOff, int len) {
        checkBoundsOffCount(srcOff, len, src);
        for (int i10 = 0; i10 < len; i10++) {
            char c10 = getChar(src, srcOff);
            if (c10 > '\u00ff') {
                return i10;
            }
            dst[dstOff] = (byte) c10;
            srcOff++;
            dstOff++;
        }
        return len;
    }

    public static byte[] toBytes(int[] val, int index, int len) {
        int end = index + len;
        int n10 = computeCodePointSize(val, index, end);
        byte[] buf = newBytesFor(n10);
        return extractCodepoints(val, index, end, buf, 0);
    }

    public static byte[] toBytes(char c10) {
        byte[] result = new byte[2];
        putChar(result, 0, c10);
        return result;
    }

    public static byte[] toBytesSupplementary(int cp) {
        byte[] result = new byte[4];
        putChar(result, 0, Character.highSurrogate(cp));
        putChar(result, 1, Character.lowSurrogate(cp));
        return result;
    }

    @IntrinsicCandidate
    public static void getChars(byte[] value, int srcBegin, int srcEnd, char[] dst, int dstBegin) {
        if (srcBegin < srcEnd) {
            checkBoundsOffCount(srcBegin, srcEnd - srcBegin, value);
        }
        for (int i10 = srcBegin; i10 < srcEnd; i10++) {
            int i11 = dstBegin;
            dstBegin++;
            dst[i11] = getChar(value, i10);
        }
    }

    public static void getBytes(byte[] value, int srcBegin, int srcEnd, byte[] dst, int dstBegin) {
        int srcEnd2 = srcEnd << 1;
        for (int i10 = (srcBegin << 1) + (1 >> LO_BYTE_SHIFT); i10 < srcEnd2; i10 += 2) {
            int i11 = dstBegin;
            dstBegin++;
            dst[i11] = value[i10];
        }
    }

    @IntrinsicCandidate
    public static int compareTo(byte[] value, byte[] other) {
        int len1 = length(value);
        int len2 = length(other);
        return compareValues(value, other, len1, len2);
    }

    public static int compareTo(byte[] value, byte[] other, int len1, int len2) {
        checkOffset(len1, value);
        checkOffset(len2, other);
        return compareValues(value, other, len1, len2);
    }

    private static int compareValues(byte[] value, byte[] other, int len1, int len2) {
        int lim = Math.min(len1, len2);
        for (int k10 = 0; k10 < lim; k10++) {
            char c12 = getChar(value, k10);
            char c22 = getChar(other, k10);
            if (c12 != c22) {
                return c12 - c22;
            }
        }
        return len1 - len2;
    }

    @IntrinsicCandidate
    public static int compareToLatin1(byte[] value, byte[] other) {
        return -StringLatin1.compareToUTF16(other, value);
    }

    public static int compareToLatin1(byte[] value, byte[] other, int len1, int len2) {
        return -StringLatin1.compareToUTF16(other, value, len2, len1);
    }

    public static int compareToCI(byte[] value, byte[] other) {
        return compareToCIImpl(value, 0, length(value), other, 0, length(other));
    }

    private static int compareToCIImpl(byte[] value, int toffset, int tlen, byte[] other, int ooffset, int olen) {
        int tlast = toffset + tlen;
        int olast = ooffset + olen;
        if (!$assertionsDisabled && (toffset < 0 || ooffset < 0)) {
            throw new AssertionError();
        }
        if (!$assertionsDisabled && tlast > length(value)) {
            throw new AssertionError();
        }
        if (!$assertionsDisabled && olast > length(other)) {
            throw new AssertionError();
        }
        int k12 = toffset;
        int k22 = ooffset;
        while (k12 < tlast && k22 < olast) {
            int cp1 = getChar(value, k12);
            int cp2 = getChar(other, k22);
            if (cp1 != cp2 && compareCodePointCI(cp1, cp2) != 0) {
                int cp12 = codePointIncluding(value, cp1, k12, toffset, tlast);
                if (cp12 < 0) {
                    k12++;
                    cp12 = -cp12;
                }
                int cp22 = codePointIncluding(other, cp2, k22, ooffset, olast);
                if (cp22 < 0) {
                    k22++;
                    cp22 = -cp22;
                }
                int diff = compareCodePointCI(cp12, cp22);
                if (diff != 0) {
                    return diff;
                }
            }
            k12++;
            k22++;
        }
        return tlen - olen;
    }

    private static int compareCodePointCI(int cp1, int cp2) {
        int cp12;
        int cp22;
        int cp13 = Character.toUpperCase(cp1);
        int cp23 = Character.toUpperCase(cp2);
        if (cp13 != cp23 && (cp12 = Character.toLowerCase(cp13)) != (cp22 = Character.toLowerCase(cp23))) {
            return cp12 - cp22;
        }
        return 0;
    }

    private static int codePointIncluding(byte[] ba2, int cp, int index, int start, int end) {
        if (!Character.isSurrogate((char) cp)) {
            return cp;
        }
        if (Character.isLowSurrogate((char) cp)) {
            if (index > start) {
                char c10 = getChar(ba2, index - 1);
                if (Character.isHighSurrogate(c10)) {
                    return Character.toCodePoint(c10, (char) cp);
                }
            }
        } else if (index + 1 < end) {
            char c11 = getChar(ba2, index + 1);
            if (Character.isLowSurrogate(c11)) {
                return -Character.toCodePoint((char) cp, c11);
            }
        }
        return cp;
    }

    public static int compareToCI_Latin1(byte[] value, byte[] other) {
        return -StringLatin1.compareToCI_UTF16(other, value);
    }

    public static int hashCode(byte[] value) {
        return ArraysSupport.hashCodeOfUTF16(value, 0, value.length >> 1, 0);
    }

    public static int indexOf(byte[] value, int ch2, int fromIndex, int toIndex) {
        if (ch2 < 65536) {
            return indexOfChar(value, ch2, fromIndex, toIndex);
        }
        return indexOfSupplementary(value, ch2, fromIndex, toIndex);
    }

    @IntrinsicCandidate
    public static int indexOf(byte[] value, byte[] str) {
        if (str.length == 0) {
            return 0;
        }
        if (value.length < str.length) {
            return -1;
        }
        return indexOfUnsafe(value, length(value), str, length(str), 0);
    }

    @IntrinsicCandidate
    public static int indexOf(byte[] value, int valueCount, byte[] str, int strCount, int fromIndex) {
        checkBoundsBeginEnd(fromIndex, valueCount, value);
        checkBoundsBeginEnd(0, strCount, str);
        return indexOfUnsafe(value, valueCount, str, strCount, fromIndex);
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x006d, code lost:
    
        if (getChar(r4, r11) != r0) goto L31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0070, code lost:
    
        r11 = r11 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0077, code lost:
    
        if (r11 > r0) goto L56;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0082, code lost:
    
        if (getChar(r4, r11) == r0) goto L55;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x008c, code lost:
    
        if (r11 > r0) goto L53;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x008f, code lost:
    
        r12 = r11 + 1;
        r0 = (r12 + r7) - 1;
        r14 = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x00a4, code lost:
    
        if (r12 >= r0) goto L59;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x00b3, code lost:
    
        if (getChar(r4, r12) != getChar(r6, r14)) goto L58;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x00b6, code lost:
    
        r12 = r12 + 1;
        r14 = r14 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x00c3, code lost:
    
        if (r12 != r0) goto L54;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x00c8, code lost:
    
        return r11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x00c9, code lost:
    
        r11 = r11 + 1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static int indexOfUnsafe(byte[] value, int valueCount, byte[] str, int strCount, int fromIndex) {
        if (!$assertionsDisabled && fromIndex < 0) {
            throw new AssertionError();
        }
        if (!$assertionsDisabled && strCount <= 0) {
            throw new AssertionError();
        }
        if (!$assertionsDisabled && strCount > length(str)) {
            throw new AssertionError();
        }
        if (!$assertionsDisabled && valueCount < strCount) {
            throw new AssertionError();
        }
        char first = getChar(str, 0);
        int max = valueCount - strCount;
        int i10 = fromIndex;
        while (i10 <= max) {
        }
        return -1;
    }

    @IntrinsicCandidate
    public static int indexOfLatin1(byte[] value, byte[] str) {
        if (str.length == 0) {
            return 0;
        }
        if (length(value) < str.length) {
            return -1;
        }
        return indexOfLatin1Unsafe(value, length(value), str, str.length, 0);
    }

    @IntrinsicCandidate
    public static int indexOfLatin1(byte[] src, int srcCount, byte[] tgt, int tgtCount, int fromIndex) {
        checkBoundsBeginEnd(fromIndex, srcCount, src);
        String.checkBoundsBeginEnd(0, tgtCount, tgt.length);
        return indexOfLatin1Unsafe(src, srcCount, tgt, tgtCount, fromIndex);
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x006e, code lost:
    
        if (getChar(r4, r11) != r0) goto L31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0071, code lost:
    
        r11 = r11 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0078, code lost:
    
        if (r11 > r0) goto L56;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0083, code lost:
    
        if (getChar(r4, r11) == r0) goto L55;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x008d, code lost:
    
        if (r11 > r0) goto L53;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x0090, code lost:
    
        r12 = r11 + 1;
        r0 = (r12 + r7) - 1;
        r14 = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x00a5, code lost:
    
        if (r12 >= r0) goto L58;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x00b6, code lost:
    
        if (getChar(r4, r12) != (r6[r14] & 255)) goto L59;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x00b9, code lost:
    
        r12 = r12 + 1;
        r14 = r14 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x00c6, code lost:
    
        if (r12 != r0) goto L54;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x00cb, code lost:
    
        return r11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:53:0x00cc, code lost:
    
        r11 = r11 + 1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static int indexOfLatin1Unsafe(byte[] src, int srcCount, byte[] tgt, int tgtCount, int fromIndex) {
        if (!$assertionsDisabled && fromIndex < 0) {
            throw new AssertionError();
        }
        if (!$assertionsDisabled && tgtCount <= 0) {
            throw new AssertionError();
        }
        if (!$assertionsDisabled && tgtCount > tgt.length) {
            throw new AssertionError();
        }
        if (!$assertionsDisabled && srcCount < tgtCount) {
            throw new AssertionError();
        }
        char first = (char) (tgt[0] & 255);
        int max = srcCount - tgtCount;
        int i10 = fromIndex;
        while (i10 <= max) {
        }
        return -1;
    }

    @IntrinsicCandidate
    private static int indexOfChar(byte[] value, int ch2, int fromIndex, int max) {
        for (int i10 = fromIndex; i10 < max; i10++) {
            if (getChar(value, i10) == ch2) {
                return i10;
            }
        }
        return -1;
    }

    private static int indexOfSupplementary(byte[] value, int ch2, int fromIndex, int max) {
        if (Character.isValidCodePoint(ch2)) {
            char hi2 = Character.highSurrogate(ch2);
            char lo = Character.lowSurrogate(ch2);
            checkBoundsBeginEnd(fromIndex, max, value);
            for (int i10 = fromIndex; i10 < max - 1; i10++) {
                if (getChar(value, i10) == hi2 && getChar(value, i10 + 1) == lo) {
                    return i10;
                }
            }
            return -1;
        }
        return -1;
    }

    public static int lastIndexOf(byte[] src, int srcCount, byte[] tgt, int tgtCount, int fromIndex) {
        if (!$assertionsDisabled && fromIndex < 0) {
            throw new AssertionError();
        }
        if (!$assertionsDisabled && tgtCount <= 0) {
            throw new AssertionError();
        }
        if (!$assertionsDisabled && tgtCount > length(tgt)) {
            throw new AssertionError();
        }
        int min = tgtCount - 1;
        int i10 = min + fromIndex;
        int strLastIndex = tgtCount - 1;
        checkIndex(strLastIndex, tgt);
        char strLastChar = getChar(tgt, strLastIndex);
        checkIndex(i10, src);
        while (true) {
            if (i10 >= min && getChar(src, i10) != strLastChar) {
                i10--;
            } else {
                if (i10 < min) {
                    return -1;
                }
                int j10 = i10 - 1;
                int start = j10 - strLastIndex;
                int k10 = strLastIndex - 1;
                while (j10 > start) {
                    int i11 = j10;
                    j10--;
                    int i12 = k10;
                    k10--;
                    if (getChar(src, i11) != getChar(tgt, i12)) {
                        i10--;
                    }
                }
                return start + 1;
            }
        }
    }

    public static int lastIndexOf(byte[] value, int ch2, int fromIndex) {
        if (ch2 < 65536) {
            for (int i10 = Math.min(fromIndex, (value.length >> 1) - 1); i10 >= 0; i10--) {
                if (getChar(value, i10) == ch2) {
                    return i10;
                }
            }
            return -1;
        }
        return lastIndexOfSupplementary(value, ch2, fromIndex);
    }

    private static int lastIndexOfSupplementary(byte[] value, int ch2, int fromIndex) {
        if (Character.isValidCodePoint(ch2)) {
            char hi2 = Character.highSurrogate(ch2);
            char lo = Character.lowSurrogate(ch2);
            for (int i10 = Math.min(fromIndex, (value.length >> 1) - 2); i10 >= 0; i10--) {
                if (getChar(value, i10) == hi2 && getChar(value, i10 + 1) == lo) {
                    return i10;
                }
            }
            return -1;
        }
        return -1;
    }

    public static String replace(byte[] value, char oldChar, char newChar) {
        int len = value.length >> 1;
        int i10 = -1;
        do {
            i10++;
            if (i10 >= len) {
                break;
            }
        } while (getChar(value, i10) != oldChar);
        if (i10 < len) {
            byte[] buf = new byte[value.length];
            for (int j10 = 0; j10 < i10; j10++) {
                putChar(buf, j10, getChar(value, j10));
            }
            while (i10 < len) {
                char c10 = getChar(value, i10);
                putChar(buf, i10, c10 == oldChar ? newChar : c10);
                i10++;
            }
            if (String.COMPACT_STRINGS && !StringLatin1.canEncode(oldChar) && StringLatin1.canEncode(newChar)) {
                byte[] res = compress(buf, 0, len);
                byte coder = coderFromArrayLen(res, len);
                return new String(res, coder);
            }
            return new String(buf, (byte) 1);
        }
        return null;
    }

    public static String replace(byte[] value, int valLen, boolean valLat1, byte[] targ, int targLen, boolean targLat1, byte[] repl, int replLen, boolean replLat1) {
        int indexOf;
        int indexOf2;
        if (!$assertionsDisabled && targLen <= 0) {
            throw new AssertionError();
        }
        if (!$assertionsDisabled && valLat1 && targLat1 && replLat1) {
            throw new AssertionError();
        }
        if (String.COMPACT_STRINGS && valLat1 && !targLat1) {
            return null;
        }
        if (String.COMPACT_STRINGS && valLat1) {
            indexOf = StringLatin1.indexOf(value, targ);
        } else if (String.COMPACT_STRINGS && targLat1) {
            indexOf = indexOfLatin1(value, targ);
        } else {
            indexOf = indexOf(value, targ);
        }
        int i10 = indexOf;
        if (i10 < 0) {
            return null;
        }
        int p10 = 0;
        int[] pos = new int[16];
        pos[0] = i10;
        int i11 = i10;
        while (true) {
            int i12 = i11 + targLen;
            if (String.COMPACT_STRINGS && valLat1) {
                indexOf2 = StringLatin1.indexOf(value, valLen, targ, targLen, i12);
            } else if (String.COMPACT_STRINGS && targLat1) {
                indexOf2 = indexOfLatin1(value, valLen, targ, targLen, i12);
            } else {
                indexOf2 = indexOf(value, valLen, targ, targLen, i12);
            }
            int j10 = indexOf2;
            if (indexOf2 > 0) {
                p10++;
                if (p10 == pos.length) {
                    pos = Arrays.copyOf(pos, ArraysSupport.newLength(p10, 1, p10 >> 1));
                }
                pos[p10] = j10;
                i11 = j10;
            } else {
                try {
                    break;
                } catch (ArithmeticException e10) {
                    throw new OutOfMemoryError("Required length exceeds implementation limit");
                }
            }
        }
        int p11 = p10 + 1;
        int resultLen = Math.addExact(valLen, Math.multiplyExact(p11, replLen - targLen));
        if (resultLen == 0) {
            return "";
        }
        byte[] result = newBytesFor(resultLen);
        int posFrom = 0;
        int posTo = 0;
        for (int q10 = 0; q10 < p11; q10++) {
            int nextPos = pos[q10];
            if (String.COMPACT_STRINGS && valLat1) {
                while (posFrom < nextPos) {
                    int i13 = posFrom;
                    posFrom++;
                    char c10 = (char) (value[i13] & 255);
                    int i14 = posTo;
                    posTo++;
                    putChar(result, i14, c10);
                }
            } else {
                while (posFrom < nextPos) {
                    int i15 = posTo;
                    posTo++;
                    int i16 = posFrom;
                    posFrom++;
                    putChar(result, i15, getChar(value, i16));
                }
            }
            posFrom += targLen;
            if (String.COMPACT_STRINGS && replLat1) {
                for (int k10 = 0; k10 < replLen; k10++) {
                    char c11 = (char) (repl[k10] & 255);
                    int i17 = posTo;
                    posTo++;
                    putChar(result, i17, c11);
                }
            } else {
                for (int k11 = 0; k11 < replLen; k11++) {
                    int i18 = posTo;
                    posTo++;
                    putChar(result, i18, getChar(repl, k11));
                }
            }
        }
        if (String.COMPACT_STRINGS && valLat1) {
            while (posFrom < valLen) {
                int i19 = posFrom;
                posFrom++;
                char c12 = (char) (value[i19] & 255);
                int i20 = posTo;
                posTo++;
                putChar(result, i20, c12);
            }
        } else {
            while (posFrom < valLen) {
                int i21 = posTo;
                posTo++;
                int i22 = posFrom;
                posFrom++;
                putChar(result, i21, getChar(value, i22));
            }
        }
        if (String.COMPACT_STRINGS && replLat1 && !targLat1) {
            byte[] res = compress(result, 0, resultLen);
            byte coder = coderFromArrayLen(res, resultLen);
            return new String(res, coder);
        }
        return new String(result, (byte) 1);
    }

    public static boolean regionMatchesCI(byte[] value, int toffset, byte[] other, int ooffset, int len) {
        return compareToCIImpl(value, toffset, len, other, ooffset, len) == 0;
    }

    public static boolean regionMatchesCI_Latin1(byte[] value, int toffset, byte[] other, int ooffset, int len) {
        return StringLatin1.regionMatchesCI_UTF16(other, ooffset, value, toffset, len);
    }

    public static String toLowerCase(String str, byte[] value, Locale locale) {
        if (locale == null) {
            throw new NullPointerException();
        }
        boolean hasSurr = false;
        int len = value.length >> 1;
        int first = 0;
        while (true) {
            if (first >= len) {
                break;
            }
            int cp = getChar(value, first);
            if (Character.isSurrogate((char) cp)) {
                hasSurr = true;
                break;
            }
            if (cp != Character.toLowerCase(cp)) {
                break;
            }
            first++;
        }
        if (first == len) {
            return str;
        }
        byte[] result = new byte[value.length];
        System.arraycopy(value, 0, result, 0, first << 1);
        String lang = locale.getLanguage();
        if (lang == "tr" || lang == "az" || lang == "lt") {
            return toLowerCaseEx(str, value, result, first, locale, true);
        }
        if (hasSurr) {
            return toLowerCaseEx(str, value, result, first, locale, false);
        }
        int bits = 0;
        for (int i10 = first; i10 < len; i10++) {
            int cp2 = getChar(value, i10);
            if (cp2 == 931 || Character.isSurrogate((char) cp2)) {
                return toLowerCaseEx(str, value, result, i10, locale, false);
            }
            if (cp2 == 304) {
                return toLowerCaseEx(str, value, result, i10, locale, true);
            }
            int cp3 = Character.toLowerCase(cp2);
            if (!Character.isBmpCodePoint(cp3)) {
                return toLowerCaseEx(str, value, result, i10, locale, false);
            }
            bits |= cp3;
            putChar(result, i10, cp3);
        }
        if (bits < 0 || bits > 255) {
            return new String(result, (byte) 1);
        }
        return newString(result, 0, len);
    }

    private static String toLowerCaseEx(String str, byte[] value, byte[] result, int first, Locale locale, boolean localeDependent) {
        int lowerChar;
        char[] lowerCharArray;
        if (!$assertionsDisabled && result.length != value.length) {
            throw new AssertionError();
        }
        if (!$assertionsDisabled && first < 0) {
            throw new AssertionError();
        }
        int resultOffset = first;
        int length = value.length >> 1;
        int i10 = first;
        while (true) {
            int i11 = i10;
            if (i11 < length) {
                int srcChar = getChar(value, i11);
                int srcCount = 1;
                if (Character.isSurrogate((char) srcChar)) {
                    srcChar = codePointAt(value, i11, length);
                    srcCount = Character.charCount(srcChar);
                }
                if (localeDependent || srcChar == 931 || srcChar == 304) {
                    lowerChar = ConditionalSpecialCasing.toLowerCaseEx(str, i11, locale);
                } else {
                    lowerChar = Character.toLowerCase(srcChar);
                }
                if (Character.isBmpCodePoint(lowerChar)) {
                    int i12 = resultOffset;
                    resultOffset++;
                    putChar(result, i12, lowerChar);
                } else {
                    if (lowerChar == -1) {
                        lowerCharArray = ConditionalSpecialCasing.toLowerCaseCharArray(str, i11, locale);
                    } else {
                        lowerCharArray = Character.toChars(lowerChar);
                    }
                    int mapLen = lowerCharArray.length;
                    if (mapLen > srcCount) {
                        byte[] result2 = newBytesFor(((result.length >> 1) + mapLen) - srcCount);
                        System.arraycopy(result, 0, result2, 0, resultOffset << 1);
                        result = result2;
                    }
                    if (!$assertionsDisabled && resultOffset < 0) {
                        throw new AssertionError();
                    }
                    if (!$assertionsDisabled && resultOffset + mapLen > length(result)) {
                        throw new AssertionError();
                    }
                    for (char c10 : lowerCharArray) {
                        int i13 = resultOffset;
                        resultOffset++;
                        putChar(result, i13, c10);
                    }
                }
                i10 = i11 + srcCount;
            } else {
                return newString(result, 0, resultOffset);
            }
        }
    }

    public static String toUpperCase(String str, byte[] value, Locale locale) {
        if (locale == null) {
            throw new NullPointerException();
        }
        boolean hasSurr = false;
        int len = value.length >> 1;
        int first = 0;
        while (true) {
            if (first >= len) {
                break;
            }
            int cp = getChar(value, first);
            if (Character.isSurrogate((char) cp)) {
                hasSurr = true;
                break;
            }
            if (cp != Character.toUpperCaseEx(cp)) {
                break;
            }
            first++;
        }
        if (first == len) {
            return str;
        }
        byte[] result = new byte[value.length];
        System.arraycopy(value, 0, result, 0, first << 1);
        String lang = locale.getLanguage();
        if (lang == "tr" || lang == "az" || lang == "lt") {
            return toUpperCaseEx(str, value, result, first, locale, true);
        }
        if (hasSurr) {
            return toUpperCaseEx(str, value, result, first, locale, false);
        }
        int bits = 0;
        for (int i10 = first; i10 < len; i10++) {
            int cp2 = getChar(value, i10);
            if (Character.isSurrogate((char) cp2)) {
                return toUpperCaseEx(str, value, result, i10, locale, false);
            }
            int cp3 = Character.toUpperCaseEx(cp2);
            if (!Character.isBmpCodePoint(cp3)) {
                return toUpperCaseEx(str, value, result, i10, locale, false);
            }
            bits |= cp3;
            putChar(result, i10, cp3);
        }
        if (bits < 0 || bits > 255) {
            return new String(result, (byte) 1);
        }
        return newString(result, 0, len);
    }

    private static String toUpperCaseEx(String str, byte[] value, byte[] result, int first, Locale locale, boolean localeDependent) {
        int upperChar;
        char[] upperCharArray;
        if (!$assertionsDisabled && result.length != value.length) {
            throw new AssertionError();
        }
        if (!$assertionsDisabled && first < 0) {
            throw new AssertionError();
        }
        int resultOffset = first;
        int length = value.length >> 1;
        int i10 = first;
        while (true) {
            int i11 = i10;
            if (i11 < length) {
                int srcChar = getChar(value, i11);
                int srcCount = 1;
                if (Character.isSurrogate((char) srcChar)) {
                    srcChar = codePointAt(value, i11, length);
                    srcCount = Character.charCount(srcChar);
                }
                if (localeDependent) {
                    upperChar = ConditionalSpecialCasing.toUpperCaseEx(str, i11, locale);
                } else {
                    upperChar = Character.toUpperCaseEx(srcChar);
                }
                if (Character.isBmpCodePoint(upperChar)) {
                    int i12 = resultOffset;
                    resultOffset++;
                    putChar(result, i12, upperChar);
                } else {
                    if (upperChar == -1) {
                        if (localeDependent) {
                            upperCharArray = ConditionalSpecialCasing.toUpperCaseCharArray(str, i11, locale);
                        } else {
                            upperCharArray = Character.toUpperCaseCharArray(srcChar);
                        }
                    } else {
                        upperCharArray = Character.toChars(upperChar);
                    }
                    int mapLen = upperCharArray.length;
                    if (mapLen > srcCount) {
                        byte[] result2 = newBytesFor(((result.length >> 1) + mapLen) - srcCount);
                        System.arraycopy(result, 0, result2, 0, resultOffset << 1);
                        result = result2;
                    }
                    if (!$assertionsDisabled && resultOffset < 0) {
                        throw new AssertionError();
                    }
                    if (!$assertionsDisabled && resultOffset + mapLen > length(result)) {
                        throw new AssertionError();
                    }
                    for (char c10 : upperCharArray) {
                        int i13 = resultOffset;
                        resultOffset++;
                        putChar(result, i13, c10);
                    }
                }
                i10 = i11 + srcCount;
            } else {
                return newString(result, 0, resultOffset);
            }
        }
    }

    public static String trim(byte[] value) {
        int length = value.length >> 1;
        int len = length;
        int st = 0;
        while (st < len && getChar(value, st) <= ' ') {
            st++;
        }
        while (st < len && getChar(value, len - 1) <= ' ') {
            len--;
        }
        if (st > 0 || len < length) {
            return new String(Arrays.copyOfRange(value, st << 1, len << 1), (byte) 1);
        }
        return null;
    }

    public static int indexOfNonWhitespace(byte[] value) {
        int left;
        int codepoint;
        int length = value.length >> 1;
        int i10 = 0;
        while (true) {
            left = i10;
            if (left >= length || !((codepoint = codePointAt(value, left, length)) == 32 || codepoint == 9 || Character.isWhitespace(codepoint))) {
                break;
            }
            i10 = left + Character.charCount(codepoint);
        }
        return left;
    }

    public static int lastIndexOfNonWhitespace(byte[] value) {
        int right;
        int codepoint;
        int length = value.length >>> 1;
        int i10 = length;
        while (true) {
            right = i10;
            if (0 >= right || !((codepoint = codePointBefore(value, right)) == 32 || codepoint == 9 || Character.isWhitespace(codepoint))) {
                break;
            }
            i10 = right - Character.charCount(codepoint);
        }
        return right;
    }

    public static String strip(byte[] value) {
        int length = value.length >>> 1;
        int left = indexOfNonWhitespace(value);
        if (left == length) {
            return "";
        }
        int right = lastIndexOfNonWhitespace(value);
        boolean ifChanged = left > 0 || right < length;
        if (ifChanged) {
            return newString(value, left, right - left);
        }
        return null;
    }

    public static String stripLeading(byte[] value) {
        int length = value.length >>> 1;
        int left = indexOfNonWhitespace(value);
        if (left != 0) {
            return newString(value, left, length - left);
        }
        return null;
    }

    public static String stripTrailing(byte[] value) {
        int length = value.length >>> 1;
        int right = lastIndexOfNonWhitespace(value);
        if (right != length) {
            return newString(value, 0, right);
        }
        return null;
    }

    public static final class LinesSpliterator implements Spliterator<String> {
        private byte[] value;
        private int index;
        private final int fence;

        private LinesSpliterator(byte[] value, int start, int length) {
            this.value = value;
            this.index = start;
            this.fence = start + length;
        }

        private int indexOfLineSeparator(int start) {
            for (int current = start; current < this.fence; current++) {
                char ch2 = StringUTF16.getChar(this.value, current);
                if (ch2 == '\n' || ch2 == '\r') {
                    return current;
                }
            }
            return this.fence;
        }

        private int skipLineSeparator(int start) {
            int next;
            if (start < this.fence) {
                if (StringUTF16.getChar(this.value, start) == '\r' && (next = start + 1) < this.fence && StringUTF16.getChar(this.value, next) == '\n') {
                    return next + 1;
                }
                return start + 1;
            }
            return this.fence;
        }

        private String next() {
            int start = this.index;
            int end = indexOfLineSeparator(start);
            this.index = skipLineSeparator(end);
            return StringUTF16.newString(this.value, start, end - start);
        }

        @Override
        public boolean tryAdvance(Consumer<? super String> action) {
            if (action == null) {
                throw new NullPointerException("tryAdvance action missing");
            }
            if (this.index != this.fence) {
                action.accept(next());
                return true;
            }
            return false;
        }

        @Override
        public void forEachRemaining(Consumer<? super String> action) {
            if (action == null) {
                throw new NullPointerException("forEachRemaining action missing");
            }
            while (this.index != this.fence) {
                action.accept(next());
            }
        }

        @Override
        public Spliterator<String> trySplit() {
            int half = (this.fence + this.index) >>> 1;
            int mid = skipLineSeparator(indexOfLineSeparator(half));
            if (mid < this.fence) {
                int start = this.index;
                this.index = mid;
                return new LinesSpliterator(this.value, start, mid - start);
            }
            return null;
        }

        @Override
        public long estimateSize() {
            return (this.fence - this.index) + 1;
        }

        @Override
        public int characteristics() {
            return 1296;
        }

        static LinesSpliterator spliterator(byte[] value) {
            return new LinesSpliterator(value, 0, value.length >>> 1);
        }
    }

    public static Stream<String> lines(byte[] value) {
        return StreamSupport.stream(LinesSpliterator.spliterator(value), false);
    }

    private static void putChars(byte[] val, int index, char[] str, int off, int end) {
        while (off < end) {
            int i10 = index;
            index++;
            int i11 = off;
            off++;
            putChar(val, i10, str[i11]);
        }
    }

    public static String newString(byte[] val, int index, int len) {
        if (len == 0) {
            return "";
        }
        if (String.COMPACT_STRINGS) {
            byte[] res = compress(val, index, len);
            byte coder = coderFromArrayLen(res, len);
            return new String(res, coder);
        }
        int last = index + len;
        return new String(Arrays.copyOfRange(val, index << 1, last << 1), (byte) 1);
    }

    public static class CharsSpliterator implements Spliterator.OfInt {
        private final byte[] array;
        private int index;
        private final int fence;
        private final int cs;

        public CharsSpliterator(byte[] array, int acs) {
            this(array, 0, array.length >> 1, acs);
        }

        public CharsSpliterator(byte[] array, int origin, int fence, int acs) {
            this.array = array;
            this.index = origin;
            this.fence = fence;
            this.cs = acs | 16 | 64 | 16384;
        }

        @Override
        public Spliterator.OfInt trySplit() {
            int lo = this.index;
            int mid = (lo + this.fence) >>> 1;
            if (lo >= mid) {
                return null;
            }
            byte[] bArr = this.array;
            this.index = mid;
            return new CharsSpliterator(bArr, lo, mid, this.cs);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public void forEachRemaining(IntConsumer action) {
            if (action == null) {
                throw new NullPointerException();
            }
            byte[] a10 = this.array;
            int length = a10.length >> 1;
            int hi2 = this.fence;
            if (length >= hi2) {
                int i10 = this.index;
                int i11 = i10;
                if (i10 >= 0) {
                    this.index = hi2;
                    if (i11 >= hi2) {
                        return;
                    }
                    do {
                        action.accept(StringUTF16.charAt(a10, i11));
                        i11++;
                    } while (i11 < hi2);
                }
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public boolean tryAdvance(IntConsumer action) {
            if (action == null) {
                throw new NullPointerException();
            }
            int i10 = this.index;
            if (i10 >= 0 && i10 < this.fence) {
                action.accept(StringUTF16.charAt(this.array, i10));
                this.index++;
                return true;
            }
            return false;
        }

        @Override
        public long estimateSize() {
            return this.fence - this.index;
        }

        @Override
        public int characteristics() {
            return this.cs;
        }
    }

    static class CodePointsSpliterator implements Spliterator.OfInt {
        private final byte[] array;
        private int index;
        private final int fence;
        private final int cs;

        public CodePointsSpliterator(byte[] array, int acs) {
            this(array, 0, array.length >> 1, acs);
        }

        public CodePointsSpliterator(byte[] array, int origin, int fence, int acs) {
            this.array = array;
            this.index = origin;
            this.fence = fence;
            this.cs = acs | 16;
        }

        @Override
        public Spliterator.OfInt trySplit() {
            int lo = this.index;
            int mid = (lo + this.fence) >>> 1;
            if (lo >= mid) {
                return null;
            }
            if (Character.isLowSurrogate(StringUTF16.charAt(this.array, mid))) {
                int midOneLess = mid - 1;
                if (Character.isHighSurrogate(StringUTF16.charAt(this.array, midOneLess))) {
                    if (lo >= midOneLess) {
                        return null;
                    }
                    byte[] bArr = this.array;
                    this.index = midOneLess;
                    return new CodePointsSpliterator(bArr, lo, midOneLess, this.cs);
                }
            }
            byte[] bArr2 = this.array;
            this.index = mid;
            return new CodePointsSpliterator(bArr2, lo, mid, this.cs);
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public void forEachRemaining(IntConsumer action) {
            if (action == null) {
                throw new NullPointerException();
            }
            byte[] a10 = this.array;
            int length = a10.length >> 1;
            int hi2 = this.fence;
            if (length >= hi2) {
                int i10 = this.index;
                int i11 = i10;
                if (i10 >= 0) {
                    this.index = hi2;
                    if (i11 >= hi2) {
                        return;
                    }
                    do {
                        i11 = advance(a10, i11, hi2, action);
                    } while (i11 < hi2);
                }
            }
        }

        /* JADX WARN: Can't rename method to resolve collision */
        @Override
        public boolean tryAdvance(IntConsumer action) {
            if (action == null) {
                throw new NullPointerException();
            }
            if (this.index >= 0 && this.index < this.fence) {
                this.index = advance(this.array, this.index, this.fence, action);
                return true;
            }
            return false;
        }

        private static int advance(byte[] a10, int i10, int hi2, IntConsumer action) {
            int i11 = i10 + 1;
            char c12 = StringUTF16.charAt(a10, i10);
            int cp = c12;
            if (Character.isHighSurrogate(c12) && i11 < hi2) {
                char c22 = StringUTF16.charAt(a10, i11);
                if (Character.isLowSurrogate(c22)) {
                    i11++;
                    cp = Character.toCodePoint(c12, c22);
                }
            }
            action.accept(cp);
            return i11;
        }

        @Override
        public long estimateSize() {
            return this.fence - this.index;
        }

        @Override
        public int characteristics() {
            return this.cs;
        }
    }

    public static void putCharSB(byte[] val, int index, int c10) {
        checkIndex(index, val);
        putChar(val, index, c10);
    }

    public static void putCharsSB(byte[] val, int index, char[] ca2, int off, int end) {
        checkBoundsBeginEnd(index, (index + end) - off, val);
        putChars(val, index, ca2, off, end);
    }

    public static void putCharsSB(byte[] val, int index, CharSequence s10, int off, int end) {
        checkBoundsBeginEnd(index, (index + end) - off, val);
        for (int i10 = off; i10 < end; i10++) {
            int i11 = index;
            index++;
            putChar(val, i11, s10.charAt(i10));
        }
    }

    public static int codePointAtSB(byte[] val, int index, int end) {
        return codePointAt(val, index, end, true);
    }

    public static int codePointBeforeSB(byte[] val, int index) {
        return codePointBefore(val, index, true);
    }

    public static int codePointCountSB(byte[] val, int beginIndex, int endIndex) {
        return codePointCount(val, beginIndex, endIndex, true);
    }

    public static boolean contentEquals(byte[] v12, byte[] v22, int len) {
        checkBoundsOffCount(0, len, v22);
        for (int i10 = 0; i10 < len; i10++) {
            if (((char) (v12[i10] & 255)) != getChar(v22, i10)) {
                return false;
            }
        }
        return true;
    }

    public static boolean contentEquals(byte[] value, CharSequence cs, int len) {
        checkOffset(len, value);
        for (int i10 = 0; i10 < len; i10++) {
            if (getChar(value, i10) != cs.charAt(i10)) {
                return false;
            }
        }
        return true;
    }

    public static void putCharsAt(byte[] value, int i10, char c12, char c22, char c32, char c42) {
        int end = i10 + 4;
        checkBoundsBeginEnd(i10, end, value);
        putChar(value, i10, c12);
        putChar(value, i10 + 1, c22);
        putChar(value, i10 + 2, c32);
        putChar(value, i10 + 3, c42);
    }

    public static void putCharsAt(byte[] value, int i10, char c12, char c22, char c32, char c42, char c52) {
        int end = i10 + 5;
        checkBoundsBeginEnd(i10, end, value);
        putChar(value, i10, c12);
        putChar(value, i10 + 1, c22);
        putChar(value, i10 + 2, c32);
        putChar(value, i10 + 3, c42);
        putChar(value, i10 + 4, c52);
    }

    public static char charAt(byte[] value, int index) {
        checkIndex(index, value);
        return getChar(value, index);
    }

    public static void reverse(byte[] val, int count) {
        checkOffset(count, val);
        int n10 = count - 1;
        boolean hasSurrogates = false;
        for (int j10 = (n10 - 1) >> 1; j10 >= 0; j10--) {
            int k10 = n10 - j10;
            char cj2 = getChar(val, j10);
            char ck2 = getChar(val, k10);
            putChar(val, j10, ck2);
            putChar(val, k10, cj2);
            if (Character.isSurrogate(cj2) || Character.isSurrogate(ck2)) {
                hasSurrogates = true;
            }
        }
        if (hasSurrogates) {
            reverseAllValidSurrogatePairs(val, count);
        }
    }

    private static void reverseAllValidSurrogatePairs(byte[] val, int count) {
        int i10 = 0;
        while (i10 < count - 1) {
            char c22 = getChar(val, i10);
            if (Character.isLowSurrogate(c22)) {
                char c12 = getChar(val, i10 + 1);
                if (Character.isHighSurrogate(c12)) {
                    int i11 = i10;
                    i10++;
                    putChar(val, i11, c12);
                    putChar(val, i10, c22);
                }
            }
            i10++;
        }
    }

    public static void inflate(byte[] src, int srcOff, byte[] dst, int dstOff, int len) {
        checkBoundsOffCount(dstOff, len, dst);
        for (int i10 = 0; i10 < len; i10++) {
            int i11 = dstOff;
            dstOff++;
            int i12 = srcOff;
            srcOff++;
            putChar(dst, i11, src[i12] & 255);
        }
    }

    public static int lastIndexOfLatin1(byte[] src, int srcCount, byte[] tgt, int tgtCount, int fromIndex) {
        if (!$assertionsDisabled && fromIndex < 0) {
            throw new AssertionError();
        }
        if (!$assertionsDisabled && tgtCount <= 0) {
            throw new AssertionError();
        }
        if (!$assertionsDisabled && tgtCount > tgt.length) {
            throw new AssertionError();
        }
        int min = tgtCount - 1;
        int i10 = min + fromIndex;
        int strLastIndex = tgtCount - 1;
        char strLastChar = (char) (tgt[strLastIndex] & 255);
        checkIndex(i10, src);
        while (true) {
            if (i10 >= min && getChar(src, i10) != strLastChar) {
                i10--;
            } else {
                if (i10 < min) {
                    return -1;
                }
                int j10 = i10 - 1;
                int start = j10 - strLastIndex;
                int k10 = strLastIndex - 1;
                while (j10 > start) {
                    int i11 = j10;
                    j10--;
                    int i12 = k10;
                    k10--;
                    if (getChar(src, i11) != (tgt[i12] & 255)) {
                        i10--;
                    }
                }
                return start + 1;
            }
        }
    }

    public static void checkIndex(int off, byte[] val) {
        String.checkIndex(off, length(val));
    }

    public static void checkOffset(int off, byte[] val) {
        String.checkOffset(off, length(val));
    }

    public static void checkBoundsBeginEnd(int begin, int end, byte[] val) {
        String.checkBoundsBeginEnd(begin, end, length(val));
    }

    public static void checkBoundsOffCount(int offset, int count, byte[] val) {
        String.checkBoundsOffCount(offset, count, length(val));
    }
}
