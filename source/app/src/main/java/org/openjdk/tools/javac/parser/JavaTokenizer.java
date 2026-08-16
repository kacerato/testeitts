package org.openjdk.tools.javac.parser;

import java.nio.CharBuffer;
import org.apache.commons.lang3.CharUtils;
import org.eclipse.jdt.core.dom.TagElement;
import org.eclipse.jdt.internal.core.JavaElement;
import org.openjdk.tools.javac.code.Source;
import org.openjdk.tools.javac.parser.Tokens;
import org.openjdk.tools.javac.util.Assert;
import org.openjdk.tools.javac.util.List;
import org.openjdk.tools.javac.util.Log;
import org.openjdk.tools.javac.util.Name;
import org.openjdk.tools.javac.util.Position;

public class JavaTokenizer {
    private static final boolean hexFloatsWork = hexFloatsWork();
    private static final boolean scannerDebug = false;
    private boolean allowBinaryLiterals;
    private boolean allowUnderscoresInLiterals;
    protected int errPos;
    protected ScannerFactory fac;
    private final Log log;
    protected Name name;
    protected int radix;
    protected UnicodeReader reader;
    private Source source;

    protected Tokens.TokenKind f103285tk;
    private final Tokens tokens;

    public static class AnonymousClass1 {
        static final int[] $SwitchMap$com$sun$tools$javac$parser$Tokens$Token$Tag;

