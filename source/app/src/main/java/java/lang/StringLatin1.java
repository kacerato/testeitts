package java.lang;

import java.util.Arrays;
import java.util.Locale;
import java.util.Spliterator;
import java.util.function.Consumer;
import java.util.function.IntConsumer;
import java.util.stream.Stream;
import java.util.stream.StreamSupport;
import jdk.internal.util.ArraysSupport;
import jdk.internal.vm.annotation.IntrinsicCandidate;

public final class StringLatin1 {
    static final boolean $assertionsDisabled;

    StringLatin1() {
    }

    static {
        $assertionsDisabled = !StringLatin1.class.desiredAssertionStatus();
    }

    public static char charAt(byte[] value, int index) {
        String.checkIndex(index, value.length);
        return (char) (value[index] & 255);
    }

    public static boolean canEncode(char cp) {
        return cp <= '\u00ff';
    }

    public static boolean canEncode(int cp) {
        return cp >= 0 && cp <= 255;
    }

    public static byte coderFromChar(char cp) {
        return (byte) (('\u00ff' - cp) >>> 31);
    }

    public static int length(byte[] value) {
        return value.length;
    }

    public static int codePointAt(byte[] value, int index, int end) {
        return value[index] & 255;
    }

    public static int codePointBefore(byte[] value, int index) {
        return value[index - 1] & 255;
    }

    public static int codePointCount(byte[] value, int beginIndex, int endIndex) {
        return endIndex - beginIndex;
    }

    public static char[] toChars(byte[] value) {
        char[] dst = new char[value.length];
        inflate(value, 0, dst, 0, value.length);
        return dst;
    }

    public static byte[] inflate(byte[] value, int off, int len) {
        byte[] ret = StringUTF16.newBytesFor(len);
        inflate(value, off, ret, 0, len);
        return ret;
    }

    public static void getChars(byte[] value, int srcBegin, int srcEnd, char[] dst, int dstBegin) {
        inflate(value, srcBegin, dst, dstBegin, srcEnd - srcBegin);
    }

    public static void getBytes(byte[] value, int srcBegin, int srcEnd, byte[] dst, int dstBegin) {
        System.arraycopy(value, srcBegin, dst, dstBegin, srcEnd - srcBegin);
    }

    @IntrinsicCandidate
    public static boolean equals(byte[] value, byte[] other) {
        if (value.length == other.length) {
            for (int i10 = 0; i10 < value.length; i10++) {
                if (value[i10] != other[i10]) {
                    return false;
                }
            }
            return true;
        }
        return false;
    }

    @IntrinsicCandidate
    public static int compareTo(byte[] value, byte[] other) {
        int len1 = value.length;
        int len2 = other.length;
        return compareTo(value, other, len1, len2);
    }

    public static int compareTo(byte[] value, byte[] other, int len1, int len2) {
        int lim = Math.min(len1, len2);
        int k10 = ArraysSupport.mismatch(value, other, lim);
        return k10 < 0 ? len1 - len2 : getChar(value, k10) - getChar(other, k10);
    }

    @IntrinsicCandidate
    public static int compareToUTF16(byte[] value, byte[] other) {
        int len1 = length(value);
        int len2 = StringUTF16.length(other);
        return compareToUTF16Values(value, other, len1, len2);
    }

    public static int compareToUTF16(byte[] value, byte[] other, int len1, int len2) {
        String.checkOffset(len1, length(value));
        String.checkOffset(len2, StringUTF16.length(other));
        return compareToUTF16Values(value, other, len1, len2);
    }

    private static int compareToUTF16Values(byte[] value, byte[] other, int len1, int len2) {
        int lim = Math.min(len1, len2);
        for (int k10 = 0; k10 < lim; k10++) {
            char c12 = getChar(value, k10);
            char c22 = StringUTF16.getChar(other, k10);
            if (c12 != c22) {
                return c12 - c22;
            }
        }
        return len1 - len2;
    }

    public static int compareToCI(byte[] value, byte[] other) {
        char c12;
        char c22;
        char c13;
        char c23;
        int len1 = value.length;
        int len2 = other.length;
        int lim = Math.min(len1, len2);
        for (int k10 = 0; k10 < lim; k10++) {
            if (value[k10] != other[k10] && (c12 = (char) CharacterDataLatin1.instance.toUpperCase(getChar(value, k10))) != (c22 = (char) CharacterDataLatin1.instance.toUpperCase(getChar(other, k10))) && (c13 = Character.toLowerCase(c12)) != (c23 = Character.toLowerCase(c22))) {
                return c13 - c23;
            }
        }
        return len1 - len2;
    }

