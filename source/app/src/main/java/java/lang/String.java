package java.lang;

import em.l;
import java.io.ObjectStreamField;
import java.io.Serializable;
import java.io.UnsupportedEncodingException;
import java.lang.StringLatin1;
import java.lang.StringUTF16;
import java.lang.constant.Constable;
import java.lang.constant.ConstantDesc;
import java.lang.foreign.MemorySegment;
import java.lang.foreign.ValueLayout;
import java.lang.invoke.MethodHandles;
import java.nio.ByteBuffer;
import java.nio.CharBuffer;
import java.nio.charset.CharacterCodingException;
import java.nio.charset.Charset;
import java.nio.charset.CharsetDecoder;
import java.nio.charset.CoderResult;
import java.nio.charset.CodingErrorAction;
import java.nio.charset.IllegalCharsetNameException;
import java.nio.charset.MalformedInputException;
import java.nio.charset.UnmappableCharacterException;
import java.nio.charset.UnsupportedCharsetException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.Formatter;
import java.util.List;
import java.util.Locale;
import java.util.Objects;
import java.util.Optional;
import java.util.function.Function;
import java.util.regex.Pattern;
import java.util.stream.Collectors;
import java.util.stream.IntStream;
import java.util.stream.Stream;
import java.util.stream.StreamSupport;
import jdk.internal.util.ArraysSupport;
import jdk.internal.util.Preconditions;
import jdk.internal.vm.annotation.ForceInline;
import jdk.internal.vm.annotation.IntrinsicCandidate;
import jdk.internal.vm.annotation.Stable;
import org.eclipse.jdt.internal.compiler.codegen.Opcodes;
import sun.nio.cs.ArrayDecoder;
import sun.nio.cs.ArrayEncoder;
import sun.nio.cs.ISO_8859_1;
import sun.nio.cs.US_ASCII;
import sun.nio.cs.UTF_8;

/* JADX WARN: Classes with same name are omitted:
  base.apk:assets/Editor/javaLibs.zip:JAVARuntime/d8lib/android.jar:java/lang/String.class
 */
public final class String implements Serializable, Comparable<String>, CharSequence, Constable, ConstantDesc {

    @Stable
    private final byte[] value;
    private final byte coder;

    @Stable
    private int hash;
    private boolean hashIsZero;
    private static final long serialVersionUID = -6849794470754667710L;
    private static final char REPL = '\ufffd';
    static final byte LATIN1 = 0;
    static final byte UTF16 = 1;
    static final boolean COMPACT_STRINGS = true;
    private static final ObjectStreamField[] serialPersistentFields = new ObjectStreamField[0];
    public static final Comparator<String> CASE_INSENSITIVE_ORDER = new CaseInsensitiveComparator();

    public native String intern();

    public String() {
        this.value = "".value;
        this.coder = "".coder;
    }

    @IntrinsicCandidate
    public String(String original) {
        this.value = original.value;
        this.coder = original.coder;
        this.hash = original.hash;
        this.hashIsZero = original.hashIsZero;
    }

    public String(char[] value) {
        this(value, 0, value.length, (Void) null);
    }

    public String(char[] value, int offset, int count) {
        this(value, offset, count, rangeCheck(value, offset, count));
    }

    private static Void rangeCheck(char[] value, int offset, int count) {
        checkBoundsOffCount(offset, count, value.length);
        return null;
    }

    public String(int[] codePoints, int offset, int count) {
        checkBoundsOffCount(offset, count, codePoints.length);
        if (count == 0) {
            this.value = "".value;
            this.coder = "".coder;
        } else if (COMPACT_STRINGS) {
            byte[] val = StringUTF16.compress(codePoints, offset, count);
            this.coder = StringUTF16.coderFromArrayLen(val, count);
            this.value = val;
        } else {
            this.coder = (byte) 1;
            this.value = StringUTF16.toBytes(codePoints, offset, count);
        }
    }

    @Deprecated(since = "1.1")
    public String(byte[] ascii, int hibyte, int offset, int count) {
        checkBoundsOffCount(offset, count, ascii.length);
        if (count == 0) {
            this.value = "".value;
            this.coder = "".coder;
            return;
        }
        if (COMPACT_STRINGS && ((byte) hibyte) == 0) {
            this.value = Arrays.copyOfRange(ascii, offset, offset + count);
            this.coder = (byte) 0;
            return;
        }
        int hibyte2 = hibyte << 8;
        byte[] val = StringUTF16.newBytesFor(count);
        for (int i10 = 0; i10 < count; i10++) {
            int i11 = offset;
            offset++;
            StringUTF16.putChar(val, i10, hibyte2 | (ascii[i11] & 255));
        }
        this.value = val;
        this.coder = (byte) 1;
    }

    @Deprecated(since = "1.1")
    public String(byte[] ascii, int hibyte) {
        this(ascii, hibyte, 0, ascii.length);
    }

    public String(byte[] bytes, int offset, int length, String charsetName) throws UnsupportedEncodingException {
        this(lookupCharset(charsetName), bytes, checkBoundsOffCount(offset, length, bytes.length), length);
    }

    public String(byte[] bytes, int offset, int length, Charset charset) {
        this((Charset) Objects.requireNonNull(charset), bytes, checkBoundsOffCount(offset, length, bytes.length), length);
    }

    private String(Charset charset, byte[] bytes, int offset, int length) {
        byte b10;
        if (length == 0) {
            this.value = "".value;
            this.coder = "".coder;
            return;
        }
        if (charset == UTF_8.INSTANCE) {
            if (COMPACT_STRINGS) {
                int dp = StringCoding.countPositives(bytes, offset, length);
                if (dp == length) {
                    this.value = Arrays.copyOfRange(bytes, offset, offset + length);
                    this.coder = (byte) 0;
                    return;
                }
                byte[] latin1 = Arrays.copyOfRange(bytes, offset, offset + length);
                int sp = dp;
                while (sp < length) {
                    int i10 = sp;
                    sp++;
                    byte b11 = latin1[i10];
                    if (b11 >= 0) {
                        int i11 = dp;
                        dp++;
                        latin1[i11] = b11;
                    } else if ((b11 & l.f85913l) == 194 && sp < length && (b10 = latin1[sp]) < -64) {
                        int i12 = dp;
                        dp++;
                        latin1[i12] = (byte) decode2(b11, b10);
                        sp++;
                    } else {
                        sp--;
                        break;
                    }
                }
                if (sp == length) {
                    this.value = dp != latin1.length ? Arrays.copyOf(latin1, dp) : latin1;
                    this.coder = (byte) 0;
                    return;
                }
                byte[] utf16 = StringUTF16.newBytesFor(length);
                StringLatin1.inflate(latin1, 0, utf16, 0, dp);
                int dp2 = decodeUTF8_UTF16(latin1, sp, length, utf16, dp, true);
                this.value = dp2 != length ? Arrays.copyOf(utf16, dp2 << 1) : utf16;
                this.coder = (byte) 1;
                return;
            }
            byte[] dst = StringUTF16.newBytesFor(length);
            int dp3 = decodeUTF8_UTF16(bytes, offset, offset + length, dst, 0, true);
            this.value = dp3 != length ? Arrays.copyOf(dst, dp3 << 1) : dst;
            this.coder = (byte) 1;
            return;
        }
        if (charset == ISO_8859_1.INSTANCE) {
            if (COMPACT_STRINGS) {
                this.value = Arrays.copyOfRange(bytes, offset, offset + length);
                this.coder = (byte) 0;
                return;
            } else {
                this.value = StringLatin1.inflate(bytes, offset, length);
                this.coder = (byte) 1;
                return;
            }
        }
        if (charset == US_ASCII.INSTANCE) {
            if (COMPACT_STRINGS && !StringCoding.hasNegatives(bytes, offset, length)) {
                this.value = Arrays.copyOfRange(bytes, offset, offset + length);
                this.coder = (byte) 0;
                return;
            }
            byte[] dst2 = StringUTF16.newBytesFor(length);
            int dp4 = 0;
            while (dp4 < length) {
                int i13 = offset;
                offset++;
                byte b12 = bytes[i13];
                int i14 = dp4;
                dp4++;
                StringUTF16.putChar(dst2, i14, b12 >= 0 ? (char) b12 : '\ufffd');
            }
            this.value = dst2;
            this.coder = (byte) 1;
            return;
        }
        ArrayDecoder newDecoder = charset.newDecoder();
        if (newDecoder instanceof ArrayDecoder) {
            ArrayDecoder ad2 = newDecoder;
            if (ad2.isASCIICompatible() && !StringCoding.hasNegatives(bytes, offset, length)) {
                if (COMPACT_STRINGS) {
                    this.value = Arrays.copyOfRange(bytes, offset, offset + length);
                    this.coder = (byte) 0;
                    return;
                } else {
                    this.value = StringLatin1.inflate(bytes, offset, length);
                    this.coder = (byte) 1;
                    return;
                }
            }
            if (COMPACT_STRINGS && ad2.isLatin1Decodable()) {
                byte[] dst3 = new byte[length];
                ad2.decodeToLatin1(bytes, offset, length, dst3);
                this.value = dst3;
                this.coder = (byte) 0;
                return;
            }
            int en2 = scale(length, newDecoder.maxCharsPerByte());
            newDecoder.onMalformedInput(CodingErrorAction.REPLACE).onUnmappableCharacter(CodingErrorAction.REPLACE);
            char[] ca2 = new char[en2];
            int clen = ad2.decode(bytes, offset, length, ca2);
            if (COMPACT_STRINGS) {
                byte[] val = StringUTF16.compress(ca2, 0, clen);
                this.coder = StringUTF16.coderFromArrayLen(val, clen);
                this.value = val;
                return;
            } else {
                this.coder = (byte) 1;
                this.value = StringUTF16.toBytes(ca2, 0, clen);
                return;
            }
        }
        int en3 = scale(length, newDecoder.maxCharsPerByte());
        newDecoder.onMalformedInput(CodingErrorAction.REPLACE).onUnmappableCharacter(CodingErrorAction.REPLACE);
        char[] ca3 = new char[en3];
        try {
            int caLen = decodeWithDecoder(newDecoder, ca3, bytes, offset, length);
            if (COMPACT_STRINGS) {
                byte[] val2 = StringUTF16.compress(ca3, 0, caLen);
                this.coder = StringUTF16.coderFromArrayLen(val2, caLen);
                this.value = val2;
            } else {
                this.coder = (byte) 1;
                this.value = StringUTF16.toBytes(ca3, 0, caLen);
            }
        } catch (CharacterCodingException x10) {
            throw new Error(x10);
        }
    }

