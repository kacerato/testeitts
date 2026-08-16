package java.lang;

import java.lang.StringLatin1;
import java.lang.StringUTF16;
import java.nio.CharBuffer;
import java.util.Arrays;
import java.util.function.BiFunction;
import java.util.stream.IntStream;
import java.util.stream.StreamSupport;
import jdk.internal.math.DoubleToDecimal;
import jdk.internal.math.FloatToDecimal;
import jdk.internal.util.ArraysSupport;
import jdk.internal.util.DecimalDigits;
import jdk.internal.util.Preconditions;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/lang/AbstractStringBuilder.class
 */
public abstract class AbstractStringBuilder implements Appendable, CharSequence {
    byte[] value;
    byte coder;
    boolean maybeLatin1;
    int count;
    private static final byte[] EMPTYVALUE;
    static final boolean $assertionsDisabled;

    @Override
    public abstract String toString();

    static {
        $assertionsDisabled = !AbstractStringBuilder.class.desiredAssertionStatus();
        EMPTYVALUE = new byte[0];
    }

    AbstractStringBuilder() {
        this.value = EMPTYVALUE;
    }

    public AbstractStringBuilder(int capacity) {
        if (String.COMPACT_STRINGS) {
            this.value = new byte[capacity];
            this.coder = (byte) 0;
        } else {
            this.value = StringUTF16.newBytesFor(capacity);
            this.coder = (byte) 1;
        }
    }

    public AbstractStringBuilder(String str) {
        int length = str.length();
        int capacity = length < 2147483631 ? length + 16 : Integer.MAX_VALUE;
        byte initCoder = str.coder();
        this.coder = initCoder;
        this.value = isLatin1(this.coder) ? new byte[capacity] : StringUTF16.newBytesFor(capacity);
        append(str);
    }

    public AbstractStringBuilder(CharSequence seq) {
        byte initCoder;
        int length = seq.length();
        if (length < 0) {
            throw new NegativeArraySizeException("Negative length: " + length);
        }
        int capacity = length < 2147483631 ? length + 16 : Integer.MAX_VALUE;
        if (String.COMPACT_STRINGS) {
            if (seq instanceof AbstractStringBuilder) {
                AbstractStringBuilder asb = (AbstractStringBuilder) seq;
                initCoder = asb.getCoder();
                this.maybeLatin1 |= asb.maybeLatin1;
            } else if (seq instanceof String) {
                String s10 = (String) seq;
                initCoder = s10.coder();
            } else {
                initCoder = 0;
            }
        } else {
            initCoder = 1;
        }
        this.coder = initCoder;
        this.value = initCoder == 0 ? new byte[capacity] : StringUTF16.newBytesFor(capacity);
        append(seq);
    }

    public int compareTo(AbstractStringBuilder another) {
        if (this == another) {
            return 0;
        }
        byte[] val1 = this.value;
        byte[] val2 = another.value;
        int count1 = this.count;
        int count2 = another.count;
        byte coder = this.coder;
        return coder == another.coder ? isLatin1(coder) ? StringLatin1.compareTo(val1, val2, count1, count2) : StringUTF16.compareTo(val1, val2, count1, count2) : isLatin1(coder) ? StringLatin1.compareToUTF16(val1, val2, count1, count2) : StringUTF16.compareToLatin1(val1, val2, count1, count2);
    }

    @Override
    public int length() {
        return this.count;
    }

    public int capacity() {
        return this.value.length >> this.coder;
    }

    public void ensureCapacity(int minimumCapacity) {
        if (minimumCapacity > 0) {
            this.value = ensureCapacitySameCoder(this.value, this.coder, minimumCapacity);
        }
    }

    private static boolean needsNewBuffer(byte[] value, byte coder, int newCapacity, byte newCoder) {
        long newLength = newCapacity << newCoder;
        return coder != newCoder || newLength > ((long) value.length) || 0 > newLength;
    }

    private static byte[] ensureCapacityNewCoder(byte[] value, byte coder, int count, int minimumCapacity, byte newCoder) {
        int newCapacity;
        if (!$assertionsDisabled && coder != newCoder && newCoder != 1) {
            throw new AssertionError((Object) "bad new coder UTF16 -> LATIN1");
        }
        int oldCapacity = value.length >> coder;
        int growth = minimumCapacity - oldCapacity;
        if (growth <= 0) {
            newCapacity = oldCapacity;
        } else {
            newCapacity = newCapacity(value, newCoder, minimumCapacity);
        }
        int newCapacity2 = newCapacity;
        if (!$assertionsDisabled && count > newCapacity2) {
            throw new AssertionError((Object) "count exceeds new capacity");
        }
        if (coder == newCoder) {
            if (newCapacity2 > oldCapacity) {
                value = Arrays.copyOf(value, newCapacity2 << newCoder);
            }
            return value;
        }
        byte[] newValue = StringUTF16.newBytesFor(newCapacity2);
        StringLatin1.inflate(value, 0, newValue, 0, count);
        return newValue;
    }