    public static int compareToCI_UTF16(byte[] value, byte[] other) {
        char c12;
        char c22;
        char c13;
        char c23;
        int len1 = length(value);
        int len2 = StringUTF16.length(other);
        int lim = Math.min(len1, len2);
        for (int k10 = 0; k10 < lim; k10++) {
            char c14 = getChar(value, k10);
            char c24 = StringUTF16.getChar(other, k10);
            if (c14 != c24 && (c12 = (char) CharacterDataLatin1.instance.toUpperCase(c14)) != (c22 = Character.toUpperCase(c24)) && (c13 = Character.toLowerCase(c12)) != (c23 = Character.toLowerCase(c22))) {
                return c13 - c23;
            }
        }
        return len1 - len2;
    }

    public static int hashCode(byte[] value) {
        return ArraysSupport.hashCodeOfUnsigned(value, 0, value.length, 0);
    }

    public static int indexOf(byte[] value, int ch2, int fromIndex, int toIndex) {
        if (!canEncode(ch2)) {
            return -1;
        }
        return indexOfChar(value, ch2, fromIndex, toIndex);
    }

    @IntrinsicCandidate
    private static int indexOfChar(byte[] value, int ch2, int fromIndex, int max) {
        byte c10 = (byte) ch2;
        for (int i10 = fromIndex; i10 < max; i10++) {
            if (value[i10] == c10) {
                return i10;
            }
        }
        return -1;
    }

    @IntrinsicCandidate
    public static int indexOf(byte[] value, byte[] str) {
        if (str.length == 0) {
            return 0;
        }
        if (value.length == 0) {
            return -1;
        }
        return indexOf(value, value.length, str, str.length, 0);
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0038, code lost:
    
        if (r11 > r0) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x003b, code lost:
    
        r12 = r11 + 1;
        r0 = (r12 + r7) - 1;
        r14 = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0050, code lost:
    
        if (r12 >= r0) goto L34;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x005b, code lost:
    
        if (r4[r12] != r6[r14]) goto L35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x005e, code lost:
    
        r12 = r12 + 1;
        r14 = r14 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x006b, code lost:
    
        if (r12 != r0) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0070, code lost:
    
        return r11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0071, code lost:
    
        r11 = r11 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:5:0x001b, code lost:
    
        if (r4[r11] != r0) goto L7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x001e, code lost:
    
        r11 = r11 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:7:0x0025, code lost:
    
        if (r11 > r0) goto L31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x002e, code lost:
    
        if (r4[r11] == r0) goto L32;
     */
    @IntrinsicCandidate
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static int indexOf(byte[] value, int valueCount, byte[] str, int strCount, int fromIndex) {
        byte first = str[0];
        int max = valueCount - strCount;
        int i10 = fromIndex;
        while (i10 <= max) {
        }
        return -1;
    }

    public static int lastIndexOf(byte[] src, int srcCount, byte[] tgt, int tgtCount, int fromIndex) {
        int min = tgtCount - 1;
        int i10 = min + fromIndex;
        int strLastIndex = tgtCount - 1;
        char strLastChar = (char) (tgt[strLastIndex] & 255);
        while (true) {
            if (i10 >= min && (src[i10] & 255) != strLastChar) {
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
                    if ((src[i11] & 255) != (tgt[i12] & 255)) {
                        i10--;
                    }
                }
                return start + 1;
            }
        }
    }

    public static int lastIndexOf(byte[] value, int ch2, int fromIndex) {
        if (!canEncode(ch2)) {
            return -1;
        }
        for (int off = Math.min(fromIndex, value.length - 1); off >= 0; off--) {
            if (value[off] == ((byte) ch2)) {
                return off;
            }
        }
        return -1;
    }

    public static String replace(byte[] value, char oldChar, char newChar) {
        if (canEncode(oldChar)) {
            int len = value.length;
            int i10 = -1;
            do {
                i10++;
                if (i10 >= len) {
                    break;
                }
            } while (value[i10] != ((byte) oldChar));
            if (i10 < len) {
                if (canEncode(newChar)) {
                    byte[] buf = StringConcatHelper.newArray(len);
                    for (int j10 = 0; j10 < i10; j10++) {
                        buf[j10] = value[j10];
                    }
                    while (i10 < len) {
                        byte c10 = value[i10];
                        buf[i10] = c10 == ((byte) oldChar) ? (byte) newChar : c10;
                        i10++;
                    }
                    return new String(buf, (byte) 0);
                }
                byte[] buf2 = StringUTF16.newBytesFor(len);
                inflate(value, 0, buf2, 0, i10);
                while (i10 < len) {
                    char c11 = (char) (value[i10] & 255);
                    StringUTF16.putChar(buf2, i10, c11 == oldChar ? newChar : c11);
                    i10++;
                }
                return new String(buf2, (byte) 1);
            }
            return null;
        }
        return null;
    }