    public static String newStringUTF8NoRepl(byte[] bytes, int offset, int length, boolean noShare) {
        byte[] dst;
        int dp;
        byte b10;
        checkBoundsOffCount(offset, length, bytes.length);
        if (length == 0) {
            return "";
        }
        if (COMPACT_STRINGS) {
            int dp2 = StringCoding.countPositives(bytes, offset, length);
            int sl2 = offset + length;
            if (dp2 == length) {
                if (noShare || length != bytes.length) {
                    return new String(Arrays.copyOfRange(bytes, offset, offset + length), (byte) 0);
                }
                return new String(bytes, (byte) 0);
            }
            byte[] dst2 = new byte[length];
            System.arraycopy(bytes, offset, dst2, 0, dp2);
            int offset2 = offset + dp2;
            while (offset2 < sl2) {
                int i10 = offset2;
                offset2++;
                byte b11 = bytes[i10];
                if (b11 >= 0) {
                    int i11 = dp2;
                    dp2++;
                    dst2[i11] = b11;
                } else if ((b11 & l.f85913l) == 194 && offset2 < sl2 && (b10 = bytes[offset2]) < -64) {
                    int i12 = dp2;
                    dp2++;
                    dst2[i12] = (byte) decode2(b11, b10);
                    offset2++;
                } else {
                    offset2--;
                    break;
                }
            }
            if (offset2 == sl2) {
                if (dp2 != dst2.length) {
                    dst2 = Arrays.copyOf(dst2, dp2);
                }
                return new String(dst2, (byte) 0);
            }
            if (dp2 == 0) {
                dst = StringUTF16.newBytesFor(length);
            } else {
                byte[] buf = StringUTF16.newBytesFor(length);
                StringLatin1.inflate(dst2, 0, buf, 0, dp2);
                dst = buf;
            }
            dp = decodeUTF8_UTF16(bytes, offset2, sl2, dst, dp2, false);
        } else {
            dst = StringUTF16.newBytesFor(length);
            dp = decodeUTF8_UTF16(bytes, offset, offset + length, dst, 0, false);
        }
        if (dp != length) {
            dst = Arrays.copyOf(dst, dp << 1);
        }
        return new String(dst, (byte) 1);
    }

    public static String newStringNoRepl(byte[] src, Charset cs) throws CharacterCodingException {
        try {
            return newStringNoRepl1(src, cs);
        } catch (IllegalArgumentException e10) {
            Throwable cause = e10.getCause();
            if (cause instanceof MalformedInputException) {
                MalformedInputException mie = (MalformedInputException) cause;
                throw mie;
            }
            throw ((CharacterCodingException) cause);
        }
    }

    private static String newStringNoRepl1(byte[] src, Charset cs) {
        int len = src.length;
        if (len == 0) {
            return "";
        }
        if (cs == UTF_8.INSTANCE) {
            return newStringUTF8NoRepl(src, 0, src.length, false);
        }
        if (cs == ISO_8859_1.INSTANCE) {
            if (COMPACT_STRINGS) {
                return new String(src, (byte) 0);
            }
            return new String(StringLatin1.inflate(src, 0, src.length), (byte) 1);
        }
        if (cs == US_ASCII.INSTANCE) {
            if (!StringCoding.hasNegatives(src, 0, src.length)) {
                if (COMPACT_STRINGS) {
                    return new String(src, (byte) 0);
                }
                return new String(StringLatin1.inflate(src, 0, src.length), (byte) 1);
            }
            throwMalformed(src);
        }
        ArrayDecoder newDecoder = cs.newDecoder();
        if (newDecoder instanceof ArrayDecoder) {
            ArrayDecoder ad2 = newDecoder;
            if (ad2.isASCIICompatible() && !StringCoding.hasNegatives(src, 0, src.length)) {
                if (COMPACT_STRINGS) {
                    return new String(src, (byte) 0);
                }
                return new String(src, 0, src.length, (Charset) ISO_8859_1.INSTANCE);
            }
        }
        int en2 = scale(len, newDecoder.maxCharsPerByte());
        char[] ca2 = new char[en2];
        try {
            int caLen = decodeWithDecoder(newDecoder, ca2, src, 0, src.length);
            if (COMPACT_STRINGS) {
                byte[] val = StringUTF16.compress(ca2, 0, caLen);
                byte coder = StringUTF16.coderFromArrayLen(val, caLen);
                return new String(val, coder);
            }
            return new String(StringUTF16.toBytes(ca2, 0, caLen), (byte) 1);
        } catch (CharacterCodingException x10) {
            throw new IllegalArgumentException(x10);
        }
    }

    private static byte[] trimArray(byte[] ba2, int len) {
        if (len == ba2.length) {
            return ba2;
        }
        return Arrays.copyOf(ba2, len);
    }

    private static int scale(int len, float expansionFactor) {
        return (int) (len * expansionFactor);
    }

    private static Charset lookupCharset(String csn) throws UnsupportedEncodingException {
        Objects.requireNonNull(csn);
        try {
            return Charset.forName(csn);
        } catch (IllegalCharsetNameException | UnsupportedCharsetException e10) {
            throw new UnsupportedEncodingException(csn);
        }
    }

    private static byte[] encode(Charset cs, byte coder, byte[] val) {
        if (cs == UTF_8.INSTANCE) {
            return encodeUTF8(coder, val, true);
        }
        if (cs == ISO_8859_1.INSTANCE) {
            return encode8859_1(coder, val);
        }
        if (cs == US_ASCII.INSTANCE) {
            return encodeASCII(coder, val);
        }
        return encodeWithEncoder(cs, coder, val, true);
    }

    private static byte[] encodeWithEncoder(Charset cs, byte coder, byte[] val, boolean doReplace) {
        ArrayEncoder newEncoder = cs.newEncoder();
        int len = val.length >> coder;
        int en2 = scale(len, newEncoder.maxBytesPerChar());
        if (doReplace && (newEncoder instanceof ArrayEncoder)) {
            ArrayEncoder ae2 = newEncoder;
            if (coder == 0 && ae2.isASCIICompatible() && !StringCoding.hasNegatives(val, 0, val.length)) {
                return (byte[]) val.clone();
            }
            byte[] ba2 = new byte[en2];
            if (len == 0) {
                return ba2;
            }
            int blen = coder == 0 ? ae2.encodeFromLatin1(val, 0, len, ba2) : ae2.encodeFromUTF16(val, 0, len, ba2);
            if (blen != -1) {
                return trimArray(ba2, blen);
            }
        }
        byte[] ba3 = new byte[en2];
        if (len == 0) {
            return ba3;
        }
        if (doReplace) {
            newEncoder.onMalformedInput(CodingErrorAction.REPLACE).onUnmappableCharacter(CodingErrorAction.REPLACE);
        }
        char[] ca2 = coder == 0 ? StringLatin1.toChars(val) : StringUTF16.toChars(val);
        ByteBuffer bb2 = ByteBuffer.wrap(ba3);
        CharBuffer cb2 = CharBuffer.wrap(ca2, 0, len);
        try {
            CoderResult cr = newEncoder.encode(cb2, bb2, true);
            if (!cr.isUnderflow()) {
                cr.throwException();
            }
            CoderResult cr2 = newEncoder.flush(bb2);
            if (!cr2.isUnderflow()) {
                cr2.throwException();
            }
            return trimArray(ba3, bb2.position());
        } catch (CharacterCodingException x10) {
            if (!doReplace) {
                throw new IllegalArgumentException(x10);
            }
            throw new Error(x10);
        }
    }

