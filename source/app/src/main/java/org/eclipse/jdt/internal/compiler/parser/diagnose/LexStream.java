package org.eclipse.jdt.internal.compiler.parser.diagnose;

import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.core.compiler.InvalidInputException;
import org.eclipse.jdt.internal.compiler.parser.Scanner;
import org.eclipse.jdt.internal.compiler.parser.TerminalTokens;
import org.eclipse.jdt.internal.compiler.util.Util;
import org.eclipse.jdt.internal.core.JavaElement;
import org.eclipse.jdt.internal.core.search.indexing.IIndexConstants;

public class LexStream implements TerminalTokens {
    public static final int IS_AFTER_JUMP = 1;
    public static final int LBRACE_MISSING = 2;
    private boolean awaitingColonColon;
    private int[] intervalEndToSkip;
    private int[] intervalFlagsToSkip;
    private int[] intervalStartToSkip;
    private Scanner scanner;
    private Token[] tokenCache;
    private int currentIndex = -1;
    private int previousInterval = -1;
    private int currentInterval = -1;
    private int tokenCacheIndex = 0;
    private int tokenCacheEOFIndex = Integer.MAX_VALUE;

    public static class Token {
        int end;
        int flags;
        int kind;
        int line;
        char[] name;
        int start;

        public String toString() {
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append(this.name);
            stringBuffer.append('[');
            stringBuffer.append(this.kind);
            stringBuffer.append(JavaElement.JEM_TYPE_PARAMETER);
            stringBuffer.append(JavaElement.JEM_COMPILATIONUNIT);
            stringBuffer.append(this.start);
            stringBuffer.append(IIndexConstants.PARAMETER_SEPARATOR);
            stringBuffer.append(this.end);
            stringBuffer.append(JavaElement.JEM_ANNOTATION);
            stringBuffer.append(this.line);
            return stringBuffer.toString();
        }
    }

    public LexStream(int i10, Scanner scanner, int[] iArr, int[] iArr2, int[] iArr3, int i11, int i12, int i13) {
        Token[] tokenArr = new Token[i10];
        this.tokenCache = tokenArr;
        tokenArr[0] = new Token();
        Token token = this.tokenCache[0];
        token.kind = i11;
        token.name = CharOperation.NO_CHAR;
        token.start = i12;
        token.end = i12;
        token.line = 0;
        this.intervalStartToSkip = iArr;
        this.intervalEndToSkip = iArr2;
        this.intervalFlagsToSkip = iArr3;
        this.awaitingColonColon = false;
        scanner.resetTo(i12, i13);
        this.scanner = scanner;
    }

    private void readTokenFromScanner() {
        int nextToken;
        int length = this.tokenCache.length;
        boolean z10 = true;
        while (z10) {
            try {
                nextToken = this.scanner.getNextToken();
                if (nextToken == 84) {
                    this.awaitingColonColon = true;
                } else if (nextToken == 7) {
                    this.awaitingColonColon = false;
                }
            } catch (InvalidInputException unused) {
            }
            if (nextToken != 61) {
                int currentTokenStartPosition = this.scanner.getCurrentTokenStartPosition();
                int currentTokenEndPosition = this.scanner.getCurrentTokenEndPosition();
                int i10 = this.currentInterval;
                int i11 = i10 + 1;
                int[] iArr = this.intervalStartToSkip;
                if (iArr.length != 0 && i11 < iArr.length && currentTokenStartPosition >= iArr[i11]) {
                    Scanner scanner = this.scanner;
                    int[] iArr2 = this.intervalEndToSkip;
                    int i12 = i10 + 1;
                    this.currentInterval = i12;
                    scanner.resetTo(iArr2[i12] + 1, scanner.eofPosition - 1);
                }
                Token token = new Token();
                token.kind = nextToken;
                token.name = this.scanner.getCurrentTokenSource();
                token.start = currentTokenStartPosition;
                token.end = currentTokenEndPosition;
                Scanner scanner2 = this.scanner;
                token.line = Util.getLineNumber(currentTokenEndPosition, scanner2.lineEnds, 0, scanner2.linePtr);
                int i13 = this.currentInterval;
                if (i13 != this.previousInterval) {
                    int i14 = this.intervalFlagsToSkip[i13];
                    if ((i14 & 2) == 0) {
                        token.flags = 1;
                        if ((i14 & 1) != 0) {
                            token.flags = 1 | 2;
                        }
                    }
                }
                this.previousInterval = i13;
                Token[] tokenArr = this.tokenCache;
                int i15 = this.tokenCacheIndex + 1;
                this.tokenCacheIndex = i15;
                tokenArr[i15 % length] = token;
            } else {
                int currentTokenStartPosition2 = this.scanner.getCurrentTokenStartPosition();
                int currentTokenEndPosition2 = this.scanner.getCurrentTokenEndPosition();
                Token token2 = new Token();
                token2.kind = nextToken;
                token2.name = CharOperation.NO_CHAR;
                token2.start = currentTokenStartPosition2;
                token2.end = currentTokenEndPosition2;
                Scanner scanner3 = this.scanner;
                token2.line = Util.getLineNumber(currentTokenEndPosition2, scanner3.lineEnds, 0, scanner3.linePtr);
                Token[] tokenArr2 = this.tokenCache;
                int i16 = this.tokenCacheIndex + 1;
                this.tokenCacheIndex = i16;
                tokenArr2[i16 % length] = token2;
                this.tokenCacheEOFIndex = i16;
            }
            z10 = false;
        }
    }

