package org.eclipse.jdt.internal.compiler.parser;

import java.util.ArrayList;
import java.util.List;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.core.compiler.InvalidInputException;
import org.eclipse.jdt.internal.compiler.classfmt.ClassFileConstants;
import org.eclipse.jdt.internal.compiler.impl.CompilerOptions;
import org.eclipse.jdt.internal.compiler.problem.ProblemReporter;
import org.eclipse.jdt.internal.compiler.util.Util;
import org.eclipse.jdt.internal.core.JavaElement;
import w2.C15883c;

public abstract class AbstractCommentParser implements JavadocTagConstants {
    protected static final int ARGUMENT_RECOVERY = 2;
    protected static final int ARGUMENT_TYPE_RECOVERY = 3;
    protected static final int AST_STACK_INCREMENT = 10;
    public static final int COMPIL_PARSER = 1;
    public static final int COMPLETION_PARSER = 8;
    public static final int DOM_PARSER = 2;
    protected static final int EMPTY_ARGUMENT_RECOVERY = 4;
    public static final int FORMATTER_COMMENT_PARSER = 32;
    private static final int INHERITED_POSITIONS_ARRAY_INCREMENT = 4;
    protected static final int PARSER_KIND = 255;
    protected static final int QUALIFIED_NAME_RECOVERY = 1;
    public static final int SELECTION_PARSER = 4;
    public static final int SOURCE_PARSER = 16;
    protected static final int TEXT_PARSE = 256;
    protected static final int TEXT_VERIF = 512;
    protected int astLengthPtr;
    protected int[] astLengthStack;
    protected int astPtr;
    protected Object[] astStack;
    public boolean checkDocComment;
    protected long complianceLevel;
    protected boolean deprecated;
    protected int firstTagPosition;
    protected int identifierLengthPtr;
    protected int[] identifierLengthStack;
    protected long[] identifierPositionStack;
    protected int identifierPtr;
    protected char[][] identifierStack;
    protected int index;
    protected long[] inheritedPositions;
    protected int inheritedPositionsPtr;
    protected int inlineTagStart;
    protected int javadocEnd;
    protected int javadocStart;
    protected int javadocTextStart;
    protected int kind;
    protected int lastIdentifierEndPosition;
    private int lastLinePtr;
    protected int lineEnd;
    protected int[] lineEnds;
    private int linePtr;
    protected int memberStart;
    public boolean reportProblems;
    protected Object returnStatement;
    public Scanner scanner;
    public char[] source;
    protected long sourceLevel;
    protected Parser sourceParser;
    protected int starPosition;
    protected int tagSourceEnd;
    protected int tagSourceStart;
    protected int textStart;
    protected int tokenPreviousPosition;
    private int currentTokenType = -1;
    public boolean setJavadocPositions = false;
    protected int javadocTextEnd = -1;
    protected boolean lineStarted = false;
    protected boolean inlineTagStarted = false;
    protected boolean abort = false;
    protected int tagValue = 0;
    protected int lastBlockTagValue = 0;

    public AbstractCommentParser(Parser parser) {
        this.checkDocComment = false;
        this.sourceParser = parser;
        Scanner scanner = new Scanner(false, false, false, ClassFileConstants.JDK1_3, null, null, true);
        this.scanner = scanner;
        this.identifierStack = new char[20];
        this.identifierPositionStack = new long[20];
        this.identifierLengthStack = new int[10];
        this.astStack = new Object[30];
        this.astLengthStack = new int[20];
        this.reportProblems = parser != null;
        if (parser != null) {
            CompilerOptions compilerOptions = this.sourceParser.options;
            this.checkDocComment = compilerOptions.docCommentSupport;
            long j10 = compilerOptions.sourceLevel;
            this.sourceLevel = j10;
            scanner.sourceLevel = j10;
            this.complianceLevel = compilerOptions.complianceLevel;
        }
    }

    private int getIndexPosition() {
        int i10 = this.index;
        int i11 = this.lineEnd;
        return i10 > i11 ? i11 : i10 - 1;
    }

    private int getLineNumber(int i10) {
        Scanner scanner = this.scanner;
        int i11 = scanner.linePtr;
        if (i11 != -1) {
            return Util.getLineNumber(i10, scanner.lineEnds, 0, i11);
        }
        int[] iArr = this.lineEnds;
        if (iArr == null) {
            return 1;
        }
        return Util.getLineNumber(i10, iArr, 0, iArr.length - 1);
    }

    private int getTokenEndPosition() {
        int currentTokenEndPosition = this.scanner.getCurrentTokenEndPosition();
        int i10 = this.lineEnd;
        return currentTokenEndPosition > i10 ? i10 : this.scanner.getCurrentTokenEndPosition();
    }