    public static byte[] getBytesUTF8NoRepl(String s10) {
        return encodeUTF8(s10.coder(), s10.value(), false);
    }

    private static boolean isASCII(byte[] src) {
        return !StringCoding.hasNegatives(src, 0, src.length);
    }

    public static byte[] getBytesNoRepl(String s10, Charset cs) throws CharacterCodingException {
        try {
            return getBytesNoRepl1(s10, cs);
        } catch (IllegalArgumentException e10) {
            Throwable cause = e10.getCause();
            if (cause instanceof UnmappableCharacterException) {
                throw ((UnmappableCharacterException) cause);
            }
            throw ((CharacterCodingException) cause);
        }
    }

    private static byte[] getBytesNoRepl1(String s10, Charset cs) {
        byte[] val = s10.value();
        byte coder = s10.coder();
        if (cs == UTF_8.INSTANCE) {
            if (coder == 0 && isASCII(val)) {
                return val;
            }
            return encodeUTF8(coder, val, false);
        }
        if (cs == ISO_8859_1.INSTANCE) {
            if (coder == 0) {
                return val;
            }
            return encode8859_1(coder, val, false);
        }
        if (cs == US_ASCII.INSTANCE && coder == 0) {
            if (isASCII(val)) {
                return val;
            }
            throwUnmappable(val);
        }
        return encodeWithEncoder(cs, coder, val, false);
    }

    private static byte[] encodeASCII(byte coder, byte[] val) {
        if (coder == 0) {
            int positives = StringCoding.countPositives(val, 0, val.length);
            byte[] dst = (byte[]) val.clone();
            if (positives < dst.length) {
                replaceNegatives(dst, positives);
            }
            return dst;
        }
        int len = val.length >> 1;
        byte[] dst2 = new byte[len];
        int dp = 0;
        int i10 = 0;
        while (i10 < len) {
            char c10 = StringUTF16.getChar(val, i10);
            if (c10 < '\u0080') {
                int i11 = dp;
                dp++;
                dst2[i11] = (byte) c10;
            } else {
                if (Character.isHighSurrogate(c10) && i10 + 1 < len && Character.isLowSurrogate(StringUTF16.getChar(val, i10 + 1))) {
                    i10++;
                }
                int i12 = dp;
                dp++;
                dst2[i12] = 63;
            }
            i10++;
        }
        if (len == dp) {
            return dst2;
        }
        return Arrays.copyOf(dst2, dp);
    }

    private static void replaceNegatives(byte[] val, int fromIndex) {
        for (int i10 = fromIndex; i10 < val.length; i10++) {
            if (val[i10] < 0) {
                val[i10] = 63;
            }
        }
    }

    private static byte[] encode8859_1(byte coder, byte[] val) {
        return encode8859_1(coder, val, true);
    }

    private static byte[] encode8859_1(byte coder, byte[] val, boolean doReplace) {
        if (coder == 0) {
            return (byte[]) val.clone();
        }
        int len = val.length >> 1;
        byte[] dst = new byte[len];
        int dp = 0;
        int sp = 0;
        while (sp < len) {
            int ret = StringCoding.implEncodeISOArray(val, sp, dst, dp, len);
            sp += ret;
            dp += ret;
            if (ret != len) {
                if (!doReplace) {
                    throwUnmappable(sp);
                }
                sp++;
                char c10 = StringUTF16.getChar(val, sp);
                if (Character.isHighSurrogate(c10) && sp < len && Character.isLowSurrogate(StringUTF16.getChar(val, sp))) {
                    sp++;
                }
                dp++;
                dst[dp] = 63;
                len -= sp;
            }
        }
        if (dp == dst.length) {
            return dst;
        }
        return Arrays.copyOf(dst, dp);
    }

    public static int decodeASCII(byte[] sa2, int sp, char[] da2, int dp, int len) {
        int count = StringCoding.countPositives(sa2, sp, len);
        while (count < len && sa2[sp + count] >= 0) {
            count++;
        }
        StringLatin1.inflate(sa2, sp, da2, dp, count);
        return count;
    }

    private static boolean isNotContinuation(int b10) {
        return (b10 & 192) != 128;
    }

    private static boolean isMalformed3(int b12, int b22, int b32) {
        return ((b12 != -32 || (b22 & 224) != 128) && (b22 & 192) == 128 && (b32 & 192) == 128) ? false : true;
    }

    private static boolean isMalformed3_2(int b12, int b22) {
        return (b12 == -32 && (b22 & 224) == 128) || (b22 & 192) != 128;
    }

    private static boolean isMalformed4(int b22, int b32, int b42) {
        return ((b22 & 192) == 128 && (b32 & 192) == 128 && (b42 & 192) == 128) ? false : true;
    }

    private static boolean isMalformed4_2(int b12, int b22) {
        return (b12 == 240 && (b22 < 144 || b22 > 191)) || (b12 == 244 && (b22 & 240) != 128) || (b22 & 192) != 128;
    }

    private static boolean isMalformed4_3(int b32) {
        return (b32 & 192) != 128;
    }

    private static char decode2(int b12, int b22) {
        return (char) (((b12 << 6) ^ b22) ^ 3968);
    }

    private static char decode3(int b12, int b22, int b32) {
        return (char) (((b12 << 12) ^ (b22 << 6)) ^ (b32 ^ (-123008)));
    }

    private static int decode4(int b12, int b22, int b32, int b42) {
        return (((b12 << 18) ^ (b22 << 12)) ^ (b32 << 6)) ^ (b42 ^ 3678080);
    }