        static {
            int[] iArr = new int[Tokens.Token.Tag.values().length];
            $SwitchMap$com$sun$tools$javac$parser$Tokens$Token$Tag = iArr;
            try {
                iArr[Tokens.Token.Tag.DEFAULT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$parser$Tokens$Token$Tag[Tokens.Token.Tag.NAMED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$parser$Tokens$Token$Tag[Tokens.Token.Tag.STRING.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                $SwitchMap$com$sun$tools$javac$parser$Tokens$Token$Tag[Tokens.Token.Tag.NUMERIC.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
        }
    }

    public static class BasicComment<U extends UnicodeReader> implements Tokens.Comment {
        U comment_reader;
        Tokens.Comment.CommentStyle cs;
        protected boolean deprecatedFlag = false;
        protected boolean scanned = false;

        public BasicComment(U u10, Tokens.Comment.CommentStyle commentStyle) {
            this.comment_reader = u10;
            this.cs = commentStyle;
        }

        @Override
        public int getSourcePos(int i10) {
            return -1;
        }

        @Override
        public Tokens.Comment.CommentStyle getStyle() {
            return this.cs;
        }

        @Override
        public String getText() {
            return null;
        }

        @Override
        public boolean isDeprecated() {
            if (!this.scanned && this.cs == Tokens.Comment.CommentStyle.JAVADOC) {
                scanDocComment();
            }
            return this.deprecatedFlag;
        }

        /* JADX WARN: Code restructure failed: missing block: B:44:0x0086, code lost:
        
            r1 = r9.comment_reader;
         */
        /* JADX WARN: Code restructure failed: missing block: B:45:0x008c, code lost:
        
            if (r1.bp >= r1.buflen) goto L110;
         */
        /* JADX WARN: Code restructure failed: missing block: B:47:0x0094, code lost:
        
            if (java.lang.Character.isWhitespace(r1.f103289ch) == false) goto L44;
         */
        /* JADX WARN: Code restructure failed: missing block: B:48:0x0096, code lost:
        
            r9.deprecatedFlag = true;
         */
        /* JADX WARN: Code restructure failed: missing block: B:49:0x0099, code lost:
        
            r1 = r9.comment_reader;
         */
        /* JADX WARN: Code restructure failed: missing block: B:50:0x009d, code lost:
        
            if (r1.f103289ch != '*') goto L110;
         */
        /* JADX WARN: Code restructure failed: missing block: B:51:0x009f, code lost:
        
            r1.scanCommentChar();
         */
        /* JADX WARN: Code restructure failed: missing block: B:52:0x00a6, code lost:
        
            if (r9.comment_reader.f103289ch != '/') goto L110;
         */
        /* JADX WARN: Code restructure failed: missing block: B:54:0x00a8, code lost:
        
            r9.deprecatedFlag = true;
         */
        /* JADX WARN: Code restructure failed: missing block: B:55:0x00aa, code lost:
        
            r9.scanned = true;
         */
        /* JADX WARN: Code restructure failed: missing block: B:56:0x00ac, code lost:
        
            return;
         */
        /* JADX WARN: Code restructure failed: missing block: B:84:0x00dc, code lost:
        
            r9.comment_reader.scanCommentChar();
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void scanDocComment() {
            char c10;
            char c11;
            try {
                U u10 = this.comment_reader;
                int i10 = u10.bp + 3;
                u10.bp = i10;
                u10.f103289ch = u10.buf[i10];
                while (true) {
                    U u11 = this.comment_reader;
                    if (u11.bp >= u11.buflen) {
                        this.scanned = true;
                        return;
                    }
                    while (true) {
                        U u12 = this.comment_reader;
                        if (u12.bp >= u12.buflen || !((c11 = u12.f103289ch) == ' ' || c11 == '\t' || c11 == '\f')) {
                            break;
                        } else {
                            u12.scanCommentChar();
                        }
                    }
                    do {
                        U u13 = this.comment_reader;
                        if (u13.bp >= u13.buflen || u13.f103289ch != '*') {
                            while (true) {
                                U u14 = this.comment_reader;
                                if (u14.bp >= u14.buflen || !((c10 = u14.f103289ch) == ' ' || c10 == '\t' || c10 == '\f')) {
                                    break;
                                } else {
                                    u14.scanCommentChar();
                                }
                            }
                            if (!this.deprecatedFlag) {
                                int i11 = 0;
                                while (true) {
                                    U u15 = this.comment_reader;
                                    if (u15.bp >= u15.buflen || u15.f103289ch != TagElement.TAG_DEPRECATED.charAt(i11)) {
                                        break;
                                    }
                                    this.comment_reader.scanCommentChar();
                                    i11++;
                                    if (i11 == 11) {
                                        break;
                                    }
                                }
                            }
                            while (true) {
                                U u16 = this.comment_reader;
                                if (u16.bp >= u16.buflen) {
                                    break;
                                }
                                char c12 = u16.f103289ch;
                                if (c12 == '\n') {
                                    break;
                                }
                                if (c12 == '\r') {
                                    u16.scanCommentChar();
                                    if (this.comment_reader.f103289ch != '\n') {
                                    }
                                } else if (c12 != '*') {
                                    u16.scanCommentChar();
                                } else {
                                    u16.scanCommentChar();
                                    if (this.comment_reader.f103289ch == '/') {
                                        this.scanned = true;
                                        return;
                                    }
                                }
                            }
                        } else {
                            u13.scanCommentChar();
                        }
                    } while (this.comment_reader.f103289ch != '/');
                    this.scanned = true;
                    return;
                }
            } catch (Throwable th2) {
                this.scanned = true;
                throw th2;
            }
        }
    }

    public JavaTokenizer(ScannerFactory scannerFactory, CharBuffer charBuffer) {
        this(scannerFactory, new UnicodeReader(scannerFactory, charBuffer));
    }

    private static boolean hexFloatsWork() {
        try {
            Float.valueOf("0x1.0p1");
            return true;
        } catch (NumberFormatException unused) {
            return false;
        }
    }

    private boolean isSpecial(char c10) {
        if (c10 == '!' || c10 == '-' || c10 == ':' || c10 == '^' || c10 == '|' || c10 == '~' || c10 == '%' || c10 == '&' || c10 == '*' || c10 == '+') {
            return true;
        }
        switch (c10) {
            case '<':
            case '=':
            case '>':
            case '?':
            case '@':
                return true;
            default:
                return false;
        }
    }

    private void scanDigits(int i10, int i11) {
        char c10;
        int i12;
        while (true) {
            UnicodeReader unicodeReader = this.reader;
            if (unicodeReader.f103289ch != '_') {
                unicodeReader.putChar(false);
            } else if (!this.allowUnderscoresInLiterals) {
                lexError(i10, "unsupported.underscore.lit", this.source.name);
                this.allowUnderscoresInLiterals = true;
            }
            UnicodeReader unicodeReader2 = this.reader;
            c10 = unicodeReader2.f103289ch;
            i12 = unicodeReader2.bp;
            unicodeReader2.scanChar();
            if (this.reader.digit(i10, i11) < 0 && this.reader.f103289ch != '_') {
                break;
            }
        }
        if (c10 == '_') {
            lexError(i12, "illegal.underscore", new Object[0]);
        }
    }

    private void scanFraction(int i10) {
        skipIllegalUnderscores();
        if (this.reader.digit(i10, 10) >= 0) {
            scanDigits(i10, 10);
        }
        UnicodeReader unicodeReader = this.reader;
        int i11 = unicodeReader.sp;
        char c10 = unicodeReader.f103289ch;
        if (c10 == 'e' || c10 == 'E') {
            unicodeReader.putChar(true);
            skipIllegalUnderscores();
            UnicodeReader unicodeReader2 = this.reader;
            char c11 = unicodeReader2.f103289ch;
            if (c11 == '+' || c11 == '-') {
                unicodeReader2.putChar(true);
            }
            skipIllegalUnderscores();
            if (this.reader.digit(i10, 10) >= 0) {
                scanDigits(i10, 10);
            } else {
                lexError(i10, "malformed.fp.lit", new Object[0]);
                this.reader.sp = i11;
            }
        }
    }

    private void scanFractionAndSuffix(int i10) {
        this.radix = 10;
        scanFraction(i10);
        UnicodeReader unicodeReader = this.reader;
        char c10 = unicodeReader.f103289ch;
        if (c10 == 'f' || c10 == 'F') {
            unicodeReader.putChar(true);
            this.f103285tk = Tokens.TokenKind.FLOATLITERAL;
        } else {
            if (c10 == 'd' || c10 == 'D') {
                unicodeReader.putChar(true);
            }
            this.f103285tk = Tokens.TokenKind.DOUBLELITERAL;
        }
    }

    private void scanHexExponentAndSuffix(int i10) {
        UnicodeReader unicodeReader = this.reader;
        char c10 = unicodeReader.f103289ch;
        if (c10 == 'p' || c10 == 'P') {
            unicodeReader.putChar(true);
            skipIllegalUnderscores();
            UnicodeReader unicodeReader2 = this.reader;
            char c11 = unicodeReader2.f103289ch;
            if (c11 == '+' || c11 == '-') {
                unicodeReader2.putChar(true);
            }
            skipIllegalUnderscores();
            if (this.reader.digit(i10, 10) >= 0) {
                scanDigits(i10, 10);
                if (!hexFloatsWork) {
                    lexError(i10, "unsupported.cross.fp.lit", new Object[0]);
                }
            } else {
                lexError(i10, "malformed.fp.lit", new Object[0]);
            }
        } else {
            lexError(i10, "malformed.fp.lit", new Object[0]);
        }
        UnicodeReader unicodeReader3 = this.reader;
        char c12 = unicodeReader3.f103289ch;
        if (c12 == 'f' || c12 == 'F') {
            unicodeReader3.putChar(true);
            this.f103285tk = Tokens.TokenKind.FLOATLITERAL;
            this.radix = 16;
        } else {
            if (c12 == 'd' || c12 == 'D') {
                unicodeReader3.putChar(true);
            }
            this.f103285tk = Tokens.TokenKind.DOUBLELITERAL;
            this.radix = 16;
        }
    }

    private void scanHexFractionAndSuffix(int i10, boolean z10) {
        this.radix = 16;
        Assert.check(this.reader.f103289ch == '.');
        this.reader.putChar(true);
        skipIllegalUnderscores();
        if (this.reader.digit(i10, 16) >= 0) {
            scanDigits(i10, 16);
            z10 = true;
        }
        if (z10) {
            scanHexExponentAndSuffix(i10);
        } else {
            lexError(i10, "invalid.hex.number", new Object[0]);
        }
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:24:0x001c. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:25:0x001f. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:26:0x0022. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:8:0x0016. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:9:0x0019. Please report as an issue. */
    private void scanIdent() {
        boolean z10;
        this.reader.putChar(true);
        while (true) {
            UnicodeReader unicodeReader = this.reader;
            char c10 = unicodeReader.f103289ch;
            if (c10 != '$' && c10 != '_') {
                if (c10 != '\u007f') {
                    switch (c10) {
                    }
                    switch (c10) {
                        case 14:
                        case 15:
                        case 16:
                        case 17:
                        case 18:
                        case 19:
                        case 20:
                        case 21:
                        case 22:
                        case 23:
                        case 24:
                        case 25:
                        case 27:
                            break;
                        case 26:
                            if (unicodeReader.bp >= unicodeReader.buflen) {
                                Name name = unicodeReader.name();
                                this.name = name;
                                this.f103285tk = this.tokens.lookupKind(name);
                                return;
                            }
                            unicodeReader.scanChar();
                        default:
                            switch (c10) {
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
                                    break;
                                default:
                                    switch (c10) {
                                        case 'A':
                                        case 'B':
                                        case 'C':
                                        case 'D':
                                        case 'E':
                                        case 'F':
                                        case 'G':
                                        case 'H':
                                        case 'I':
                                        case 'J':
                                        case 'K':
                                        case 'L':
                                        case 'M':
                                        case 'N':
                                        case 'O':
                                        case 'P':
                                        case 'Q':
                                        case 'R':
                                        case 'S':
                                        case 'T':
                                        case 'U':
                                        case 'V':
                                        case 'W':
                                        case 'X':
                                        case 'Y':
                                        case 'Z':
                                            break;
                                        default:
                                            switch (c10) {
                                                case 'a':
                                                case 'b':
                                                case 'c':
                                                case 'd':
                                                case 'e':
                                                case 'f':
                                                case 'g':
                                                case 'h':
                                                case 'i':
                                                case 'j':
                                                case 'k':
                                                case 'l':
                                                case 'm':
                                                case 'n':
                                                case 'o':
                                                case 'p':
                                                case 'q':
                                                case 'r':
                                                case 's':
                                                case 't':
                                                case 'u':
                                                case 'v':
                                                case 'w':
                                                case 'x':
                                                case 'y':
                                                case 'z':
                                                    break;
                                                default:
                                                    if (c10 < '\u0080') {
                                                        z10 = false;
                                                    } else if (Character.isIdentifierIgnorable(c10)) {
                                                        this.reader.scanChar();
                                                    } else {
                                                        int peekSurrogates = this.reader.peekSurrogates();
                                                        if (peekSurrogates >= 0) {
                                                            z10 = Character.isJavaIdentifierPart(peekSurrogates);
                                                            if (z10) {
                                                                this.reader.putChar(true);
                                                            }
                                                        } else {
                                                            z10 = Character.isJavaIdentifierPart(this.reader.f103289ch);
                                                        }
                                                    }
                                                    if (!z10) {
                                                        Name name2 = this.reader.name();
                                                        this.name = name2;
                                                        this.f103285tk = this.tokens.lookupKind(name2);
                                                        return;
                                                    }
                                                    break;
                                            }
                                    }
                            }
                    }
                }
                unicodeReader.scanChar();
            }
            this.reader.putChar(true);
        }
    }

    private void scanLitChar(int i10) {
        UnicodeReader unicodeReader;
        char c10;
        UnicodeReader unicodeReader2 = this.reader;
        if (unicodeReader2.f103289ch != '\\') {
            if (unicodeReader2.bp != unicodeReader2.buflen) {
                unicodeReader2.putChar(true);
                return;
            }
            return;
        }
        if (unicodeReader2.peekChar() == '\\' && !this.reader.isUnicode()) {
            this.reader.skipChar();
            this.reader.putChar(JavaElement.JEM_ESCAPE, true);
            return;
        }
        this.reader.scanChar();
        UnicodeReader unicodeReader3 = this.reader;
        char c11 = unicodeReader3.f103289ch;
        if (c11 == '\"') {
            unicodeReader3.putChar('\"', true);
            return;
        }
        if (c11 == '\'') {
            unicodeReader3.putChar(JavaElement.JEM_MODULAR_CLASSFILE, true);
            return;
        }
        if (c11 == '\\') {
            unicodeReader3.putChar(JavaElement.JEM_ESCAPE, true);
            return;
        }
        if (c11 == 'b') {
            unicodeReader3.putChar('\b', true);
            return;
        }
        if (c11 == 'f') {
            unicodeReader3.putChar('\f', true);
            return;
        }
        if (c11 == 'n') {
            unicodeReader3.putChar('\n', true);
            return;
        }
        if (c11 == 'r') {
            unicodeReader3.putChar(CharUtils.CR, true);
            return;
        }
        if (c11 == 't') {
            unicodeReader3.putChar('\t', true);
            return;
        }
        switch (c11) {
            case '0':
            case '1':
            case '2':
            case '3':
            case '4':
            case '5':
            case '6':
            case '7':
                int digit = unicodeReader3.digit(i10, 8);
                this.reader.scanChar();
                UnicodeReader unicodeReader4 = this.reader;
                char c12 = unicodeReader4.f103289ch;
                if ('0' <= c12 && c12 <= '7') {
                    digit = (digit * 8) + unicodeReader4.digit(i10, 8);
                    this.reader.scanChar();
                    if (c11 <= '3' && '0' <= (c10 = (unicodeReader = this.reader).f103289ch) && c10 <= '7') {
                        digit = (digit * 8) + unicodeReader.digit(i10, 8);
                        this.reader.scanChar();
                    }
                }
                this.reader.putChar((char) digit);
                return;
            default:
                lexError(unicodeReader3.bp, "illegal.esc.char", new Object[0]);
                return;
        }
    }

    private void scanNumber(int i10, int i11) {
        char c10;
        char c11;
        this.radix = i11;
        int i12 = i11 == 8 ? 10 : i11;
        int digit = this.reader.digit(i10, Math.max(10, i12));
        boolean z10 = digit >= 0;
        boolean z11 = digit >= 0 && digit < i12;
        if (z10) {
            scanDigits(i10, i12);
        }
        if (i11 == 16 && this.reader.f103289ch == '.') {
            scanHexFractionAndSuffix(i10, z10);
            return;
        }
        if (z10 && i11 == 16 && ((c11 = this.reader.f103289ch) == 'p' || c11 == 'P')) {
            scanHexExponentAndSuffix(i10);
            return;
        }
        if (i12 == 10) {
            UnicodeReader unicodeReader = this.reader;
            if (unicodeReader.f103289ch == '.') {
                unicodeReader.putChar(true);
                scanFractionAndSuffix(i10);
                return;
            }
        }
        if (i12 == 10 && ((c10 = this.reader.f103289ch) == 'e' || c10 == 'E' || c10 == 'f' || c10 == 'F' || c10 == 'd' || c10 == 'D')) {
            scanFractionAndSuffix(i10);
            return;
        }
        if (!z11) {
            if (i11 == 2) {
                lexError(i10, "invalid.binary.number", new Object[0]);
            } else if (i11 == 16) {
                lexError(i10, "invalid.hex.number", new Object[0]);
            }
        }
        UnicodeReader unicodeReader2 = this.reader;
        char c12 = unicodeReader2.f103289ch;
        if (c12 != 'l' && c12 != 'L') {
            this.f103285tk = Tokens.TokenKind.INTLITERAL;
        } else {
            unicodeReader2.scanChar();
            this.f103285tk = Tokens.TokenKind.LONGLITERAL;
        }
    }

    private void scanOperator() {
        do {
            this.reader.putChar(false);
            Tokens.TokenKind lookupKind = this.tokens.lookupKind(this.reader.name());
            if (lookupKind == Tokens.TokenKind.IDENTIFIER) {
                UnicodeReader unicodeReader = this.reader;
                unicodeReader.sp--;
                return;
            } else {
                this.f103285tk = lookupKind;
                this.reader.scanChar();
            }
        } while (isSpecial(this.reader.f103289ch));
    }

    private void skipIllegalUnderscores() {
        UnicodeReader unicodeReader = this.reader;
        if (unicodeReader.f103289ch != '_') {
            return;
        }
        lexError(unicodeReader.bp, "illegal.underscore", new Object[0]);
        while (true) {
            UnicodeReader unicodeReader2 = this.reader;
            if (unicodeReader2.f103289ch != '_') {
                return;
            } else {
                unicodeReader2.scanChar();
            }
        }
    }

    public List<Tokens.Comment> addComment(List<Tokens.Comment> list, Tokens.Comment comment) {
        return list == null ? List.of(comment) : list.prepend(comment);
    }

    public int errPos() {
        return this.errPos;
    }

    public Position.LineMap getLineMap() {
        return Position.makeLineMap(this.reader.getRawCharacters(), this.reader.buflen, false);
    }

    public void lexError(int i10, String str, Object... objArr) {
        this.log.error(i10, str, objArr);
        this.f103285tk = Tokens.TokenKind.ERROR;
        this.errPos = i10;
    }

    public Tokens.Comment processComment(int i10, int i11, Tokens.Comment.CommentStyle commentStyle) {
        char[] rawCharacters = this.reader.getRawCharacters(i10, i11);
        return new BasicComment(new UnicodeReader(this.fac, rawCharacters, rawCharacters.length), commentStyle);
    }

    public void processLineTerminator(int i10, int i11) {
    }

    public void processWhiteSpace(int i10, int i11) {
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:166:0x02d9, code lost:
    
        scanIdent();
     */
    /* JADX WARN: Code restructure failed: missing block: B:241:0x02f7, code lost:
    
        r12.f103285tk = org.openjdk.tools.javac.parser.Tokens.TokenKind.STRINGLITERAL;
        r2.scanChar();
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:52:0x0042. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:53:0x0045. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:122:0x01a0 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:125:0x000a A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:66:0x01cd  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x01ed  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x01fe A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Tokens.Token readToken() {
        int i10;
        UnicodeReader unicodeReader;
        int peekSurrogates;
        char c10;
        String format;
        UnicodeReader unicodeReader2;
        int i11;
        Tokens.Comment.CommentStyle commentStyle;
        boolean z10;
        UnicodeReader unicodeReader3;
        boolean z11 = false;
        this.reader.sp = 0;
        List<Tokens.Comment> list = null;
        this.name = null;
        this.radix = 0;
        while (true) {
            UnicodeReader unicodeReader4 = this.reader;
            i10 = unicodeReader4.bp;
            char c11 = unicodeReader4.f103289ch;
            if (c11 != '\t') {
                if (c11 == '\n') {
                    unicodeReader4.scanChar();
                    processLineTerminator(i10, this.reader.bp);
                } else if (c11 != '\f') {
                    if (c11 == '\r') {
                        unicodeReader4.scanChar();
                        UnicodeReader unicodeReader5 = this.reader;
                        if (unicodeReader5.f103289ch == '\n') {
                            unicodeReader5.scanChar();
                        }
                        processLineTerminator(i10, this.reader.bp);
                    } else if (c11 != ' ') {
                        if (c11 == '\"') {
                            unicodeReader4.scanChar();
                            while (true) {
                                UnicodeReader unicodeReader6 = this.reader;
                                char c12 = unicodeReader6.f103289ch;
                                if (c12 != '\"' && c12 != '\r' && c12 != '\n' && unicodeReader6.bp < unicodeReader6.buflen) {
                                    scanLitChar(i10);
                                }
                            }
                            lexError(i10, "unclosed.str.lit", new Object[0]);
                        } else if (c11 != '$') {
                            if (c11 == ',') {
                                unicodeReader4.scanChar();
                                this.f103285tk = Tokens.TokenKind.COMMA;
                            } else if (c11 == ';') {
                                unicodeReader4.scanChar();
                                this.f103285tk = Tokens.TokenKind.SEMI;
                            } else if (c11 == ']') {
                                unicodeReader4.scanChar();
                                this.f103285tk = Tokens.TokenKind.RBRACKET;
                            } else if (c11 != '_') {
                                if (c11 != '}') {
                                    switch (c11) {
                                        case '\'':
                                            unicodeReader4.scanChar();
                                            char c13 = this.reader.f103289ch;
                                            if (c13 != '\'') {
                                                if (c13 == '\r' || c13 == '\n') {
                                                    lexError(i10, "illegal.line.end.in.char.lit", new Object[0]);
                                                }
                                                scanLitChar(i10);
                                                UnicodeReader unicodeReader7 = this.reader;
                                                if (unicodeReader7.f103289ch != '\'') {
                                                    lexError(i10, "unclosed.char.lit", new Object[0]);
                                                    break;
                                                } else {
                                                    unicodeReader7.scanChar();
                                                    this.f103285tk = Tokens.TokenKind.CHARLITERAL;
                                                    break;
                                                }
                                            } else {
                                                lexError(i10, "empty.char.lit", new Object[0]);
                                                this.reader.scanChar();
                                                break;
                                            }
                                        case '(':
                                            unicodeReader4.scanChar();
                                            this.f103285tk = Tokens.TokenKind.LPAREN;
                                            break;
                                        case ')':
                                            unicodeReader4.scanChar();
                                            this.f103285tk = Tokens.TokenKind.RPAREN;
                                            break;
                                        default:
                                            switch (c11) {
                                                case '.':
                                                    unicodeReader4.scanChar();
                                                    if (this.reader.digit(i10, 10) < 0) {
                                                        UnicodeReader unicodeReader8 = this.reader;
                                                        if (unicodeReader8.f103289ch != '.') {
                                                            this.f103285tk = Tokens.TokenKind.DOT;
                                                            break;
                                                        } else {
                                                            int i12 = unicodeReader8.bp;
                                                            unicodeReader8.putChar('.');
                                                            this.reader.putChar('.', true);
                                                            UnicodeReader unicodeReader9 = this.reader;
                                                            if (unicodeReader9.f103289ch != '.') {
                                                                lexError(i12, "illegal.dot", new Object[0]);
                                                                break;
                                                            } else {
                                                                unicodeReader9.scanChar();
                                                                this.reader.putChar('.');
                                                                this.f103285tk = Tokens.TokenKind.ELLIPSIS;
                                                                break;
                                                            }
                                                        }
                                                    } else {
                                                        this.reader.putChar('.');
                                                        scanFractionAndSuffix(i10);
                                                        break;
                                                    }
                                                case '/':
                                                    unicodeReader4.scanChar();
                                                    UnicodeReader unicodeReader10 = this.reader;
                                                    char c14 = unicodeReader10.f103289ch;
                                                    if (c14 != '/') {
                                                        if (c14 != '*') {
                                                            if (c14 != '=') {
                                                                this.f103285tk = Tokens.TokenKind.SLASH;
                                                                break;
                                                            } else {
                                                                this.f103285tk = Tokens.TokenKind.SLASHEQ;
                                                                unicodeReader10.scanChar();
                                                                break;
                                                            }
                                                        } else {
                                                            unicodeReader10.scanChar();
                                                            UnicodeReader unicodeReader11 = this.reader;
                                                            if (unicodeReader11.f103289ch == '*') {
                                                                commentStyle = Tokens.Comment.CommentStyle.JAVADOC;
                                                                unicodeReader11.scanCommentChar();
                                                                if (this.reader.f103289ch == '/') {
                                                                    z10 = true;
                                                                    while (!z10) {
                                                                        UnicodeReader unicodeReader12 = this.reader;
                                                                        if (unicodeReader12.bp < unicodeReader12.buflen) {
                                                                            if (unicodeReader12.f103289ch == '*') {
                                                                                unicodeReader12.scanChar();
                                                                                if (this.reader.f103289ch == '/') {
                                                                                }
                                                                            } else {
                                                                                unicodeReader12.scanCommentChar();
                                                                            }
                                                                        }
                                                                        unicodeReader3 = this.reader;
                                                                        if (unicodeReader3.f103289ch != '/') {
                                                                            lexError(i10, "unclosed.comment", new Object[0]);
                                                                            break;
                                                                        } else {
                                                                            unicodeReader3.scanChar();
                                                                            list = addComment(list, processComment(i10, this.reader.bp, commentStyle));
                                                                            break;
                                                                        }
                                                                    }
                                                                    unicodeReader3 = this.reader;
                                                                    if (unicodeReader3.f103289ch != '/') {
                                                                    }
                                                                }
                                                            } else {
                                                                commentStyle = Tokens.Comment.CommentStyle.BLOCK;
                                                            }
                                                            z10 = false;
                                                            while (!z10) {
                                                            }
                                                            unicodeReader3 = this.reader;
                                                            if (unicodeReader3.f103289ch != '/') {
                                                            }
                                                        }
                                                    } else {
                                                        do {
                                                            this.reader.scanCommentChar();
                                                            unicodeReader2 = this.reader;
                                                            char c15 = unicodeReader2.f103289ch;
                                                            if (c15 != '\r' && c15 != '\n') {
                                                            }
                                                            i11 = unicodeReader2.bp;
                                                            if (i11 < unicodeReader2.buflen) {
                                                                break;
                                                            } else {
                                                                list = addComment(list, processComment(i10, i11, Tokens.Comment.CommentStyle.LINE));
                                                                break;
                                                            }
                                                        } while (unicodeReader2.bp < unicodeReader2.buflen);
                                                        i11 = unicodeReader2.bp;
                                                        if (i11 < unicodeReader2.buflen) {
                                                        }
                                                    }
                                                    break;
                                                case '0':
                                                    unicodeReader4.scanChar();
                                                    UnicodeReader unicodeReader13 = this.reader;
                                                    char c16 = unicodeReader13.f103289ch;
                                                    if (c16 != 'x' && c16 != 'X') {
                                                        if (c16 != 'b' && c16 != 'B') {
                                                            unicodeReader13.putChar('0');
                                                            UnicodeReader unicodeReader14 = this.reader;
                                                            if (unicodeReader14.f103289ch == '_') {
                                                                int i13 = unicodeReader14.bp;
                                                                do {
                                                                    this.reader.scanChar();
                                                                    unicodeReader = this.reader;
                                                                } while (unicodeReader.f103289ch == '_');
                                                                if (unicodeReader.digit(i10, 10) < 0) {
                                                                    lexError(i13, "illegal.underscore", new Object[0]);
                                                                }
                                                            }
                                                            scanNumber(i10, 8);
                                                            break;
                                                        } else {
                                                            if (!this.allowBinaryLiterals) {
                                                                lexError(i10, "unsupported.binary.lit", this.source.name);
                                                                this.allowBinaryLiterals = true;
                                                            }
                                                            this.reader.scanChar();
                                                            skipIllegalUnderscores();
                                                            scanNumber(i10, 2);
                                                            break;
                                                        }
                                                    } else {
                                                        unicodeReader13.scanChar();
                                                        skipIllegalUnderscores();
                                                        scanNumber(i10, 16);
                                                        break;
                                                    }
                                                case '1':
                                                case '2':
                                                case '3':
                                                case '4':
                                                case '5':
                                                case '6':
                                                case '7':
                                                case '8':
                                                case '9':
                                                    scanNumber(i10, 10);
                                                    break;
                                                default:
                                                    switch (c11) {
                                                        case 'A':
                                                        case 'B':
                                                        case 'C':
                                                        case 'D':
                                                        case 'E':
                                                        case 'F':
                                                        case 'G':
                                                        case 'H':
                                                        case 'I':
                                                        case 'J':
                                                        case 'K':
                                                        case 'L':
                                                        case 'M':
                                                        case 'N':
                                                        case 'O':
                                                        case 'P':
                                                        case 'Q':
                                                        case 'R':
                                                        case 'S':
                                                        case 'T':
                                                        case 'U':
                                                        case 'V':
                                                        case 'W':
                                                        case 'X':
                                                        case 'Y':
                                                        case 'Z':
                                                            break;
                                                        case '[':
                                                            unicodeReader4.scanChar();
                                                            this.f103285tk = Tokens.TokenKind.LBRACKET;
                                                            break;
                                                        default:
                                                            switch (c11) {
                                                                case 'a':
                                                                case 'b':
                                                                case 'c':
                                                                case 'd':
                                                                case 'e':
                                                                case 'f':
                                                                case 'g':
                                                                case 'h':
                                                                case 'i':
                                                                case 'j':
                                                                case 'k':
                                                                case 'l':
                                                                case 'm':
                                                                case 'n':
                                                                case 'o':
                                                                case 'p':
                                                                case 'q':
                                                                case 'r':
                                                                case 's':
                                                                case 't':
                                                                case 'u':
                                                                case 'v':
                                                                case 'w':
                                                                case 'x':
                                                                case 'y':
                                                                case 'z':
                                                                    break;
                                                                case '{':
                                                                    unicodeReader4.scanChar();
                                                                    this.f103285tk = Tokens.TokenKind.LBRACE;
                                                                    break;
                                                                default:
                                                                    if (!isSpecial(c11)) {
                                                                        UnicodeReader unicodeReader15 = this.reader;
                                                                        if (unicodeReader15.f103289ch < '\u0080') {
                                                                            peekSurrogates = -1;
                                                                        } else {
                                                                            peekSurrogates = unicodeReader15.peekSurrogates();
                                                                            if (peekSurrogates >= 0) {
                                                                                z11 = Character.isJavaIdentifierStart(peekSurrogates);
                                                                                if (z11) {
                                                                                    this.reader.putChar(true);
                                                                                }
                                                                            } else {
                                                                                z11 = Character.isJavaIdentifierStart(this.reader.f103289ch);
                                                                            }
                                                                        }
                                                                        if (!z11) {
                                                                            if (this.reader.digit(i10, 10) < 0) {
                                                                                UnicodeReader unicodeReader16 = this.reader;
                                                                                int i14 = unicodeReader16.bp;
                                                                                int i15 = unicodeReader16.buflen;
                                                                                if (i14 != i15 && ((c10 = unicodeReader16.f103289ch) != 26 || i14 + 1 != i15)) {
                                                                                    if (peekSurrogates >= 0) {
                                                                                        unicodeReader16.scanChar();
                                                                                        format = String.format("\\u%04x\\u%04x", Integer.valueOf(c10), Integer.valueOf(this.reader.f103289ch));
                                                                                    } else {
                                                                                        format = (' ' >= c10 || c10 >= '\u007f') ? String.format("\\u%04x", Integer.valueOf(c10)) : String.format("%s", Character.valueOf(c10));
                                                                                    }
                                                                                    lexError(i10, "illegal.char", format);
                                                                                    this.reader.scanChar();
                                                                                    break;
                                                                                } else {
                                                                                    this.f103285tk = Tokens.TokenKind.EOF;
                                                                                    i10 = i15;
                                                                                    break;
                                                                                }
                                                                            } else {
                                                                                scanNumber(i10, 10);
                                                                                break;
                                                                            }
                                                                        } else {
                                                                            scanIdent();
                                                                            break;
                                                                        }
                                                                    } else {
                                                                        scanOperator();
                                                                        break;
                                                                    }
                                                                    break;
                                                            }
                                                    }
                                            }
                                    }
                                } else {
                                    unicodeReader4.scanChar();
                                    this.f103285tk = Tokens.TokenKind.RBRACE;
                                }
                            }
                        }
                    }
                }
            }
            while (true) {
                this.reader.scanChar();
                UnicodeReader unicodeReader17 = this.reader;
                char c17 = unicodeReader17.f103289ch;
                if (c17 != ' ' && c17 != '\t' && c17 != '\f') {
                    processWhiteSpace(i10, unicodeReader17.bp);
                }
            }
        }
        int i16 = i10;
        int i17 = this.reader.bp;
        int i18 = AnonymousClass1.$SwitchMap$com$sun$tools$javac$parser$Tokens$Token$Tag[this.f103285tk.tag.ordinal()];
        if (i18 == 1) {
            return new Tokens.Token(this.f103285tk, i16, i17, list);
        }
        if (i18 == 2) {
            return new Tokens.NamedToken(this.f103285tk, i16, i17, this.name, list);
        }
        if (i18 == 3) {
            return new Tokens.StringToken(this.f103285tk, i16, i17, this.reader.chars(), list);
        }
        if (i18 == 4) {
            return new Tokens.NumericToken(this.f103285tk, i16, i17, this.reader.chars(), this.radix, list);
        }
        throw new AssertionError();
    }

    public JavaTokenizer(ScannerFactory scannerFactory, char[] cArr, int i10) {
        this(scannerFactory, new UnicodeReader(scannerFactory, cArr, i10));
    }

    public void errPos(int i10) {
        this.errPos = i10;
    }

    public JavaTokenizer(ScannerFactory scannerFactory, UnicodeReader unicodeReader) {
        this.errPos = -1;
        this.fac = scannerFactory;
        this.log = scannerFactory.log;
        this.tokens = scannerFactory.tokens;
        Source source = scannerFactory.source;
        this.source = source;
        this.reader = unicodeReader;
        this.allowBinaryLiterals = source.allowBinaryLiterals();
        this.allowUnderscoresInLiterals = this.source.allowUnderscoresInLiterals();
    }
}