    private static byte[] ensureCapacitySameCoder(byte[] value, byte coder, int minimumCapacity) {
        int oldCapacity = value.length >> coder;
        if (minimumCapacity - oldCapacity > 0) {
            value = Arrays.copyOf(value, newCapacity(value, coder, minimumCapacity) << coder);
        }
        return value;
    }

    private static byte[] inflateToUTF16(byte[] value, int count) {
        if (!$assertionsDisabled && count > value.length) {
            throw new AssertionError((Object) "count > value.length");
        }
        byte[] newValue = StringUTF16.newBytesFor(value.length);
        StringLatin1.inflate(value, 0, newValue, 0, count);
        return newValue;
    }

    private static int newCapacity(byte[] value, byte coder, int minCapacity) {
        int oldLength = value.length;
        int newLength = minCapacity << coder;
        int growth = newLength - oldLength;
        int length = ArraysSupport.newLength(oldLength, growth, oldLength + (2 << coder));
        if (length == Integer.MAX_VALUE) {
            throw new OutOfMemoryError("Required length exceeds implementation limit");
        }
        return length >> coder;
    }

    public void trimToSize() {
        int length = this.count << this.coder;
        if (length < this.value.length) {
            this.value = Arrays.copyOf(this.value, length);
        }
    }

    public void setLength(int newLength) {
        if (newLength < 0) {
            throw new StringIndexOutOfBoundsException(newLength);
        }
        byte coder = this.coder;
        int count = this.count;
        byte[] value = ensureCapacitySameCoder(this.value, coder, newLength);
        if (count < newLength) {
            Arrays.fill(value, count << coder, newLength << coder, (byte) 0);
        } else if (count > newLength) {
            this.maybeLatin1 = true;
        }
        this.count = newLength;
        this.value = value;
    }

    @Override
    public char charAt(int index) {
        byte coder = this.coder;
        byte[] value = this.value;
        int count = Math.min(this.count, value.length >> coder);
        String.checkIndex(index, count);
        if (isLatin1(coder)) {
            return (char) (value[index] & 255);
        }
        return StringUTF16.getChar(value, index);
    }

    public int codePointAt(int index) {
        byte coder = this.coder;
        int count = this.count;
        byte[] value = this.value;
        String.checkIndex(index, count);
        if (isLatin1(coder)) {
            return value[index] & 255;
        }
        return StringUTF16.codePointAtSB(value, index, count);
    }

    public int codePointBefore(int index) {
        byte coder = this.coder;
        int count = this.count;
        byte[] value = this.value;
        int i10 = index - 1;
        String.checkIndex(i10, count);
        if (isLatin1(coder)) {
            return value[i10] & 255;
        }
        return StringUTF16.codePointBeforeSB(value, index);
    }

    public int codePointCount(int beginIndex, int endIndex) {
        byte coder = this.coder;
        int count = this.count;
        byte[] value = this.value;
        Preconditions.checkFromToIndex(beginIndex, endIndex, count, (BiFunction) null);
        if (isLatin1(coder)) {
            return endIndex - beginIndex;
        }
        return StringUTF16.codePointCountSB(value, beginIndex, endIndex);
    }

    public int offsetByCodePoints(int index, int codePointOffset) {
        if (index < 0 || index > this.count) {
            throw new IndexOutOfBoundsException();
        }
        return Character.offsetByCodePoints(this, index, codePointOffset);
    }

    @Override
    public void getChars(int srcBegin, int srcEnd, char[] dst, int dstBegin) {
        Preconditions.checkFromToIndex(srcBegin, srcEnd, this.count, Preconditions.SIOOBE_FORMATTER);
        int n10 = srcEnd - srcBegin;
        Preconditions.checkFromToIndex(dstBegin, dstBegin + n10, dst.length, Preconditions.IOOBE_FORMATTER);
        if (isLatin1(this.coder)) {
            StringLatin1.getChars(this.value, srcBegin, srcEnd, dst, dstBegin);
        } else {
            StringUTF16.getChars(this.value, srcBegin, srcEnd, dst, dstBegin);
        }
    }