    /* JADX WARN: Code restructure failed: missing block: B:85:0x0147, code lost:
    
        if (r10 != false) goto L53;
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x014a, code lost:
    
        throwMalformed(r6, 1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x014f, code lost:
    
        r1 = r9;
        r9 = r9 + 1;
        java.lang.StringUTF16.putChar(r8, r1, 65533);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private static int decodeUTF8_UTF16(byte[] src, int sp, int sl2, byte[] dst, int dp, boolean doReplace) {
        while (true) {
            if (sp >= sl2) {
                break;
            }
            int i10 = sp;
            sp++;
            byte b10 = src[i10];
            if (b10 >= 0) {
                int i11 = dp;
                dp++;
                StringUTF16.putChar(dst, i11, (char) b10);
            } else if ((b10 >> 5) == -2 && (b10 & 30) != 0) {
                if (sp < sl2) {
                    sp++;
                    byte b11 = src[sp];
                    if (isNotContinuation(b11)) {
                        if (!doReplace) {
                            throwMalformed(sp - 1, 1);
                        }
                        int i12 = dp;
                        dp++;
                        StringUTF16.putChar(dst, i12, 65533);
                        sp--;
                    } else {
                        int i13 = dp;
                        dp++;
                        StringUTF16.putChar(dst, i13, decode2(b10, b11));
                    }
                } else {
                    if (!doReplace) {
                        throwMalformed(sp, 1);
                    }
                    int i14 = dp;
                    dp++;
                    StringUTF16.putChar(dst, i14, 65533);
                }
            } else if ((b10 >> 4) == -2) {
                if (sp + 1 < sl2) {
                    int sp2 = sp + 1;
                    byte b12 = src[sp];
                    sp = sp2 + 1;
                    byte b13 = src[sp2];
                    if (isMalformed3(b10, b12, b13)) {
                        if (!doReplace) {
                            throwMalformed(sp - 3, 3);
                        }
                        int i15 = dp;
                        dp++;
                        StringUTF16.putChar(dst, i15, 65533);
                        int sp3 = sp - 3;
                        sp = sp3 + malformed3(src, sp3);
                    } else {
                        char c10 = decode3(b10, b12, b13);
                        if (Character.isSurrogate(c10)) {
                            if (!doReplace) {
                                throwMalformed(sp - 3, 3);
                            }
                            int i16 = dp;
                            dp++;
                            StringUTF16.putChar(dst, i16, 65533);
                        } else {
                            int i17 = dp;
                            dp++;
                            StringUTF16.putChar(dst, i17, c10);
                        }
                    }
                } else {
                    if (sp >= sl2 || !isMalformed3_2(b10, src[sp])) {
                        break;
                    }
                    if (!doReplace) {
                        throwMalformed(sp - 1, 2);
                    }
                    int i18 = dp;
                    dp++;
                    StringUTF16.putChar(dst, i18, 65533);
                }
            } else if ((b10 >> 3) == -2) {
                if (sp + 2 < sl2) {
                    int sp4 = sp + 1;
                    byte b14 = src[sp];
                    int sp5 = sp4 + 1;
                    byte b15 = src[sp4];
                    sp = sp5 + 1;
                    byte b16 = src[sp5];
                    int uc2 = decode4(b10, b14, b15, b16);
                    if (isMalformed4(b14, b15, b16) || !Character.isSupplementaryCodePoint(uc2)) {
                        if (!doReplace) {
                            throwMalformed(sp - 4, 4);
                        }
                        int i19 = dp;
                        dp++;
                        StringUTF16.putChar(dst, i19, 65533);
                        int sp6 = sp - 4;
                        sp = sp6 + malformed4(src, sp6);
                    } else {
                        int i20 = dp;
                        int dp2 = dp + 1;
                        StringUTF16.putChar(dst, i20, Character.highSurrogate(uc2));
                        dp = dp2 + 1;
                        StringUTF16.putChar(dst, dp2, Character.lowSurrogate(uc2));
                    }
                } else {
                    int b17 = b10 & 255;
                    if (b17 > 244 || (sp < sl2 && isMalformed4_2(b17, src[sp] & 255))) {
                        if (!doReplace) {
                            throwMalformed(sp - 1, 1);
                        }
                        int i21 = dp;
                        dp++;
                        StringUTF16.putChar(dst, i21, 65533);
                    } else {
                        if (!doReplace) {
                            throwMalformed(sp - 1, 1);
                        }
                        sp++;
                        int i22 = dp;
                        dp++;
                        StringUTF16.putChar(dst, i22, 65533);
                        if (sp >= sl2 || !isMalformed4_3(src[sp])) {
                            break;
                        }
                    }
                }
            } else {
                if (!doReplace) {
                    throwMalformed(sp - 1, 1);
                }
                int i23 = dp;
                dp++;
                StringUTF16.putChar(dst, i23, 65533);
            }
        }
        return dp;
    }

    private static int decodeWithDecoder(CharsetDecoder cd2, char[] dst, byte[] src, int offset, int length) throws CharacterCodingException {
        ByteBuffer bb2 = ByteBuffer.wrap(src, offset, length);
        CharBuffer cb2 = CharBuffer.wrap(dst, 0, dst.length);
        CoderResult cr = cd2.decode(bb2, cb2, true);
        if (!cr.isUnderflow()) {
            cr.throwException();
        }
        CoderResult cr2 = cd2.flush(cb2);
        if (!cr2.isUnderflow()) {
            cr2.throwException();
        }
        return cb2.position();
    }

    private static int malformed3(byte[] src, int sp) {
        byte b10 = src[sp];
        byte b11 = src[sp + 1];
        return ((b10 == -32 && (b11 & 224) == 128) || isNotContinuation(b11)) ? 1 : 2;
    }

    private static int malformed4(byte[] src, int sp) {
        int sp2 = sp + 1;
        int b12 = src[sp] & 255;
        int sp3 = sp2 + 1;
        int b22 = src[sp2] & 255;
        if (b12 > 244) {
            return 1;
        }
        if (b12 != 240 || (b22 >= 144 && b22 <= 191)) {
            if ((b12 == 244 && (b22 & 240) != 128) || isNotContinuation(b22)) {
                return 1;
            }
            if (isNotContinuation(src[sp3])) {
                return 2;
            }
            return 3;
        }
        return 1;
    }

    private static void throwMalformed(int off, int nb2) {
        String msg = "malformed input off : " + off + ", length : " + nb2;
        throw new IllegalArgumentException(msg, new MalformedInputException(nb2));
    }

    private static void throwMalformed(byte[] val) {
        int dp = StringCoding.countPositives(val, 0, val.length);
        throwMalformed(dp, 1);
    }

    private static void throwUnmappable(int off) {
        String msg = "malformed input off : " + off + ", length : 1";
        throw new IllegalArgumentException(msg, new UnmappableCharacterException(1));
    }

    private static void throwUnmappable(byte[] val) {
        int dp = StringCoding.countPositives(val, 0, val.length);
        throwUnmappable(dp);
    }

    private static byte[] encodeUTF8(byte coder, byte[] val, boolean doReplace) {
        if (coder == 1) {
            return encodeUTF8_UTF16(val, doReplace);
        }
        if (!StringCoding.hasNegatives(val, 0, val.length)) {
            return (byte[]) val.clone();
        }
        int dp = 0;
        byte[] dst = StringUTF16.newBytesFor(val.length);
        for (byte c10 : val) {
            if (c10 < 0) {
                int i10 = dp;
                int dp2 = dp + 1;
                dst[i10] = (byte) (192 | ((c10 & 255) >> 6));
                dp = dp2 + 1;
                dst[dp2] = (byte) (128 | (c10 & Opcodes.OPC_lstore_0));
            } else {
                int i11 = dp;
                dp++;
                dst[i11] = c10;
            }
        }
        if (dp == dst.length) {
            return dst;
        }
        return Arrays.copyOf(dst, dp);
    }

    private static byte[] encodeUTF8_UTF16(byte[] val, boolean doReplace) {
        char c10;
        int dp = 0;
        int sp = 0;
        int sl2 = val.length >> 1;
        long allocLen = sl2 * 3 < 0 ? computeSizeUTF8_UTF16(val, doReplace) : sl2 * 3;
        if (allocLen > 2147483647L) {
            throw new OutOfMemoryError("Required length exceeds implementation limit");
        }
        byte[] dst = new byte[(int) allocLen];
        while (sp < sl2 && (c10 = StringUTF16.getChar(val, sp)) < '\u0080') {
            int i10 = dp;
            dp++;
            dst[i10] = (byte) c10;
            sp++;
        }
        while (sp < sl2) {
            int i11 = sp;
            sp++;
            char c11 = StringUTF16.getChar(val, i11);
            if (c11 < '\u0080') {
                int i12 = dp;
                dp++;
                dst[i12] = (byte) c11;
            } else if (c11 < '\u0800') {
                int i13 = dp;
                int dp2 = dp + 1;
                dst[i13] = (byte) (192 | (c11 >> 6));
                dp = dp2 + 1;
                dst[dp2] = (byte) (128 | (c11 & '?'));
            } else if (Character.isSurrogate(c11)) {
                int uc2 = -1;
                if (Character.isHighSurrogate(c11) && sp < sl2) {
                    char c22 = StringUTF16.getChar(val, sp);
                    if (Character.isLowSurrogate(c22)) {
                        uc2 = Character.toCodePoint(c11, c22);
                    }
                }
                if (uc2 < 0) {
                    if (doReplace) {
                        int i14 = dp;
                        dp++;
                        dst[i14] = 63;
                    } else {
                        throwUnmappable(sp - 1);
                    }
                } else {
                    int i15 = dp;
                    int dp3 = dp + 1;
                    dst[i15] = (byte) (240 | (uc2 >> 18));
                    int dp4 = dp3 + 1;
                    dst[dp3] = (byte) (128 | ((uc2 >> 12) & 63));
                    int dp5 = dp4 + 1;
                    dst[dp4] = (byte) (128 | ((uc2 >> 6) & 63));
                    dp = dp5 + 1;
                    dst[dp5] = (byte) (128 | (uc2 & 63));
                    sp++;
                }
            } else {
                int i16 = dp;
                int dp6 = dp + 1;
                dst[i16] = (byte) (224 | (c11 >> '\f'));
                int dp7 = dp6 + 1;
                dst[dp6] = (byte) (128 | ((c11 >> 6) & 63));
                dp = dp7 + 1;
                dst[dp7] = (byte) (128 | (c11 & '?'));
            }
        }
        if (dp == dst.length) {
            return dst;
        }
        return Arrays.copyOf(dst, dp);
    }

    private static long computeSizeUTF8_UTF16(byte[] val, boolean doReplace) {
        long dp = 0;
        int sp = 0;
        int sl2 = val.length >> 1;
        while (sp < sl2) {
            int i10 = sp;
            sp++;
            char c10 = StringUTF16.getChar(val, i10);
            if (c10 < '\u0080') {
                dp++;
            } else if (c10 < '\u0800') {
                dp += 2;
            } else if (Character.isSurrogate(c10)) {
                int uc2 = -1;
                if (Character.isHighSurrogate(c10) && sp < sl2) {
                    char c22 = StringUTF16.getChar(val, sp);
                    if (Character.isLowSurrogate(c22)) {
                        uc2 = Character.toCodePoint(c10, c22);
                    }
                }
                if (uc2 < 0) {
                    if (doReplace) {
                        dp++;
                    } else {
                        throwUnmappable(sp - 1);
                    }
                } else {
                    dp += 4;
                    sp++;
                }
            } else {
                dp += 3;
            }
        }
        return dp;
    }

    public String(byte[] bytes, String charsetName) throws UnsupportedEncodingException {
        this(lookupCharset(charsetName), bytes, 0, bytes.length);
    }

    public String(byte[] bytes, Charset charset) {
        this((Charset) Objects.requireNonNull(charset), bytes, 0, bytes.length);
    }

    public String(byte[] bytes, int offset, int length) {
        this(Charset.defaultCharset(), bytes, checkBoundsOffCount(offset, length, bytes.length), length);
    }

    public String(byte[] bytes) {
        this(Charset.defaultCharset(), bytes, 0, bytes.length);
    }

    public String(StringBuffer buffer) {
        this(buffer.toString());
    }

    public String(StringBuilder builder) {
        this(builder, (Void) null);
    }

    @Override
    public int length() {
        return this.value.length >> coder();
    }

    @Override
    public boolean isEmpty() {
        return this.value.length == 0;
    }

    @Override
    public char charAt(int index) {
        if (isLatin1()) {
            return StringLatin1.charAt(this.value, index);
        }
        return StringUTF16.charAt(this.value, index);
    }

    public int codePointAt(int index) {
        if (isLatin1()) {
            checkIndex(index, this.value.length);
            return this.value[index] & 255;
        }
        int length = this.value.length >> 1;
        checkIndex(index, length);
        return StringUTF16.codePointAt(this.value, index, length);
    }

    public int codePointBefore(int index) {
        int i10 = index - 1;
        checkIndex(i10, length());
        if (isLatin1()) {
            return this.value[i10] & 255;
        }
        return StringUTF16.codePointBefore(this.value, index);
    }

    public int codePointCount(int beginIndex, int endIndex) {
        Objects.checkFromToIndex(beginIndex, endIndex, length());
        if (isLatin1()) {
            return endIndex - beginIndex;
        }
        return StringUTF16.codePointCount(this.value, beginIndex, endIndex);
    }

    public int offsetByCodePoints(int index, int codePointOffset) {
        return Character.offsetByCodePoints(this, index, codePointOffset);
    }

    @Override
    public void getChars(int srcBegin, int srcEnd, char[] dst, int dstBegin) {
        checkBoundsBeginEnd(srcBegin, srcEnd, length());
        checkBoundsOffCount(dstBegin, srcEnd - srcBegin, dst.length);
        if (isLatin1()) {
            StringLatin1.getChars(this.value, srcBegin, srcEnd, dst, dstBegin);
        } else {
            StringUTF16.getChars(this.value, srcBegin, srcEnd, dst, dstBegin);
        }
    }

    @Deprecated(since = "1.1")
    public void getBytes(int srcBegin, int srcEnd, byte[] dst, int dstBegin) {
        checkBoundsBeginEnd(srcBegin, srcEnd, length());
        Objects.requireNonNull(dst);
        checkBoundsOffCount(dstBegin, srcEnd - srcBegin, dst.length);
        if (isLatin1()) {
            StringLatin1.getBytes(this.value, srcBegin, srcEnd, dst, dstBegin);
        } else {
            StringUTF16.getBytes(this.value, srcBegin, srcEnd, dst, dstBegin);
        }
    }

    public byte[] getBytes(String charsetName) throws UnsupportedEncodingException {
        return encode(lookupCharset(charsetName), coder(), this.value);
    }

    public byte[] getBytes(Charset charset) {
        if (charset == null) {
            throw new NullPointerException();
        }
        return encode(charset, coder(), this.value);
    }

    public byte[] getBytes() {
        return encode(Charset.defaultCharset(), coder(), this.value);
    }

    public boolean bytesCompatible(Charset charset) {
        if (isLatin1()) {
            if (charset == ISO_8859_1.INSTANCE) {
                return true;
            }
            return (charset == UTF_8.INSTANCE || charset == US_ASCII.INSTANCE) && !StringCoding.hasNegatives(this.value, 0, this.value.length);
        }
        return false;
    }

    public void copyToSegmentRaw(MemorySegment segment, long offset) {
        MemorySegment.copy(this.value, 0, segment, ValueLayout.JAVA_BYTE, offset, this.value.length);
    }

    public boolean equals(Object anObject) {
        if (this == anObject) {
            return true;
        }
        if (anObject instanceof String) {
            String aString = (String) anObject;
            if ((!COMPACT_STRINGS || this.coder == aString.coder) && StringLatin1.equals(this.value, aString.value)) {
                return true;
            }
        }
        return false;
    }

    public boolean contentEquals(StringBuffer sb2) {
        return contentEquals((CharSequence) sb2);
    }

    private boolean nonSyncContentEquals(AbstractStringBuilder sb2) {
        int len = length();
        if (len != sb2.length()) {
            return false;
        }
        byte[] v12 = this.value;
        byte[] v22 = sb2.getValue();
        byte coder = coder();
        if (coder == sb2.getCoder()) {
            return v12.length <= v22.length && ArraysSupport.mismatch(v12, v22, v12.length) < 0;
        }
        if (coder != 0) {
            return false;
        }
        return StringUTF16.contentEquals(v12, v22, len);
    }

    public boolean contentEquals(CharSequence cs) {
        boolean nonSyncContentEquals;
        if (cs instanceof AbstractStringBuilder) {
            if (cs instanceof StringBuffer) {
                synchronized (cs) {
                    nonSyncContentEquals = nonSyncContentEquals((AbstractStringBuilder) cs);
                }
                return nonSyncContentEquals;
            }
            return nonSyncContentEquals((AbstractStringBuilder) cs);
        }
        if (cs instanceof String) {
            return equals(cs);
        }
        int n10 = cs.length();
        if (n10 != length()) {
            return false;
        }
        byte[] val = this.value;
        if (isLatin1()) {
            for (int i10 = 0; i10 < n10; i10++) {
                if ((val[i10] & 255) != cs.charAt(i10)) {
                    return false;
                }
            }
            return true;
        }
        if (!StringUTF16.contentEquals(val, cs, n10)) {
            return false;
        }
        return true;
    }

    public boolean equalsIgnoreCase(String anotherString) {
        if (this == anotherString) {
            return true;
        }
        return anotherString != null && anotherString.length() == length() && regionMatches(true, 0, anotherString, 0, length());
    }

    @Override
    public int compareTo(String anotherString) {
        byte[] v12 = this.value;
        byte[] v22 = anotherString.value;
        byte coder = coder();
        return coder == anotherString.coder() ? coder == 0 ? StringLatin1.compareTo(v12, v22) : StringUTF16.compareTo(v12, v22) : coder == 0 ? StringLatin1.compareToUTF16(v12, v22) : StringUTF16.compareToLatin1(v12, v22);
    }

    private static class CaseInsensitiveComparator implements Comparator<String>, Serializable {
        private static final long serialVersionUID = 8575799808933029326L;

        private CaseInsensitiveComparator() {
        }

        @Override
        public int compare(String s12, String s22) {
            byte[] v12 = s12.value;
            byte[] v22 = s22.value;
            byte coder = s12.coder();
            return coder == s22.coder() ? coder == 0 ? StringLatin1.compareToCI(v12, v22) : StringUTF16.compareToCI(v12, v22) : coder == 0 ? StringLatin1.compareToCI_UTF16(v12, v22) : StringUTF16.compareToCI_Latin1(v12, v22);
        }

        private Object readResolve() {
            return String.CASE_INSENSITIVE_ORDER;
        }
    }

    public int compareToIgnoreCase(String str) {
        return CASE_INSENSITIVE_ORDER.compare(this, str);
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:0x0074, code lost:
    
        if (r0 == 0) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0077, code lost:
    
        r0 = r11;
        r11 = r11 - 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x007c, code lost:
    
        if (r0 <= 0) goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x007f, code lost:
    
        r1 = r8;
        r8 = r8 + 1;
        r2 = r10;
        r10 = r10 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0091, code lost:
    
        if (java.lang.StringLatin1.getChar(r0, r1) == java.lang.StringUTF16.getChar(r0, r2)) goto L44;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0094, code lost:
    
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00b5, code lost:
    
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0096, code lost:
    
        r0 = r11;
        r11 = r11 - 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x009b, code lost:
    
        if (r0 <= 0) goto L46;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x009e, code lost:
    
        r1 = r8;
        r8 = r8 + 1;
        r2 = r10;
        r10 = r10 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x00b0, code lost:
    
        if (java.lang.StringUTF16.getChar(r0, r1) == java.lang.StringLatin1.getChar(r0, r2)) goto L47;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x00b3, code lost:
    
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:?, code lost:
    
        return true;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean regionMatches(int toffset, String other, int ooffset, int len) {
        if (ooffset < 0 || toffset < 0 || toffset > length() - len || ooffset > other.length() - len) {
            return false;
        }
        if (len <= 0) {
            return true;
        }
        byte[] tv = this.value;
        byte[] ov = other.value;
        byte coder = coder();
        if (coder == other.coder()) {
            if (coder == 1) {
                toffset <<= 1;
                ooffset <<= 1;
                len <<= 1;
            }
            return ArraysSupport.mismatch(tv, toffset, ov, ooffset, len) < 0;
        }
    }

    public boolean regionMatches(boolean ignoreCase, int toffset, String other, int ooffset, int len) {
        if (!ignoreCase) {
            return regionMatches(toffset, other, ooffset, len);
        }
        if (ooffset < 0 || toffset < 0 || toffset > length() - len || ooffset > other.length() - len) {
            return false;
        }
        byte[] tv = this.value;
        byte[] ov = other.value;
        byte coder = coder();
        if (coder == other.coder()) {
            if (coder == 0) {
                return StringLatin1.regionMatchesCI(tv, toffset, ov, ooffset, len);
            }
            return StringUTF16.regionMatchesCI(tv, toffset, ov, ooffset, len);
        }
        if (coder == 0) {
            return StringLatin1.regionMatchesCI_UTF16(tv, toffset, ov, ooffset, len);
        }
        return StringUTF16.regionMatchesCI_Latin1(tv, toffset, ov, ooffset, len);
    }

    public boolean startsWith(String prefix, int toffset) {
        if (toffset < 0 || toffset > length() - prefix.length()) {
            return false;
        }
        byte[] ta2 = this.value;
        byte[] pa2 = prefix.value;
        int po = 0;
        int pc2 = pa2.length;
        byte coder = coder();
        if (coder == prefix.coder()) {
            if (coder == 1) {
                toffset <<= 1;
            }
            return ArraysSupport.mismatch(ta2, toffset, pa2, 0, pc2) < 0;
        }
        if (coder == 0) {
            return false;
        }
        while (po < pc2) {
            int i10 = toffset;
            toffset++;
            int i11 = po;
            po++;
            if (StringUTF16.getChar(ta2, i10) != (pa2[i11] & 255)) {
                return false;
            }
        }
        return true;
    }

    public boolean startsWith(String prefix) {
        return startsWith(prefix, 0);
    }

    public boolean endsWith(String suffix) {
        return startsWith(suffix, length() - suffix.length());
    }

    public int hashCode() {
        int h10 = this.hash;
        if (h10 == 0 && !this.hashIsZero) {
            h10 = isLatin1() ? StringLatin1.hashCode(this.value) : StringUTF16.hashCode(this.value);
            if (h10 == 0) {
                this.hashIsZero = true;
            } else {
                this.hash = h10;
            }
        }
        return h10;
    }

    public int indexOf(int ch2) {
        return isLatin1() ? StringLatin1.indexOf(this.value, ch2, 0, this.value.length) : StringUTF16.indexOf(this.value, ch2, 0, this.value.length >> 1);
    }

    public int indexOf(int ch2, int fromIndex) {
        int fromIndex2 = Math.max(fromIndex, 0);
        return isLatin1() ? StringLatin1.indexOf(this.value, ch2, Math.min(fromIndex2, this.value.length), this.value.length) : StringUTF16.indexOf(this.value, ch2, Math.min(fromIndex2, this.value.length >> 1), this.value.length >> 1);
    }

    public int indexOf(int ch2, int beginIndex, int endIndex) {
        checkBoundsBeginEnd(beginIndex, endIndex, length());
        return isLatin1() ? StringLatin1.indexOf(this.value, ch2, beginIndex, endIndex) : StringUTF16.indexOf(this.value, ch2, beginIndex, endIndex);
    }

    public int lastIndexOf(int ch2) {
        return lastIndexOf(ch2, length() - 1);
    }

    public int lastIndexOf(int ch2, int fromIndex) {
        return isLatin1() ? StringLatin1.lastIndexOf(this.value, ch2, fromIndex) : StringUTF16.lastIndexOf(this.value, ch2, fromIndex);
    }

    public int indexOf(String str) {
        byte coder = coder();
        if (coder == str.coder()) {
            return isLatin1() ? StringLatin1.indexOf(this.value, str.value) : StringUTF16.indexOf(this.value, str.value);
        }
        if (coder == 0) {
            return -1;
        }
        return StringUTF16.indexOfLatin1(this.value, str.value);
    }

    public int indexOf(String str, int fromIndex) {
        return indexOf(this.value, coder(), length(), str, fromIndex);
    }

    public int indexOf(String str, int beginIndex, int endIndex) {
        if (str.length() == 1) {
            return indexOf(str.charAt(0), beginIndex, endIndex);
        }
        checkBoundsBeginEnd(beginIndex, endIndex, length());
        return indexOf(this.value, coder(), endIndex, str, beginIndex);
    }

    public static int indexOf(byte[] src, byte srcCoder, int srcCount, String tgtStr, int fromIndex) {
        int fromIndex2 = Math.clamp(fromIndex, 0, srcCount);
        int tgtCount = tgtStr.length();
        if (tgtCount > srcCount - fromIndex2) {
            return -1;
        }
        if (tgtCount == 0) {
            return fromIndex2;
        }
        byte[] tgt = tgtStr.value;
        byte tgtCoder = tgtStr.coder();
        if (srcCoder == tgtCoder) {
            if (srcCoder == 0) {
                return StringLatin1.indexOf(src, srcCount, tgt, tgtCount, fromIndex2);
            }
            return StringUTF16.indexOf(src, srcCount, tgt, tgtCount, fromIndex2);
        }
        if (srcCoder == 0) {
            return -1;
        }
        return StringUTF16.indexOfLatin1(src, srcCount, tgt, tgtCount, fromIndex2);
    }

    public int lastIndexOf(String str) {
        return lastIndexOf(str, length());
    }

    public int lastIndexOf(String str, int fromIndex) {
        return lastIndexOf(this.value, coder(), length(), str, fromIndex);
    }

    public static int lastIndexOf(byte[] src, byte srcCoder, int srcCount, String tgtStr, int fromIndex) {
        byte[] tgt = tgtStr.value;
        byte tgtCoder = tgtStr.coder();
        int tgtCount = tgtStr.length();
        int rightIndex = srcCount - tgtCount;
        if (fromIndex > rightIndex) {
            fromIndex = rightIndex;
        }
        if (fromIndex < 0) {
            return -1;
        }
        if (tgtCount == 0) {
            return fromIndex;
        }
        if (srcCoder == tgtCoder) {
            if (srcCoder == 0) {
                return StringLatin1.lastIndexOf(src, srcCount, tgt, tgtCount, fromIndex);
            }
            return StringUTF16.lastIndexOf(src, srcCount, tgt, tgtCount, fromIndex);
        }
        if (srcCoder == 0) {
            return -1;
        }
        return StringUTF16.lastIndexOfLatin1(src, srcCount, tgt, tgtCount, fromIndex);
    }

    public String substring(int beginIndex) {
        return substring(beginIndex, length());
    }

    public String substring(int beginIndex, int endIndex) {
        int length = length();
        checkBoundsBeginEnd(beginIndex, endIndex, length);
        if (beginIndex == 0 && endIndex == length) {
            return this;
        }
        int subLen = endIndex - beginIndex;
        return isLatin1() ? StringLatin1.newString(this.value, beginIndex, subLen) : StringUTF16.newString(this.value, beginIndex, subLen);
    }

    @Override
    public CharSequence subSequence(int beginIndex, int endIndex) {
        return substring(beginIndex, endIndex);
    }

    public String concat(String str) {
        if (str.isEmpty()) {
            return this;
        }
        return StringConcatHelper.doConcat(this, str);
    }

    public String replace(char oldChar, char newChar) {
        if (oldChar != newChar) {
            String ret = isLatin1() ? StringLatin1.replace(this.value, oldChar, newChar) : StringUTF16.replace(this.value, oldChar, newChar);
            if (ret != null) {
                return ret;
            }
        }
        return this;
    }

    public boolean matches(String regex) {
        return Pattern.matches(regex, this);
    }

    public boolean contains(CharSequence s10) {
        return indexOf(s10.toString()) >= 0;
    }

    public String replaceFirst(String regex, String replacement) {
        return Pattern.compile(regex).matcher(this).replaceFirst(replacement);
    }

    public String replaceAll(String regex, String replacement) {
        return Pattern.compile(regex).matcher(this).replaceAll(replacement);
    }

    public String replace(CharSequence target, CharSequence replacement) {
        String replace;
        String trgtStr = target.toString();
        String replStr = replacement.toString();
        int thisLen = length();
        int trgtLen = trgtStr.length();
        int replLen = replStr.length();
        if (trgtLen > 0) {
            if (trgtLen == 1 && replLen == 1) {
                return replace(trgtStr.charAt(0), replStr.charAt(0));
            }
            boolean thisIsLatin1 = isLatin1();
            boolean trgtIsLatin1 = trgtStr.isLatin1();
            boolean replIsLatin1 = replStr.isLatin1();
            if (thisIsLatin1 && trgtIsLatin1 && replIsLatin1) {
                replace = StringLatin1.replace(this.value, thisLen, trgtStr.value, trgtLen, replStr.value, replLen);
            } else {
                replace = StringUTF16.replace(this.value, thisLen, thisIsLatin1, trgtStr.value, trgtLen, trgtIsLatin1, replStr.value, replLen, replIsLatin1);
            }
            String ret = replace;
            if (ret != null) {
                return ret;
            }
            return this;
        }
        try {
            int resultLen = Math.addExact(thisLen, Math.multiplyExact(Math.addExact(thisLen, 1), replLen));
            StringBuilder sb2 = new StringBuilder(resultLen);
            sb2.append(replStr);
            for (int i10 = 0; i10 < thisLen; i10++) {
                sb2.append(charAt(i10)).append(replStr);
            }
            return sb2.toString();
        } catch (ArithmeticException e10) {
            throw new OutOfMemoryError("Required length exceeds implementation limit");
        }
    }

    public String[] split(String regex, int limit) {
        return split(regex, limit, false);
    }

    public String[] splitWithDelimiters(String regex, int limit) {
        return split(regex, limit, true);
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0077, code lost:
    
        return split(r9, r7, r8);
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x005c, code lost:
    
        if (((r9 - org.eclipse.jdt.internal.core.search.indexing.IIndexConstants.ANNOTATION_TYPE_SUFFIX) | ('Z' - r9)) < 0) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:4:0x001a, code lost:
    
        if (".$|()[{^?*+\\".indexOf(r1) != (-1)) goto L6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x0064, code lost:
    
        if (r9 < '\ud800') goto L20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x006c, code lost:
    
        if (r9 <= '\udfff') goto L22;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private String[] split(String regex, int limit, boolean withDelimiters) {
        char ch2;
        if (regex.length() == 1) {
            char charAt = regex.charAt(0);
            ch2 = charAt;
        }
        if (regex.length() == 2 && regex.charAt(0) == '\\') {
            char charAt2 = regex.charAt(1);
            ch2 = charAt2;
            if (((charAt2 - '0') | ('9' - ch2)) < 0) {
                if (((ch2 - 'a') | ('z' - ch2)) < 0) {
                }
            }
        }
        Pattern pattern = Pattern.compile(regex);
        if (withDelimiters) {
            return pattern.splitWithDelimiters(this, limit);
        }
        return pattern.split(this, limit);
    }

    private String[] split(char ch2, int limit, boolean withDelimiters) {
        int matchCount = 0;
        int off = 0;
        boolean limited = limit > 0;
        ArrayList<String> list = new ArrayList<>();
        String del = withDelimiters ? valueOf(ch2) : null;
        while (true) {
            int next = indexOf(ch2, off);
            if (next != -1) {
                if (!limited || matchCount < limit - 1) {
                    list.add(substring(off, next));
                    if (withDelimiters) {
                        list.add(del);
                    }
                    off = next + 1;
                    matchCount++;
                } else {
                    int last = length();
                    list.add(substring(off, last));
                    off = last;
                    matchCount++;
                    break;
                }
            } else {
                break;
            }
        }
        if (off == 0) {
            return new String[]{this};
        }
        if (!limited || matchCount < limit) {
            list.add(substring(off, length()));
        }
        int resultSize = list.size();
        if (limit == 0) {
            while (resultSize > 0 && list.get(resultSize - 1).isEmpty()) {
                resultSize--;
            }
        }
        String[] result = new String[resultSize];
        return (String[]) list.subList(0, resultSize).toArray(result);
    }

    public String[] split(String regex) {
        return split(regex, 0, false);
    }

    public static String join(CharSequence delimiter, CharSequence... elements) {
        String delim = delimiter.toString();
        String[] elems = new String[elements.length];
        for (int i10 = 0; i10 < elements.length; i10++) {
            elems[i10] = valueOf(elements[i10]);
        }
        return join("", "", delim, elems, elems.length);
    }

    @ForceInline
    public static String join(String prefix, String suffix, String delimiter, String[] elements, int size) {
        int icoder = prefix.coder() | suffix.coder();
        long len = prefix.length() + suffix.length();
        if (size > 1) {
            len += (size - 1) * delimiter.length();
            icoder |= delimiter.coder();
        }
        for (int i10 = 0; i10 < size; i10++) {
            String el2 = elements[i10];
            len += el2.length();
            icoder |= el2.coder();
        }
        byte coder = (byte) icoder;
        if (len >= 0) {
            long len2 = len << coder;
            if (len2 == ((int) len2)) {
                byte[] value = StringConcatHelper.newArray(len2);
                prefix.getBytes(value, 0, coder);
                int off = 0 + prefix.length();
                if (size > 0) {
                    String el3 = elements[0];
                    el3.getBytes(value, off, coder);
                    off += el3.length();
                    for (int i11 = 1; i11 < size; i11++) {
                        delimiter.getBytes(value, off, coder);
                        int off2 = off + delimiter.length();
                        String el4 = elements[i11];
                        el4.getBytes(value, off2, coder);
                        off = off2 + el4.length();
                    }
                }
                suffix.getBytes(value, off, coder);
                return new String(value, coder);
            }
        }
        throw new OutOfMemoryError("Requested string length exceeds VM limit");
    }

    public static String join(CharSequence delimiter, Iterable<? extends CharSequence> elements) {
        Objects.requireNonNull(delimiter);
        Objects.requireNonNull(elements);
        String delim = delimiter.toString();
        String[] elems = new String[8];
        int size = 0;
        for (CharSequence cs : elements) {
            if (size >= elems.length) {
                elems = (String[]) Arrays.copyOf(elems, elems.length << 1);
            }
            int i10 = size;
            size++;
            elems[i10] = valueOf(cs);
        }
        return join("", "", delim, elems, size);
    }

    public String toLowerCase(Locale locale) {
        return isLatin1() ? StringLatin1.toLowerCase(this, this.value, locale) : StringUTF16.toLowerCase(this, this.value, locale);
    }

    public String toLowerCase() {
        return toLowerCase(Locale.getDefault());
    }

    public String toUpperCase(Locale locale) {
        return isLatin1() ? StringLatin1.toUpperCase(this, this.value, locale) : StringUTF16.toUpperCase(this, this.value, locale);
    }

    public String toUpperCase() {
        return toUpperCase(Locale.getDefault());
    }

    public String trim() {
        String ret = isLatin1() ? StringLatin1.trim(this.value) : StringUTF16.trim(this.value);
        return ret == null ? this : ret;
    }

    public String strip() {
        String ret = isLatin1() ? StringLatin1.strip(this.value) : StringUTF16.strip(this.value);
        return ret == null ? this : ret;
    }

    public String stripLeading() {
        String ret = isLatin1() ? StringLatin1.stripLeading(this.value) : StringUTF16.stripLeading(this.value);
        return ret == null ? this : ret;
    }

    public String stripTrailing() {
        String ret = isLatin1() ? StringLatin1.stripTrailing(this.value) : StringUTF16.stripTrailing(this.value);
        return ret == null ? this : ret;
    }

    public boolean isBlank() {
        return indexOfNonWhitespace() == length();
    }

    public Stream<String> lines() {
        return isLatin1() ? StringLatin1.lines(this.value) : StringUTF16.lines(this.value);
    }

    public String indent(int n10) {
        if (isEmpty()) {
            return "";
        }
        Stream<String> stream = lines();
        if (n10 > 0) {
            String spaces = " ".repeat(n10);
            stream = stream.map(s10 -> {
                return spaces + s10;
            });
        } else if (n10 == Integer.MIN_VALUE) {
            stream = stream.map(s11 -> {
                return s11.stripLeading();
            });
        } else if (n10 < 0) {
            stream = stream.map(s12 -> {
                return s12.substring(Math.min(-n10, s12.indexOfNonWhitespace()));
            });
        }
        return (String) stream.collect(Collectors.joining("\n", "", "\n"));
    }

    private int indexOfNonWhitespace() {
        return isLatin1() ? StringLatin1.indexOfNonWhitespace(this.value) : StringUTF16.indexOfNonWhitespace(this.value);
    }

    private int lastIndexOfNonWhitespace() {
        return isLatin1() ? StringLatin1.lastIndexOfNonWhitespace(this.value) : StringUTF16.lastIndexOfNonWhitespace(this.value);
    }

    public String stripIndent() {
        int length = length();
        if (length == 0) {
            return "";
        }
        char lastChar = charAt(length - 1);
        boolean optOut = lastChar == '\n' || lastChar == '\r';
        List<String> lines = lines().toList();
        int outdent = optOut ? 0 : outdent(lines);
        return (String) lines.stream().map(line -> {
            int firstNonWhitespace = line.indexOfNonWhitespace();
            int lastNonWhitespace = line.lastIndexOfNonWhitespace();
            int incidentalWhitespace = Math.min(outdent, firstNonWhitespace);
            return firstNonWhitespace > lastNonWhitespace ? "" : line.substring(incidentalWhitespace, lastNonWhitespace);
        }).collect(Collectors.joining("\n", "", optOut ? "\n" : ""));
    }

    private static int outdent(List<String> lines) {
        int outdent = Integer.MAX_VALUE;
        for (String line : lines) {
            int leadingWhitespace = line.indexOfNonWhitespace();
            if (leadingWhitespace != line.length()) {
                outdent = Integer.min(outdent, leadingWhitespace);
            }
        }
        String lastLine = lines.get(lines.size() - 1);
        if (lastLine.isBlank()) {
            outdent = Integer.min(outdent, lastLine.length());
        }
        return outdent;
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:14:0x003e. Please report as an issue. */
    public String translateEscapes() {
        char c10;
        int code;
        char ch2;
        if (isEmpty()) {
            return "";
        }
        char[] chars = toCharArray();
        int length = chars.length;
        int from = 0;
        int to = 0;
        while (from < length) {
            int i10 = from;
            from++;
            char ch3 = chars[i10];
            if (ch3 == '\\') {
                if (from < length) {
                    from++;
                    c10 = chars[from];
                } else {
                    c10 = 0;
                }
                ch3 = c10;
                switch (ch3) {
                    case '\n':
                    case '\r':
                        if (from < length && chars[from] == '\n') {
                            from++;
                        }
                        break;
                    case '\"':
                    case '\'':
                    case '\\':
                        break;
                    case '0':
                    case '1':
                    case '2':
                    case '3':
                    case '4':
                    case '5':
                    case '6':
                    case '7':
                        int limit = Integer.min(from + (ch3 <= '3' ? 2 : 1), length);
                        int i11 = ch3 - '0';
                        while (true) {
                            code = i11;
                            if (from < limit && (ch2 = chars[from]) >= '0' && '7' >= ch2) {
                                from++;
                                i11 = (code << 3) | (ch2 - '0');
                            }
                        }
                        ch3 = (char) code;
                        break;
                    case 'b':
                        ch3 = '\b';
                        break;
                    case 'f':
                        ch3 = '\f';
                        break;
                    case 'n':
                        ch3 = '\n';
                        break;
                    case 'r':
                        ch3 = '\r';
                        break;
                    case 's':
                        ch3 = ' ';
                        break;
                    case 't':
                        ch3 = '\t';
                        break;
                    default:
                        String msg = format("Invalid escape sequence: \\%c \\\\u%04X", Character.valueOf(ch3), Integer.valueOf(ch3));
                        throw new IllegalArgumentException(msg);
                }
            }
            int i12 = to;
            to++;
            chars[i12] = ch3;
        }
        return new String(chars, 0, to);
    }

