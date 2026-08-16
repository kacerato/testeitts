package java.lang;

import java.lang.invoke.MethodHandle;
import java.lang.invoke.MethodHandles;
import java.lang.invoke.MethodType;
import jdk.internal.misc.Unsafe;
import jdk.internal.util.DecimalDigits;
import jdk.internal.vm.annotation.ForceInline;
import jdk.internal.vm.annotation.Stable;

public final class StringConcatHelper {
    private static final long LATIN1 = 0;
    private static final long UTF16 = 4294967296L;
    private static final Unsafe UNSAFE = Unsafe.getUnsafe();

    public static abstract class StringConcatBase {

        @Stable
        final String[] constants;
        final int length;
        final byte coder;

        StringConcatBase(String[] constants) {
            int length = 0;
            byte coder = 0;
            for (String c10 : constants) {
                length += c10.length();
                if (length < 0) {
                    throw new OutOfMemoryError("Total length of constants is out of range");
                }
                coder = (byte) (coder | c10.coder());
            }
            this.constants = constants;
            this.length = length;
            this.coder = coder;
        }
    }

    static final class Concat1 extends StringConcatBase {
        public Concat1(String[] constants) {
            super(constants);
        }

        @ForceInline
        String concat0(String value) {
            int length = StringConcatHelper.stringSize(this.length, value);
            byte coder = (byte) (this.coder | value.coder());
            byte[] buf = StringConcatHelper.newArray(length << coder);
            String prefix = this.constants[0];
            prefix.getBytes(buf, 0, coder);
            value.getBytes(buf, prefix.length(), coder);
            this.constants[1].getBytes(buf, prefix.length() + value.length(), coder);
            return new String(buf, coder);
        }

        @ForceInline
        String concat(boolean value) {
            int length = StringConcatHelper.stringSize(this.length, value);
            String suffix = this.constants[1];
            int length2 = length - suffix.length();
            byte[] buf = StringConcatHelper.newArrayWithSuffix(suffix, length2, this.coder);
            StringConcatHelper.prepend(length2, this.coder, buf, value, this.constants[0]);
            return new String(buf, this.coder);
        }

        @ForceInline
        String concat(char value) {
            int length = StringConcatHelper.stringSize(this.length, value);
            byte coder = (byte) (this.coder | StringConcatHelper.stringCoder(value));
            String suffix = this.constants[1];
            int length2 = length - suffix.length();
            byte[] buf = StringConcatHelper.newArrayWithSuffix(suffix, length2, coder);
            StringConcatHelper.prepend(length2, coder, buf, value, this.constants[0]);
            return new String(buf, coder);
        }

        @ForceInline
        String concat(int value) {
            int length = StringConcatHelper.stringSize(this.length, value);
            String suffix = this.constants[1];
            int length2 = length - suffix.length();
            byte[] buf = StringConcatHelper.newArrayWithSuffix(suffix, length2, this.coder);
            StringConcatHelper.prepend(length2, this.coder, buf, value, this.constants[0]);
            return new String(buf, this.coder);
        }

        @ForceInline
        String concat(long value) {
            int length = StringConcatHelper.stringSize(this.length, value);
            String suffix = this.constants[1];
            int length2 = length - suffix.length();
            byte[] buf = StringConcatHelper.newArrayWithSuffix(suffix, length2, this.coder);
            StringConcatHelper.prepend(length2, this.coder, buf, value, this.constants[0]);
            return new String(buf, this.coder);
        }

        @ForceInline
        String concat(Object value) {
            return concat0(StringConcatHelper.stringOf(value));
        }

        @ForceInline
        String concat(float value) {
            return concat0(Float.toString(value));
        }

        @ForceInline
        String concat(double value) {
            return concat0(Double.toString(value));
        }
    }

    private StringConcatHelper() {
    }

    static long coder(char value) {
        return StringLatin1.canEncode(value) ? 0L : 4294967296L;
    }

    private static long checkOverflow(long lengthCoder) {
        if (((int) lengthCoder) >= 0) {
            return lengthCoder;
        }
        throw new OutOfMemoryError("Overflow: String length out of range");
    }

    static long mix(long lengthCoder, boolean value) {
        return checkOverflow(lengthCoder + (value ? 4 : 5));
    }