    public void setCharAt(int index, char ch2) {
        byte coder = this.coder;
        int count = this.count;
        String.checkIndex(index, count);
        byte[] value = this.value;
        byte newCoder = (byte) (coder | StringLatin1.coderFromChar(ch2));
        if (needsNewBuffer(value, coder, count, newCoder)) {
            byte[] ensureCapacityNewCoder = ensureCapacityNewCoder(value, coder, count, count, newCoder);
            value = ensureCapacityNewCoder;
            this.value = ensureCapacityNewCoder;
            coder = newCoder;
            this.coder = newCoder;
        }
        if (isLatin1(coder)) {
            value[index] = (byte) ch2;
        } else {
            StringUTF16.putChar(value, index, ch2);
            this.maybeLatin1 = true;
        }
    }

    public AbstractStringBuilder append(Object obj) {
        return append(String.valueOf(obj));
    }

    public AbstractStringBuilder append(String str) {
        if (str == null) {
            return appendNull();
        }
        byte coder = this.coder;
        int count = this.count;
        byte[] value = this.value;
        int len = str.length();
        byte newCoder = (byte) (coder | str.coder());
        if (needsNewBuffer(value, coder, count + len, newCoder)) {
            byte[] ensureCapacityNewCoder = ensureCapacityNewCoder(value, coder, count, count + len, newCoder);
            value = ensureCapacityNewCoder;
            this.value = ensureCapacityNewCoder;
            this.coder = newCoder;
        }
        str.getBytes(value, count, newCoder);
        this.count = count + len;
        return this;
    }

    public AbstractStringBuilder append(StringBuffer sb2) {
        return append((AbstractStringBuilder) sb2);
    }

    public AbstractStringBuilder append(AbstractStringBuilder asb) {
        if (asb == null) {
            return appendNull();
        }
        int len = asb.length();
        byte coder = this.coder;
        int count = this.count;
        byte[] value = this.value;
        byte newCoder = (byte) (coder | asb.coder);
        if (needsNewBuffer(value, coder, count + len, newCoder)) {
            byte[] ensureCapacityNewCoder = ensureCapacityNewCoder(value, coder, count, count + len, newCoder);
            value = ensureCapacityNewCoder;
            this.value = ensureCapacityNewCoder;
            this.coder = newCoder;
        }
        asb.getBytes(value, count, newCoder);
        this.count = count + len;
        this.maybeLatin1 |= asb.maybeLatin1;
        return this;
    }

    @Override
    public AbstractStringBuilder append(CharSequence s10) {
        if (s10 == null) {
            return appendNull();
        }
        if (s10 instanceof String) {
            String str = (String) s10;
            return append(str);
        }
        if (s10 instanceof AbstractStringBuilder) {
            AbstractStringBuilder asb = (AbstractStringBuilder) s10;
            return append(asb);
        }
        return append(s10, 0, s10.length());
    }

    private AbstractStringBuilder appendNull() {
        byte coder = this.coder;
        int count = this.count;
        int newCount = count + 4;
        byte[] value = ensureCapacitySameCoder(this.value, coder, newCount);
        if (isLatin1(coder)) {
            StringLatin1.putCharsAt(value, count, 'n', 'u', 'l', 'l');
        } else {
            StringUTF16.putCharsAt(value, count, 'n', 'u', 'l', 'l');
        }
        this.count = newCount;
        this.value = value;
        return this;
    }

    @Override
    public AbstractStringBuilder append(CharSequence s10, int start, int end) {
        byte[] appendChars;
        if (s10 == null) {
            s10 = "null";
        }
        Preconditions.checkFromToIndex(start, end, s10.length(), Preconditions.IOOBE_FORMATTER);
        int len = end - start;
        byte coder = this.coder;
        int count = this.count;
        byte[] currValue = ensureCapacitySameCoder(this.value, coder, count + len);
        if (s10 instanceof String) {
            String str = (String) s10;
            appendChars = appendChars(currValue, coder, count, str, start, end);
        } else {
            appendChars = appendChars(currValue, coder, count, s10, start, end);
        }
        byte[] value = appendChars;
        if (currValue != value) {
            this.coder = (byte) 1;
        }
        this.count = count + len;
        this.value = value;
        return this;
    }

    public AbstractStringBuilder append(char[] str) {
        int len = str.length;
        byte coder = this.coder;
        int count = this.count;
        byte[] currValue = ensureCapacitySameCoder(this.value, coder, count + len);
        byte[] value = appendChars(currValue, coder, count, str, 0, len);
        if (currValue != value) {
            this.coder = (byte) 1;
        }
        this.count = count + len;
        this.value = value;
        return this;
    }

    public AbstractStringBuilder append(char[] str, int offset, int len) {
        int end = offset + len;
        Preconditions.checkFromToIndex(offset, end, str.length, Preconditions.IOOBE_FORMATTER);
        byte coder = this.coder;
        int count = this.count;
        byte[] currValue = ensureCapacitySameCoder(this.value, coder, count + len);
        byte[] value = appendChars(currValue, coder, count, str, offset, end);
        if (currValue != value) {
            this.coder = (byte) 1;
        }
        this.count = count + len;
        this.value = value;
        return this;
    }

