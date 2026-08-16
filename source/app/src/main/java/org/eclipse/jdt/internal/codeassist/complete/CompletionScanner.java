package org.eclipse.jdt.internal.codeassist.complete;

import org.apache.commons.lang3.CharUtils;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.core.compiler.InvalidInputException;
import org.eclipse.jdt.internal.compiler.classfmt.ClassFileConstants;
import org.eclipse.jdt.internal.compiler.parser.Scanner;
import org.eclipse.jdt.internal.compiler.parser.ScannerHelper;
import org.eclipse.jdt.internal.core.JavaElement;

public class CompletionScanner extends Scanner {
    public static final char[] EmptyCompletionIdentifier = new char[0];
    public int completedIdentifierEnd;
    public int completedIdentifierStart;
    public char[] completionIdentifier;
    public int cursorLocation;
    public int endOfEmptyToken;
    public int unicodeCharSize;

    public CompletionScanner(long j10) {
        super(false, false, false, j10, null, null, true);
        this.endOfEmptyToken = -1;
        this.completedIdentifierStart = 0;
        this.completedIdentifierEnd = -1;
    }

    @Override
    public char[] getCurrentIdentifierSource() {
        int i10;
        if (this.completionIdentifier == null) {
            int i11 = this.cursorLocation;
            int i12 = this.startPosition;
            if (i11 < i12 && this.currentPosition == i12) {
                this.completedIdentifierStart = i12;
                this.completedIdentifierEnd = i12 - 1;
                char[] cArr = EmptyCompletionIdentifier;
                this.completionIdentifier = cArr;
                return cArr;
            }
            if (i11 + 1 >= i12 && i11 < (i10 = this.currentPosition)) {
                this.completedIdentifierStart = i12;
                this.completedIdentifierEnd = i10 - 1;
                if (this.withoutUnicodePtr != 0) {
                    int i13 = ((i11 + 1) - i12) - this.unicodeCharSize;
                    char[] cArr2 = this.withoutUnicodeBuffer;
                    char[] cArr3 = new char[i13];
                    this.completionIdentifier = cArr3;
                    System.arraycopy(cArr2, 1, cArr3, 0, i13);
                } else {
                    int i14 = (i11 + 1) - i12;
                    char[] cArr4 = this.source;
                    char[] cArr5 = new char[i14];
                    this.completionIdentifier = cArr5;
                    System.arraycopy(cArr4, i12, cArr5, 0, i14);
                }
                return this.completionIdentifier;
            }
        }
        return super.getCurrentIdentifierSource();
    }

    @Override
    public char[] getCurrentTokenSourceString() {
        int i10;
        if (this.completionIdentifier == null) {
            int i11 = this.cursorLocation;
            int i12 = i11 + 1;
            int i13 = this.startPosition;
            if (i12 >= i13 && i11 < (i10 = this.currentPosition)) {
                this.completedIdentifierStart = i13;
                this.completedIdentifierEnd = i10 - 1;
                if (this.withoutUnicodePtr != 0) {
                    int i14 = (i11 - i13) - this.unicodeCharSize;
                    char[] cArr = this.withoutUnicodeBuffer;
                    char[] cArr2 = new char[i14];
                    this.completionIdentifier = cArr2;
                    System.arraycopy(cArr, 2, cArr2, 0, i14);
                } else {
                    int i15 = i11 - i13;
                    char[] cArr3 = new char[i15];
                    this.completionIdentifier = cArr3;
                    System.arraycopy(this.source, i13 + 1, cArr3, 0, i15);
                }
                return this.completionIdentifier;
            }
        }
        return super.getCurrentTokenSourceString();
    }

    @Override
    public int getNextNotFakedToken() throws InvalidInputException {
        int i10 = this.nextToken;
        boolean z10 = false;
        if (i10 != 0) {
            this.nextToken = 0;
            z10 = true;
        } else {
            i10 = getNextToken();
        }
        int i11 = this.currentPosition;
        if (i11 != this.startPosition) {
            return i10;
        }
        if (!z10) {
            this.currentPosition = i11 + 1;
        }
        return -1;
    }

