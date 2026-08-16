package org.openjdk.tools.javac.parser;

import java.nio.CharBuffer;
import java.util.regex.Pattern;
import org.apache.commons.lang3.CharUtils;
import org.eclipse.jdt.internal.core.JavaElement;
import org.openjdk.tools.javac.parser.JavaTokenizer;
import org.openjdk.tools.javac.parser.Tokens;
import org.openjdk.tools.javac.util.Position;

public class JavadocTokenizer extends JavaTokenizer {

    public static class DocReader extends UnicodeReader {
        int col;
        private int doubleBackslashBp;
        int[] pbuf;
        int pp;
        int startPos;

        public DocReader(ScannerFactory scannerFactory, char[] cArr, int i10, int i11) {
            super(scannerFactory, cArr, i10);
            this.pbuf = new int[128];
            this.pp = 0;
            this.doubleBackslashBp = -1;
            this.startPos = i11;
        }

        @Override
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
                    int i16 = this.col;
                    this.col = i16 + 1;
                    if (c11 != 'u') {
                        this.bp = i14;
                        this.f103289ch = JavaElement.JEM_ESCAPE;
                        this.col = i16;
                        return;
                    }
                    do {
                        i10 = this.bp;
                        i11 = i10 + 1;
                        this.bp = i11;
                        c10 = this.buf[i11];
                        this.f103289ch = c10;
                        this.col++;
                    } while (c10 == 'u');
                    int i17 = i10 + 4;
                    if (i17 < this.buflen) {
                        int digit = digit(i11, 16);
                        int i18 = digit;
                        while (true) {
                            i12 = this.bp;
                            if (i12 >= i17 || digit < 0) {
                                break;
                            }
                            int i19 = i12 + 1;
                            this.bp = i19;
                            this.f103289ch = this.buf[i19];
                            this.col++;
                            digit = digit(i19, 16);
                            i18 = (i18 << 4) + digit;
                        }
                        if (digit >= 0) {
                            this.f103289ch = (char) i18;
                            this.unicodeConversionBp = i12;
                        }
                    }
                }
            }
        }

        public boolean isDoubleBackslash() {
            return this.doubleBackslashBp == this.bp;
        }

        /* JADX WARN: Code restructure failed: missing block: B:4:0x0017, code lost:
        
            if ((r1 - r2[r0 - 2]) != ((r5.startPos + r5.bp) - r2[r0 - 1])) goto L6;
         */
        @Override
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void putChar(char c10, boolean z10) {
            int i10 = this.pp;
            if (i10 != 0) {
                int i11 = this.sp;
                int[] iArr = this.pbuf;
            }
            int i12 = i10 + 1;
            int[] iArr2 = this.pbuf;
            if (i12 >= iArr2.length) {
                int[] iArr3 = new int[iArr2.length * 2];
                System.arraycopy(iArr2, 0, iArr3, 0, iArr2.length);
                this.pbuf = iArr3;
            }
            int[] iArr4 = this.pbuf;
            int i13 = this.pp;
            iArr4[i13] = this.sp;
            iArr4[i13 + 1] = this.startPos + this.bp;
            this.pp = i13 + 2;
            super.putChar(c10, z10);
        }

        @Override
        public void scanChar() {
            int i10 = this.bp;
            int i11 = i10 + 1;
            this.bp = i11;
            char[] cArr = this.buf;
            char c10 = cArr[i11];
            this.f103289ch = c10;
            if (c10 == '\t') {
                this.col = ((this.col / 8) * 8) + 8;
                return;
            }
            if (c10 == '\n') {
                if (i11 == 0 || cArr[i10] != '\r') {
                    this.col = 0;
                    return;
                }
                return;
            }
            if (c10 == '\r') {
                this.col = 0;
            } else if (c10 != '\\') {
                this.col++;
            } else {
                this.col++;
                convertUnicode();
            }
        }

        @Override
        public void scanCommentChar() {
            scanChar();
            if (this.f103289ch == '\\') {
                if (peekChar() != '\\' || isUnicode()) {
                    convertUnicode();
                    return;
                }
                int i10 = this.bp + 1;
                this.bp = i10;
                this.col++;
                this.doubleBackslashBp = i10;
            }
        }
    }

    public static class JavadocComment extends JavaTokenizer.BasicComment<DocReader> {
        private static final Pattern DEPRECATED_PATTERN = Pattern.compile("(?sm).*^\\s*@deprecated( |$).*");
        private String docComment;
        private int[] docPosns;

        public JavadocComment(DocReader docReader, Tokens.Comment.CommentStyle commentStyle) {
            super(docReader, commentStyle);
            this.docComment = null;
            this.docPosns = null;
        }

        @Override
        public int getSourcePos(int i10) {
            if (i10 == -1) {
                return -1;
            }
            if (i10 < 0 || i10 > this.docComment.length()) {
                throw new StringIndexOutOfBoundsException(String.valueOf(i10));
            }
            int[] iArr = this.docPosns;
            if (iArr == null) {
                return -1;
            }
            int length = iArr.length;
            int i11 = 0;
            while (i11 < length - 2) {
                int i12 = ((i11 + length) / 4) * 2;
                int[] iArr2 = this.docPosns;
                int i13 = iArr2[i12];
                if (i13 < i10) {
                    i11 = i12;
                } else {
                    if (i13 == i10) {
                        return iArr2[i12 + 1];
                    }
                    length = i12;
                }
            }
            int[] iArr3 = this.docPosns;
            return iArr3[i11 + 1] + (i10 - iArr3[i11]);
        }

        @Override
        public String getText() {
            if (!this.scanned && this.cs == Tokens.Comment.CommentStyle.JAVADOC) {
                scanDocComment();
            }
            return this.docComment;
        }

        /* JADX WARN: Code restructure failed: missing block: B:112:0x01ad, code lost:
        
            r0 = r16.comment_reader;
            ((org.openjdk.tools.javac.parser.JavadocTokenizer.DocReader) r0).putChar(((org.openjdk.tools.javac.parser.JavadocTokenizer.DocReader) r0).f103289ch, false);
            ((org.openjdk.tools.javac.parser.JavadocTokenizer.DocReader) r16.comment_reader).scanCommentChar();
         */
        /* JADX WARN: Removed duplicated region for block: B:121:0x01d8 A[SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:132:0x01df A[EDGE_INSN: B:132:0x01df->B:52:0x01df BREAK  A[LOOP:1: B:29:0x0099->B:111:0x01da], SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:31:0x00a7 A[Catch: all -> 0x002f, TryCatch #0 {all -> 0x002f, blocks: (B:3:0x0004, B:4:0x0012, B:6:0x0022, B:8:0x0029, B:10:0x0032, B:13:0x0042, B:15:0x0049, B:22:0x005e, B:24:0x006f, B:26:0x0076, B:29:0x0099, B:31:0x00a7, B:32:0x00b0, B:34:0x00c4, B:38:0x00d0, B:127:0x00d9, B:129:0x00e4, B:43:0x00fb, B:45:0x0102, B:48:0x0112, B:74:0x0125, B:76:0x0133, B:103:0x014a, B:96:0x015c, B:98:0x016b, B:99:0x0172, B:85:0x017a, B:87:0x0189, B:100:0x01c3, B:107:0x018f, B:109:0x019d, B:112:0x01ad, B:115:0x01a3, B:126:0x011c, B:52:0x01df, B:54:0x01e8, B:57:0x01f0, B:59:0x01fb, B:62:0x01fe, B:72:0x0222, B:133:0x007d, B:135:0x0084, B:137:0x0092), top: B:2:0x0004 }] */
        /* JADX WARN: Removed duplicated region for block: B:54:0x01e8 A[Catch: all -> 0x002f, TryCatch #0 {all -> 0x002f, blocks: (B:3:0x0004, B:4:0x0012, B:6:0x0022, B:8:0x0029, B:10:0x0032, B:13:0x0042, B:15:0x0049, B:22:0x005e, B:24:0x006f, B:26:0x0076, B:29:0x0099, B:31:0x00a7, B:32:0x00b0, B:34:0x00c4, B:38:0x00d0, B:127:0x00d9, B:129:0x00e4, B:43:0x00fb, B:45:0x0102, B:48:0x0112, B:74:0x0125, B:76:0x0133, B:103:0x014a, B:96:0x015c, B:98:0x016b, B:99:0x0172, B:85:0x017a, B:87:0x0189, B:100:0x01c3, B:107:0x018f, B:109:0x019d, B:112:0x01ad, B:115:0x01a3, B:126:0x011c, B:52:0x01df, B:54:0x01e8, B:57:0x01f0, B:59:0x01fb, B:62:0x01fe, B:72:0x0222, B:133:0x007d, B:135:0x0084, B:137:0x0092), top: B:2:0x0004 }] */
        /* JADX WARN: Removed duplicated region for block: B:72:0x0222 A[Catch: all -> 0x002f, TRY_LEAVE, TryCatch #0 {all -> 0x002f, blocks: (B:3:0x0004, B:4:0x0012, B:6:0x0022, B:8:0x0029, B:10:0x0032, B:13:0x0042, B:15:0x0049, B:22:0x005e, B:24:0x006f, B:26:0x0076, B:29:0x0099, B:31:0x00a7, B:32:0x00b0, B:34:0x00c4, B:38:0x00d0, B:127:0x00d9, B:129:0x00e4, B:43:0x00fb, B:45:0x0102, B:48:0x0112, B:74:0x0125, B:76:0x0133, B:103:0x014a, B:96:0x015c, B:98:0x016b, B:99:0x0172, B:85:0x017a, B:87:0x0189, B:100:0x01c3, B:107:0x018f, B:109:0x019d, B:112:0x01ad, B:115:0x01a3, B:126:0x011c, B:52:0x01df, B:54:0x01e8, B:57:0x01f0, B:59:0x01fb, B:62:0x01fe, B:72:0x0222, B:133:0x007d, B:135:0x0084, B:137:0x0092), top: B:2:0x0004 }] */
        /* JADX WARN: Removed duplicated region for block: B:76:0x0133 A[Catch: all -> 0x002f, TryCatch #0 {all -> 0x002f, blocks: (B:3:0x0004, B:4:0x0012, B:6:0x0022, B:8:0x0029, B:10:0x0032, B:13:0x0042, B:15:0x0049, B:22:0x005e, B:24:0x006f, B:26:0x0076, B:29:0x0099, B:31:0x00a7, B:32:0x00b0, B:34:0x00c4, B:38:0x00d0, B:127:0x00d9, B:129:0x00e4, B:43:0x00fb, B:45:0x0102, B:48:0x0112, B:74:0x0125, B:76:0x0133, B:103:0x014a, B:96:0x015c, B:98:0x016b, B:99:0x0172, B:85:0x017a, B:87:0x0189, B:100:0x01c3, B:107:0x018f, B:109:0x019d, B:112:0x01ad, B:115:0x01a3, B:126:0x011c, B:52:0x01df, B:54:0x01e8, B:57:0x01f0, B:59:0x01fb, B:62:0x01fe, B:72:0x0222, B:133:0x007d, B:135:0x0084, B:137:0x0092), top: B:2:0x0004 }] */
        @Override
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public void scanDocComment() {
            U u10;
            boolean z10;
            U u11;
            U u12;
            String str;
            U u13;
            U u14;
            char c10;
            U u15;
            try {
                ((DocReader) this.comment_reader).scanCommentChar();
                ((DocReader) this.comment_reader).scanCommentChar();
                while (true) {
                    u10 = this.comment_reader;
                    if (((DocReader) u10).bp >= ((DocReader) u10).buflen || ((DocReader) u10).f103289ch != '*') {
                        break;
                    } else {
                        ((DocReader) u10).scanCommentChar();
                    }
                }
                if (((DocReader) u10).bp < ((DocReader) u10).buflen && ((DocReader) u10).f103289ch == '/') {
                    this.docComment = "";
                    this.scanned = true;
                    this.comment_reader = null;
                    if (DEPRECATED_PATTERN.matcher("").matches()) {
                        this.deprecatedFlag = true;
                        return;
                    }
                    return;
                }
                if (((DocReader) u10).bp < ((DocReader) u10).buflen) {
                    if (((DocReader) u10).f103289ch == '\n') {
                        ((DocReader) u10).scanCommentChar();
                    } else if (((DocReader) u10).f103289ch == '\r') {
                        ((DocReader) u10).scanCommentChar();
                        U u16 = this.comment_reader;
                        if (((DocReader) u16).f103289ch == '\n') {
                            ((DocReader) u16).scanCommentChar();
                        }
                    }
                    z10 = false;
                    loop1: while (true) {
                        u11 = this.comment_reader;
                        if (((DocReader) u11).bp < ((DocReader) u11).buflen) {
                            break;
                        }
                        int i10 = ((DocReader) u11).bp;
                        char c11 = ((DocReader) u11).f103289ch;
                        while (true) {
                            u13 = this.comment_reader;
                            if (((DocReader) u13).bp >= ((DocReader) u13).buflen) {
                                break;
                            }
                            char c12 = ((DocReader) u13).f103289ch;
                            if (c12 == '\t') {
                                ((DocReader) u13).col = (((((DocReader) u13).col - 1) / 8) * 8) + 8;
                                ((DocReader) u13).scanCommentChar();
                            } else if (c12 == '\f') {
                                ((DocReader) u13).col = 0;
                                ((DocReader) u13).scanCommentChar();
                            } else if (c12 != ' ') {
                                break;
                            } else {
                                ((DocReader) u13).scanCommentChar();
                            }
                        }
                        if (((DocReader) u13).f103289ch != '*') {
                            if (!z10) {
                                ((DocReader) u13).bp = i10;
                                ((DocReader) u13).f103289ch = c11;
                            }
                            while (true) {
                                u14 = this.comment_reader;
                                if (((DocReader) u14).bp < ((DocReader) u14).buflen) {
                                    c10 = CharUtils.CR;
                                    break;
                                }
                                char c13 = ((DocReader) u14).f103289ch;
                                if (c13 != '\t') {
                                    if (c13 == '\n') {
                                        c10 = CharUtils.CR;
                                        break;
                                    }
                                    if (c13 == '\f') {
                                        c10 = CharUtils.CR;
                                        ((DocReader) u14).scanCommentChar();
                                        break;
                                    }
                                    c10 = CharUtils.CR;
                                    if (c13 == '\r') {
                                        ((DocReader) u14).scanCommentChar();
                                        U u17 = this.comment_reader;
                                        if (((DocReader) u17).f103289ch != '\n') {
                                            ((DocReader) u17).putChar('\n', false);
                                        }
                                    } else if (c13 != ' ') {
                                        if (c13 == '*') {
                                            ((DocReader) u14).scanCommentChar();
                                            U u18 = this.comment_reader;
                                            if (((DocReader) u18).f103289ch == '/') {
                                                break loop1;
                                            } else {
                                                ((DocReader) u18).putChar('*', false);
                                            }
                                        } else if (c13 != '\\') {
                                            ((DocReader) u14).putChar(((DocReader) u14).f103289ch, false);
                                            ((DocReader) this.comment_reader).scanCommentChar();
                                        } else {
                                            ((DocReader) u14).putChar(JavaElement.JEM_ESCAPE, false);
                                            if (((DocReader) this.comment_reader).isDoubleBackslash()) {
                                                ((DocReader) this.comment_reader).putChar(JavaElement.JEM_ESCAPE, false);
                                            }
                                            ((DocReader) this.comment_reader).scanCommentChar();
                                        }
                                    }
                                }
                                U u19 = this.comment_reader;
                                ((DocReader) u19).putChar(((DocReader) u19).f103289ch, false);
                                ((DocReader) this.comment_reader).scanCommentChar();
                            }
                            z10 = false;
                        }
                        do {
                            ((DocReader) this.comment_reader).scanCommentChar();
                            u15 = this.comment_reader;
                        } while (((DocReader) u15).f103289ch == '*');
                        if (((DocReader) u15).f103289ch == '/') {
                            break;
                        }
                        while (true) {
                            u14 = this.comment_reader;
                            if (((DocReader) u14).bp < ((DocReader) u14).buflen) {
                            }
                        }
                        z10 = false;
                    }
                    u12 = this.comment_reader;
                    if (((DocReader) u12).sp <= 0) {
                        int i11 = ((DocReader) u12).sp - 1;
                        while (i11 > -1 && ((DocReader) this.comment_reader).sbuf[i11] == '*') {
                            i11--;
                        }
                        U u20 = this.comment_reader;
                        ((DocReader) u20).sp = i11 + 1;
                        this.docComment = ((DocReader) u20).chars();
                        U u21 = this.comment_reader;
                        int[] iArr = new int[((DocReader) u21).pp];
                        this.docPosns = iArr;
                        System.arraycopy(((DocReader) u21).pbuf, 0, iArr, 0, iArr.length);
                    } else {
                        this.docComment = "";
                    }
                    this.scanned = true;
                    this.comment_reader = null;
                    str = this.docComment;
                    if (str == null && DEPRECATED_PATTERN.matcher(str).matches()) {
                        this.deprecatedFlag = true;
                        return;
                    }
                }
                z10 = true;
                loop1: while (true) {
                    u11 = this.comment_reader;
                    if (((DocReader) u11).bp < ((DocReader) u11).buflen) {
                    }
                    z10 = false;
                }
                u12 = this.comment_reader;
                if (((DocReader) u12).sp <= 0) {
                }
                this.scanned = true;
                this.comment_reader = null;
                str = this.docComment;
                if (str == null) {
                }
            } catch (Throwable th2) {
                this.scanned = true;
                this.comment_reader = null;
                String str2 = this.docComment;
                if (str2 != null && DEPRECATED_PATTERN.matcher(str2).matches()) {
                    this.deprecatedFlag = true;
                }
                throw th2;
            }
        }
    }

    public JavadocTokenizer(ScannerFactory scannerFactory, CharBuffer charBuffer) {
        super(scannerFactory, charBuffer);
    }

    @Override
    public Position.LineMap getLineMap() {
        char[] rawCharacters = this.reader.getRawCharacters();
        return Position.makeLineMap(rawCharacters, rawCharacters.length, true);
    }

    @Override
    public Tokens.Comment processComment(int i10, int i11, Tokens.Comment.CommentStyle commentStyle) {
        char[] rawCharacters = this.reader.getRawCharacters(i10, i11);
        return new JavadocComment(new DocReader(this.fac, rawCharacters, rawCharacters.length, i10), commentStyle);
    }

    public JavadocTokenizer(ScannerFactory scannerFactory, char[] cArr, int i10) {
        super(scannerFactory, cArr, i10);
    }
}