    public AbstractStringBuilder append(boolean b10) {
        byte coder = this.coder;
        int count = this.count;
        int newCount = count + (b10 ? 4 : 5);
        byte[] value = ensureCapacitySameCoder(this.value, coder, newCount);
        if (b10) {
            if (isLatin1(coder)) {
                StringLatin1.putCharsAt(value, count, 't', 'r', 'u', 'e');
            } else {
                StringUTF16.putCharsAt(value, count, 't', 'r', 'u', 'e');
            }
        } else if (isLatin1(coder)) {
            StringLatin1.putCharsAt(value, count, 'f', 'a', 'l', 's', 'e');
        } else {
            StringUTF16.putCharsAt(value, count, 'f', 'a', 'l', 's', 'e');
        }
        this.value = value;
        this.count = newCount;
        return this;
    }

    @Override
    public AbstractStringBuilder append(char c10) {
        int count;
        byte coder = this.coder;
        int count2 = this.count;
        byte[] value = this.value;
        byte newCoder = (byte) (coder | StringLatin1.coderFromChar(c10));
        if (needsNewBuffer(value, coder, count2 + 1, newCoder)) {
            byte[] ensureCapacityNewCoder = ensureCapacityNewCoder(value, coder, count2, count2 + 1, newCoder);
            value = ensureCapacityNewCoder;
            this.value = ensureCapacityNewCoder;
            coder = newCoder;
            this.coder = newCoder;
        }
        if (isLatin1(coder)) {
            count = count2 + 1;
            value[count2] = (byte) c10;
        } else {
            count = count2 + 1;
            StringUTF16.putChar(value, count2, c10);
        }
        this.count = count;
        return this;
    }

    public AbstractStringBuilder append(int i10) {
        byte coder = this.coder;
        int count = this.count;
        int spaceNeeded = count + DecimalDigits.stringSize(i10);
        byte[] value = ensureCapacitySameCoder(this.value, coder, spaceNeeded);
        if (isLatin1(coder)) {
            DecimalDigits.uncheckedGetCharsLatin1(i10, spaceNeeded, value);
        } else {
            DecimalDigits.uncheckedGetCharsUTF16(i10, spaceNeeded, value);
        }
        this.value = value;
        this.count = spaceNeeded;
        return this;
    }

    public AbstractStringBuilder append(long l10) {
        byte coder = this.coder;
        int count = this.count;
        int spaceNeeded = count + DecimalDigits.stringSize(l10);
        byte[] value = ensureCapacitySameCoder(this.value, coder, spaceNeeded);
        if (isLatin1(coder)) {
            DecimalDigits.uncheckedGetCharsLatin1(l10, spaceNeeded, value);
        } else {
            DecimalDigits.uncheckedGetCharsUTF16(l10, spaceNeeded, value);
        }
        this.value = value;
        this.count = spaceNeeded;
        return this;
    }

    public AbstractStringBuilder append(float f10) {
        byte coder = this.coder;
        int count = this.count;
        byte[] value = ensureCapacitySameCoder(this.value, coder, count + 15);
        FloatToDecimal toDecimal = isLatin1(coder) ? FloatToDecimal.LATIN1 : FloatToDecimal.UTF16;
        this.count = toDecimal.putDecimal(value, count, f10);
        this.value = value;
        return this;
    }

    public AbstractStringBuilder append(double d10) {
        byte coder = this.coder;
        int count = this.count;
        byte[] value = ensureCapacitySameCoder(this.value, coder, count + 24);
        DoubleToDecimal toDecimal = isLatin1(coder) ? DoubleToDecimal.LATIN1 : DoubleToDecimal.UTF16;
        this.count = toDecimal.putDecimal(value, count, d10);
        this.value = value;
        return this;
    }

    public AbstractStringBuilder delete(int start, int end) {
        int count = this.count;
        if (end > count) {
            end = count;
        }
        Preconditions.checkFromToIndex(start, end, count, Preconditions.SIOOBE_FORMATTER);
        int len = end - start;
        if (len > 0) {
            shift(this.value, this.coder, count, end, -len);
            this.count = count - len;
            this.maybeLatin1 = true;
        }
        return this;
    }

    public AbstractStringBuilder appendCodePoint(int codePoint) {
        if (Character.isBmpCodePoint(codePoint)) {
            return append((char) codePoint);
        }
        return append(Character.toChars(codePoint));
    }

