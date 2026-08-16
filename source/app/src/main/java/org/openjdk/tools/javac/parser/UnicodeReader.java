package org.openjdk.tools.javac.parser;

import ag.C3629k;
import java.nio.CharBuffer;
import java.util.Arrays;
import org.eclipse.jdt.internal.core.JavaElement;
import org.openjdk.tools.javac.file.JavacFileManager;
import org.openjdk.tools.javac.util.ArrayUtils;
import org.openjdk.tools.javac.util.Log;
import org.openjdk.tools.javac.util.Name;
import org.openjdk.tools.javac.util.Names;

public class UnicodeReader {
    static final boolean surrogatesSupported = surrogatesSupported();
    protected int bp;
    protected char[] buf;
    protected final int buflen;

    protected char f103289ch;
    protected Log log;
    protected Names names;
    protected char[] sbuf;
    protected int sp;
    protected int unicodeConversionBp;

    public UnicodeReader(ScannerFactory scannerFactory, CharBuffer charBuffer) {
        this(scannerFactory, JavacFileManager.toArray(charBuffer), charBuffer.limit());
    }

    private static boolean surrogatesSupported() {
        try {
            Character.isHighSurrogate('a');
            return true;
        } catch (NoSuchMethodError unused) {
            return false;
        }
    }

    public String chars() {
        return new String(this.sbuf, 0, this.sp);
    }

    public void convertUnicode() {
        int i10;
        int i11;
        char c10;
        int i12;
        if (this.f103289ch == '\\') {
            int i13 = this.unicodeConversionBp;
            int i14 = this.bp;
            if (i13 != i14) {
                int i15 = i14 + 1;
                this.bp = i15;
                char c11 = this.buf[i15];
                this.f103289ch = c11;
                if (c11 != 'u') {
                    this.bp = i14;
                    this.f103289ch = JavaElement.JEM_ESCAPE;
                    return;
                }
                do {
                    i10 = this.bp;
                    i11 = i10 + 1;
                    this.bp = i11;
                    c10 = this.buf[i11];
                    this.f103289ch = c10;
                } while (c10 == 'u');
                int i16 = i10 + 4;
                if (i16 < this.buflen) {
                    int digit = digit(i11, 16);
                    int i17 = digit;
                    while (true) {
                        i12 = this.bp;
                        if (i12 >= i16 || digit < 0) {
                            break;
                        }
                        int i18 = i12 + 1;
                        this.bp = i18;
                        this.f103289ch = this.buf[i18];
                        digit = digit(i18, 16);
                        i17 = (i17 << 4) + digit;
                    }
                    if (digit >= 0) {
                        this.f103289ch = (char) i17;
                        this.unicodeConversionBp = i12;
                        return;
                    }
                }
                this.log.error(this.bp, "illegal.unicode.esc", new Object[0]);
            }
        }
    }

    public int digit(int i10, int i11) {
        char c10 = this.f103289ch;
        if ('0' <= c10 && c10 <= '9') {
            return Character.digit(c10, i11);
        }
        int peekSurrogates = peekSurrogates();
        int digit = peekSurrogates >= 0 ? Character.digit(peekSurrogates, i11) : Character.digit(c10, i11);
        if (digit >= 0 && c10 > '\u007f') {
            this.log.error(i10 + 1, "illegal.nonascii.digit", new Object[0]);
            if (peekSurrogates >= 0) {
                scanChar();
            }
            this.f103289ch = C3629k.f32105a.charAt(digit);
        }
        return digit;
    }

    public char[] getRawCharacters() {
        int i10 = this.buflen;
        char[] cArr = new char[i10];
        System.arraycopy(this.buf, 0, cArr, 0, i10);
        return cArr;
    }

    public boolean isUnicode() {
        return this.unicodeConversionBp == this.bp;
    }

    public Name name() {
        return this.names.fromChars(this.sbuf, 0, this.sp);
    }

    public char peekChar() {
        return this.buf[this.bp + 1];
    }

    public int peekSurrogates() {
        if (!surrogatesSupported || !Character.isHighSurrogate(this.f103289ch)) {
            return -1;
        }
        char c10 = this.f103289ch;
        int i10 = this.bp;
        scanChar();
        char c11 = this.f103289ch;
        this.f103289ch = c10;
        this.bp = i10;
        if (Character.isLowSurrogate(c11)) {
            return Character.toCodePoint(c10, c11);
        }
        return -1;
    }

    public void putChar(char c10, boolean z10) {
        char[] ensureCapacity = ArrayUtils.ensureCapacity(this.sbuf, this.sp);
        this.sbuf = ensureCapacity;
        int i10 = this.sp;
        this.sp = i10 + 1;
        ensureCapacity[i10] = c10;
        if (z10) {
            scanChar();
        }
    }

    public void scanChar() {
        int i10 = this.bp;
        if (i10 < this.buflen) {
            char[] cArr = this.buf;
            int i11 = i10 + 1;
            this.bp = i11;
            char c10 = cArr[i11];
            this.f103289ch = c10;
            if (c10 == '\\') {
                convertUnicode();
            }
        }
    }

    public void scanCommentChar() {
        scanChar();
        if (this.f103289ch == '\\') {
            if (peekChar() != '\\' || isUnicode()) {
                convertUnicode();
            } else {
                skipChar();
            }
        }
    }

    public void skipChar() {
        this.bp++;
    }

    public UnicodeReader(ScannerFactory scannerFactory, char[] cArr, int i10) {
        this.unicodeConversionBp = -1;
        this.sbuf = new char[128];
        this.log = scannerFactory.log;
        this.names = scannerFactory.names;
        if (i10 == cArr.length) {
            if (cArr.length <= 0 || !Character.isWhitespace(cArr[cArr.length - 1])) {
                cArr = Arrays.copyOf(cArr, i10 + 1);
            } else {
                i10--;
            }
        }
        this.buf = cArr;
        this.buflen = i10;
        cArr[i10] = 26;
        this.bp = -1;
        scanChar();
    }

    public char[] getRawCharacters(int i10, int i11) {
        int i12 = i11 - i10;
        char[] cArr = new char[i12];
        System.arraycopy(this.buf, i10, cArr, 0, i12);
        return cArr;
    }

    public void putChar(char c10) {
        putChar(c10, false);
    }

    public void putChar(boolean z10) {
        putChar(this.f103289ch, z10);
    }
}