    public <R> R transform(Function<? super String, ? extends R> f10) {
        return f10.apply(this);
    }

    @Override
    public String toString() {
        return this;
    }

    @Override
    public IntStream chars() {
        return StreamSupport.intStream(isLatin1() ? new StringLatin1.CharsSpliterator(this.value, 1024) : new StringUTF16.CharsSpliterator(this.value, 1024), false);
    }

    @Override
    public IntStream codePoints() {
        return StreamSupport.intStream(isLatin1() ? new StringLatin1.CharsSpliterator(this.value, 1024) : new StringUTF16.CodePointsSpliterator(this.value, 1024), false);
    }

    public char[] toCharArray() {
        return isLatin1() ? StringLatin1.toChars(this.value) : StringUTF16.toChars(this.value);
    }

    public static String format(String format, Object... args) {
        return new Formatter().format(format, args).toString();
    }

    public static String format(Locale l10, String format, Object... args) {
        return new Formatter(l10).format(format, args).toString();
    }

    public String formatted(Object... args) {
        return new Formatter().format(this, args).toString();
    }

    public static String valueOf(Object obj) {
        return obj == null ? "null" : obj.toString();
    }

    public static String valueOf(char[] data) {
        return new String(data);
    }

    public static String valueOf(char[] data, int offset, int count) {
        return new String(data, offset, count);
    }