    public static long mix(long lengthCoder, char value) {
        return checkOverflow(lengthCoder + 1) | coder(value);
    }

    static long mix(long lengthCoder, int value) {
        return checkOverflow(lengthCoder + DecimalDigits.stringSize(value));
    }

    static long mix(long lengthCoder, long value) {
        return checkOverflow(lengthCoder + DecimalDigits.stringSize(value));
    }

    public static long mix(long lengthCoder, String value) {
        long lengthCoder2 = lengthCoder + value.length();
        if (!value.isLatin1()) {
            lengthCoder2 |= 4294967296L;
        }
        return checkOverflow(lengthCoder2);
    }

    static long prepend(long indexCoder, byte[] buf, boolean value, String prefix) {
        int index;
        int index2;
        int index3 = (int) indexCoder;
        if (indexCoder < 4294967296L) {
            if (value) {
                index2 = index3 - 4;
                buf[index2] = 116;
                buf[index2 + 1] = 114;
                buf[index2 + 2] = 117;
                buf[index2 + 3] = 101;
            } else {
                index2 = index3 - 5;
                buf[index2] = 102;
                buf[index2 + 1] = 97;
                buf[index2 + 2] = 108;
                buf[index2 + 3] = 115;
                buf[index2 + 4] = 101;
            }
            int index4 = index2 - prefix.length();
            prefix.getBytes(buf, index4, (byte) 0);
            return index4;
        }
        if (value) {
            index = index3 - 4;
            StringUTF16.putChar(buf, index, 116);
            StringUTF16.putChar(buf, index + 1, 114);
            StringUTF16.putChar(buf, index + 2, 117);
            StringUTF16.putChar(buf, index + 3, 101);
        } else {
            index = index3 - 5;
            StringUTF16.putChar(buf, index, 102);
            StringUTF16.putChar(buf, index + 1, 97);
            StringUTF16.putChar(buf, index + 2, 108);
            StringUTF16.putChar(buf, index + 3, 115);
            StringUTF16.putChar(buf, index + 4, 101);
        }
        int index5 = index - prefix.length();
        prefix.getBytes(buf, index5, (byte) 1);
        return index5 | 4294967296L;
    }

    static long prepend(long indexCoder, byte[] buf, char value, String prefix) {
        int index = (int) indexCoder;
        if (indexCoder < 4294967296L) {
            int index2 = index - 1;
            buf[index2] = (byte) (value & '\u00ff');
            int index3 = index2 - prefix.length();
            prefix.getBytes(buf, index3, (byte) 0);
            return index3;
        }
        int index4 = index - 1;
        StringUTF16.putChar(buf, index4, value);
        int index5 = index4 - prefix.length();
        prefix.getBytes(buf, index5, (byte) 1);
        return index5 | 4294967296L;
    }

    static long prepend(long indexCoder, byte[] buf, int value, String prefix) {
        int index = (int) indexCoder;
        if (indexCoder < 4294967296L) {
            int index2 = DecimalDigits.uncheckedGetCharsLatin1(value, index, buf) - prefix.length();
            prefix.getBytes(buf, index2, (byte) 0);
            return index2;
        }
        int index3 = DecimalDigits.uncheckedGetCharsUTF16(value, index, buf) - prefix.length();
        prefix.getBytes(buf, index3, (byte) 1);
        return index3 | 4294967296L;
    }

    static long prepend(long indexCoder, byte[] buf, long value, String prefix) {
        int index = (int) indexCoder;
        if (indexCoder < 4294967296L) {
            int index2 = DecimalDigits.uncheckedGetCharsLatin1(value, index, buf) - prefix.length();
            prefix.getBytes(buf, index2, (byte) 0);
            return index2;
        }
        int index3 = DecimalDigits.uncheckedGetCharsUTF16(value, index, buf) - prefix.length();
        prefix.getBytes(buf, index3, (byte) 1);
        return index3 | 4294967296L;
    }