    public boolean afterEol(int i10) {
        return i10 < 1 || line(i10 + (-1)) < line(i10);
    }

    public boolean awaitingColonColon() {
        return this.awaitingColonColon;
    }

    public int badtoken() {
        return 0;
    }

    public int end(int i10) {
        return token(i10).end;
    }

    public int flags(int i10) {
        return token(i10).flags;
    }

    public int getToken() {
        int next = next(this.currentIndex);
        this.currentIndex = next;
        return next;
    }

    public boolean isInsideStream(int i10) {
        int i11 = this.tokenCacheEOFIndex;
        if (i11 >= 0 && i10 > i11) {
            return false;
        }
        int i12 = this.tokenCacheIndex;
        return i10 > i12 || i12 - this.tokenCache.length < i10;
    }

    public int kind(int i10) {
        return token(i10).kind;
    }

    public int line(int i10) {
        return token(i10).line;
    }

    public char[] name(int i10) {
        return token(i10).name;
    }

    public int next(int i10) {
        int i11 = this.tokenCacheEOFIndex;
        return i10 < i11 ? i10 + 1 : i11;
    }

    public int previous(int i10) {
        if (i10 > 0) {
            return i10 - 1;
        }
        return 0;
    }

    public void reset() {
        this.currentIndex = -1;
    }

    public int start(int i10) {
        return token(i10).start;
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        String str = new String(this.scanner.source);
        int i10 = this.currentIndex;
        int i11 = 0;
        int i12 = -1;
        if (i10 < 0) {
            while (true) {
                int[] iArr = this.intervalStartToSkip;
                if (i11 >= iArr.length) {
                    break;
                }
                int i13 = iArr[i11];
                int i14 = this.intervalEndToSkip[i11];
                stringBuffer.append(str.substring(i12 + 1, i13));
                stringBuffer.append('<');
                stringBuffer.append('@');
                stringBuffer.append(str.substring(i13, i14 + 1));
                stringBuffer.append('@');
                stringBuffer.append('>');
                i11++;
                i12 = i14;
            }
            stringBuffer.append(str.substring(i12 + 1));
        } else {
            Token token = token(i10);
            int i15 = token.kind;
            int i16 = token.start;
            int i17 = token.end;
            while (true) {
                int[] iArr2 = this.intervalStartToSkip;
                if (i11 >= iArr2.length) {
                    break;
                }
                int i18 = iArr2[i11];
                int i19 = this.intervalEndToSkip[i11];
                if (i16 < i12 || i17 > i18) {
                    stringBuffer.append(str.substring(i12 + 1, i18));
                } else {
                    stringBuffer.append(str.substring(i12 + 1, i16));
                    stringBuffer.append('<');
                    stringBuffer.append(JavaElement.JEM_IMPORTDECLARATION);
                    int i20 = i17 + 1;
                    stringBuffer.append(str.substring(i16, i20));
                    stringBuffer.append(JavaElement.JEM_IMPORTDECLARATION);
                    stringBuffer.append('>');
                    stringBuffer.append(str.substring(i20, i18));
                }
                stringBuffer.append('<');
                stringBuffer.append('@');
                stringBuffer.append(str.substring(i18, i19 + 1));
                stringBuffer.append('@');
                stringBuffer.append('>');
                i11++;
                i12 = i19;
            }
            if (i16 >= i12) {
                stringBuffer.append(str.substring(i12 + 1, i16));
                stringBuffer.append('<');
                stringBuffer.append(JavaElement.JEM_IMPORTDECLARATION);
                if (i15 == 61) {
                    stringBuffer.append("EOF#>");
                } else {
                    int i21 = i17 + 1;
                    stringBuffer.append(str.substring(i16, i21));
                    stringBuffer.append(JavaElement.JEM_IMPORTDECLARATION);
                    stringBuffer.append('>');
                    stringBuffer.append(str.substring(i21));
                }
            } else {
                stringBuffer.append(str.substring(i12 + 1));
            }
        }
        return stringBuffer.toString();
    }

    public Token token(int i10) {
        if (i10 < 0) {
            Token token = new Token();
            token.kind = 61;
            token.name = CharOperation.NO_CHAR;
            return token;
        }
        int i11 = this.tokenCacheEOFIndex;
        if (i11 >= 0 && i10 > i11) {
            return token(i11);
        }
        int length = this.tokenCache.length;
        int i12 = this.tokenCacheIndex;
        if (i10 > i12) {
            int i13 = i10 - i12;
            while (true) {
                int i14 = i13 - 1;
                if (i13 == 0) {
                    break;
                }
                readTokenFromScanner();
                i13 = i14;
            }
        } else if (i12 - length >= i10) {
            return null;
        }
        return this.tokenCache[i10 % length];
    }

    public void reset(int i10) {
        this.currentIndex = previous(i10);
    }
}