    public static String copyValueOf(char[] data, int offset, int count) {
        return new String(data, offset, count);
    }

    public static String copyValueOf(char[] data) {
        return new String(data);
    }

    public static String valueOf(boolean b10) {
        return b10 ? "true" : "false";
    }

    public static String valueOf(char c10) {
        if (COMPACT_STRINGS && StringLatin1.canEncode(c10)) {
            return new String(StringLatin1.toBytes(c10), (byte) 0);
        }
        return new String(StringUTF16.toBytes(c10), (byte) 1);
    }

    public static String valueOf(int i10) {
        return Integer.toString(i10);
    }

    public static String valueOf(long l10) {
        return Long.toString(l10);
    }

    public static String valueOf(float f10) {
        return Float.toString(f10);
    }

    public static String valueOf(double d10) {
        return Double.toString(d10);
    }

    public String repeat(int count) {
        if (count < 0) {
            throw new IllegalArgumentException("count is negative: " + count);
        }
        if (count == 1) {
            return this;
        }
        int len = this.value.length;
        if (len == 0 || count == 0) {
            return "";
        }
        if (Integer.MAX_VALUE / count < len) {
            throw new OutOfMemoryError("Required length exceeds implementation limit");
        }
        if (len == 1) {
            byte[] single = new byte[count];
            Arrays.fill(single, this.value[0]);
            return new String(single, this.coder);
        }
        int limit = len * count;
        byte[] multiple = new byte[limit];
        System.arraycopy(this.value, 0, multiple, 0, len);
        repeatCopyRest(multiple, 0, limit, len);
        return new String(multiple, this.coder);
    }