    static long prepend(long indexCoder, byte[] buf, String value, String prefix) {
        int index = ((int) indexCoder) - value.length();
        if (indexCoder < 4294967296L) {
            value.getBytes(buf, index, (byte) 0);
            int index2 = index - prefix.length();
            prefix.getBytes(buf, index2, (byte) 0);
            return index2;
        }
        value.getBytes(buf, index, (byte) 1);
        int index3 = index - prefix.length();
        prefix.getBytes(buf, index3, (byte) 1);
        return index3 | 4294967296L;
    }

    static String newString(byte[] buf, long indexCoder) {
        if (indexCoder == 0) {
            return new String(buf, (byte) 0);
        }
        if (indexCoder == 4294967296L) {
            return new String(buf, (byte) 1);
        }
        throw new InternalError("Storage is not completely initialized, " + ((int) indexCoder) + " bytes left");
    }

    @ForceInline
    static String simpleConcat(Object first, Object second) {
        String s12 = stringOf(first);
        String s22 = stringOf(second);
        if (s12.isEmpty()) {
            return new String(s22);
        }
        if (s22.isEmpty()) {
            return new String(s12);
        }
        return doConcat(s12, s22);
    }

    @ForceInline
    public static String doConcat(String s12, String s22) {
        byte coder = (byte) (s12.coder() | s22.coder());
        int newLength = checkOverflow(s12.length() + s22.length()) << coder;
        byte[] buf = newArray(newLength);
        s12.getBytes(buf, 0, coder);
        s22.getBytes(buf, s12.length(), coder);
        return new String(buf, coder);
    }

    @ForceInline
    static String newStringOf(Object arg) {
        return new String(stringOf(arg));
    }

    static String stringOf(Object value) {
        String s10;
        return (value == null || (s10 = value.toString()) == null) ? "null" : s10;
    }

    static String stringOf(float value) {
        return Float.toString(value);
    }

    static String stringOf(double value) {
        return Double.toString(value);
    }

    static int stringSize(int length, char value) {
        return checkOverflow(length + 1);
    }

    static int stringSize(int length, boolean value) {
        return checkOverflow(length + (value ? 4 : 5));
    }

    static int stringSize(int length, int value) {
        return checkOverflow(length + DecimalDigits.stringSize(value));
    }

    static int stringSize(int length, long value) {
        return checkOverflow(length + DecimalDigits.stringSize(value));
    }

    static int stringSize(int length, String value) {
        return checkOverflow(length + value.length());
    }

    @ForceInline
    static byte[] newArrayWithSuffix(String suffix, long indexCoder) {
        byte[] buf = newArray(indexCoder + suffix.length());
        if (indexCoder < 4294967296L) {
            suffix.getBytes(buf, (int) indexCoder, (byte) 0);
        } else {
            suffix.getBytes(buf, (int) indexCoder, (byte) 1);
        }
        return buf;
    }

    @ForceInline
    public static byte[] newArray(long indexCoder) {
        byte coder = (byte) (indexCoder >> 32);
        int index = ((int) indexCoder) << coder;
        return newArray(index);
    }

    @ForceInline
    public static byte[] newArray(int length) {
        if (length < 0) {
            throw new OutOfMemoryError("Overflow: String length out of range");
        }
        return (byte[]) UNSAFE.allocateUninitializedArray(Byte.TYPE, length);
    }

    public static long initialCoder() {
        return String.COMPACT_STRINGS ? 0L : 4294967296L;
    }

    public static MethodHandle lookupStatic(String name, MethodType methodType) {
        try {
            return MethodHandles.lookup().findStatic(StringConcatHelper.class, name, methodType);
        } catch (IllegalAccessException | NoSuchMethodException e10) {
            throw new AssertionError(e10);
        }
    }

    @ForceInline
    static byte[] newArrayWithSuffix(String suffix, int index, byte coder) {
        byte[] buf = newArray((index + suffix.length()) << coder);
        if (coder == 0) {
            suffix.getBytes(buf, index, (byte) 0);
        } else {
            suffix.getBytes(buf, index, (byte) 1);
        }
        return buf;
    }

    static byte stringCoder(char value) {
        return StringLatin1.canEncode(value) ? (byte) 0 : (byte) 1;
    }