    public static String replace(byte[] value, int valLen, byte[] targ, int targLen, byte[] repl, int replLen) {
        int i10;
        if (!$assertionsDisabled && targLen <= 0) {
            throw new AssertionError();
        }
        int p10 = 0;
        if (valLen == 0 || (i10 = indexOf(value, valLen, targ, targLen, 0)) < 0) {
            return null;
        }
        int[] pos = new int[16];
        pos[0] = i10;
        int i11 = i10;
        while (true) {
            int j10 = indexOf(value, valLen, targ, targLen, i11 + targLen);
            if (j10 > 0) {
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
        byte[] result = StringConcatHelper.newArray(resultLen);
        int posFrom = 0;
        int posTo = 0;
        for (int q10 = 0; q10 < p11; q10++) {
            int nextPos = pos[q10];
            while (posFrom < nextPos) {
                int i12 = posTo;
                posTo++;
                int i13 = posFrom;
                posFrom++;
                result[i12] = value[i13];
            }
            posFrom += targLen;
            for (int k10 = 0; k10 < replLen; k10++) {
                int i14 = posTo;
                posTo++;
                result[i14] = repl[k10];
            }
        }
        while (posFrom < valLen) {
            int i15 = posTo;
            posTo++;
            int i16 = posFrom;
            posFrom++;
            result[i15] = value[i16];
        }
        return new String(result, (byte) 0);
    }

    public static boolean regionMatchesCI(byte[] value, int toffset, byte[] other, int ooffset, int len) {
        int last = toffset + len;
        while (toffset < last) {
            int i10 = toffset;
            toffset++;
            byte b12 = value[i10];
            int i11 = ooffset;
            ooffset++;
            byte b22 = other[i11];
            if (!CharacterDataLatin1.equalsIgnoreCase(b12, b22)) {
                return false;
            }
        }
        return true;
    }

    public static boolean regionMatchesCI_UTF16(byte[] value, int toffset, byte[] other, int ooffset, int len) {
        char u12;
        char u22;
        int last = toffset + len;
        while (toffset < last) {
            int i10 = toffset;
            toffset++;
            char c12 = (char) (value[i10] & 255);
            int i11 = ooffset;
            ooffset++;
            char c22 = StringUTF16.getChar(other, i11);
            if (c12 != c22 && (u12 = (char) CharacterDataLatin1.instance.toUpperCase(c12)) != (u22 = Character.toUpperCase(c22)) && Character.toLowerCase(u12) != Character.toLowerCase(u22)) {
                return false;
            }
        }
        return true;
    }

    public static String toLowerCase(String str, byte[] value, Locale locale) {
        if (locale == null) {
            throw new NullPointerException();
        }
        int len = value.length;
        int first = 0;
        while (first < len && !CharacterDataLatin1.instance.isUpperCase(value[first] & 255)) {
            first++;
        }
        if (first == len) {
            return str;
        }
        String lang = locale.getLanguage();
        if (lang == "tr" || lang == "az" || lang == "lt") {
            return toLowerCaseEx(str, value, first, locale, true);
        }
        byte[] result = new byte[len];
        System.arraycopy(value, 0, result, 0, first);
        for (int i10 = first; i10 < len; i10++) {
            result[i10] = (byte) CharacterDataLatin1.instance.toLowerCase(value[i10] & 255);
        }
        return new String(result, (byte) 0);
    }

    private static String toLowerCaseEx(String str, byte[] value, int first, Locale locale, boolean localeDependent) {
        int lowerChar;
        char[] lowerCharArray;
        byte[] result = StringUTF16.newBytesFor(value.length);
        int resultOffset = 0;
        for (int i10 = 0; i10 < first; i10++) {
            int i11 = resultOffset;
            resultOffset++;
            StringUTF16.putChar(result, i11, value[i10] & 255);
        }
        for (int i12 = first; i12 < value.length; i12++) {
            int srcChar = value[i12] & 255;
            if (localeDependent) {
                lowerChar = ConditionalSpecialCasing.toLowerCaseEx(str, i12, locale);
            } else {
                lowerChar = CharacterDataLatin1.instance.toLowerCase(srcChar);
            }
            if (Character.isBmpCodePoint(lowerChar)) {
                int i13 = resultOffset;
                resultOffset++;
                StringUTF16.putChar(result, i13, lowerChar);
            } else {
                if (lowerChar == -1) {
                    lowerCharArray = ConditionalSpecialCasing.toLowerCaseCharArray(str, i12, locale);
                } else {
                    lowerCharArray = Character.toChars(lowerChar);
                }
                int mapLen = lowerCharArray.length;
                if (mapLen > 1) {
                    byte[] result2 = StringUTF16.newBytesFor(((result.length >> 1) + mapLen) - 1);
                    System.arraycopy(result, 0, result2, 0, resultOffset << 1);
                    result = result2;
                }
                for (char c10 : lowerCharArray) {
                    int i14 = resultOffset;
                    resultOffset++;
                    StringUTF16.putChar(result, i14, c10);
                }
            }
        }
        return StringUTF16.newString(result, 0, resultOffset);
    }

    public static String toUpperCase(String str, byte[] value, Locale locale) {
        if (locale == null) {
            throw new NullPointerException();
        }
        int len = value.length;
        int first = 0;
        while (first < len) {
            int cp = value[first] & 255;
            boolean notUpperCaseEx = cp >= 97 && (cp <= 122 || cp == 181 || (cp >= 223 && cp != 247));
            if (notUpperCaseEx) {
                break;
            }
            first++;
        }
        if (first == len) {
            return str;
        }
        String lang = locale.getLanguage();
        if (lang == "tr" || lang == "az" || lang == "lt") {
            return toUpperCaseEx(str, value, first, locale, true);
        }
        byte[] result = new byte[len];
        System.arraycopy(value, 0, result, 0, first);
        for (int i10 = first; i10 < len; i10++) {
            int cp2 = CharacterDataLatin1.instance.toUpperCaseEx(value[i10] & 255);
            if (!canEncode(cp2)) {
                return toUpperCaseEx(str, value, first, locale, false);
            }
            result[i10] = (byte) cp2;
        }
        return new String(result, (byte) 0);
    }

    private static String toUpperCaseEx(String str, byte[] value, int first, Locale locale, boolean localeDependent) {
        int upperChar;
        char[] upperCharArray;
        byte[] result = StringUTF16.newBytesFor(value.length);
        int resultOffset = 0;
        for (int i10 = 0; i10 < first; i10++) {
            int i11 = resultOffset;
            resultOffset++;
            StringUTF16.putChar(result, i11, value[i10] & 255);
        }
        for (int i12 = first; i12 < value.length; i12++) {
            int srcChar = value[i12] & 255;
            if (localeDependent) {
                upperChar = ConditionalSpecialCasing.toUpperCaseEx(str, i12, locale);
            } else {
                upperChar = CharacterDataLatin1.instance.toUpperCaseEx(srcChar);
            }
            if (Character.isBmpCodePoint(upperChar)) {
                int i13 = resultOffset;
                resultOffset++;
                StringUTF16.putChar(result, i13, upperChar);
            } else {
                if (upperChar == -1) {
                    if (localeDependent) {
                        upperCharArray = ConditionalSpecialCasing.toUpperCaseCharArray(str, i12, locale);
                    } else {
                        upperCharArray = CharacterDataLatin1.instance.toUpperCaseCharArray(srcChar);
                    }
                } else {
                    upperCharArray = Character.toChars(upperChar);
                }
                int mapLen = upperCharArray.length;
                if (mapLen > 1) {
                    byte[] result2 = StringUTF16.newBytesFor(((result.length >> 1) + mapLen) - 1);
                    System.arraycopy(result, 0, result2, 0, resultOffset << 1);
                    result = result2;
                }
                for (char c10 : upperCharArray) {
                    int i14 = resultOffset;
                    resultOffset++;
                    StringUTF16.putChar(result, i14, c10);
                }
            }
        }
        return StringUTF16.newString(result, 0, resultOffset);
    }

    public static String trim(byte[] value) {
        int len = value.length;
        int st = 0;
        while (st < len && (value[st] & 255) <= 32) {
            st++;
        }
        while (st < len && (value[len - 1] & 255) <= 32) {
            len--;
        }
        if (st > 0 || len < value.length) {
            return newString(value, st, len - st);
        }
        return null;
    }

    public static int indexOfNonWhitespace(byte[] value) {
        char ch2;
        int length = value.length;
        int left = 0;
        while (left < length && ((ch2 = getChar(value, left)) == ' ' || ch2 == '\t' || CharacterDataLatin1.instance.isWhitespace(ch2))) {
            left++;
        }
        return left;
    }

    public static int lastIndexOfNonWhitespace(byte[] value) {
        char ch2;
        int length = value.length;
        int right = length;
        while (0 < right && ((ch2 = getChar(value, right - 1)) == ' ' || ch2 == '\t' || CharacterDataLatin1.instance.isWhitespace(ch2))) {
            right--;
        }
        return right;
    }

    public static String strip(byte[] value) {
        int left = indexOfNonWhitespace(value);
        if (left == value.length) {
            return "";
        }
        int right = lastIndexOfNonWhitespace(value);
        boolean ifChanged = left > 0 || right < value.length;
        if (ifChanged) {
            return newString(value, left, right - left);
        }
        return null;
    }

    public static String stripLeading(byte[] value) {
        int left = indexOfNonWhitespace(value);
        if (left != 0) {
            return newString(value, left, value.length - left);
        }
        return null;
    }

    public static String stripTrailing(byte[] value) {
        int right = lastIndexOfNonWhitespace(value);
        if (right != value.length) {
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
                char ch2 = StringLatin1.getChar(this.value, current);
                if (ch2 == '\n' || ch2 == '\r') {
                    return current;
                }
            }
            return this.fence;
        }

        private int skipLineSeparator(int start) {
            int next;
            if (start < this.fence) {
                if (StringLatin1.getChar(this.value, start) == '\r' && (next = start + 1) < this.fence && StringLatin1.getChar(this.value, next) == '\n') {
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
            return StringLatin1.newString(this.value, start, end - start);
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
            return new LinesSpliterator(value, 0, value.length);
        }
    }

    public static Stream<String> lines(byte[] value) {
        return StreamSupport.stream(LinesSpliterator.spliterator(value), false);
    }

    public static void putCharsAt(byte[] value, int i10, char c12, char c22, char c32, char c42) {
        value[i10] = (byte) c12;
        value[i10 + 1] = (byte) c22;
        value[i10 + 2] = (byte) c32;
        value[i10 + 3] = (byte) c42;
    }

    public static void putCharsAt(byte[] value, int i10, char c12, char c22, char c32, char c42, char c52) {
        value[i10] = (byte) c12;
        value[i10 + 1] = (byte) c22;
        value[i10 + 2] = (byte) c32;
        value[i10 + 3] = (byte) c42;
        value[i10 + 4] = (byte) c52;
    }

    public static void putChar(byte[] val, int index, int c10) {
        val[index] = (byte) c10;
    }

    public static char getChar(byte[] val, int index) {
        return (char) (val[index] & 255);
    }

    public static byte[] toBytes(int[] val, int off, int len) {
        byte[] ret = new byte[len];
        for (int i10 = 0; i10 < len; i10++) {
            int i11 = off;
            off++;
            int cp = val[i11];
            if (!canEncode(cp)) {
                return null;
            }
            ret[i10] = (byte) cp;
        }
        return ret;
    }

    public static byte[] toBytes(char c10) {
        return new byte[]{(byte) c10};
    }

    public static String newString(byte[] val, int index, int len) {
        if (len == 0) {
            return "";
        }
        return new String(Arrays.copyOfRange(val, index, index + len), (byte) 0);
    }

    @IntrinsicCandidate
    public static void inflate(byte[] src, int srcOff, char[] dst, int dstOff, int len) {
        for (int i10 = 0; i10 < len; i10++) {
            int i11 = dstOff;
            dstOff++;
            int i12 = srcOff;
            srcOff++;
            dst[i11] = (char) (src[i12] & 255);
        }
    }

    @IntrinsicCandidate
    public static void inflate(byte[] src, int srcOff, byte[] dst, int dstOff, int len) {
        StringUTF16.inflate(src, srcOff, dst, dstOff, len);
    }

    public static class CharsSpliterator implements Spliterator.OfInt {
        private final byte[] array;
        private int index;
        private final int fence;
        private final int cs;

        public CharsSpliterator(byte[] array, int acs) {
            this(array, 0, array.length, acs);
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
            int length = a10.length;
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
                        action.accept(a10[i11] & 255);
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
            if (this.index >= 0 && this.index < this.fence) {
                byte[] bArr = this.array;
                int i10 = this.index;
                this.index = i10 + 1;
                action.accept(bArr[i10] & 255);
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
}