    public static void repeatCopyRest(byte[] buffer, int offset, int limit, int copied) {
        while (copied < limit - copied) {
            System.arraycopy(buffer, offset, buffer, offset + copied, copied);
            copied <<= 1;
        }
        System.arraycopy(buffer, offset, buffer, offset + copied, limit - copied);
    }

    public void getBytes(byte[] dst, int dstBegin, byte coder) {
        if (coder() == coder) {
            System.arraycopy(this.value, 0, dst, dstBegin << coder, this.value.length);
        } else {
            StringLatin1.inflate(this.value, 0, dst, dstBegin, this.value.length);
        }
    }

    public void getBytes(byte[] dst, int srcPos, int dstBegin, byte coder, int length) {
        if (coder() == coder) {
            System.arraycopy(this.value, srcPos << coder, dst, dstBegin << coder, length << coder);
        } else {
            StringLatin1.inflate(this.value, srcPos, dst, dstBegin, length);
        }
    }

    private String(char[] value, int off, int len, Void sig) {
        if (len == 0) {
            this.value = "".value;
            this.coder = "".coder;
        } else if (COMPACT_STRINGS) {
            byte[] val = StringUTF16.compress(value, off, len);
            this.coder = StringUTF16.coderFromArrayLen(val, len);
            this.value = val;
        } else {
            this.coder = (byte) 1;
            this.value = StringUTF16.toBytes(value, off, len);
        }
    }