    /* JADX WARN: Code restructure failed: missing block: B:145:0x0343, code lost:
    
        throw new org.eclipse.jdt.core.compiler.InvalidInputException("Invalid_Unicode_Escape");
     */
    /* JADX WARN: Code restructure failed: missing block: B:156:0x035c, code lost:
    
        if (r3 != '\r') goto L306;
     */
    /* JADX WARN: Code restructure failed: missing block: B:157:0x035e, code lost:
    
        r3 = r17.eofPosition;
        r9 = r17.currentPosition;
     */
    /* JADX WARN: Code restructure failed: missing block: B:158:0x0362, code lost:
    
        if (r3 <= r9) goto L306;
     */
    /* JADX WARN: Code restructure failed: missing block: B:159:0x0364, code lost:
    
        r3 = r17.source;
        r11 = r3[r9];
     */
    /* JADX WARN: Code restructure failed: missing block: B:160:0x036a, code lost:
    
        if (r11 != '\n') goto L278;
     */
    /* JADX WARN: Code restructure failed: missing block: B:161:0x036c, code lost:
    
        r17.currentPosition = r9 + 1;
        r17.currentCharacter = '\n';
     */
    /* JADX WARN: Code restructure failed: missing block: B:162:0x0374, code lost:
    
        if (r11 != '\\') goto L306;
     */
    /* JADX WARN: Code restructure failed: missing block: B:163:0x0376, code lost:
    
        r11 = 'u';
     */
    /* JADX WARN: Code restructure failed: missing block: B:164:0x037c, code lost:
    
        if (r3[r9 + 1] != 'u') goto L306;
     */
    /* JADX WARN: Code restructure failed: missing block: B:165:0x037e, code lost:
    
        r9 = r9 + 2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:166:0x0380, code lost:
    
        r0 = r17.source[r9];
     */
    /* JADX WARN: Code restructure failed: missing block: B:167:0x0384, code lost:
    
        if (r0 == r11) goto L305;
     */
    /* JADX WARN: Code restructure failed: missing block: B:168:0x03db, code lost:
    
        r9 = r9 + 1;
        r11 = 'u';
     */
    /* JADX WARN: Code restructure failed: missing block: B:170:0x0386, code lost:
    
        r3 = r9 + 1;
        r0 = org.eclipse.jdt.internal.compiler.parser.ScannerHelper.getHexadecimalValue(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:171:0x038c, code lost:
    
        if (r0 > 15) goto L760;
     */
    /* JADX WARN: Code restructure failed: missing block: B:172:0x038e, code lost:
    
        if (r0 < 0) goto L761;
     */
    /* JADX WARN: Code restructure failed: missing block: B:173:0x0390, code lost:
    
        r12 = r9 + 2;
        r3 = org.eclipse.jdt.internal.compiler.parser.ScannerHelper.getHexadecimalValue(r17.source[r3]);
     */
    /* JADX WARN: Code restructure failed: missing block: B:174:0x039a, code lost:
    
        if (r3 > 15) goto L762;
     */
    /* JADX WARN: Code restructure failed: missing block: B:175:0x039c, code lost:
    
        if (r3 < 0) goto L763;
     */
    /* JADX WARN: Code restructure failed: missing block: B:176:0x039e, code lost:
    
        r13 = r9 + 3;
        r11 = org.eclipse.jdt.internal.compiler.parser.ScannerHelper.getHexadecimalValue(r17.source[r12]);
     */
    /* JADX WARN: Code restructure failed: missing block: B:177:0x03a8, code lost:
    
        if (r11 > 15) goto L764;
     */
    /* JADX WARN: Code restructure failed: missing block: B:178:0x03aa, code lost:
    
        if (r11 < 0) goto L765;
     */
    /* JADX WARN: Code restructure failed: missing block: B:179:0x03ac, code lost:
    
        r9 = r9 + 4;
        r12 = org.eclipse.jdt.internal.compiler.parser.ScannerHelper.getHexadecimalValue(r17.source[r13]);
     */
    /* JADX WARN: Code restructure failed: missing block: B:180:0x03b6, code lost:
    
        if (r12 > 15) goto L766;
     */
    /* JADX WARN: Code restructure failed: missing block: B:181:0x03b8, code lost:
    
        if (r12 < 0) goto L767;
     */
    /* JADX WARN: Code restructure failed: missing block: B:183:0x03c6, code lost:
    
        if (((char) ((((((r0 * 16) + r3) * 16) + r11) * 16) + r12)) != '\n') goto L299;
     */
    /* JADX WARN: Code restructure failed: missing block: B:184:0x03c8, code lost:
    
        r17.currentPosition = r9;
        r17.currentCharacter = '\n';
     */
    /* JADX WARN: Code restructure failed: missing block: B:185:0x03cc, code lost:
    
        r0 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:187:0x03ce, code lost:
    
        r3 = r9;
     */
    /* JADX WARN: Code restructure failed: missing block: B:188:0x03d3, code lost:
    
        r17.currentPosition = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:189:0x03da, code lost:
    
        throw new org.eclipse.jdt.core.compiler.InvalidInputException("Invalid_Unicode_Escape");
     */
    /* JADX WARN: Code restructure failed: missing block: B:192:0x03d0, code lost:
    
        r3 = r13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:195:0x03d2, code lost:
    
        r3 = r12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:199:0x03e0, code lost:
    
        recordComment(1001);
        r3 = r17.startPosition;
        r5 = r17.cursorLocation;
     */
    /* JADX WARN: Code restructure failed: missing block: B:200:0x03e7, code lost:
    
        if (r3 > r5) goto L313;
     */
    /* JADX WARN: Code restructure failed: missing block: B:202:0x03ec, code lost:
    
        if (r5 < (r17.currentPosition - 1)) goto L768;
     */
    /* JADX WARN: Code restructure failed: missing block: B:206:0x03f6, code lost:
    
        throw new org.eclipse.jdt.internal.codeassist.complete.InvalidCursorLocation(org.eclipse.jdt.internal.codeassist.complete.InvalidCursorLocation.NO_COMPLETION_INSIDE_COMMENT);
     */
    /* JADX WARN: Code restructure failed: missing block: B:208:0x03f9, code lost:
    
        if (r17.taskTags == null) goto L316;
     */
    /* JADX WARN: Code restructure failed: missing block: B:209:0x03fb, code lost:
    
        checkTaskTag(r3, r17.currentPosition);
     */
    /* JADX WARN: Code restructure failed: missing block: B:210:0x0400, code lost:
    
        r3 = r17.currentCharacter;
     */
    /* JADX WARN: Code restructure failed: missing block: B:211:0x0402, code lost:
    
        if (r3 == '\r') goto L320;
     */
    /* JADX WARN: Code restructure failed: missing block: B:213:0x0406, code lost:
    
        if (r3 != '\n') goto L325;
     */
    /* JADX WARN: Code restructure failed: missing block: B:215:0x0417, code lost:
    
        if (r17.tokenizeComments == false) goto L769;
     */
    /* JADX WARN: Code restructure failed: missing block: B:217:0x0419, code lost:
    
        return 1001;
     */
    /* JADX WARN: Code restructure failed: missing block: B:221:0x040a, code lost:
    
        if (r17.recordLineSeparator == false) goto L325;
     */
    /* JADX WARN: Code restructure failed: missing block: B:222:0x040c, code lost:
    
        if (r0 == false) goto L324;
     */
    /* JADX WARN: Code restructure failed: missing block: B:223:0x040e, code lost:
    
        pushUnicodeLineSeparator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:224:0x0412, code lost:
    
        pushLineSeparator();
     */
    /* JADX WARN: Code restructure failed: missing block: B:626:0x0799, code lost:
    
        r0 = r17.currentPosition - 5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:628:0x07a1, code lost:
    
        if (r17.source[r0] != '\\') goto L652;
     */
    /* JADX WARN: Code restructure failed: missing block: B:629:0x07f1, code lost:
    
        r0 = r0 - 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:631:0x07a3, code lost:
    
        r3 = r17.startPosition;
        r5 = r17.cursorLocation;
     */
    /* JADX WARN: Code restructure failed: missing block: B:632:0x07a7, code lost:
    
        if (r3 > r5) goto L632;
     */
    /* JADX WARN: Code restructure failed: missing block: B:634:0x07ac, code lost:
    
        if (r5 > (r17.currentPosition - 1)) goto L632;
     */
    /* JADX WARN: Code restructure failed: missing block: B:635:0x07ae, code lost:
    
        r17.currentPosition = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:636:0x07b0, code lost:
    
        return 46;
     */
    /* JADX WARN: Code restructure failed: missing block: B:637:0x07b1, code lost:
    
        r0 = r17.currentPosition;
        r3 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:639:0x07b6, code lost:
    
        if (r3 >= 50) goto L810;
     */
    /* JADX WARN: Code restructure failed: missing block: B:640:0x07b8, code lost:
    
        r5 = r17.currentPosition;
     */
    /* JADX WARN: Code restructure failed: missing block: B:641:0x07bc, code lost:
    
        if (r5 >= r17.eofPosition) goto L812;
     */
    /* JADX WARN: Code restructure failed: missing block: B:642:0x07be, code lost:
    
        r6 = r17.source;
        r9 = r5 + 1;
        r17.currentPosition = r9;
        r10 = r6[r5];
        r17.currentCharacter = r10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:643:0x07c8, code lost:
    
        if (r10 != '\\') goto L643;
     */
    /* JADX WARN: Code restructure failed: missing block: B:645:0x07ce, code lost:
    
        if (r6[r9] != 'u') goto L642;
     */
    /* JADX WARN: Code restructure failed: missing block: B:646:0x07d0, code lost:
    
        getNextUnicodeChar();
     */
    /* JADX WARN: Code restructure failed: missing block: B:648:0x07de, code lost:
    
        if (r17.currentCharacter == '\"') goto L813;
     */
    /* JADX WARN: Code restructure failed: missing block: B:649:0x07e0, code lost:
    
        r3 = r3 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:652:0x07ea, code lost:
    
        throw new org.eclipse.jdt.core.compiler.InvalidInputException("Invalid_Char_In_String");
     */
    /* JADX WARN: Code restructure failed: missing block: B:654:0x07da, code lost:
    
        if (r10 == '\n') goto L811;
     */
    /* JADX WARN: Code restructure failed: missing block: B:656:0x07eb, code lost:
    
        r17.currentPosition = r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:661:0x07ee, code lost:
    
        r17.currentPosition = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x02a7, code lost:
    
        throw new org.eclipse.jdt.core.compiler.InvalidInputException("Invalid_Unicode_Escape");
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:62:0x0111. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:24:0x008d  */
    /* JADX WARN: Removed duplicated region for block: B:596:0x0719 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:597:0x071a  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:591:0x0789 -> B:564:0x0708). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:594:0x0714 -> B:565:0x0715). Please report as a decompilation issue!!! */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public int getNextToken0() throws InvalidInputException {
        int i10;
        int i11;
        boolean z10;
        int i12;
        boolean z11;
        int i13;
        boolean z12;
        char c10;
        boolean isJavaIdentifierStart;
        boolean z13;
        boolean z14;
        int i14;
        char[] cArr;
        int i15;
        char c11;
        int i16 = 0;
        this.wasAcr = false;
        this.unicodeCharSize = 0;
        char c12 = '!';
        if (this.diet) {
            jumpOverMethodBody();
            this.diet = false;
            return this.currentPosition > this.eofPosition ? 61 : 33;
        }
        int i17 = 0;
        while (true) {
            try {
                this.withoutUnicodePtr = 0;
                i11 = this.currentPosition;
                z10 = false;
                do {
                    try {
                        int i18 = this.currentPosition;
                        this.startPosition = i18;
                        try {
                            cArr = this.source;
                            i15 = i18 + 1;
                            this.currentPosition = i15;
                            c11 = cArr[i18];
                            this.currentCharacter = c11;
                        } catch (IndexOutOfBoundsException unused) {
                            if (this.tokenizeWhiteSpace) {
                                int i19 = this.currentPosition;
                                if (i11 != i19 - 1) {
                                    this.currentPosition = i19 - 1;
                                    this.startPosition = i11;
                                    return 1000;
                                }
                            }
                            if (this.currentPosition > this.eofPosition) {
                                if (this.completionIdentifier != null || (i12 = this.startPosition) != this.cursorLocation + 1) {
                                    return 61;
                                }
                                this.currentPosition = i12;
                                return 22;
                            }
                        }
                        if (c11 == '\\' && cArr[i15] == 'u') {
                            z11 = jumpOverUnicodeWhiteSpace();
                            i13 = 6;
                            if (z11) {
                                z10 = true;
                            }
                            if (i11 != this.currentPosition && this.completionIdentifier == null) {
                                i14 = this.cursorLocation;
                                if (i11 <= i14 + 1 && i14 < this.startPosition && !ScannerHelper.isJavaIdentifierStart(this.complianceLevel, this.currentCharacter)) {
                                    this.currentPosition = this.startPosition;
                                    return 22;
                                }
                            }
                        }
                        char c13 = this.currentCharacter;
                        if ((c13 == '\r' || c13 == '\n') && this.recordLineSeparator) {
                            pushLineSeparator();
                        }
                        char c14 = this.currentCharacter;
                        z11 = c14 == ' ' || CharOperation.isWhitespace(c14);
                        i13 = 1;
                        if (z11) {
                        }
                        if (i11 != this.currentPosition) {
                            i14 = this.cursorLocation;
                            if (i11 <= i14 + 1) {
                                this.currentPosition = this.startPosition;
                                return 22;
                            }
                        }
                    } catch (IndexOutOfBoundsException unused2) {
                        i17 = i11;
                    }
                } while (z11);
            } catch (IndexOutOfBoundsException unused3) {
            }
            if (this.tokenizeWhiteSpace && z10) {
                this.currentPosition -= i13;
                this.startPosition = i11;
                return 1000;
            }
            int i20 = this.currentPosition;
            int i21 = this.eofPosition;
            if (i20 > i21) {
                if (this.completionIdentifier != null || this.startPosition != this.cursorLocation + 1) {
                    this.currentPosition = this.startPosition;
                    return 61;
                }
                this.eofPosition = this.source.length;
                do {
                } while (getNextCharAsJavaIdentifierPart());
                this.eofPosition = i21;
                this.endOfEmptyToken = this.currentPosition - 1;
                this.currentPosition = this.startPosition;
                return 22;
            }
            char c15 = this.currentCharacter;
            if (c15 == 26) {
                if (atEnd()) {
                    return 61;
                }
                throw new InvalidInputException("Ctrl-Z");
            }
            if (c15 == '[') {
                return 6;
            }
            if (c15 == c12) {
                return getNextChar('=') ? 20 : 63;
            }
            if (c15 == '\"') {
                try {
                    this.unicodeAsBackSlash = false;
                    char[] cArr2 = this.source;
                    int i22 = i20 + 1;
                    this.currentPosition = i22;
                    char c16 = cArr2[i20];
                    this.currentCharacter = c16;
                    if (c16 == '\\' && cArr2[i22] == 'u') {
                        getNextUnicodeChar();
                        z12 = true;
                        c10 = this.currentCharacter;
                        if (c10 == '\"') {
                        }
                    } else {
                        if (this.withoutUnicodePtr != 0) {
                            unicodeStore();
                        }
                        z12 = false;
                        c10 = this.currentCharacter;
                        if (c10 == '\"') {
                            if (c10 != '\n' && c10 != '\r') {
                                if (c10 == '\\') {
                                    if (this.unicodeAsBackSlash) {
                                        this.withoutUnicodePtr--;
                                        this.unicodeAsBackSlash = false;
                                        char[] cArr3 = this.source;
                                        int i23 = this.currentPosition;
                                        int i24 = i23 + 1;
                                        this.currentPosition = i24;
                                        char c17 = cArr3[i23];
                                        this.currentCharacter = c17;
                                        if (c17 == '\\' && cArr3[i24] == 'u') {
                                            getNextUnicodeChar();
                                            this.withoutUnicodePtr--;
                                        }
                                    } else {
                                        if (this.withoutUnicodePtr == 0) {
                                            unicodeInitializeBuffer(this.currentPosition - this.startPosition);
                                        }
                                        this.withoutUnicodePtr--;
                                        char[] cArr4 = this.source;
                                        int i25 = this.currentPosition;
                                        this.currentPosition = i25 + 1;
                                        this.currentCharacter = cArr4[i25];
                                    }
                                    scanEscapeCharacter();
                                    if (this.withoutUnicodePtr != 0) {
                                        unicodeStore();
                                    }
                                }
                                this.unicodeAsBackSlash = false;
                                char[] cArr5 = this.source;
                                int i26 = this.currentPosition;
                                int i27 = i26 + 1;
                                this.currentPosition = i27;
                                char c18 = cArr5[i26];
                                this.currentCharacter = c18;
                                if (c18 == '\\' && cArr5[i27] == 'u') {
                                    getNextUnicodeChar();
                                    z12 = true;
                                    c10 = this.currentCharacter;
                                    if (c10 == '\"') {
                                    }
                                } else {
                                    if (this.withoutUnicodePtr != 0) {
                                        unicodeStore();
                                    }
                                    z12 = false;
                                    c10 = this.currentCharacter;
                                    if (c10 == '\"') {
                                        return 46;
                                    }
                                }
                            }
                            int i28 = this.currentPosition;
                            this.currentPosition = i28 - 1;
                            int i29 = this.startPosition;
                            int i30 = this.cursorLocation;
                            if (i29 <= i30 && i30 <= i28 - 2) {
                                return 46;
                            }
                            throw new InvalidInputException("Invalid_Char_In_String");
                        }
                    }
                } catch (IndexOutOfBoundsException unused4) {
                    int i31 = this.currentPosition - 1;
                    this.currentPosition = i31;
                    int i32 = this.startPosition;
                    int i33 = this.cursorLocation;
                    if (i32 > i33 || i33 >= i31) {
                        throw new InvalidInputException("Unterminated_String");
                    }
                    return 46;
                } catch (InvalidInputException e10) {
                    if (e10.getMessage().equals("Invalid_Escape")) {
                        while (true) {
                            if (i16 < 50) {
                                int i34 = this.currentPosition;
                                if (i34 + i16 != this.eofPosition) {
                                    char[] cArr6 = this.source;
                                    if (cArr6[i34 + i16] != '\n') {
                                        if (cArr6[i34 + i16] != '\"') {
                                            i16++;
                                        } else {
                                            this.currentPosition = i34 + i16 + 1;
                                        }
                                    }
                                }
                            }
                        }
                    }
                    throw e10;
                }
            } else {
                if (c15 == ']') {
                    return 66;
                }
                if (c15 == '^') {
                    return getNextChar('=') ? 93 : 24;
                }
                switch (c15) {
                    case '%':
                        return getNextChar('=') ? 94 : 9;
                    case '&':
                        int nextChar = getNextChar('&', '=');
                        if (nextChar == 0) {
                            return 30;
                        }
                        return nextChar > 0 ? 91 : 21;
                    case '\'':
                        int nextChar2 = getNextChar('\n', CharUtils.CR);
                        if (nextChar2 == 0) {
                            throw new InvalidInputException("Invalid_Character_Constant");
                        }
                        if (nextChar2 > 0) {
                            while (true) {
                                if (i16 < 3) {
                                    int i35 = this.currentPosition;
                                    if (i35 + i16 != this.eofPosition) {
                                        char[] cArr7 = this.source;
                                        if (cArr7[i35 + i16] != '\n') {
                                            if (cArr7[i35 + i16] != '\'') {
                                                i16++;
                                            } else {
                                                this.currentPosition = i35 + i16 + 1;
                                            }
                                        }
                                    }
                                }
                            }
                            throw new InvalidInputException("Invalid_Character_Constant");
                        }
                        if (getNextChar(JavaElement.JEM_MODULAR_CLASSFILE)) {
                            while (true) {
                                if (i16 < 3) {
                                    int i36 = this.currentPosition;
                                    if (i36 + i16 != this.eofPosition) {
                                        char[] cArr8 = this.source;
                                        if (cArr8[i36 + i16] != '\n') {
                                            if (cArr8[i36 + i16] != '\'') {
                                                i16++;
                                            } else {
                                                this.currentPosition = i36 + i16 + 1;
                                            }
                                        }
                                    }
                                }
                            }
                            throw new InvalidInputException("Invalid_Character_Constant");
                        }
                        if (getNextChar(JavaElement.JEM_ESCAPE)) {
                            if (this.unicodeAsBackSlash) {
                                this.unicodeAsBackSlash = false;
                                char[] cArr9 = this.source;
                                int i37 = this.currentPosition;
                                int i38 = i37 + 1;
                                this.currentPosition = i38;
                                char c19 = cArr9[i37];
                                this.currentCharacter = c19;
                                if (c19 == '\\' && cArr9[i38] == 'u') {
                                    getNextUnicodeChar();
                                } else if (this.withoutUnicodePtr != 0) {
                                    unicodeStore();
                                }
                            } else {
                                char[] cArr10 = this.source;
                                int i39 = this.currentPosition;
                                this.currentPosition = i39 + 1;
                                this.currentCharacter = cArr10[i39];
                            }
                            scanEscapeCharacter();
                        } else {
                            this.unicodeAsBackSlash = false;
                            try {
                                char[] cArr11 = this.source;
                                int i40 = this.currentPosition;
                                int i41 = i40 + 1;
                                this.currentPosition = i41;
                                char c20 = cArr11[i40];
                                this.currentCharacter = c20;
                                if (c20 == '\\') {
                                    if (cArr11[i41] == 'u') {
                                        getNextUnicodeChar();
                                    }
                                }
                                if (this.withoutUnicodePtr != 0) {
                                    unicodeStore();
                                }
                            } catch (IndexOutOfBoundsException unused5) {
                                this.currentPosition--;
                                throw new InvalidInputException("Invalid_Character_Constant");
                            }
                        }
                        if (getNextChar(JavaElement.JEM_MODULAR_CLASSFILE)) {
                            return 45;
                        }
                        while (true) {
                            if (i16 < 20) {
                                int i42 = this.currentPosition;
                                if (i42 + i16 != this.eofPosition) {
                                    char[] cArr12 = this.source;
                                    if (cArr12[i42 + i16] != '\n') {
                                        if (cArr12[i42 + i16] != '\'') {
                                            i16++;
                                        } else {
                                            this.currentPosition = i42 + i16 + 1;
                                        }
                                    }
                                }
                            }
                        }
                        throw new InvalidInputException("Invalid_Character_Constant");
                    case '(':
                        return 23;
                    case ')':
                        return 25;
                    case '*':
                        return getNextChar('=') ? 89 : 8;
                    case '+':
                        int nextChar3 = getNextChar('+', '=');
                        if (nextChar3 == 0) {
                            return 2;
                        }
                        return nextChar3 > 0 ? 87 : 4;
                    case ',':
                        return 32;
                    case '-':
                        int nextChar4 = getNextChar('-', '=');
                        if (nextChar4 == 0) {
                            return 3;
                        }
                        if (nextChar4 > 0) {
                            return 88;
                        }
                        return getNextChar('>') ? 98 : 5;
                    case '.':
                        int i43 = this.startPosition;
                        int i44 = this.cursorLocation;
                        if (i43 <= i44 && i44 < i20) {
                            return 1;
                        }
                        if (getNextCharAsDigit()) {
                            return scanNumber(true);
                        }
                        int i45 = this.currentPosition;
                        if (!getNextChar('.')) {
                            this.currentPosition = i45;
                            return 1;
                        }
                        if (getNextChar('.')) {
                            return 122;
                        }
                        this.currentPosition = i45;
                        return 1;
                    case '/':
                        int nextChar5 = getNextChar('/', '*');
                        if (nextChar5 == 0) {
                            int i46 = this.currentPosition;
                            this.lastCommentLinePosition = i46;
                            try {
                                char[] cArr13 = this.source;
                                int i47 = i46 + 1;
                                this.currentPosition = i47;
                                char c21 = cArr13[i46];
                                this.currentCharacter = c21;
                                if (c21 == '\\' && cArr13[i47] == 'u') {
                                    this.currentPosition = i46 + 2;
                                    while (true) {
                                        char[] cArr14 = this.source;
                                        int i48 = this.currentPosition;
                                        char c22 = cArr14[i48];
                                        if (c22 != 'u') {
                                            this.currentPosition = i48 + 1;
                                            int hexadecimalValue = ScannerHelper.getHexadecimalValue(c22);
                                            if (hexadecimalValue <= 15 && hexadecimalValue >= 0) {
                                                char[] cArr15 = this.source;
                                                int i49 = this.currentPosition;
                                                this.currentPosition = i49 + 1;
                                                int hexadecimalValue2 = ScannerHelper.getHexadecimalValue(cArr15[i49]);
                                                if (hexadecimalValue2 <= 15 && hexadecimalValue2 >= 0) {
                                                    char[] cArr16 = this.source;
                                                    int i50 = this.currentPosition;
                                                    this.currentPosition = i50 + 1;
                                                    int hexadecimalValue3 = ScannerHelper.getHexadecimalValue(cArr16[i50]);
                                                    if (hexadecimalValue3 <= 15 && hexadecimalValue3 >= 0) {
                                                        char[] cArr17 = this.source;
                                                        int i51 = this.currentPosition;
                                                        this.currentPosition = i51 + 1;
                                                        int hexadecimalValue4 = ScannerHelper.getHexadecimalValue(cArr17[i51]);
                                                        if (hexadecimalValue4 <= 15 && hexadecimalValue4 >= 0) {
                                                            this.currentCharacter = (char) ((((((hexadecimalValue * 16) + hexadecimalValue2) * 16) + hexadecimalValue3) * 16) + hexadecimalValue4);
                                                        }
                                                    }
                                                }
                                            }
                                        } else {
                                            this.currentPosition = i48 + 1;
                                        }
                                    }
                                }
                                if (this.currentCharacter == '\\') {
                                    char[] cArr18 = this.source;
                                    int i52 = this.currentPosition;
                                    if (cArr18[i52] == '\\') {
                                        this.currentPosition = i52 + 1;
                                    }
                                }
                                boolean z15 = false;
                                while (true) {
                                    char c23 = this.currentCharacter;
                                    if (c23 != '\r' && c23 != '\n') {
                                        int i53 = this.currentPosition;
                                        this.lastCommentLinePosition = i53;
                                        char[] cArr19 = this.source;
                                        int i54 = i53 + 1;
                                        this.currentPosition = i54;
                                        char c24 = cArr19[i53];
                                        this.currentCharacter = c24;
                                        if (c24 == '\\' && cArr19[i54] == 'u') {
                                            this.currentPosition = i53 + 2;
                                            while (true) {
                                                char[] cArr20 = this.source;
                                                int i55 = this.currentPosition;
                                                char c25 = cArr20[i55];
                                                if (c25 != 'u') {
                                                    this.currentPosition = i55 + 1;
                                                    int hexadecimalValue5 = ScannerHelper.getHexadecimalValue(c25);
                                                    if (hexadecimalValue5 <= 15 && hexadecimalValue5 >= 0) {
                                                        char[] cArr21 = this.source;
                                                        int i56 = this.currentPosition;
                                                        this.currentPosition = i56 + 1;
                                                        int hexadecimalValue6 = ScannerHelper.getHexadecimalValue(cArr21[i56]);
                                                        if (hexadecimalValue6 <= 15 && hexadecimalValue6 >= 0) {
                                                            char[] cArr22 = this.source;
                                                            int i57 = this.currentPosition;
                                                            this.currentPosition = i57 + 1;
                                                            int hexadecimalValue7 = ScannerHelper.getHexadecimalValue(cArr22[i57]);
                                                            if (hexadecimalValue7 <= 15 && hexadecimalValue7 >= 0) {
                                                                char[] cArr23 = this.source;
                                                                int i58 = this.currentPosition;
                                                                this.currentPosition = i58 + 1;
                                                                int hexadecimalValue8 = ScannerHelper.getHexadecimalValue(cArr23[i58]);
                                                                if (hexadecimalValue8 <= 15 && hexadecimalValue8 >= 0) {
                                                                    this.currentCharacter = (char) ((((((hexadecimalValue5 * 16) + hexadecimalValue6) * 16) + hexadecimalValue7) * 16) + hexadecimalValue8);
                                                                    z15 = true;
                                                                }
                                                            }
                                                        }
                                                    }
                                                } else {
                                                    this.currentPosition = i55 + 1;
                                                }
                                            }
                                        } else {
                                            z15 = false;
                                        }
                                        if (this.currentCharacter == '\\') {
                                            char[] cArr24 = this.source;
                                            int i59 = this.currentPosition;
                                            if (cArr24[i59] == '\\') {
                                                this.currentPosition = i59 + 1;
                                            }
                                        }
                                    }
                                }
                            } catch (IndexOutOfBoundsException unused6) {
                                this.currentPosition--;
                                recordComment(1001);
                                if (this.taskTags != null) {
                                    checkTaskTag(this.startPosition, this.currentPosition);
                                }
                                if (this.tokenizeComments) {
                                    return 1001;
                                }
                                this.currentPosition++;
                            }
                        } else {
                            if (nextChar5 <= 0) {
                                return getNextChar('=') ? 90 : 10;
                            }
                            try {
                                this.unicodeAsBackSlash = false;
                                char[] cArr25 = this.source;
                                int i60 = this.currentPosition;
                                int i61 = i60 + 1;
                                this.currentPosition = i61;
                                char c26 = cArr25[i60];
                                this.currentCharacter = c26;
                                if (c26 == '\\' && cArr25[i61] == 'u') {
                                    getNextUnicodeChar();
                                    z13 = true;
                                } else {
                                    if (this.withoutUnicodePtr != 0) {
                                        unicodeStore();
                                    }
                                    z13 = false;
                                }
                                char c27 = this.currentCharacter;
                                boolean z16 = c27 == '*';
                                boolean z17 = z16;
                                if ((c27 == '\r' || c27 == '\n') && this.recordLineSeparator && !z13) {
                                    pushLineSeparator();
                                }
                                int i62 = this.currentPosition;
                                char[] cArr26 = this.source;
                                int i63 = i62 + 1;
                                this.currentPosition = i63;
                                char c28 = cArr26[i62];
                                this.currentCharacter = c28;
                                if (c28 == '\\' && cArr26[i63] == 'u') {
                                    getNextUnicodeChar();
                                    z14 = true;
                                } else {
                                    z14 = false;
                                }
                                char c29 = this.currentCharacter;
                                if (c29 == '\\') {
                                    char[] cArr27 = this.source;
                                    int i64 = this.currentPosition;
                                    if (cArr27[i64] == '\\') {
                                        this.currentPosition = i64 + 1;
                                    }
                                }
                                if (c29 == '/') {
                                    z16 = false;
                                }
                                int i65 = 0;
                                while (true) {
                                    char c30 = this.currentCharacter;
                                    if (c30 == '/' && z17) {
                                        int i66 = z16 ? 1003 : 1002;
                                        recordComment(i66);
                                        this.commentTagStarts[this.commentPtr] = i65;
                                        if (!z16) {
                                            int i67 = this.startPosition;
                                            int i68 = this.cursorLocation;
                                            if (i67 <= i68 && i68 < this.currentPosition - 1) {
                                                throw new InvalidCursorLocation(InvalidCursorLocation.NO_COMPLETION_INSIDE_COMMENT);
                                            }
                                        }
                                        if (this.taskTags != null) {
                                            checkTaskTag(this.startPosition, this.currentPosition);
                                        }
                                        if (this.tokenizeComments) {
                                            return i66;
                                        }
                                        i17 = i11;
                                        c12 = '!';
                                    } else {
                                        if ((c30 == '\r' || c30 == '\n') && this.recordLineSeparator && !z14) {
                                            pushLineSeparator();
                                        }
                                        char c31 = this.currentCharacter;
                                        if (c31 != '*') {
                                            if (c31 == '@' && i65 == 0 && isFirstTag()) {
                                                i65 = i62;
                                                z17 = false;
                                            }
                                            i62 = i65;
                                            i65 = i62;
                                            z17 = false;
                                        } else {
                                            z17 = true;
                                        }
                                        i62 = this.currentPosition;
                                        char[] cArr28 = this.source;
                                        int i69 = i62 + 1;
                                        this.currentPosition = i69;
                                        char c32 = cArr28[i62];
                                        this.currentCharacter = c32;
                                        if (c32 == '\\' && cArr28[i69] == 'u') {
                                            getNextUnicodeChar();
                                            z14 = true;
                                        } else {
                                            z14 = false;
                                        }
                                        if (this.currentCharacter == '\\') {
                                            char[] cArr29 = this.source;
                                            int i70 = this.currentPosition;
                                            if (cArr29[i70] == '\\') {
                                                this.currentPosition = i70 + 1;
                                            }
                                        }
                                    }
                                }
                            } catch (IndexOutOfBoundsException unused7) {
                                this.currentPosition--;
                                throw new InvalidInputException("Unterminated_Comment");
                            }
                        }
                        break;
                    default:
                        switch (c15) {
                            case ':':
                                return getNextChar(':') ? 7 : 62;
                            case ';':
                                return 26;
                            case '<':
                                int nextChar6 = getNextChar('=', '<');
                                if (nextChar6 == 0) {
                                    return 12;
                                }
                                if (nextChar6 > 0) {
                                    return getNextChar('=') ? 95 : 18;
                                }
                                return 11;
                            case '=':
                                return getNextChar('=') ? 19 : 72;
                            case '>':
                                if (this.returnOnlyGreater) {
                                    return 15;
                                }
                                int nextChar7 = getNextChar('=', '>');
                                if (nextChar7 == 0) {
                                    return 13;
                                }
                                if (nextChar7 <= 0) {
                                    return 15;
                                }
                                int nextChar8 = getNextChar('=', '>');
                                if (nextChar8 == 0) {
                                    return 96;
                                }
                                if (nextChar8 > 0) {
                                    return getNextChar('=') ? 97 : 16;
                                }
                                return 14;
                            case '?':
                                return 29;
                            case '@':
                                return 37;
                            default:
                                switch (c15) {
                                    case '{':
                                        return 49;
                                    case '|':
                                        int nextChar9 = getNextChar('|', '=');
                                        if (nextChar9 == 0) {
                                            return 31;
                                        }
                                        return nextChar9 > 0 ? 92 : 28;
                                    case '}':
                                        return c12;
                                    case '~':
                                        return 64;
                                    default:
                                        if (c15 < '\u0080') {
                                            int i71 = ScannerHelper.OBVIOUS_IDENT_CHAR_NATURES[c15];
                                            if ((i71 & 64) != 0) {
                                                return scanIdentifierOrKeyword();
                                            }
                                            if ((i71 & 4) != 0) {
                                                return scanNumber(false);
                                            }
                                            return 129;
                                        }
                                        if (c15 < '\ud800' || c15 > '\udbff') {
                                            if (c15 >= '\udc00' && c15 <= '\udfff') {
                                                if (this.complianceLevel < ClassFileConstants.JDK1_5) {
                                                    throw new InvalidInputException("Invalid_Unicode_Escape");
                                                }
                                                throw new InvalidInputException("Invalid_High_Surrogate");
                                            }
                                            isJavaIdentifierStart = Character.isJavaIdentifierStart(c15);
                                        } else {
                                            if (this.complianceLevel < ClassFileConstants.JDK1_5) {
                                                throw new InvalidInputException("Invalid_Unicode_Escape");
                                            }
                                            char nextChar10 = (char) getNextChar();
                                            if (nextChar10 < '\udc00' || nextChar10 > '\udfff') {
                                                throw new InvalidInputException("Invalid_Low_Surrogate");
                                            }
                                            isJavaIdentifierStart = ScannerHelper.isJavaIdentifierStart(this.complianceLevel, c15, nextChar10);
                                        }
                                        if (isJavaIdentifierStart) {
                                            return scanIdentifierOrKeyword();
                                        }
                                        if (ScannerHelper.isDigit(this.currentCharacter)) {
                                            return scanNumber(false);
                                        }
                                        return 129;
                                }
                        }
                }
            }
            i17 = i11;
            if (this.tokenizeWhiteSpace) {
                int i72 = this.currentPosition;
                if (i17 != i72 - 1) {
                    this.currentPosition = i72 - 1;
                    this.startPosition = i17;
                    return 1000;
                }
            }
            if (this.completionIdentifier != null || (i10 = this.startPosition) != this.cursorLocation + 1) {
                return 61;
            }
            this.endOfEmptyToken = this.currentPosition - 1;
            this.currentPosition = i10;
            return 22;
        }
    }