    /* JADX WARN: Can't wrap try/catch for region: R(13:192|(5:196|(1:(1:207))(1:202)|203|191|190)|208|(9:210|211|212|213|(2:(1:216)(1:218)|217)|219|(1:222)|(1:226)|225)|(3:231|(1:234)|235)(2:267|(9:269|(1:271)|237|238|239|(5:(2:262|263)|242|243|244|245)(1:264)|(4:247|248|249|(2:253|190))|191|190))|236|237|238|239|(0)(0)|(0)|191|190) */
    /* JADX WARN: Code restructure failed: missing block: B:266:0x029f, code lost:
    
        r17 = r10;
     */
    /* JADX WARN: Removed duplicated region for block: B:241:0x0272  */
    /* JADX WARN: Removed duplicated region for block: B:247:0x0290 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:264:0x028c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean commentParse() {
        char c10;
        int i10;
        int i11;
        char c11;
        char c12;
        char c13;
        int i12;
        int i13;
        int i14;
        int i15;
        boolean z10;
        int i16;
        int i17;
        int i18;
        char c14;
        boolean z11 = false;
        try {
            this.astLengthPtr = -1;
            this.astPtr = -1;
            this.identifierPtr = -1;
            this.currentTokenType = -1;
            setInlineTagStarted(false);
            this.inlineTagStart = -1;
            this.lineStarted = false;
            this.returnStatement = null;
            this.inheritedPositions = null;
            this.lastBlockTagValue = 0;
            this.deprecated = false;
            this.lastLinePtr = getLineNumber(this.javadocEnd);
            this.textStart = -1;
            this.abort = false;
            int i19 = this.kind;
            int i20 = 1;
            boolean z12 = (i19 & 512) != 0;
            boolean z13 = (i19 & 2) != 0;
            char c15 = C15883c.f126249O;
            boolean z14 = (i19 & 32) != 0;
            int lineNumber = getLineNumber(this.firstTagPosition);
            this.linePtr = lineNumber;
            int lineEnd = lineNumber == 1 ? this.javadocStart : this.scanner.getLineEnd(lineNumber - 1) + 1;
            int i21 = this.javadocStart;
            if (lineEnd < i21) {
                lineEnd = i21;
            }
            this.scanner.resetTo(lineEnd, this.javadocEnd);
            this.index = lineEnd;
            if (lineEnd == this.javadocStart) {
                readChar();
                readChar();
            }
            char c16 = '*';
            if (lineEnd == this.javadocStart) {
                c10 = readChar();
                while (peekChar() == '*') {
                    c10 = readChar();
                }
                this.javadocTextStart = this.index;
            } else {
                c10 = 0;
            }
            int i22 = this.linePtr;
            this.lineEnd = i22 == this.lastLinePtr ? this.javadocEnd : this.scanner.getLineEnd(i22) - 1;
            this.javadocTextEnd = this.javadocEnd - 2;
            boolean z15 = false;
            int i23 = 0;
            int i24 = -1;
            int i25 = -1;
            int i26 = -1;
            int i27 = -1;
            boolean z16 = true;
            int i28 = 1;
            while (!this.abort && (i11 = this.index) < this.javadocEnd) {
                try {
                    if (i11 > this.lineEnd + i20) {
                        updateLineEnd();
                    }
                    if (this.currentTokenType < 0) {
                        c11 = readChar();
                    } else {
                        i11 = this.scanner.getCurrentTokenStartPosition();
                        int i29 = this.currentTokenType;
                        c11 = i29 != 8 ? i29 != 33 ? this.scanner.currentCharacter : JavaElement.JEM_ANNOTATION : c16;
                        consumeToken();
                    }
                    if (c11 != '\t') {
                        if (c11 != '\n') {
                            if (c11 != '\f') {
                                if (c11 != '\r') {
                                    if (c11 != c15) {
                                        if (c11 != c16) {
                                            if (c11 != '/') {
                                                if (c11 != '@') {
                                                    if (c11 == '{') {
                                                        if (z12 && this.tagValue == 3 && this.returnStatement != null) {
                                                            refreshReturnStatement();
                                                        }
                                                        if (z15) {
                                                            i23++;
                                                        } else {
                                                            if (this.inlineTagStarted) {
                                                                try {
                                                                    setInlineTagStarted(false);
                                                                    if (this.reportProblems) {
                                                                        this.sourceParser.problemReporter().javadocUnterminatedInlineTag(this.inlineTagStart, i11 < i24 ? i11 : i24);
                                                                    }
                                                                    if (this.lineStarted && (i17 = this.textStart) != -1 && i17 < i25) {
                                                                        pushText(i17, i25);
                                                                    }
                                                                    refreshInlineTagPosition(i25);
                                                                    i16 = this.index;
                                                                } catch (Exception unused) {
                                                                    return false;
                                                                }
                                                            } else if (peekChar() != '@') {
                                                                if (this.textStart == -1) {
                                                                    this.textStart = i11;
                                                                }
                                                                i16 = this.index;
                                                            }
                                                            i25 = i16;
                                                        }
                                                        if (!this.lineStarted) {
                                                            this.textStart = i11;
                                                        }
                                                        this.lineStarted = true;
                                                        if (!z15) {
                                                            this.inlineTagStart = i11;
                                                        }
                                                    } else if (c11 != '}') {
                                                        i12 = i27;
                                                    } else {
                                                        if (z12 && this.tagValue == 3 && this.returnStatement != null) {
                                                            refreshReturnStatement();
                                                        }
                                                        if (z15) {
                                                            i23--;
                                                            i24 = this.lineEnd;
                                                            if (i23 == 0) {
                                                                z15 = false;
                                                            }
                                                        }
                                                        if (this.inlineTagStarted) {
                                                            int i30 = this.index - 1;
                                                            if (!z15) {
                                                                if (this.lineStarted && (i18 = this.textStart) != -1 && i18 < i30) {
                                                                    pushText(i18, i30);
                                                                }
                                                                refreshInlineTagPosition(i11);
                                                            }
                                                            if (!z14 && !z15) {
                                                                this.textStart = this.index;
                                                            }
                                                            setInlineTagStarted(false);
                                                        } else if (!this.lineStarted) {
                                                            this.textStart = i11;
                                                        }
                                                        this.lineStarted = true;
                                                        i25 = this.index;
                                                    }
                                                } else if (z15) {
                                                    if (!this.lineStarted) {
                                                        if (i23 > 0 && this.reportProblems) {
                                                            this.sourceParser.problemReporter().javadocUnterminatedInlineTag(this.inlineTagStart, i24);
                                                        }
                                                        this.inlineTagStarted = false;
                                                        z10 = true;
                                                        z15 = false;
                                                        i23 = 0;
                                                        this.lineStarted = z10;
                                                    }
                                                    z10 = true;
                                                    this.lineStarted = z10;
                                                } else {
                                                    if (this.lineStarted && c10 != '{') {
                                                        int i31 = this.index;
                                                        if (z12 && this.tagValue == 3 && this.returnStatement != null) {
                                                            refreshReturnStatement();
                                                        } else if (z14 && this.textStart == -1) {
                                                            this.textStart = i11;
                                                        }
                                                        i25 = i31;
                                                        z10 = true;
                                                        this.lineStarted = z10;
                                                    }
                                                    if (this.inlineTagStarted) {
                                                        try {
                                                            setInlineTagStarted(false);
                                                            if (this.reportProblems) {
                                                                this.sourceParser.problemReporter().javadocUnterminatedInlineTag(this.inlineTagStart, i11 < i24 ? i11 : i24);
                                                            }
                                                            int i32 = this.textStart;
                                                            if (i32 != -1 && i32 < i25) {
                                                                pushText(i32, i25);
                                                            }
                                                            if (z13 || z14) {
                                                                refreshInlineTagPosition(i25);
                                                            }
                                                            z16 = false;
                                                        } catch (Exception unused2) {
                                                            return false;
                                                        }
                                                    }
                                                    if (c10 == '{') {
                                                        int i33 = this.textStart;
                                                        if (i33 != -1 && i33 < i25) {
                                                            pushText(i33, i25);
                                                        }
                                                        setInlineTagStarted(true);
                                                        i24 = this.lineEnd;
                                                    } else {
                                                        int i34 = this.textStart;
                                                        if (i34 != -1) {
                                                            i14 = i27;
                                                            if (i34 < i14) {
                                                                pushText(i34, i14);
                                                            }
                                                            this.scanner.resetTo(this.index, this.javadocEnd);
                                                            this.currentTokenType = -1;
                                                            if (parseTag(i11)) {
                                                                if (z13) {
                                                                    try {
                                                                        createTag();
                                                                    } catch (InvalidInputException unused3) {
                                                                        i27 = i14;
                                                                        z16 = false;
                                                                        consumeToken();
                                                                        z10 = true;
                                                                        this.lineStarted = z10;
                                                                        c10 = c11;
                                                                        i20 = 1;
                                                                        c15 = C15883c.f126249O;
                                                                        c16 = '*';
                                                                    }
                                                                }
                                                                this.textStart = this.tagSourceEnd + 1;
                                                                int i35 = this.lineEnd;
                                                                try {
                                                                    i25 = this.index;
                                                                    i27 = i35;
                                                                    z16 = false;
                                                                } catch (InvalidInputException unused4) {
                                                                    i27 = i35;
                                                                    z16 = false;
                                                                    consumeToken();
                                                                    z10 = true;
                                                                    this.lineStarted = z10;
                                                                    c10 = c11;
                                                                    i20 = 1;
                                                                    c15 = C15883c.f126249O;
                                                                    c16 = '*';
                                                                }
                                                            } else {
                                                                i27 = i14;
                                                            }
                                                            if (!z14) {
                                                                try {
                                                                    i15 = this.tagValue;
                                                                } catch (InvalidInputException unused5) {
                                                                    consumeToken();
                                                                    z10 = true;
                                                                    this.lineStarted = z10;
                                                                    c10 = c11;
                                                                    i20 = 1;
                                                                    c15 = C15883c.f126249O;
                                                                    c16 = '*';
                                                                }
                                                                if (i15 == 19 || i15 == 18) {
                                                                    i23++;
                                                                    z10 = true;
                                                                    z15 = true;
                                                                    this.lineStarted = z10;
                                                                }
                                                            }
                                                            z10 = true;
                                                            this.lineStarted = z10;
                                                        }
                                                    }
                                                    i14 = i27;
                                                    this.scanner.resetTo(this.index, this.javadocEnd);
                                                    this.currentTokenType = -1;
                                                    if (parseTag(i11)) {
                                                    }
                                                    if (!z14) {
                                                    }
                                                    z10 = true;
                                                    this.lineStarted = z10;
                                                }
                                                c10 = c11;
                                                i20 = 1;
                                                c15 = C15883c.f126249O;
                                                c16 = '*';
                                            } else {
                                                char c17 = c16;
                                                i12 = i27;
                                                if (c10 == c17) {
                                                    c12 = c11;
                                                    c13 = c17;
                                                    i13 = 1;
                                                }
                                            }
                                            if (z14 && c11 == '<') {
                                                int i36 = this.index;
                                                c14 = c11;
                                                this.scanner.resetTo(i36, this.javadocEnd);
                                                if (!ScannerHelper.isWhitespace(c10)) {
                                                    i25 = i11;
                                                }
                                                if (!parseHtmlTag(i11, i25)) {
                                                    if (this.abort) {
                                                        return false;
                                                    }
                                                    this.scanner.currentPosition = i36;
                                                    this.index = i36;
                                                }
                                                i27 = i12;
                                                c10 = c14;
                                                i20 = 1;
                                                c15 = C15883c.f126249O;
                                                c16 = '*';
                                            } else {
                                                c14 = c11;
                                            }
                                            if (z12 && this.tagValue == 3 && this.returnStatement != null) {
                                                refreshReturnStatement();
                                            }
                                            if (this.lineStarted) {
                                                if (this.textStart == -1) {
                                                }
                                                this.lineStarted = true;
                                                i25 = this.index;
                                                i27 = i12;
                                                c10 = c14;
                                                i20 = 1;
                                                c15 = C15883c.f126249O;
                                                c16 = '*';
                                            }
                                            this.textStart = i11;
                                            this.lineStarted = true;
                                            i25 = this.index;
                                            i27 = i12;
                                            c10 = c14;
                                            i20 = 1;
                                            c15 = C15883c.f126249O;
                                            c16 = '*';
                                        } else {
                                            c12 = c11;
                                            c13 = c16;
                                            i12 = i27;
                                            if (c10 != c13) {
                                                this.starPosition = i11;
                                                if (!z13) {
                                                    if (z14) {
                                                    }
                                                }
                                                if (i28 != 0) {
                                                    i13 = 1;
                                                    this.lineStarted = true;
                                                    if (this.textStart == -1) {
                                                        this.textStart = i11;
                                                        int i37 = this.index;
                                                        if (i37 <= this.javadocTextEnd) {
                                                            i25 = i37;
                                                        }
                                                    }
                                                } else {
                                                    i13 = 1;
                                                }
                                                if (!this.lineStarted) {
                                                    i26 = i11;
                                                    i20 = i13;
                                                    i28 = i20;
                                                    i27 = i12;
                                                    c10 = c12;
                                                    c15 = C15883c.f126249O;
                                                    c16 = c13;
                                                }
                                                i26 = i11;
                                            }
                                            i13 = 1;
                                            i26 = i11;
                                        }
                                        i20 = i13;
                                        i27 = i12;
                                        c10 = c12;
                                        c15 = C15883c.f126249O;
                                        c16 = c13;
                                    }
                                }
                            }
                        }
                        char c18 = c11;
                        c13 = c16;
                        int i38 = i27;
                        if (this.lineStarted) {
                            if (z14 && !ScannerHelper.isWhitespace(c10)) {
                                i25 = i11;
                            }
                            int i39 = this.textStart;
                            if (i39 != -1 && i39 < i25) {
                                pushText(i39, i25);
                            }
                        }
                        this.lineStarted = false;
                        this.textStart = -1;
                        i20 = 1;
                        i27 = i38;
                        c10 = c18;
                        c15 = C15883c.f126249O;
                        i28 = 0;
                        c16 = c13;
                    }
                    c12 = c11;
                    c13 = c16;
                    i12 = i27;
                    i13 = 1;
                    if (z14) {
                        if (!ScannerHelper.isWhitespace(c10)) {
                            i25 = i11;
                        }
                    } else if (this.lineStarted && z13) {
                        i25 = this.index;
                    }
                    i20 = i13;
                    i27 = i12;
                    c10 = c12;
                    c15 = C15883c.f126249O;
                    c16 = c13;
                } catch (Exception unused6) {
                    return false;
                }
            }
            int i40 = this.starPosition;
            int i41 = i40 - 1;
            this.javadocTextEnd = i41;
            if (!this.inlineTagStarted && !z15) {
                if (this.lineStarted) {
                    int i42 = this.textStart;
                    if (i42 != -1) {
                        if (i42 <= i25) {
                            if (i42 >= i40) {
                                if (i40 == i26) {
                                }
                            }
                            pushText(i42, i25);
                        }
                    }
                }
                z11 = false;
                updateDocComment();
                return z16;
            }
            if (this.reportProblems) {
                if (i41 >= i24) {
                    i41 = i24;
                }
                if (this.index < this.javadocEnd) {
                    i24 = i41;
                }
                this.sourceParser.problemReporter().javadocUnterminatedInlineTag(this.inlineTagStart, i24);
            }
            if (this.lineStarted && (i10 = this.textStart) != -1 && i10 < i25) {
                pushText(i10, i25);
            }
            refreshInlineTagPosition(i25);
            z11 = false;
            setInlineTagStarted(false);
            updateDocComment();
            return z16;
        } catch (Exception unused7) {
            return z11;
        }
    }

    public void consumeToken() {
        this.currentTokenType = -1;
        updateLineEnd();
    }

    public abstract Object createArgumentReference(char[] cArr, int i10, boolean z10, Object obj, long[] jArr, long j10) throws InvalidInputException;

    public boolean createFakeReference(int i10) {
        return true;
    }

    public abstract Object createFieldReference(Object obj) throws InvalidInputException;

    public abstract Object createMethodReference(Object obj, List list) throws InvalidInputException;

    public Object createReturnStatement() {
        return null;
    }

    public abstract void createTag();

    public abstract Object createTypeReference(int i10);

    public int getCurrentTokenType() {
        return this.currentTokenType;
    }

    /* JADX WARN: Removed duplicated region for block: B:40:0x0122  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x0134  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x013a  */
    /* JADX WARN: Removed duplicated region for block: B:51:0x0162 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:72:0x0137  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0127  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Object parseArguments(Object obj) throws InvalidInputException {
        Object obj2;
        ArrayList arrayList;
        boolean z10;
        int i10;
        char[] cArr;
        int i11;
        long j10;
        int readToken;
        AbstractCommentParser abstractCommentParser = this;
        Object obj3 = obj;
        char c10 = '\n';
        ArrayList arrayList2 = new ArrayList(10);
        int currentTokenStartPosition = abstractCommentParser.scanner.getCurrentTokenStartPosition();
        long[] jArr = new long[20];
        boolean z11 = false;
        List list = null;
        int i12 = 0;
        int i13 = 0;
        char[] cArr2 = null;
        loop0: while (true) {
            if (abstractCommentParser.index >= abstractCommentParser.scanner.eofPosition) {
                break;
            }
            try {
                Object parseQualifiedName = abstractCommentParser.parseQualifiedName(z11);
                if (!abstractCommentParser.abort) {
                    boolean z12 = i12 == 0 ? true : z11;
                    if (!z12) {
                        if (i13 % i12 != 0) {
                            break;
                        }
                    } else if (i13 != 0) {
                        break;
                    }
                    if (parseQualifiedName != null) {
                        int i14 = i13 + 1;
                        int i15 = 6;
                        if (readToken() == 6) {
                            i10 = z11;
                            while (readToken() == i15) {
                                int currentTokenStartPosition2 = abstractCommentParser.scanner.getCurrentTokenStartPosition();
                                consumeToken();
                                if (readToken() != 66) {
                                    break loop0;
                                }
                                consumeToken();
                                jArr[i10] = (currentTokenStartPosition2 << 32) + abstractCommentParser.scanner.getCurrentTokenEndPosition();
                                i10++;
                                arrayList2 = arrayList2;
                                parseQualifiedName = parseQualifiedName;
                                i15 = 6;
                                z11 = false;
                            }
                            obj2 = parseQualifiedName;
                            z10 = z11;
                            arrayList = arrayList2;
                        } else {
                            obj2 = parseQualifiedName;
                            arrayList = arrayList2;
                            if (readToken() == 122) {
                                jArr[0] = (abstractCommentParser.scanner.getCurrentTokenStartPosition() << 32) + abstractCommentParser.scanner.getCurrentTokenEndPosition();
                                consumeToken();
                                z10 = true;
                                i10 = 1;
                            } else {
                                z10 = false;
                                i10 = 0;
                            }
                        }
                        if (readToken() != 22) {
                            if (cArr2 != null) {
                                break;
                            }
                            cArr = cArr2;
                            i11 = i14;
                            j10 = -1;
                            if (!z12) {
                            }
                            int i16 = i12;
                            readToken = readToken();
                            if (cArr != null) {
                            }
                            if (readToken != 32) {
                            }
                        } else {
                            consumeToken();
                            if (!z12) {
                                if (i14 % i12 != 1) {
                                    break;
                                }
                            } else if (i14 != 1) {
                                break;
                            }
                            if (cArr2 == null && !z12) {
                                break;
                            }
                            j10 = (abstractCommentParser.scanner.getCurrentTokenStartPosition() << 32) + abstractCommentParser.scanner.getCurrentTokenEndPosition();
                            i11 = i13 + 2;
                            cArr = abstractCommentParser.scanner.getCurrentIdentifierSource();
                            if (!z12) {
                                i12 = i11 + 1;
                            } else if (i11 % i12 != i12 - 1) {
                                break;
                            }
                            int i162 = i12;
                            readToken = readToken();
                            char[] cArr3 = cArr != null ? CharOperation.NO_CHAR : cArr;
                            if (readToken != 32) {
                                Object createArgumentReference = createArgumentReference(cArr3, i10, z10, obj2, jArr, j10);
                                if (this.abort) {
                                    return null;
                                }
                                arrayList.add(createArgumentReference);
                                consumeToken();
                                i13 = i11 + 1;
                                obj3 = obj;
                                cArr2 = cArr;
                                arrayList2 = arrayList;
                                abstractCommentParser = this;
                                i12 = i162;
                                c10 = '\n';
                                z11 = false;
                                list = null;
                            } else if (readToken == 25) {
                                if (verifySpaceOrEndComment()) {
                                    Object createArgumentReference2 = createArgumentReference(cArr3, i10, z10, obj2, jArr, j10);
                                    if (this.abort) {
                                        return null;
                                    }
                                    arrayList.add(createArgumentReference2);
                                    consumeToken();
                                    return createMethodReference(obj, arrayList);
                                }
                                int i17 = this.starPosition;
                                if (i17 == -1) {
                                    i17 = this.lineEnd;
                                }
                                if (this.source[i17] == '\n') {
                                    i17--;
                                }
                                if (!this.reportProblems) {
                                    return null;
                                }
                                this.sourceParser.problemReporter().javadocMalformedSeeReference(currentTokenStartPosition, i17);
                                return null;
                            }
                        }
                    } else if (z12 && abstractCommentParser.currentTokenType == 25) {
                        if (verifySpaceOrEndComment()) {
                            abstractCommentParser.lineStarted = true;
                            return abstractCommentParser.createMethodReference(obj3, list);
                        }
                        int i18 = abstractCommentParser.starPosition;
                        if (i18 == -1) {
                            i18 = abstractCommentParser.lineEnd;
                        }
                        if (abstractCommentParser.source[i18] == c10) {
                            i18--;
                        }
                        if (abstractCommentParser.reportProblems) {
                            abstractCommentParser.sourceParser.problemReporter().javadocMalformedSeeReference(currentTokenStartPosition, i18);
                        }
                        return list;
                    }
                } else {
                    return list;
                }
            } catch (InvalidInputException unused) {
            }
        }
        throw new InvalidInputException();
    }

    public boolean parseHref() throws InvalidInputException {
        char c10;
        char c11;
        Scanner scanner = this.scanner;
        boolean z10 = scanner.skipComments;
        scanner.skipComments = true;
        try {
            int currentTokenStartPosition = scanner.getCurrentTokenStartPosition();
            char readChar = readChar();
            if (readChar == 'a' || readChar == 'A') {
                this.scanner.currentPosition = this.index;
                if (readToken() == 22) {
                    consumeToken();
                    if (CharOperation.equals(this.scanner.getCurrentIdentifierSource(), JavadocTagConstants.HREF_TAG, false) && readToken() == 72) {
                        consumeToken();
                        if (readToken() == 46) {
                            consumeToken();
                            while (this.index < this.javadocEnd) {
                                while (readToken() != 15) {
                                    Scanner scanner2 = this.scanner;
                                    if (scanner2.currentPosition < scanner2.eofPosition && (c11 = scanner2.currentCharacter) != '@' && (!this.inlineTagStarted || c11 != '}')) {
                                        this.currentTokenType = -1;
                                    }
                                    int i10 = this.tokenPreviousPosition;
                                    this.index = i10;
                                    scanner2.currentPosition = i10;
                                    this.currentTokenType = -1;
                                    if (this.tagValue != 10 && this.reportProblems) {
                                        this.sourceParser.problemReporter().javadocInvalidSeeHref(currentTokenStartPosition, this.lineEnd);
                                    }
                                    return false;
                                }
                                consumeToken();
                                while (readToken() != 11) {
                                    Scanner scanner3 = this.scanner;
                                    if (scanner3.currentPosition < scanner3.eofPosition && (c10 = scanner3.currentCharacter) != '@' && (!this.inlineTagStarted || c10 != '}')) {
                                        consumeToken();
                                    }
                                    int i11 = this.tokenPreviousPosition;
                                    this.index = i11;
                                    scanner3.currentPosition = i11;
                                    this.currentTokenType = -1;
                                    if (this.tagValue != 10 && this.reportProblems) {
                                        this.sourceParser.problemReporter().javadocInvalidSeeHref(currentTokenStartPosition, this.lineEnd);
                                    }
                                    return false;
                                }
                                consumeToken();
                                currentTokenStartPosition = this.scanner.getCurrentTokenStartPosition();
                                char readChar2 = readChar();
                                if (readChar2 == '/' && ((readChar2 = readChar()) == 'a' || readChar2 == 'A')) {
                                    readChar2 = readChar();
                                    if (readChar2 == '>') {
                                        return true;
                                    }
                                }
                                if (readChar2 == '\r' || readChar2 == '\n' || readChar2 == '\t' || readChar2 == ' ') {
                                    break;
                                }
                            }
                        }
                    }
                }
            }
            int i12 = this.tokenPreviousPosition;
            this.index = i12;
            this.scanner.currentPosition = i12;
            this.currentTokenType = -1;
            if (this.tagValue != 10 && this.reportProblems) {
                this.sourceParser.problemReporter().javadocInvalidSeeHref(currentTokenStartPosition, this.lineEnd);
            }
            return false;
        } finally {
            this.scanner.skipComments = z10;
        }
    }

    public boolean parseHtmlTag(int i10, int i11) throws InvalidInputException {
        return false;
    }

    public boolean parseIdentifierTag(boolean z10) {
        if (readTokenSafely() == 22) {
            pushIdentifier(true, false);
            return true;
        }
        if (z10) {
            this.sourceParser.problemReporter().javadocMissingIdentifier(this.tagSourceStart, this.tagSourceEnd, this.sourceParser.modifiers);
        }
        return false;
    }

    public Object parseMember(Object obj) throws InvalidInputException {
        this.identifierPtr = -1;
        this.identifierLengthPtr = -1;
        int currentTokenStartPosition = this.scanner.getCurrentTokenStartPosition();
        this.memberStart = currentTokenStartPosition;
        if (readToken() != 22) {
            int tokenEndPosition = getTokenEndPosition() - 1;
            if (currentTokenStartPosition > tokenEndPosition) {
                tokenEndPosition = currentTokenStartPosition;
            }
            if (this.reportProblems) {
                this.sourceParser.problemReporter().javadocInvalidReference(currentTokenStartPosition, tokenEndPosition);
            }
            int i10 = this.tokenPreviousPosition;
            this.index = i10;
            this.scanner.currentPosition = i10;
            this.currentTokenType = -1;
            return null;
        }
        if (this.scanner.currentCharacter == '.') {
            parseQualifiedName(true);
        } else {
            consumeToken();
            pushIdentifier(true, false);
        }
        int i11 = this.index;
        if (readToken() == 23) {
            consumeToken();
            int currentTokenStartPosition2 = this.scanner.getCurrentTokenStartPosition();
            try {
                return parseArguments(obj);
            } catch (InvalidInputException unused) {
                int currentTokenEndPosition = this.scanner.getCurrentTokenEndPosition() < this.lineEnd ? this.scanner.getCurrentTokenEndPosition() : this.scanner.getCurrentTokenStartPosition();
                int i12 = this.lineEnd;
                if (currentTokenEndPosition >= i12) {
                    currentTokenEndPosition = i12;
                }
                if (this.reportProblems) {
                    this.sourceParser.problemReporter().javadocInvalidSeeReferenceArgs(currentTokenStartPosition2, currentTokenEndPosition);
                }
                return null;
            }
        }
        this.index = i11;
        this.scanner.currentPosition = i11;
        this.currentTokenType = -1;
        if (verifySpaceOrEndComment()) {
            return createFieldReference(obj);
        }
        int i13 = this.starPosition;
        if (i13 == -1) {
            i13 = this.lineEnd;
        }
        if (this.source[i13] == '\n') {
            i13--;
        }
        if (this.reportProblems) {
            this.sourceParser.problemReporter().javadocMalformedSeeReference(currentTokenStartPosition, i13);
        }
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:107:0x0147, code lost:
    
        if (r17.reportProblems == false) goto L103;
     */
    /* JADX WARN: Code restructure failed: missing block: B:108:0x0149, code lost:
    
        r17.sourceParser.problemReporter().javadocInvalidParamTypeParameter(r0, r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:109:0x0152, code lost:
    
        if (r6 != false) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:110:0x0154, code lost:
    
        r17.scanner.currentPosition = r0;
        r17.index = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:111:0x015a, code lost:
    
        r17.currentTokenType = -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:150:0x00c2, code lost:
    
        r11 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0080, code lost:
    
        if (r10 != 1000) goto L144;
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x00b6, code lost:
    
        if (r12 == false) goto L111;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x00b8, code lost:
    
        if (r8 == false) goto L111;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x00ba, code lost:
    
        r17.currentTokenType = -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x00bd, code lost:
    
        r10 = readToken();
     */
    /* JADX WARN: Removed duplicated region for block: B:113:0x015f  */
    /* JADX WARN: Removed duplicated region for block: B:156:0x0182 A[Catch: all -> 0x0038, TRY_ENTER, TRY_LEAVE, TryCatch #1 {all -> 0x0038, blocks: (B:3:0x000d, B:6:0x0017, B:8:0x001e, B:10:0x0024, B:12:0x0028, B:14:0x003d, B:15:0x0043, B:19:0x004a, B:22:0x005a, B:26:0x006a, B:28:0x006c, B:34:0x020c, B:58:0x01f0, B:61:0x01fa, B:64:0x01fd, B:65:0x0209, B:42:0x021b, B:45:0x0221, B:48:0x0233, B:49:0x023d, B:51:0x0248, B:52:0x024e, B:70:0x0087, B:72:0x0092, B:75:0x00ba, B:77:0x00bd, B:144:0x00cb, B:147:0x00ce, B:130:0x00d8, B:135:0x00e5, B:137:0x00e9, B:139:0x00f4, B:140:0x00fa, B:81:0x0101, B:84:0x010c, B:85:0x0115, B:87:0x0117, B:94:0x0129, B:95:0x012c, B:99:0x0135, B:106:0x0145, B:108:0x0149, B:110:0x0154, B:111:0x015a, B:114:0x0161, B:117:0x016c, B:119:0x0164, B:124:0x0104, B:152:0x0175, B:154:0x017c, B:156:0x0182, B:162:0x0195, B:165:0x019b, B:168:0x01a1, B:171:0x01aa, B:174:0x01b3, B:181:0x01b8, B:177:0x01bb, B:187:0x01c8, B:188:0x01d2, B:191:0x01c2, B:192:0x01a4, B:193:0x01db, B:196:0x0095, B:200:0x00a0, B:202:0x00ac, B:204:0x00af), top: B:2:0x000d, inners: #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:164:0x0199 A[DONT_GENERATE] */
    /* JADX WARN: Removed duplicated region for block: B:165:0x019b A[Catch: all -> 0x0038, TryCatch #1 {all -> 0x0038, blocks: (B:3:0x000d, B:6:0x0017, B:8:0x001e, B:10:0x0024, B:12:0x0028, B:14:0x003d, B:15:0x0043, B:19:0x004a, B:22:0x005a, B:26:0x006a, B:28:0x006c, B:34:0x020c, B:58:0x01f0, B:61:0x01fa, B:64:0x01fd, B:65:0x0209, B:42:0x021b, B:45:0x0221, B:48:0x0233, B:49:0x023d, B:51:0x0248, B:52:0x024e, B:70:0x0087, B:72:0x0092, B:75:0x00ba, B:77:0x00bd, B:144:0x00cb, B:147:0x00ce, B:130:0x00d8, B:135:0x00e5, B:137:0x00e9, B:139:0x00f4, B:140:0x00fa, B:81:0x0101, B:84:0x010c, B:85:0x0115, B:87:0x0117, B:94:0x0129, B:95:0x012c, B:99:0x0135, B:106:0x0145, B:108:0x0149, B:110:0x0154, B:111:0x015a, B:114:0x0161, B:117:0x016c, B:119:0x0164, B:124:0x0104, B:152:0x0175, B:154:0x017c, B:156:0x0182, B:162:0x0195, B:165:0x019b, B:168:0x01a1, B:171:0x01aa, B:174:0x01b3, B:181:0x01b8, B:177:0x01bb, B:187:0x01c8, B:188:0x01d2, B:191:0x01c2, B:192:0x01a4, B:193:0x01db, B:196:0x0095, B:200:0x00a0, B:202:0x00ac, B:204:0x00af), top: B:2:0x000d, inners: #3 }] */
    /* JADX WARN: Removed duplicated region for block: B:90:0x0121  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean parseParam() throws InvalidInputException {
        boolean z10;
        boolean z11;
        boolean z12;
        boolean z13;
        int i10;
        int currentTokenStartPosition;
        int currentTokenEndPosition;
        int currentTokenEndPosition2;
        int i11;
        int i12;
        int i13;
        int i14 = this.tagSourceStart;
        int i15 = this.tagSourceEnd;
        Scanner scanner = this.scanner;
        boolean z14 = scanner.tokenizeWhiteSpace;
        scanner.tokenizeWhiteSpace = true;
        try {
            boolean z15 = (this.kind & 8) != 0;
            char c10 = scanner.currentCharacter;
            int i16 = -1;
            if (c10 == ' ' || ScannerHelper.isWhitespace(c10)) {
                this.identifierPtr = -1;
                this.identifierLengthPtr = -1;
                z10 = this.scanner.currentPosition > this.lineEnd + 1;
                z11 = this.sourceLevel >= ClassFileConstants.JDK1_5;
                z12 = true;
                boolean z16 = true;
                z13 = false;
                i10 = -1;
                while (true) {
                    this.currentTokenType = i16;
                    try {
                        i10 = readToken();
                    } catch (InvalidInputException unused) {
                        z12 = false;
                    }
                    if (i10 != 11) {
                        if (i10 != 22) {
                            if (i10 == 61) {
                                break;
                            }
                        } else if (z12) {
                            pushIdentifier(true, false);
                            currentTokenStartPosition = this.scanner.getCurrentTokenStartPosition();
                            currentTokenEndPosition = z10 ? this.lineEnd : this.scanner.getCurrentTokenEndPosition();
                        }
                    }
                    if (z12 && z11) {
                        pushIdentifier(true, true);
                        currentTokenStartPosition = this.scanner.getCurrentTokenStartPosition();
                        currentTokenEndPosition = z10 ? this.lineEnd : this.scanner.getCurrentTokenEndPosition();
                        z13 = true;
                    }
                    if (i10 == 18) {
                        z13 = true;
                    }
                    if (z12 && !z10) {
                        i14 = this.scanner.getCurrentTokenStartPosition();
                    }
                    if (z10) {
                        i15 = this.lineEnd;
                        z12 = false;
                        if (this.scanner.currentPosition > this.lineEnd + 1) {
                            z10 = true;
                        }
                        if (!z12) {
                            break;
                        }
                        i16 = -1;
                    } else {
                        i15 = z10 ? this.lineEnd : this.scanner.getCurrentTokenEndPosition();
                        z12 = false;
                        z16 = false;
                        i16 = -1;
                    }
                }
                if (this.reportProblems) {
                    if (z16) {
                        this.sourceParser.problemReporter().javadocMissingParamName(i14, i15, this.sourceParser.modifiers);
                    } else if (z11 && z13) {
                        this.sourceParser.problemReporter().javadocInvalidParamTypeParameter(i14, i15);
                    } else {
                        this.sourceParser.problemReporter().javadocInvalidParamTagName(i14, i15);
                    }
                }
                if (!z15) {
                    this.scanner.currentPosition = i14;
                    this.index = i14;
                }
                this.currentTokenType = -1;
            } else {
                if (this.reportProblems) {
                    this.sourceParser.problemReporter().javadocInvalidTag(i14, this.scanner.getCurrentTokenEndPosition());
                }
                if (!z15) {
                    this.scanner.currentPosition = i14;
                    this.index = i14;
                }
                this.currentTokenType = -1;
            }
            return false;
            if (i10 == 1000) {
                this.scanner.resetTo(i11, this.javadocEnd);
                this.index = i11;
                boolean pushParamName = pushParamName(z13);
                this.scanner.tokenizeWhiteSpace = z14;
                return pushParamName;
            }
            this.currentTokenType = -1;
            if (!z15) {
                return false;
            }
            if (this.reportProblems) {
                currentTokenEndPosition2 = z10 ? this.lineEnd : this.scanner.getCurrentTokenEndPosition();
                while (true) {
                    try {
                        int readToken = readToken();
                        if (readToken == 1000 || readToken == 61) {
                            break;
                        }
                        this.currentTokenType = -1;
                        currentTokenEndPosition2 = z10 ? this.lineEnd : this.scanner.getCurrentTokenEndPosition();
                    } catch (InvalidInputException unused2) {
                        currentTokenEndPosition2 = this.lineEnd;
                    }
                }
                if (z11 || !z13) {
                    this.sourceParser.problemReporter().javadocInvalidParamTagName(currentTokenStartPosition, currentTokenEndPosition2);
                } else {
                    this.sourceParser.problemReporter().javadocInvalidParamTypeParameter(currentTokenStartPosition, currentTokenEndPosition2);
                }
            }
            Scanner scanner2 = this.scanner;
            scanner2.currentPosition = currentTokenStartPosition;
            this.index = currentTokenStartPosition;
            this.currentTokenType = -1;
            scanner2.tokenizeWhiteSpace = z14;
            return false;
            if (i10 != 22) {
                if (i10 != 61) {
                    if (i10 != 1000) {
                        currentTokenEndPosition = z10 ? this.lineEnd : this.scanner.getCurrentTokenEndPosition();
                        z12 = false;
                    } else if (z12 && this.scanner.currentPosition <= this.lineEnd + 1) {
                    }
                }
                if (this.reportProblems) {
                    this.sourceParser.problemReporter().javadocInvalidParamTypeParameter(currentTokenStartPosition, currentTokenEndPosition);
                }
                if (!z15) {
                    this.scanner.currentPosition = currentTokenStartPosition;
                    this.index = currentTokenStartPosition;
                }
                this.currentTokenType = -1;
                return false;
            }
            currentTokenEndPosition = z10 ? this.lineEnd : this.scanner.getCurrentTokenEndPosition();
            if (z12) {
                pushIdentifier(false, false);
                boolean z17 = z12;
                i12 = -1;
                i13 = i10;
                boolean z18 = z10;
                int i17 = currentTokenEndPosition;
                boolean z19 = false;
                while (true) {
                    this.currentTokenType = i12;
                    try {
                        i13 = readToken();
                    } catch (InvalidInputException unused3) {
                        z17 = false;
                    }
                    if (i13 != 15) {
                        i17 = z18 ? this.lineEnd : this.scanner.getCurrentTokenEndPosition();
                        if (z17) {
                            pushIdentifier(false, true);
                            z10 = z18;
                            i10 = i13;
                            z12 = z17;
                            break;
                        }
                    } else if (i13 != 61) {
                        if (i13 == 1000) {
                            if (this.scanner.currentPosition > this.lineEnd + 1) {
                                z17 = false;
                                z18 = true;
                            }
                            if (!z17) {
                                break;
                            }
                            z19 = true;
                        } else {
                            if (!z19) {
                                i17 = z18 ? this.lineEnd : this.scanner.getCurrentTokenEndPosition();
                            }
                            z17 = false;
                        }
                    } else {
                        break;
                    }
                    i12 = -1;
                }
                if (z12) {
                    this.currentTokenType = -1;
                    i11 = this.scanner.currentPosition;
                    try {
                        i10 = readTokenAndConsume();
                    } catch (InvalidInputException unused4) {
                    }
                    if (i10 == 1000) {
                    }
                }
                this.currentTokenType = -1;
                if (!z15) {
                }
            }
            if (z11) {
            }
            this.sourceParser.problemReporter().javadocInvalidParamTagName(currentTokenStartPosition, currentTokenEndPosition2);
            Scanner scanner22 = this.scanner;
            scanner22.currentPosition = currentTokenStartPosition;
            this.index = currentTokenStartPosition;
            this.currentTokenType = -1;
            scanner22.tokenizeWhiteSpace = z14;
            return false;
            if (i13 != 15) {
            }
            i12 = -1;
        } finally {
            this.scanner.tokenizeWhiteSpace = z14;
        }
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:45:0x003a. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:46:0x003d. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:47:0x0040. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:48:0x0043. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:49:0x0046. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:26:0x00b5  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x005b A[EDGE_INSN: B:73:0x005b->B:71:0x005b BREAK  A[LOOP:0: B:5:0x000d->B:17:0x00c8], FALL_THROUGH] */
    /* JADX WARN: Removed duplicated region for block: B:72:0x005d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public Object parseQualifiedName(boolean z10) throws InvalidInputException {
        int readTokenSafely;
        int i10;
        if (z10) {
            this.identifierPtr = -1;
            this.identifierLengthPtr = -1;
        }
        int i11 = this.kind & 255;
        int i12 = 0;
        while (true) {
            readTokenSafely = readTokenSafely();
            if (readTokenSafely != 1) {
                if (readTokenSafely == 17) {
                    break;
                }
                if (readTokenSafely != 22) {
                    if (readTokenSafely != 48 && readTokenSafely != 67 && readTokenSafely != 70 && readTokenSafely != 83 && readTokenSafely != 123 && readTokenSafely != 85 && readTokenSafely != 86) {
                        switch (readTokenSafely) {
                            default:
                                switch (readTokenSafely) {
                                    default:
                                        switch (readTokenSafely) {
                                            default:
                                                switch (readTokenSafely) {
                                                    default:
                                                        switch (readTokenSafely) {
                                                        }
                                                    case 73:
                                                    case 74:
                                                    case 75:
                                                    case 76:
                                                    case 77:
                                                    case 78:
                                                    case 79:
                                                    case 80:
                                                    case 81:
                                                        if (i12 == 0) {
                                                            pushIdentifier(true, true);
                                                            consumeToken();
                                                            if (i11 != 8 && this.currentTokenType != -1) {
                                                                int i13 = this.tokenPreviousPosition;
                                                                this.index = i13;
                                                                this.scanner.currentPosition = i13;
                                                                this.currentTokenType = -1;
                                                            }
                                                            i10 = this.identifierPtr;
                                                            if (i10 >= 0) {
                                                                this.lastIdentifierEndPosition = (int) this.identifierPositionStack[i10];
                                                            }
                                                            return createTypeReference(readTokenSafely);
                                                        }
                                                        break;
                                                }
                                            case 50:
                                            case 51:
                                            case 52:
                                            case 53:
                                            case 54:
                                            case 55:
                                            case 56:
                                            case 57:
                                            case 58:
                                            case 59:
                                            case 60:
                                                break;
                                        }
                                    case 38:
                                    case 39:
                                    case 40:
                                        break;
                                }
                            case 34:
                            case 35:
                            case 36:
                                break;
                        }
                    }
                } else {
                    if ((i12 & 1) != 0) {
                        break;
                    }
                    pushIdentifier(i12 == 0, false);
                    consumeToken();
                }
            } else {
                if ((i12 & 1) == 0) {
                    throw new InvalidInputException();
                }
                consumeToken();
            }
            i12++;
        }
        if (i12 == 0) {
        }
        if (i12 == 0) {
            int i14 = this.identifierPtr;
            if (i14 < 0) {
                return null;
            }
            this.lastIdentifierEndPosition = (int) this.identifierPositionStack[i14];
            return null;
        }
        if ((i12 & 1) == 0) {
            if (i11 != 2) {
                if (i11 == 8) {
                    int i15 = this.identifierPtr;
                    if (i15 >= 0) {
                        this.lastIdentifierEndPosition = (int) this.identifierPositionStack[i15];
                    }
                    return syntaxRecoverQualifiedName(-1);
                }
            } else if (this.currentTokenType != -1) {
                int i16 = this.tokenPreviousPosition;
                this.index = i16;
                this.scanner.currentPosition = i16;
                this.currentTokenType = -1;
            }
            throw new InvalidInputException();
        }
        readTokenSafely = -1;
        if (i11 != 8) {
            int i132 = this.tokenPreviousPosition;
            this.index = i132;
            this.scanner.currentPosition = i132;
            this.currentTokenType = -1;
        }
        i10 = this.identifierPtr;
        if (i10 >= 0) {
        }
        return createTypeReference(readTokenSafely);
    }

    public boolean parseReference() throws InvalidInputException {
        char readChar;
        int i10 = this.scanner.currentPosition;
        Object obj = null;
        int i11 = -1;
        do {
            try {
                int i12 = this.index;
                int i13 = 1;
                if (i12 < this.scanner.eofPosition) {
                    int readTokenSafely = readTokenSafely();
                    if (readTokenSafely != 11) {
                        if (readTokenSafely != 22) {
                            if (readTokenSafely != 46) {
                                if (readTokenSafely == 129) {
                                    consumeToken();
                                    Scanner scanner = this.scanner;
                                    if (scanner.currentCharacter == '#') {
                                        Object parseMember = parseMember(obj);
                                        if (parseMember != null) {
                                            return pushSeeRef(parseMember);
                                        }
                                        return false;
                                    }
                                    char[] currentIdentifierSource = scanner.getCurrentIdentifierSource();
                                    if (currentIdentifierSource.length > 0 && currentIdentifierSource[0] == '\"') {
                                        if (this.reportProblems) {
                                            if (this.tagValue == 6) {
                                                int length = currentIdentifierSource.length;
                                                while (i13 < length && ScannerHelper.isLetter(currentIdentifierSource[i13])) {
                                                    i13++;
                                                }
                                                if (i13 < length - 2 && currentIdentifierSource[i13] == ':' && currentIdentifierSource[i13 + 1] == '/' && currentIdentifierSource[i13 + 2] == '/') {
                                                    this.sourceParser.problemReporter().javadocInvalidSeeUrlReference(this.scanner.getCurrentTokenStartPosition(), getTokenEndPosition());
                                                }
                                            }
                                            this.sourceParser.problemReporter().javadocInvalidReference(this.scanner.getCurrentTokenStartPosition(), getTokenEndPosition());
                                        }
                                        return false;
                                    }
                                }
                            } else if (obj == null) {
                                consumeToken();
                                int currentTokenStartPosition = this.scanner.getCurrentTokenStartPosition();
                                if (this.tagValue == 10) {
                                    if (this.reportProblems) {
                                        this.sourceParser.problemReporter().javadocInvalidValueReference(currentTokenStartPosition, getTokenEndPosition(), this.sourceParser.modifiers);
                                    }
                                    return false;
                                }
                                if (verifyEndLine(i12)) {
                                    return createFakeReference(currentTokenStartPosition);
                                }
                                if (this.reportProblems) {
                                    this.sourceParser.problemReporter().javadocUnexpectedText(this.scanner.currentPosition, this.lineEnd);
                                }
                                return false;
                            }
                        } else if (obj == null) {
                            i11 = this.scanner.getCurrentTokenStartPosition();
                            obj = parseQualifiedName(true);
                        }
                    } else if (obj == null) {
                        consumeToken();
                        int currentTokenStartPosition2 = this.scanner.getCurrentTokenStartPosition();
                        if (parseHref()) {
                            consumeToken();
                            if (this.tagValue == 10) {
                                if (this.reportProblems) {
                                    this.sourceParser.problemReporter().javadocInvalidValueReference(currentTokenStartPosition2, getIndexPosition(), this.sourceParser.modifiers);
                                }
                                return false;
                            }
                            if (verifyEndLine(i12)) {
                                return createFakeReference(currentTokenStartPosition2);
                            }
                            if (this.reportProblems) {
                                this.sourceParser.problemReporter().javadocUnexpectedText(this.scanner.currentPosition, this.lineEnd);
                            }
                        } else if (this.tagValue == 10 && this.reportProblems) {
                            this.sourceParser.problemReporter().javadocInvalidValueReference(currentTokenStartPosition2, getIndexPosition(), this.sourceParser.modifiers);
                        }
                        return false;
                    }
                }
                if (obj == null) {
                    int i14 = this.tokenPreviousPosition;
                    this.index = i14;
                    this.scanner.currentPosition = i14;
                    this.currentTokenType = -1;
                    if (this.tagValue == 10) {
                        if ((this.kind & 2) != 0) {
                            createTag();
                        }
                        return true;
                    }
                    if (this.reportProblems) {
                        this.sourceParser.problemReporter().javadocMissingReference(this.tagSourceStart, this.tagSourceEnd, this.sourceParser.modifiers);
                    }
                    return false;
                }
                int i15 = this.lastIdentifierEndPosition;
                if (i15 > this.javadocStart) {
                    int i16 = i15 + 1;
                    this.index = i16;
                    this.scanner.currentPosition = i16;
                }
                this.currentTokenType = -1;
                if (this.tagValue == 10) {
                    if (this.reportProblems) {
                        this.sourceParser.problemReporter().javadocInvalidReference(i11, this.lineEnd);
                    }
                    return false;
                }
                int i17 = this.index;
                char readChar2 = readChar();
                if (readChar2 == '(') {
                    if (this.reportProblems) {
                        ProblemReporter problemReporter = this.sourceParser.problemReporter();
                        int i18 = this.lineEnd;
                        problemReporter.javadocMissingHashCharacter(i11, i18, String.valueOf(this.source, i11, (i18 - i11) + 1));
                    }
                    return false;
                }
                if (readChar2 == ':' && (readChar = readChar()) == '/' && readChar == readChar() && this.reportProblems) {
                    this.sourceParser.problemReporter().javadocInvalidSeeUrlReference(i11, this.lineEnd);
                    return false;
                }
                this.index = i17;
                if (verifySpaceOrEndComment()) {
                    return pushSeeRef(obj);
                }
                int i19 = this.tokenPreviousPosition;
                this.index = i19;
                this.scanner.currentPosition = i19;
                this.currentTokenType = -1;
                int i20 = this.starPosition;
                if (i20 == -1) {
                    i20 = this.lineEnd;
                }
                if (this.source[i20] == '\n') {
                    i20--;
                }
                if (this.reportProblems) {
                    this.sourceParser.problemReporter().javadocMalformedSeeReference(i11, i20);
                }
                return false;
            } catch (InvalidInputException unused) {
                if (this.reportProblems) {
                    this.sourceParser.problemReporter().javadocInvalidReference(i10, getTokenEndPosition());
                }
                int i21 = this.tokenPreviousPosition;
                this.index = i21;
                this.scanner.currentPosition = i21;
                this.currentTokenType = -1;
                return false;
            }
        } while (!this.abort);
        return false;
    }

    public abstract boolean parseTag(int i10) throws InvalidInputException;

    public boolean parseThrows() {
        Object parseQualifiedName;
        int i10 = this.scanner.currentPosition;
        try {
            parseQualifiedName = parseQualifiedName(true);
        } catch (InvalidInputException unused) {
            if (this.reportProblems) {
                this.sourceParser.problemReporter().javadocInvalidThrowsClass(i10, getTokenEndPosition());
            }
        }
        if (this.abort) {
            return false;
        }
        if (parseQualifiedName != null) {
            return pushThrowName(parseQualifiedName);
        }
        if (this.reportProblems) {
            this.sourceParser.problemReporter().javadocMissingThrowsClassName(this.tagSourceStart, this.tagSourceEnd, this.sourceParser.modifiers);
        }
        return false;
    }

    public char peekChar() {
        char c10;
        int hexadecimalValue;
        int i10 = this.index;
        char[] cArr = this.source;
        int i11 = i10 + 1;
        char c11 = cArr[i10];
        if (c11 != '\\' || cArr[i11] != 'u') {
            return c11;
        }
        int i12 = i10 + 2;
        while (true) {
            c10 = this.source[i12];
            if (c10 != 'u') {
                break;
            }
            i12++;
        }
        int i13 = i12 + 1;
        int hexadecimalValue2 = ScannerHelper.getHexadecimalValue(c10);
        if (hexadecimalValue2 > 15 || hexadecimalValue2 < 0) {
            return c11;
        }
        int i14 = i12 + 2;
        int hexadecimalValue3 = ScannerHelper.getHexadecimalValue(this.source[i13]);
        if (hexadecimalValue3 > 15 || hexadecimalValue3 < 0) {
            return c11;
        }
        int i15 = i12 + 3;
        int hexadecimalValue4 = ScannerHelper.getHexadecimalValue(this.source[i14]);
        return (hexadecimalValue4 > 15 || hexadecimalValue4 < 0 || (hexadecimalValue = ScannerHelper.getHexadecimalValue(this.source[i15])) > 15 || hexadecimalValue < 0) ? c11 : (char) ((((((hexadecimalValue2 * 16) + hexadecimalValue3) * 16) + hexadecimalValue4) * 16) + hexadecimalValue);
    }

    public void pushIdentifier(boolean z10, boolean z11) {
        char[][] cArr = this.identifierStack;
        int length = cArr.length;
        int i10 = this.identifierPtr + 1;
        this.identifierPtr = i10;
        if (i10 >= length) {
            int i11 = length + 10;
            char[][] cArr2 = new char[i11];
            this.identifierStack = cArr2;
            System.arraycopy(cArr, 0, cArr2, 0, length);
            long[] jArr = this.identifierPositionStack;
            long[] jArr2 = new long[i11];
            this.identifierPositionStack = jArr2;
            System.arraycopy(jArr, 0, jArr2, 0, length);
        }
        this.identifierStack[this.identifierPtr] = z11 ? this.scanner.getCurrentTokenSource() : this.scanner.getCurrentIdentifierSource();
        long[] jArr3 = this.identifierPositionStack;
        int i12 = this.identifierPtr;
        Scanner scanner = this.scanner;
        jArr3[i12] = (scanner.startPosition << 32) + (scanner.currentPosition - 1);
        if (!z10) {
            int[] iArr = this.identifierLengthStack;
            int i13 = this.identifierLengthPtr;
            iArr[i13] = iArr[i13] + 1;
            return;
        }
        int[] iArr2 = this.identifierLengthStack;
        int length2 = iArr2.length;
        int i14 = this.identifierLengthPtr + 1;
        this.identifierLengthPtr = i14;
        if (i14 >= length2) {
            int[] iArr3 = new int[length2 + 10];
            this.identifierLengthStack = iArr3;
            System.arraycopy(iArr2, 0, iArr3, 0, length2);
        }
        this.identifierLengthStack[this.identifierLengthPtr] = 1;
    }

    public void pushOnAstStack(Object obj, boolean z10) {
        if (obj == null) {
            int[] iArr = this.astLengthStack;
            int length = iArr.length;
            int i10 = this.astLengthPtr + 1;
            this.astLengthPtr = i10;
            if (i10 >= length) {
                int[] iArr2 = new int[length + 10];
                this.astLengthStack = iArr2;
                System.arraycopy(iArr, 0, iArr2, 0, length);
            }
            this.astLengthStack[this.astLengthPtr] = 0;
            return;
        }
        Object[] objArr = this.astStack;
        int length2 = objArr.length;
        int i11 = this.astPtr + 1;
        this.astPtr = i11;
        if (i11 >= length2) {
            Object[] objArr2 = new Object[length2 + 10];
            this.astStack = objArr2;
            System.arraycopy(objArr, 0, objArr2, 0, length2);
            this.astPtr = length2;
        }
        this.astStack[this.astPtr] = obj;
        if (!z10) {
            int[] iArr3 = this.astLengthStack;
            int i12 = this.astLengthPtr;
            iArr3[i12] = iArr3[i12] + 1;
            return;
        }
        int[] iArr4 = this.astLengthStack;
        int length3 = iArr4.length;
        int i13 = this.astLengthPtr + 1;
        this.astLengthPtr = i13;
        if (i13 >= length3) {
            int[] iArr5 = new int[length3 + 10];
            this.astLengthStack = iArr5;
            System.arraycopy(iArr4, 0, iArr5, 0, length3);
        }
        this.astLengthStack[this.astLengthPtr] = 1;
    }

    public abstract boolean pushParamName(boolean z10);

    public abstract boolean pushSeeRef(Object obj);

    public void pushText(int i10, int i11) {
    }

    public abstract boolean pushThrowName(Object obj);

    public char readChar() {
        int i10;
        char c10;
        char[] cArr = this.source;
        int i11 = this.index;
        int i12 = i11 + 1;
        this.index = i12;
        char c11 = cArr[i11];
        if (c11 != '\\' || cArr[i12] != 'u') {
            return c11;
        }
        this.index = i11 + 2;
        while (true) {
            char[] cArr2 = this.source;
            i10 = this.index;
            c10 = cArr2[i10];
            if (c10 != 'u') {
                break;
            }
            this.index = i10 + 1;
        }
        this.index = i10 + 1;
        int hexadecimalValue = ScannerHelper.getHexadecimalValue(c10);
        if (hexadecimalValue <= 15 && hexadecimalValue >= 0) {
            char[] cArr3 = this.source;
            int i13 = this.index;
            this.index = i13 + 1;
            int hexadecimalValue2 = ScannerHelper.getHexadecimalValue(cArr3[i13]);
            if (hexadecimalValue2 <= 15 && hexadecimalValue2 >= 0) {
                char[] cArr4 = this.source;
                int i14 = this.index;
                this.index = i14 + 1;
                int hexadecimalValue3 = ScannerHelper.getHexadecimalValue(cArr4[i14]);
                if (hexadecimalValue3 <= 15 && hexadecimalValue3 >= 0) {
                    char[] cArr5 = this.source;
                    int i15 = this.index;
                    this.index = i15 + 1;
                    int hexadecimalValue4 = ScannerHelper.getHexadecimalValue(cArr5[i15]);
                    if (hexadecimalValue4 <= 15 && hexadecimalValue4 >= 0) {
                        return (char) ((((((hexadecimalValue * 16) + hexadecimalValue2) * 16) + hexadecimalValue3) * 16) + hexadecimalValue4);
                    }
                }
            }
        }
        this.index = i12;
        return c11;
    }

    public int readToken() throws InvalidInputException {
        if (this.currentTokenType < 0) {
            Scanner scanner = this.scanner;
            this.tokenPreviousPosition = scanner.currentPosition;
            this.currentTokenType = scanner.getNextToken();
            if (this.scanner.currentPosition > this.lineEnd + 1) {
                this.lineStarted = false;
                while (this.currentTokenType == 8) {
                    this.currentTokenType = this.scanner.getNextToken();
                }
            }
            this.index = this.scanner.currentPosition;
            this.lineStarted = true;
        }
        return this.currentTokenType;
    }

    public int readTokenAndConsume() throws InvalidInputException {
        int readToken = readToken();
        consumeToken();
        return readToken;
    }

    public int readTokenSafely() {
        try {
            return readToken();
        } catch (InvalidInputException unused) {
            return 129;
        }
    }

    public void recordInheritedPosition(long j10) {
        long[] jArr = this.inheritedPositions;
        if (jArr == null) {
            this.inheritedPositions = new long[4];
            this.inheritedPositionsPtr = 0;
        } else {
            int i10 = this.inheritedPositionsPtr;
            if (i10 == jArr.length) {
                long[] jArr2 = new long[i10 + 4];
                this.inheritedPositions = jArr2;
                System.arraycopy(jArr, 0, jArr2, 0, i10);
            }
        }
        long[] jArr3 = this.inheritedPositions;
        int i11 = this.inheritedPositionsPtr;
        this.inheritedPositionsPtr = i11 + 1;
        jArr3[i11] = j10;
    }

    public void refreshInlineTagPosition(int i10) {
    }

    public void refreshReturnStatement() {
    }

    public void setInlineTagStarted(boolean z10) {
        this.inlineTagStarted = z10;
    }

    public Object syntaxRecoverQualifiedName(int i10) throws InvalidInputException {
        return null;
    }

    public String toString() {
        char[] cArr;
        StringBuffer stringBuffer = new StringBuffer();
        int i10 = this.scanner.currentPosition;
        int i11 = this.index;
        int i12 = i10 < i11 ? i10 : i11;
        if (i10 < i11) {
            i10 = i11;
        }
        char[] cArr2 = this.source;
        if (i12 == cArr2.length) {
            return "EOF\n\n" + new String(this.source);
        }
        if (i10 > cArr2.length) {
            return "behind the EOF\n\n" + new String(this.source);
        }
        char[] cArr3 = new char[i12];
        System.arraycopy(cArr2, 0, cArr3, 0, i12);
        int i13 = i10 - 1;
        int i14 = (i13 - i12) + 1;
        if (i14 > -1) {
            cArr = new char[i14];
            System.arraycopy(this.source, i12, cArr, 0, i14);
        } else {
            cArr = CharOperation.NO_CHAR;
        }
        char[] cArr4 = this.source;
        char[] cArr5 = new char[cArr4.length - i13];
        System.arraycopy(cArr4, i10, cArr5, 0, (cArr4.length - i13) - 1);
        stringBuffer.append(cArr3);
        if (this.scanner.currentPosition < this.index) {
            stringBuffer.append("\n===============================\nScanner current position here -->");
        } else {
            stringBuffer.append("\n===============================\nParser index here -->");
        }
        stringBuffer.append(cArr);
        if (this.scanner.currentPosition < this.index) {
            stringBuffer.append("<-- Parser index here\n===============================\n");
        } else {
            stringBuffer.append("<-- Scanner current position here\n===============================\n");
        }
        stringBuffer.append(cArr5);
        return stringBuffer.toString();
    }

    public abstract void updateDocComment();

    public void updateLineEnd() {
        while (this.index > this.lineEnd + 1) {
            int i10 = this.linePtr;
            if (i10 >= this.lastLinePtr) {
                this.lineEnd = this.javadocEnd;
                return;
            }
            Scanner scanner = this.scanner;
            this.linePtr = i10 + 1;
            this.lineEnd = scanner.getLineEnd(r0) - 1;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:37:0x006b, code lost:
    
        r7.index = r3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x006d, code lost:
    
        return false;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean verifyEndLine(int i10) {
        boolean z10 = (this.kind & 2) != 0;
        if (this.inlineTagStarted) {
            if (peekChar() != '}') {
                return false;
            }
            if (z10) {
                createTag();
                pushText(i10, this.index);
            }
            return true;
        }
        int i11 = this.index;
        this.starPosition = -1;
        char readChar = readChar();
        int i12 = i11;
        while (true) {
            if (readChar != '\t') {
                if (readChar != '\n') {
                    if (readChar != '\f') {
                        if (readChar == '\r') {
                            break;
                        }
                        if (readChar != ' ') {
                            if (readChar == '*') {
                                this.starPosition = i12;
                                i12 = this.index;
                                readChar = readChar();
                            } else if (readChar == '/' && this.starPosition >= i10) {
                                if (z10) {
                                    createTag();
                                    pushText(i10, this.starPosition);
                                }
                                return true;
                            }
                        }
                    }
                } else {
                    break;
                }
            }
            if (this.starPosition >= 0) {
                break;
            }
            i12 = this.index;
            readChar = readChar();
        }
        if (z10) {
            createTag();
            pushText(i10, i12);
        }
        this.index = i12;
        return true;
    }

    public boolean verifySpaceOrEndComment() {
        this.starPosition = -1;
        int i10 = this.index;
        char peekChar = peekChar();
        if (peekChar == '}') {
            return this.inlineTagStarted;
        }
        if (ScannerHelper.isWhitespace(peekChar)) {
            return true;
        }
        int i11 = this.index;
        char readChar = readChar();
        while (true) {
            int i12 = this.index;
            if (i12 >= this.source.length) {
                this.index = i10;
                return false;
            }
            if (readChar != '*') {
                if (readChar == '/' && this.starPosition >= i10) {
                    return true;
                }
                this.index = i10;
                return false;
            }
            this.starPosition = i11;
            readChar = readChar();
            i11 = i12;
        }
    }
}