    public String(AbstractStringBuilder asb, Void sig) {
        byte[] val = asb.getValue();
        int length = asb.length();
        if (asb.isLatin1()) {
            this.coder = (byte) 0;
            this.value = Arrays.copyOfRange(val, 0, length);
        } else if (COMPACT_STRINGS && asb.maybeLatin1) {
            this.value = StringUTF16.compress(val, 0, length);
            this.coder = StringUTF16.coderFromArrayLen(this.value, length);
        } else {
            this.coder = (byte) 1;
            this.value = Arrays.copyOfRange(val, 0, length << 1);
        }
    }

    public String(byte[] value, byte coder) {
        this.value = value;
        this.coder = coder;
    }

    public byte coder() {
        if (COMPACT_STRINGS) {
            return this.coder;
        }
        return (byte) 1;
    }

    public byte[] value() {
        return this.value;
    }

    public boolean isLatin1() {
        return COMPACT_STRINGS && this.coder == 0;
    }

    public static void checkIndex(int index, int length) {
        Preconditions.checkIndex(index, length, Preconditions.SIOOBE_FORMATTER);
    }

    public static void checkOffset(int offset, int length) {
        Preconditions.checkFromToIndex(offset, length, length, Preconditions.SIOOBE_FORMATTER);
    }

    public static int checkBoundsOffCount(int offset, int count, int length) {
        return Preconditions.checkFromIndexSize(offset, count, length, Preconditions.SIOOBE_FORMATTER);
    }

    public static void checkBoundsBeginEnd(int begin, int end, int length) {
        Preconditions.checkFromToIndex(begin, end, length, Preconditions.SIOOBE_FORMATTER);
    }

    public static String valueOfCodePoint(int codePoint) {
        if (COMPACT_STRINGS && StringLatin1.canEncode(codePoint)) {
            return new String(StringLatin1.toBytes((char) codePoint), (byte) 0);
        }
        if (Character.isBmpCodePoint(codePoint)) {
            return new String(StringUTF16.toBytes((char) codePoint), (byte) 1);
        }
        if (Character.isSupplementaryCodePoint(codePoint)) {
            return new String(StringUTF16.toBytesSupplementary(codePoint), (byte) 1);
        }
        throw new IllegalArgumentException(format("Not a valid Unicode code point: 0x%X", Integer.valueOf(codePoint)));
    }

    @Override
    public Optional<String> describeConstable() {
        return Optional.of(this);
    }

    @Override
    public String resolveConstantDesc(MethodHandles.Lookup lookup) {
        return this;
    }
}