    public AbstractStringBuilder deleteCharAt(int index) {
        int count = this.count;
        String.checkIndex(index, count);
        shift(this.value, this.coder, count, index + 1, -1);
        this.count = count - 1;
        this.maybeLatin1 = true;
        return this;
    }

    public AbstractStringBuilder replace(int start, int end, String str) {
        byte coder = this.coder;
        int count = this.count;
        if (end > count) {
            end = count;
        }
        Preconditions.checkFromToIndex(start, end, count, Preconditions.SIOOBE_FORMATTER);
        int len = str.length();
        int newCount = (count + len) - (end - start);
        byte newCoder = (byte) (coder | str.coder());
        byte[] value = this.value;
        if (needsNewBuffer(value, coder, newCount, newCoder)) {
            byte[] ensureCapacityNewCoder = ensureCapacityNewCoder(value, coder, count, newCount, newCoder);
            value = ensureCapacityNewCoder;
            this.value = ensureCapacityNewCoder;
            coder = newCoder;
            this.coder = newCoder;
        }
        shift(value, coder, count, end, newCount - count);
        str.getBytes(value, start, coder);
        this.count = newCount;
        this.maybeLatin1 = true;
        return this;
    }

    public String substring(int start) {
        return substring(start, this.count);
    }

    @Override
    public CharSequence subSequence(int start, int end) {
        return substring(start, end);
    }

    public String substring(int start, int end) {
        Preconditions.checkFromToIndex(start, end, this.count, Preconditions.SIOOBE_FORMATTER);
        if (isLatin1(this.coder)) {
            return StringLatin1.newString(this.value, start, end - start);
        }
        return StringUTF16.newString(this.value, start, end - start);
    }

    private static void shift(byte[] value, byte coder, int count, int offset, int n10) {
        System.arraycopy(value, offset << coder, value, (offset + n10) << coder, (count - offset) << coder);
    }

    public AbstractStringBuilder insert(int index, char[] str, int offset, int len) {
        byte coder = this.coder;
        int count = this.count;
        String.checkOffset(index, count);
        Preconditions.checkFromToIndex(offset, offset + len, str.length, Preconditions.SIOOBE_FORMATTER);
        byte[] value = ensureCapacitySameCoder(this.value, coder, count + len);
        shift(value, coder, count, index, len);
        int count2 = count + len;
        byte[] newValue = putCharsAt(value, coder, count2, index, str, offset, offset + len);
        if (newValue != value) {
            this.coder = (byte) 1;
        }
        this.value = newValue;
        this.count = count2;
        return this;
    }

    public AbstractStringBuilder insert(int offset, Object obj) {
        return insert(offset, String.valueOf(obj));
    }

    public AbstractStringBuilder insert(int offset, String str) {
        byte coder = this.coder;
        int count = this.count;
        String.checkOffset(offset, count);
        if (str == null) {
            str = "null";
        }
        int len = str.length();
        byte newCoder = (byte) (coder | str.coder());
        byte[] value = this.value;
        if (needsNewBuffer(value, coder, count + len, newCoder)) {
            byte[] ensureCapacityNewCoder = ensureCapacityNewCoder(value, coder, count, count + len, newCoder);
            value = ensureCapacityNewCoder;
            this.value = ensureCapacityNewCoder;
            coder = newCoder;
            this.coder = newCoder;
        }
        shift(value, coder, count, offset, len);
        this.count = count + len;
        str.getBytes(value, offset, coder);
        return this;
    }

    public AbstractStringBuilder insert(int offset, char[] str) {
        byte coder = this.coder;
        int count = this.count;
        String.checkOffset(offset, count);
        int len = str.length;
        byte[] currValue = ensureCapacitySameCoder(this.value, coder, count + len);
        shift(currValue, coder, count, offset, len);
        int count2 = count + len;
        byte[] newValue = putCharsAt(currValue, coder, count2, offset, str, 0, len);
        if (currValue != newValue) {
            this.coder = (byte) 1;
        }
        this.count = count2;
        this.value = newValue;
        return this;
    }