    static int prepend(int index, byte coder, byte[] buf, boolean value, String prefix) {
        int index2;
        int index3;
        int index4;
        if (coder == 0) {
            if (value) {
                index4 = index - 4;
                buf[index4] = 116;
                buf[index4 + 1] = 114;
                buf[index4 + 2] = 117;
                buf[index4 + 3] = 101;
            } else {
                index4 = index - 5;
                buf[index4] = 102;
                buf[index4 + 1] = 97;
                buf[index4 + 2] = 108;
                buf[index4 + 3] = 115;
                buf[index4 + 4] = 101;
            }
            index3 = index4 - prefix.length();
            prefix.getBytes(buf, index3, (byte) 0);
        } else {
            if (value) {
                index2 = index - 4;
                StringUTF16.putChar(buf, index2, 116);
                StringUTF16.putChar(buf, index2 + 1, 114);
                StringUTF16.putChar(buf, index2 + 2, 117);
                StringUTF16.putChar(buf, index2 + 3, 101);
            } else {
                index2 = index - 5;
                StringUTF16.putChar(buf, index2, 102);
                StringUTF16.putChar(buf, index2 + 1, 97);
                StringUTF16.putChar(buf, index2 + 2, 108);
                StringUTF16.putChar(buf, index2 + 3, 115);
                StringUTF16.putChar(buf, index2 + 4, 101);
            }
            index3 = index2 - prefix.length();
            prefix.getBytes(buf, index3, (byte) 1);
        }
        return index3;
    }

    static int prepend(int index, byte coder, byte[] buf, char value, String prefix) {
        int index2;
        if (coder == 0) {
            int index3 = index - 1;
            buf[index3] = (byte) (value & '\u00ff');
            index2 = index3 - prefix.length();
            prefix.getBytes(buf, index2, (byte) 0);
        } else {
            int index4 = index - 1;
            StringUTF16.putChar(buf, index4, value);
            index2 = index4 - prefix.length();
            prefix.getBytes(buf, index2, (byte) 1);
        }
        return index2;
    }

    static int prepend(int index, byte coder, byte[] buf, int value, String prefix) {
        int index2;
        if (coder == 0) {
            index2 = DecimalDigits.uncheckedGetCharsLatin1(value, index, buf) - prefix.length();
            prefix.getBytes(buf, index2, (byte) 0);
        } else {
            index2 = DecimalDigits.uncheckedGetCharsUTF16(value, index, buf) - prefix.length();
            prefix.getBytes(buf, index2, (byte) 1);
        }
        return index2;
    }

    static int prepend(int index, byte coder, byte[] buf, long value, String prefix) {
        int index2;
        if (coder == 0) {
            index2 = DecimalDigits.uncheckedGetCharsLatin1(value, index, buf) - prefix.length();
            prefix.getBytes(buf, index2, (byte) 0);
        } else {
            index2 = DecimalDigits.uncheckedGetCharsUTF16(value, index, buf) - prefix.length();
            prefix.getBytes(buf, index2, (byte) 1);
        }
        return index2;
    }

    static int prepend(int index, byte coder, byte[] buf, String value, String prefix) {
        int index2;
        int index3 = index - value.length();
        if (coder == 0) {
            value.getBytes(buf, index3, (byte) 0);
            index2 = index3 - prefix.length();
            prefix.getBytes(buf, index2, (byte) 0);
        } else {
            value.getBytes(buf, index3, (byte) 1);
            index2 = index3 - prefix.length();
            prefix.getBytes(buf, index2, (byte) 1);
        }
        return index2;
    }

    @ForceInline
    static int checkOverflow(int value) {
        if (value >= 0) {
            return value;
        }
        throw new OutOfMemoryError("Overflow: String length out of range");
    }

    @ForceInline
    private static String concat0(String prefix, String str, String suffix) {
        byte coder = (byte) (prefix.coder() | str.coder() | suffix.coder());
        int len = prefix.length() + str.length();
        byte[] buf = newArrayWithSuffix(suffix, len, coder);
        prepend(len, coder, buf, str, prefix);
        return new String(buf, coder);
    }

    @ForceInline
    public static String concat(String prefix, Object value, String suffix) {
        if (prefix == null) {
            prefix = "null";
        }
        if (suffix == null) {
            suffix = "null";
        }
        return concat0(prefix, stringOf(value), suffix);
    }
}