    @Override
    public final void getNextUnicodeChar() throws InvalidInputException {
        int i10 = this.currentPosition;
        super.getNextUnicodeChar();
        int i11 = this.cursorLocation;
        if (i11 > i10) {
            this.unicodeCharSize += this.currentPosition - i10;
        }
        if (i10 < i11 && i11 < this.currentPosition - 1) {
            throw new InvalidCursorLocation(InvalidCursorLocation.NO_COMPLETION_INSIDE_UNICODE);
        }
    }

    @Override
    public boolean isAtAssistIdentifier() {
        int i10 = this.cursorLocation;
        int i11 = this.startPosition;
        if (i10 >= i11 || this.currentPosition != i11) {
            return i10 + 1 >= i11 && i10 < this.currentPosition;
        }
        return true;
    }

    @Override
    public boolean isFirstTag() {
        return getNextChar('d') && getNextChar('e') && getNextChar('p') && getNextChar('r') && getNextChar('e') && getNextChar('c') && getNextChar('a') && getNextChar('t') && getNextChar('e') && getNextChar('d');
    }

    public final void jumpOverBlock() {
        jumpOverMethodBody();
    }

    @Override
    public int scanIdentifierOrKeyword() {
        int scanIdentifierOrKeyword = super.scanIdentifierOrKeyword();
        int i10 = this.startPosition;
        int i11 = this.cursorLocation;
        if (i10 > i11 + 1 || i11 >= this.currentPosition) {
            return scanIdentifierOrKeyword;
        }
        int i12 = i11 + 1;
        int i13 = this.eofPosition;
        if (i12 == i13) {
            this.eofPosition = this.source.length;
            do {
            } while (getNextCharAsJavaIdentifierPart());
            this.eofPosition = i13;
        }
        return 22;
    }

    @Override
    public int scanNumber(boolean z10) throws InvalidInputException {
        int scanNumber = super.scanNumber(z10);
        int i10 = this.startPosition;
        int i11 = this.cursorLocation;
        if (i10 > i11 || i11 >= this.currentPosition) {
            return scanNumber;
        }
        throw new InvalidCursorLocation(InvalidCursorLocation.NO_COMPLETION_INSIDE_NUMBER);
    }
}