    public AbstractStringBuilder insert(int dstOffset, CharSequence s10) {
        if (s10 == null) {
            s10 = "null";
        }
        return insert(dstOffset, s10, 0, s10.length());
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x008f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public AbstractStringBuilder insert(int dstOffset, CharSequence s10, int start, int end) {
        byte[] putCharsAt;
        byte[] newValue;
        if (s10 == null) {
            s10 = "null";
        }
        byte coder = this.coder;
        int count = this.count;
        String.checkOffset(dstOffset, count);
        Preconditions.checkFromToIndex(start, end, s10.length(), Preconditions.IOOBE_FORMATTER);
        int len = end - start;
        byte[] currValue = ensureCapacitySameCoder(this.value, coder, count + len);
        shift(currValue, coder, count, dstOffset, len);
        int count2 = count + len;
        if (s10 instanceof String) {
            String str = (String) s10;
            if (str.length() == len) {
                putCharsAt = putStringAt(currValue, coder, count2, dstOffset, str);
                newValue = putCharsAt;
                if (currValue != newValue) {
                    this.coder = (byte) 1;
                }
                this.value = newValue;
                this.count = count2;
                return this;
            }
        }
        putCharsAt = putCharsAt(currValue, coder, count2, dstOffset, s10, start, end);
        newValue = putCharsAt;
        if (currValue != newValue) {
        }
        this.value = newValue;
        this.count = count2;
        return this;
    }

    public AbstractStringBuilder insert(int offset, boolean b10) {
        return insert(offset, String.valueOf(b10));
    }

    public AbstractStringBuilder insert(int offset, char c10) {
        byte coder = this.coder;
        int count = this.count;
        String.checkOffset(offset, count);
        byte newCoder = (byte) (coder | StringLatin1.coderFromChar(c10));
        byte[] value = this.value;
        if (needsNewBuffer(value, coder, count + 1, newCoder)) {
            byte[] ensureCapacityNewCoder = ensureCapacityNewCoder(value, coder, count, count + 1, newCoder);
            value = ensureCapacityNewCoder;
            this.value = ensureCapacityNewCoder;
            coder = newCoder;
            this.coder = newCoder;
        }
        shift(value, coder, count, offset, 1);
        if (isLatin1(coder)) {
            value[offset] = (byte) c10;
        } else {
            StringUTF16.putCharSB(value, offset, c10);
        }
        this.count = count + 1;
        return this;
    }

    public AbstractStringBuilder insert(int offset, int i10) {
        return insert(offset, String.valueOf(i10));
    }

    public AbstractStringBuilder insert(int offset, long l10) {
        return insert(offset, String.valueOf(l10));
    }

    public AbstractStringBuilder insert(int offset, float f10) {
        return insert(offset, String.valueOf(f10));
    }

    public AbstractStringBuilder insert(int offset, double d10) {
        return insert(offset, String.valueOf(d10));
    }

    public int indexOf(String str) {
        return indexOf(str, 0);
    }

    public int indexOf(String str, int fromIndex) {
        return String.indexOf(this.value, this.coder, this.count, str, fromIndex);
    }

    public int lastIndexOf(String str) {
        return lastIndexOf(str, this.count);
    }

    public int lastIndexOf(String str, int fromIndex) {
        return String.lastIndexOf(this.value, this.coder, this.count, str, fromIndex);
    }

    public AbstractStringBuilder reverse() {
        byte[] val = this.value;
        int count = this.count;
        int n10 = count - 1;
        if (isLatin1(this.coder)) {
            for (int j10 = (n10 - 1) >> 1; j10 >= 0; j10--) {
                int k10 = n10 - j10;
                byte cj2 = val[j10];
                val[j10] = val[k10];
                val[k10] = cj2;
            }
        } else {
            StringUTF16.reverse(val, count);
        }
        return this;
    }

    @Override
    public IntStream chars() {
        return StreamSupport.intStream(() -> {
            byte[] val = this.value;
            int count = this.count;
            byte coder = this.coder;
            if (coder == 0) {
                return new StringLatin1.CharsSpliterator(val, 0, count, 0);
            }
            return new StringUTF16.CharsSpliterator(val, 0, count, 0);
        }, 16464, false);
    }

    @Override
    public IntStream codePoints() {
        return StreamSupport.intStream(() -> {
            byte[] val = this.value;
            int count = this.count;
            byte coder = this.coder;
            if (isLatin1(coder)) {
                return new StringLatin1.CharsSpliterator(val, 0, count, 0);
            }
            return new StringUTF16.CodePointsSpliterator(val, 0, count, 0);
        }, 16, false);
    }

    public final byte[] getValue() {
        return this.value;
    }

    public void getBytes(byte[] dst, int dstBegin, byte coder) {
        if (this.coder == coder) {
            System.arraycopy(this.value, 0, dst, dstBegin << coder, this.count << coder);
        } else {
            StringLatin1.inflate(this.value, 0, dst, dstBegin, this.count);
        }
    }

    public void initBytes(char[] value, int off, int len) {
        if (String.COMPACT_STRINGS) {
            byte[] val = StringUTF16.compress(value, off, len);
            this.coder = StringUTF16.coderFromArrayLen(val, len);
            this.value = val;
        } else {
            this.coder = (byte) 1;
            this.value = StringUTF16.toBytes(value, off, len);
        }
    }

    public final byte getCoder() {
        if (String.COMPACT_STRINGS) {
            return this.coder;
        }
        return (byte) 1;
    }

    public final boolean isLatin1() {
        return isLatin1(this.coder);
    }

    private static boolean isLatin1(byte coder) {
        return String.COMPACT_STRINGS && coder == 0;
    }

    private static byte[] putCharsAt(byte[] value, byte coder, int count, int index, char[] s10, int off, int end) {
        if (isLatin1(coder)) {
            int latin1Len = StringUTF16.compress(s10, off, value, index, end - off);
            int j10 = index + latin1Len;
            for (int i10 = off + latin1Len; i10 < end; i10++) {
                char c10 = s10[i10];
                if (StringLatin1.canEncode(c10)) {
                    int i11 = j10;
                    j10++;
                    value[i11] = (byte) c10;
                } else {
                    byte[] value2 = inflateToUTF16(value, count);
                    StringUTF16.putCharSB(value2, j10, c10);
                    StringUTF16.putCharsSB(value2, j10 + 1, s10, i10 + 1, end);
                    return value2;
                }
            }
        } else {
            StringUTF16.putCharsSB(value, index, s10, off, end);
        }
        return value;
    }

    private static byte[] putCharsAt(byte[] value, byte coder, int count, int index, CharSequence s10, int off, int end) {
        if (isLatin1(coder)) {
            int j10 = index;
            for (int i10 = off; i10 < end; i10++) {
                char c10 = s10.charAt(i10);
                if (StringLatin1.canEncode(c10)) {
                    int i11 = j10;
                    j10++;
                    value[i11] = (byte) c10;
                } else {
                    byte[] value2 = inflateToUTF16(value, count);
                    StringUTF16.putCharSB(value2, j10, c10);
                    StringUTF16.putCharsSB(value2, j10 + 1, s10, i10 + 1, end);
                    return value2;
                }
            }
        } else {
            StringUTF16.putCharsSB(value, index, s10, off, end);
        }
        return value;
    }

    private static byte[] inflateIfNeededFor(byte[] value, int count, byte coder, byte otherCoder) {
        if (String.COMPACT_STRINGS && coder == 0 && otherCoder == 1) {
            return inflateToUTF16(value, count);
        }
        return value;
    }

    private static byte[] putStringAt(byte[] value, byte coder, int count, int index, String str) {
        byte[] newValue = inflateIfNeededFor(value, count, coder, str.coder());
        str.getBytes(newValue, 0, index, newValue == value ? coder : (byte) 1, str.length());
        return newValue;
    }

    private static byte[] appendChars(byte[] value, byte coder, int count, char[] s10, int off, int end) {
        if (isLatin1(coder)) {
            int latin1Len = StringUTF16.compress(s10, off, value, count, end - off);
            int j10 = count + latin1Len;
            for (int i10 = off + latin1Len; i10 < end; i10++) {
                char c10 = s10[i10];
                if (StringLatin1.canEncode(c10)) {
                    int i11 = j10;
                    j10++;
                    value[i11] = (byte) c10;
                } else {
                    byte[] value2 = inflateToUTF16(value, j10);
                    StringUTF16.putCharSB(value2, j10, c10);
                    StringUTF16.putCharsSB(value2, j10 + 1, s10, i10 + 1, end);
                    return value2;
                }
            }
        } else {
            StringUTF16.putCharsSB(value, count, s10, off, end);
        }
        return value;
    }

    private static byte[] appendChars(byte[] value, byte coder, int count, String s10, int off, int end) {
        if (isLatin1(coder)) {
            if (s10.isLatin1()) {
                System.arraycopy(s10.value(), off, value, count, end - off);
            } else {
                int j10 = count;
                for (int i10 = off; i10 < end; i10++) {
                    char c10 = s10.charAt(i10);
                    if (StringLatin1.canEncode(c10)) {
                        int i11 = j10;
                        j10++;
                        value[i11] = (byte) c10;
                    } else {
                        byte[] value2 = inflateToUTF16(value, j10);
                        System.arraycopy(s10.value(), i10 << 1, value2, j10 << 1, (end - i10) << 1);
                        return value2;
                    }
                }
            }
        } else if (s10.isLatin1()) {
            StringUTF16.putCharsSB(value, count, s10, off, end);
        } else {
            System.arraycopy(s10.value(), off << 1, value, count << 1, (end - off) << 1);
        }
        return value;
    }

    private static byte[] appendChars(byte[] value, byte coder, int count, CharSequence s10, int off, int end) {
        if (isLatin1(coder)) {
            int j10 = count;
            for (int i10 = off; i10 < end; i10++) {
                char c10 = s10.charAt(i10);
                if (StringLatin1.canEncode(c10)) {
                    int i11 = j10;
                    j10++;
                    value[i11] = (byte) c10;
                } else {
                    byte[] value2 = inflateToUTF16(value, j10);
                    StringUTF16.putCharSB(value2, j10, c10);
                    StringUTF16.putCharsSB(value2, j10 + 1, s10, i10 + 1, end);
                    return value2;
                }
            }
        } else {
            StringUTF16.putCharsSB(value, count, s10, off, end);
        }
        return value;
    }

    long mix(long lengthCoder) {
        return (lengthCoder + this.count) | (this.coder << 32);
    }

    long prepend(long lengthCoder, byte[] buffer) {
        long lengthCoder2 = lengthCoder - this.count;
        if (lengthCoder2 < 4294967296L) {
            System.arraycopy(this.value, 0, buffer, (int) lengthCoder2, this.count);
        } else if (isLatin1(this.coder)) {
            StringUTF16.inflate(this.value, 0, buffer, (int) lengthCoder2, this.count);
        } else {
            System.arraycopy(this.value, 0, buffer, ((int) lengthCoder2) << 1, this.count << 1);
        }
        return lengthCoder2;
    }

    private AbstractStringBuilder repeat(char c10, int count) {
        byte coder = this.coder;
        int prevCount = this.count;
        int limit = prevCount + count;
        byte[] value = this.value;
        byte newCoder = (byte) (coder | StringLatin1.coderFromChar(c10));
        if (needsNewBuffer(value, coder, limit, newCoder)) {
            byte[] ensureCapacityNewCoder = ensureCapacityNewCoder(value, coder, prevCount, limit, newCoder);
            value = ensureCapacityNewCoder;
            this.value = ensureCapacityNewCoder;
            coder = newCoder;
            this.coder = newCoder;
        }
        if (isLatin1(coder)) {
            Arrays.fill(value, prevCount, limit, (byte) c10);
        } else {
            for (int index = prevCount; index < limit; index++) {
                StringUTF16.putCharSB(value, index, c10);
            }
        }
        this.count = limit;
        return this;
    }

    public AbstractStringBuilder repeat(int codePoint, int count) {
        if (count < 0) {
            throw new IllegalArgumentException("count is negative: " + count);
        }
        if (count == 0) {
            return this;
        }
        if (Character.isBmpCodePoint(codePoint)) {
            repeat((char) codePoint, count);
        } else {
            repeat(CharBuffer.wrap(Character.toChars(codePoint)), count);
        }
        return this;
    }

    public AbstractStringBuilder repeat(CharSequence cs, int count) {
        if (count < 0) {
            throw new IllegalArgumentException("count is negative: " + count);
        }
        if (count == 0) {
            return this;
        }
        if (count == 1) {
            return append(cs);
        }
        if (cs == null) {
            cs = "null";
        }
        int length = cs.length();
        if (length == 0) {
            return this;
        }
        if (length == 1) {
            return repeat(cs.charAt(0), count);
        }
        byte coder = this.coder;
        int offset = this.count;
        byte[] value = this.value;
        int valueLength = length << coder;
        if ((Integer.MAX_VALUE - offset) / count < valueLength) {
            throw new OutOfMemoryError("Required length exceeds implementation limit");
        }
        int total = count * length;
        int limit = offset + total;
        if (cs instanceof String) {
            String str = (String) cs;
            byte newCoder = (byte) (coder | str.coder());
            if (needsNewBuffer(value, coder, limit, newCoder)) {
                byte[] ensureCapacityNewCoder = ensureCapacityNewCoder(value, coder, offset, limit, newCoder);
                value = ensureCapacityNewCoder;
                this.value = ensureCapacityNewCoder;
                coder = newCoder;
                this.coder = newCoder;
            }
            str.getBytes(value, offset, newCoder);
        } else if (cs instanceof AbstractStringBuilder) {
            AbstractStringBuilder asb = (AbstractStringBuilder) cs;
            byte newCoder2 = (byte) (coder | asb.coder);
            if (needsNewBuffer(value, coder, limit, newCoder2)) {
                byte[] ensureCapacityNewCoder2 = ensureCapacityNewCoder(value, coder, offset, limit, newCoder2);
                value = ensureCapacityNewCoder2;
                this.value = ensureCapacityNewCoder2;
                coder = newCoder2;
                this.coder = newCoder2;
            }
            asb.getBytes(value, offset, newCoder2);
        } else {
            byte[] currValue = ensureCapacitySameCoder(value, coder, limit);
            value = appendChars(currValue, coder, offset, cs, 0, length);
            if (currValue != value) {
                coder = 1;
                this.coder = (byte) 1;
            }
            this.value = value;
        }
        String.repeatCopyRest(value, offset << coder, total << coder, length << coder);
        this.count = limit;
        return this;
    }
}
