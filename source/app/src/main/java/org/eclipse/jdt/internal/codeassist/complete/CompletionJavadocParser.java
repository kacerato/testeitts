package org.eclipse.jdt.internal.codeassist.complete;

import java.util.ArrayList;
import java.util.List;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.core.compiler.InvalidInputException;
import org.eclipse.jdt.internal.codeassist.CompletionEngine;
import org.eclipse.jdt.internal.compiler.ast.ASTNode;
import org.eclipse.jdt.internal.compiler.ast.Expression;
import org.eclipse.jdt.internal.compiler.ast.JavadocAllocationExpression;
import org.eclipse.jdt.internal.compiler.ast.JavadocArgumentExpression;
import org.eclipse.jdt.internal.compiler.ast.JavadocFieldReference;
import org.eclipse.jdt.internal.compiler.ast.JavadocMessageSend;
import org.eclipse.jdt.internal.compiler.ast.JavadocQualifiedTypeReference;
import org.eclipse.jdt.internal.compiler.ast.JavadocSingleNameReference;
import org.eclipse.jdt.internal.compiler.ast.JavadocSingleTypeReference;
import org.eclipse.jdt.internal.compiler.ast.TypeDeclaration;
import org.eclipse.jdt.internal.compiler.ast.TypeReference;
import org.eclipse.jdt.internal.compiler.classfmt.ClassFileConstants;
import org.eclipse.jdt.internal.compiler.parser.JavadocParser;
import org.eclipse.jdt.internal.compiler.parser.JavadocTagConstants;
import org.eclipse.jdt.internal.compiler.parser.Parser;
import org.eclipse.jdt.internal.compiler.parser.Scanner;
import org.eclipse.jdt.internal.compiler.parser.ScannerHelper;

public class CompletionJavadocParser extends JavadocParser {
    public static final int BLOCK_ALL_TAGS_LENGTH;
    public static final int INLINE_ALL_TAGS_LENGTH;
    boolean allPossibleTags;
    CompletionOnJavadoc completionNode;
    int cursorLocation;
    char[][][] levelTags;
    int[] levelTagsLength;
    boolean pushText;

    static {
        int i10 = 0;
        for (int i11 = 0; i11 < JavadocTagConstants.INLINE_TAGS_LENGTH; i11++) {
            i10 += JavadocTagConstants.INLINE_TAGS[i11].length;
        }
        INLINE_ALL_TAGS_LENGTH = i10;
        int i12 = 0;
        for (int i13 = 0; i13 < JavadocTagConstants.BLOCK_TAGS_LENGTH; i13++) {
            i12 += JavadocTagConstants.BLOCK_TAGS[i13].length;
        }
        BLOCK_ALL_TAGS_LENGTH = i12;
    }

    public CompletionJavadocParser(CompletionParser completionParser) {
        super(completionParser);
        this.levelTags = new char[2][];
        this.levelTagsLength = new int[2];
        this.completionNode = null;
        this.pushText = false;
        this.allPossibleTags = false;
        this.scanner = new CompletionScanner(ClassFileConstants.JDK1_3);
        this.kind = 264;
        initLevelTags();
    }

    private CompletionJavadoc getCompletionJavadoc() {
        return (CompletionJavadoc) this.docComment;
    }

    private CompletionParser getCompletionParser() {
        return (CompletionParser) this.sourceParser;
    }

    private void initLevelTags() {
        int i10 = ((int) (this.complianceLevel >>> 16)) - 44;
        if (i10 >= JavadocTagConstants.BLOCK_TAGS_LENGTH) {
            return;
        }
        this.levelTags[0] = new char[BLOCK_ALL_TAGS_LENGTH];
        this.levelTagsLength[0] = 0;
        for (int i11 = 0; i11 <= i10; i11++) {
            char[][] cArr = JavadocTagConstants.BLOCK_TAGS[i11];
            int length = cArr.length;
            System.arraycopy(cArr, 0, this.levelTags[0], this.levelTagsLength[0], length);
            int[] iArr = this.levelTagsLength;
            iArr[0] = iArr[0] + length;
        }
        int i12 = this.levelTagsLength[0];
        if (i12 < BLOCK_ALL_TAGS_LENGTH) {
            char[][][] cArr2 = this.levelTags;
            char[][] cArr3 = cArr2[0];
            char[][] cArr4 = new char[i12];
            cArr2[0] = cArr4;
            System.arraycopy(cArr3, 0, cArr4, 0, i12);
        }
        this.levelTags[1] = new char[INLINE_ALL_TAGS_LENGTH];
        this.levelTagsLength[1] = 0;
        for (int i13 = 0; i13 <= i10; i13++) {
            char[][] cArr5 = JavadocTagConstants.INLINE_TAGS[i13];
            int length2 = cArr5.length;
            System.arraycopy(cArr5, 0, this.levelTags[1], this.levelTagsLength[1], length2);
            int[] iArr2 = this.levelTagsLength;
            iArr2[1] = iArr2[1] + length2;
        }
        int i14 = this.levelTagsLength[1];
        if (i14 < INLINE_ALL_TAGS_LENGTH) {
            char[][][] cArr6 = this.levelTags;
            char[][] cArr7 = cArr6[1];
            char[][] cArr8 = new char[i14];
            cArr6[1] = cArr8;
            System.arraycopy(cArr7, 0, cArr8, 0, i14);
        }
    }

    private char[][][] possibleTags(char[] cArr, boolean z10) {
        char[][][] cArr2 = new char[2][];
        if (z10) {
            char[][] cArr3 = this.levelTags[0];
            int i10 = this.levelTagsLength[0];
            char[][] cArr4 = new char[i10];
            cArr2[0] = cArr4;
            System.arraycopy(cArr3, 0, cArr4, 0, i10);
        } else {
            cArr2[0] = CharOperation.NO_CHAR_CHAR;
        }
        char[][] cArr5 = this.levelTags[1];
        int i11 = this.levelTagsLength[1];
        char[][] cArr6 = new char[i11];
        cArr2[1] = cArr6;
        System.arraycopy(cArr5, 0, cArr6, 0, i11);
        if (cArr == null || cArr.length == 0) {
            return cArr2;
        }
        int length = this.levelTags.length;
        for (int i12 = 0; i12 < length; i12++) {
            int length2 = cArr2[i12].length;
            int[] iArr = new int[length2];
            int i13 = 0;
            for (int i14 = 0; i14 < length2; i14++) {
                if (CharOperation.prefixEquals(cArr, cArr2[i12][i14], false)) {
                    iArr[i13] = i14;
                    i13++;
                }
            }
            char[][] cArr7 = new char[i13];
            for (int i15 = 0; i15 < i13; i15++) {
                cArr7[i15] = cArr2[i12][iArr[i15]];
            }
            cArr2[i12] = cArr7;
        }
        return cArr2;
    }

    @Override
    public boolean checkDeprecation(int i10) {
        Parser parser = this.sourceParser;
        int i11 = ((CompletionParser) parser).cursorLocation;
        this.cursorLocation = i11;
        CompletionScanner completionScanner = (CompletionScanner) this.scanner;
        completionScanner.cursorLocation = i11;
        Scanner scanner = parser.scanner;
        int i12 = scanner.commentStarts[i10];
        this.javadocStart = i12;
        int i13 = scanner.commentStops[i10];
        this.javadocEnd = i13;
        boolean z10 = false;
        if (i12 > i11 || i11 > i13) {
            if (scanner.commentTagStarts[i10] != 0) {
                boolean z11 = this.checkDocComment;
                this.checkDocComment = false;
                z10 = super.checkDeprecation(i10);
                this.checkDocComment = z11;
            }
            this.docComment = null;
        } else {
            if (CompletionEngine.DEBUG) {
                System.out.println("COMPLETION in Javadoc:");
            }
            completionScanner.completionIdentifier = null;
            super.checkDeprecation(i10);
        }
        return z10;
    }

    @Override
    public boolean commentParse() {
        this.docComment = new CompletionJavadoc(this.javadocStart, this.javadocEnd);
        this.firstTagPosition = 1;
        return super.commentParse();
    }

    @Override
    public Object createArgumentReference(char[] cArr, int i10, boolean z10, Object obj, long[] jArr, long j10) throws InvalidInputException {
        if (cArr == null) {
            cArr = CharOperation.NO_CHAR;
        }
        Expression expression = (Expression) super.createArgumentReference(cArr, i10, z10, obj, jArr, j10);
        TypeReference typeReference = (TypeReference) obj;
        int i11 = typeReference.sourceStart;
        int i12 = typeReference.sourceEnd;
        int i13 = this.cursorLocation;
        boolean z11 = (i11 <= i13 && i13 <= i12) || (i11 == i12 + 1 && i12 == i13);
        if (this.completionNode != null || !z11) {
            return expression;
        }
        TypeReference typeReference2 = ((JavadocArgumentExpression) expression).argument.type;
        if (typeReference2 instanceof JavadocSingleTypeReference) {
            this.completionNode = new CompletionOnJavadocSingleTypeReference((JavadocSingleTypeReference) typeReference2);
        } else if (typeReference2 instanceof JavadocQualifiedTypeReference) {
            this.completionNode = new CompletionOnJavadocQualifiedTypeReference((JavadocQualifiedTypeReference) typeReference2);
        }
        if (CompletionEngine.DEBUG) {
            System.out.println("\tcompletion argument=" + ((Object) this.completionNode));
        }
        return this.completionNode;
    }

    @Override
    public Object createFieldReference(Object obj) throws InvalidInputException {
        long j10 = this.identifierPositionStack[0];
        int i10 = (int) (j10 >>> 32);
        int i11 = (int) j10;
        int i12 = this.cursorLocation;
        if ((i10 > i12 + 1 || i12 > i11) && !((i10 == i11 + 1 && i11 == i12) || this.memberStart == i12)) {
            return super.createFieldReference(obj);
        }
        JavadocFieldReference javadocFieldReference = (JavadocFieldReference) super.createFieldReference(obj);
        char[] mainTypeName = this.sourceParser.compilationUnit.getMainTypeName();
        TypeDeclaration parsedTypeDeclaration = getParsedTypeDeclaration();
        if (parsedTypeDeclaration != null) {
            mainTypeName = parsedTypeDeclaration.name;
        }
        this.completionNode = new CompletionOnJavadocFieldReference(javadocFieldReference, this.memberStart, mainTypeName);
        if (CompletionEngine.DEBUG) {
            System.out.println("\tcompletion field=" + ((Object) this.completionNode));
        }
        return this.completionNode;
    }

    @Override
    public Object createMethodReference(Object obj, List list) throws InvalidInputException {
        long j10 = this.identifierPositionStack[this.identifierLengthStack[0] - 1];
        int i10 = (int) (j10 >>> 32);
        int i11 = (int) j10;
        int i12 = this.cursorLocation;
        if ((i10 > i12 + 1 || i12 > i11) && !((i10 == i11 + 1 && i11 == i12) || this.memberStart == i12)) {
            return super.createMethodReference(obj, list);
        }
        ASTNode aSTNode = (ASTNode) super.createMethodReference(obj, list);
        if (aSTNode instanceof JavadocMessageSend) {
            JavadocMessageSend javadocMessageSend = (JavadocMessageSend) aSTNode;
            long j11 = javadocMessageSend.nameSourcePosition;
            int i13 = (int) (j11 >>> 32);
            int i14 = (int) j11;
            int i15 = this.cursorLocation;
            if (i13 > i15 + 1 || i15 > i14) {
                this.completionNode = new CompletionOnJavadocMessageSend(javadocMessageSend, this.memberStart);
            } else {
                this.completionNode = new CompletionOnJavadocFieldReference(javadocMessageSend, this.memberStart);
            }
        } else if (aSTNode instanceof JavadocAllocationExpression) {
            this.completionNode = new CompletionOnJavadocAllocationExpression((JavadocAllocationExpression) aSTNode, this.memberStart);
        }
        if (CompletionEngine.DEBUG) {
            System.out.println("\tcompletion method=" + ((Object) this.completionNode));
        }
        return this.completionNode;
    }

    @Override
    public Object createTypeReference(int i10) {
        int[] iArr = this.identifierLengthStack;
        int i11 = this.identifierLengthPtr;
        int i12 = iArr[i11];
        int i13 = this.identifierPtr;
        int i14 = i12 - 1;
        int i15 = i13 - i14;
        long[] jArr = this.identifierPositionStack;
        int i16 = (int) (jArr[i15] >>> 32);
        int i17 = (int) jArr[i13];
        int i18 = this.cursorLocation;
        if ((i16 > i18 + 1 || i18 > i17) && !(i16 == i17 + 1 && i17 == i18)) {
            return super.createTypeReference(i10);
        }
        this.identifierLengthPtr = i11 - 1;
        if (i12 == 1) {
            char[][] cArr = this.identifierStack;
            int i19 = this.identifierPtr;
            this.completionNode = new CompletionOnJavadocSingleTypeReference(cArr[i19], this.identifierPositionStack[i19], this.tagSourceStart, this.tagSourceEnd);
        } else if (i12 > 1) {
            int i20 = i15;
            while (true) {
                if (i20 >= this.identifierPtr) {
                    break;
                }
                long j10 = this.identifierPositionStack[i20];
                int i21 = (int) (j10 >>> 32);
                int i22 = (int) j10;
                int i23 = this.cursorLocation;
                if (i21 > i23 || i23 > i22) {
                    i20++;
                } else if (i20 == i15) {
                    this.completionNode = new CompletionOnJavadocSingleTypeReference(this.identifierStack[i15], this.identifierPositionStack[i15], this.tagSourceStart, this.tagSourceEnd);
                } else {
                    char[][] cArr2 = new char[i20];
                    System.arraycopy(this.identifierStack, i15, cArr2, 0, i20);
                    int i24 = i20 + 1;
                    long[] jArr2 = new long[i24];
                    System.arraycopy(this.identifierPositionStack, i15, jArr2, 0, i24);
                    this.completionNode = new CompletionOnJavadocQualifiedTypeReference(cArr2, this.identifierStack[i20], jArr2, this.tagSourceStart, this.tagSourceEnd);
                }
            }
            if (this.completionNode == null) {
                char[][] cArr3 = new char[i14];
                System.arraycopy(this.identifierStack, i15, cArr3, 0, i14);
                long[] jArr3 = new long[i12];
                System.arraycopy(this.identifierPositionStack, i15, jArr3, 0, i12);
                this.completionNode = new CompletionOnJavadocQualifiedTypeReference(cArr3, this.identifierStack[this.identifierPtr], jArr3, this.tagSourceStart, this.tagSourceEnd);
            }
        }
        if (CompletionEngine.DEBUG) {
            System.out.println("\tcompletion partial qualified type=" + ((Object) this.completionNode));
        }
        return this.completionNode;
    }

    @Override
    public Object parseArguments(Object obj) throws InvalidInputException {
        Object obj2;
        boolean z10;
        boolean z11;
        int i10;
        long j10;
        CompletionOnJavadocQualifiedTypeReference completionOnJavadocQualifiedTypeReference;
        char[][] cArr;
        char[] cArr2;
        if (this.tagSourceStart > this.cursorLocation) {
            return super.parseArguments(obj);
        }
        ArrayList arrayList = new ArrayList(10);
        long[] jArr = new long[20];
        List list = null;
        boolean z12 = false;
        char[] cArr3 = null;
        int i11 = 0;
        int i12 = 0;
        loop0: while (this.index < this.scanner.eofPosition) {
            try {
                Object parseQualifiedName = parseQualifiedName(z12);
                if (this.abort) {
                    return list;
                }
                boolean z13 = i11 == 0 ? true : z12;
                if (z13) {
                    if (i12 != 0) {
                        break;
                    }
                } else if (i12 % i11 != 0) {
                    break;
                }
                if (parseQualifiedName == null) {
                    if (!z13 || getCurrentTokenType() != 25) {
                        return syntaxRecoverEmptyArgumentType(createMethodReference(obj, arrayList));
                    }
                    this.lineStarted = true;
                    return createMethodReference(obj, list);
                }
                int i13 = this.index;
                Scanner scanner = this.scanner;
                if (i13 >= scanner.eofPosition) {
                    return syntaxRecoverArgumentType(obj, arrayList, createArgumentReference(scanner.getCurrentIdentifierSource(), 0, false, parseQualifiedName, null, ((((ASTNode) parseQualifiedName).sourceStart << 32) + this.tokenPreviousPosition) - 1));
                }
                if (i13 >= this.cursorLocation) {
                    CompletionOnJavadoc completionOnJavadoc = this.completionNode;
                    if ((completionOnJavadoc instanceof CompletionOnJavadocSingleTypeReference) && ((cArr2 = ((CompletionOnJavadocSingleTypeReference) completionOnJavadoc).token) == null || cArr2.length == 0)) {
                        return syntaxRecoverEmptyArgumentType(createMethodReference(obj, arrayList));
                    }
                    if ((completionOnJavadoc instanceof CompletionOnJavadocQualifiedTypeReference) && ((cArr = (completionOnJavadocQualifiedTypeReference = (CompletionOnJavadocQualifiedTypeReference) completionOnJavadoc).tokens) == null || cArr.length < completionOnJavadocQualifiedTypeReference.sourcePositions.length)) {
                        return syntaxRecoverEmptyArgumentType(createMethodReference(obj, arrayList));
                    }
                }
                int i14 = i12 + 1;
                if (readToken() == 6) {
                    int currentTokenStartPosition = this.scanner.getCurrentTokenStartPosition();
                    i10 = z12;
                    for (int i15 = 6; readToken() == i15; i15 = 6) {
                        consumeToken();
                        if (readToken() != 66) {
                            break loop0;
                        }
                        consumeToken();
                        jArr[i10] = (currentTokenStartPosition << 32) + this.scanner.getCurrentTokenEndPosition();
                        i10++;
                        parseQualifiedName = parseQualifiedName;
                        currentTokenStartPosition = currentTokenStartPosition;
                        z12 = false;
                    }
                    obj2 = parseQualifiedName;
                    z11 = z12;
                    z10 = z11;
                } else {
                    obj2 = parseQualifiedName;
                    if (readToken() == 122) {
                        z10 = false;
                        jArr[0] = (this.scanner.getCurrentTokenStartPosition() << 32) + this.scanner.getCurrentTokenEndPosition();
                        consumeToken();
                        z11 = true;
                        i10 = 1;
                    } else {
                        z10 = false;
                        z11 = false;
                        i10 = 0;
                    }
                }
                if (readToken() != 22) {
                    if (cArr3 != null) {
                        break;
                    }
                    j10 = -1;
                } else {
                    consumeToken();
                    if (z13) {
                        if (i14 != 1) {
                            break;
                        }
                    } else if (i14 % i11 != 1) {
                        break;
                    }
                    if (cArr3 == null && !z13) {
                        break;
                    }
                    cArr3 = this.scanner.getCurrentIdentifierSource();
                    j10 = (this.scanner.getCurrentTokenStartPosition() << 32) + this.scanner.getCurrentTokenEndPosition();
                    i14 = i12 + 2;
                }
                long j11 = j10;
                char[] cArr4 = cArr3;
                int i16 = i14;
                if (z13) {
                    i11 = i16 + 1;
                } else if (i16 % i11 != i11 - 1) {
                    break;
                }
                int i17 = i11;
                int readToken = readToken();
                char[] cArr5 = cArr4 == null ? CharOperation.NO_CHAR : cArr4;
                if (readToken != 32) {
                    if (readToken != 25) {
                        return syntaxRecoverArgumentType(obj, arrayList, createArgumentReference(cArr5, i10, z11, obj2, jArr, j11));
                    }
                    Object createArgumentReference = createArgumentReference(cArr5, i10, z11, obj2, jArr, j11);
                    if (this.abort) {
                        return null;
                    }
                    arrayList.add(createArgumentReference);
                    consumeToken();
                    return createMethodReference(obj, arrayList);
                }
                Object createArgumentReference2 = createArgumentReference(cArr5, i10, z11, obj2, jArr, j11);
                if (this.abort) {
                    return null;
                }
                arrayList.add(createArgumentReference2);
                consumeToken();
                i12 = i16 + 1;
                cArr3 = cArr4;
                i11 = i17;
                z12 = z10;
                list = null;
            } catch (InvalidInputException unused) {
            }
        }
        throw new InvalidInputException();
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x005d  */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean parseParam() throws InvalidInputException {
        int i10;
        long j10;
        char[] cArr;
        long j11;
        boolean z10;
        char[] cArr2;
        int i11 = this.index;
        long j12 = (i11 << 32) + i11;
        this.identifierPtr = -1;
        boolean parseParam = super.parseParam();
        int i12 = this.identifierPtr;
        if (i12 > 2) {
            return parseParam;
        }
        CompletionScanner completionScanner = (CompletionScanner) this.scanner;
        char[] cArr3 = null;
        boolean z11 = false;
        if (i12 < 0) {
            i10 = i11;
            j10 = j12;
        } else if (i12 != 0) {
            if (i12 != 1) {
                if (i12 != 2) {
                    j11 = j12;
                    cArr = null;
                    z10 = false;
                    if (cArr != null && cArr.length > 0 && ScannerHelper.isJavaIdentifierPart(this.complianceLevel, cArr[0])) {
                        cArr3 = cArr;
                    }
                    long[] jArr = this.identifierPositionStack;
                    int i13 = (int) (jArr[0] >> 32);
                    z11 = z10;
                    i11 = (int) jArr[this.identifierPtr];
                    i10 = i13;
                    j10 = j11;
                } else if (!parseParam && (cArr2 = completionScanner.completionIdentifier) != null && cArr2.length == 0) {
                    parseParam = pushParamName(true);
                }
            }
            char[][] cArr4 = this.identifierStack;
            z10 = cArr4[0][0] == '<';
            cArr = cArr4[1];
            j11 = this.identifierPositionStack[1];
            if (cArr != null) {
                cArr3 = cArr;
            }
            long[] jArr2 = this.identifierPositionStack;
            int i132 = (int) (jArr2[0] >> 32);
            z11 = z10;
            i11 = (int) jArr2[this.identifierPtr];
            i10 = i132;
            j10 = j11;
        } else {
            cArr = this.identifierStack[0];
            j11 = this.identifierPositionStack[0];
            if (cArr.length > 0 && cArr[0] == '<') {
                z10 = true;
                if (cArr != null) {
                }
                long[] jArr22 = this.identifierPositionStack;
                int i1322 = (int) (jArr22[0] >> 32);
                z11 = z10;
                i11 = (int) jArr22[this.identifierPtr];
                i10 = i1322;
                j10 = j11;
            }
            z10 = false;
            if (cArr != null) {
            }
            long[] jArr222 = this.identifierPositionStack;
            int i13222 = (int) (jArr222[0] >> 32);
            z11 = z10;
            i11 = (int) jArr222[this.identifierPtr];
            i10 = i13222;
            j10 = j11;
        }
        char[] cArr5 = cArr3;
        int i14 = this.cursorLocation;
        if ((i10 <= i14 + 1 && i14 <= i11) || (i10 == i11 + 1 && i11 == i14)) {
            CompletionOnJavadoc completionOnJavadoc = this.completionNode;
            if (completionOnJavadoc == null) {
                if (z11) {
                    this.completionNode = new CompletionOnJavadocTypeParamReference(cArr5, j10, i10, i11);
                } else {
                    this.completionNode = new CompletionOnJavadocParamNameReference(cArr5, j10, i10, i11);
                }
                if (CompletionEngine.DEBUG) {
                    System.out.println("\tcompletion param=" + ((Object) this.completionNode));
                }
            } else if (completionOnJavadoc instanceof CompletionOnJavadocParamNameReference) {
                CompletionOnJavadocParamNameReference completionOnJavadocParamNameReference = (CompletionOnJavadocParamNameReference) completionOnJavadoc;
                int i15 = (int) (j10 >> 32);
                completionOnJavadocParamNameReference.sourceStart = i15;
                int i16 = (int) j10;
                if (i15 >= i14 || i14 >= i16) {
                    completionOnJavadocParamNameReference.sourceEnd = i16;
                } else {
                    completionOnJavadocParamNameReference.sourceEnd = i14 + 1;
                }
                completionOnJavadocParamNameReference.tagSourceStart = i10;
                completionOnJavadocParamNameReference.tagSourceEnd = i11;
            } else if (completionOnJavadoc instanceof CompletionOnJavadocTypeParamReference) {
                CompletionOnJavadocTypeParamReference completionOnJavadocTypeParamReference = (CompletionOnJavadocTypeParamReference) completionOnJavadoc;
                int i17 = (int) (j10 >> 32);
                completionOnJavadocTypeParamReference.sourceStart = i17;
                int i18 = (int) j10;
                if (i17 >= i14 || i14 >= i18) {
                    completionOnJavadocTypeParamReference.sourceEnd = i18;
                } else {
                    completionOnJavadocTypeParamReference.sourceEnd = i14 + 1;
                }
                completionOnJavadocTypeParamReference.tagSourceStart = i10;
                completionOnJavadocTypeParamReference.tagSourceEnd = i11;
            }
        }
        return parseParam;
    }

    @Override
    public boolean parseReference() throws InvalidInputException {
        CompletionOnJavadoc completionOnJavadoc;
        boolean z10 = this.completionNode != null;
        boolean parseReference = super.parseReference();
        if (!z10 && (completionOnJavadoc = this.completionNode) != null) {
            completionOnJavadoc.addCompletionFlags(64);
        }
        return parseReference;
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0023, code lost:
    
        if (r3 == r2) goto L14;
     */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean parseTag(int i10) throws InvalidInputException {
        int i11 = this.inlineTagStarted ? this.inlineTagStart : i10;
        boolean z10 = !this.lineStarted;
        boolean parseTag = super.parseTag(i10);
        int i12 = this.tagSourceStart;
        int i13 = this.cursorLocation;
        if (i12 > i13 + 1 || i13 > this.tagSourceEnd) {
            int i14 = this.tagSourceEnd;
            if (i12 == i14 + 1) {
            }
            return parseTag;
        }
        int i15 = this.tagSourceEnd;
        if (this.inlineTagStarted) {
            Scanner scanner = this.scanner;
            if (scanner.currentCharacter == '}') {
                i15 = scanner.currentPosition;
            }
        }
        int i16 = i15;
        long j10 = (i11 << 32) + i16;
        int i17 = (i13 + 1) - i12;
        char[] cArr = new char[i17];
        System.arraycopy(this.source, i12, cArr, 0, i17);
        char[][][] possibleTags = possibleTags(cArr, z10);
        if (possibleTags != null) {
            this.completionNode = new CompletionOnJavadocTag(cArr, j10, i11, i16, possibleTags, this.allPossibleTags);
        }
        return parseTag;
    }

    @Override
    public boolean parseThrows() {
        try {
            Object parseQualifiedName = parseQualifiedName(true);
            CompletionOnJavadoc completionOnJavadoc = this.completionNode;
            if (completionOnJavadoc != null) {
                completionOnJavadoc.addCompletionFlags(2);
            }
            return pushThrowName(parseQualifiedName);
        } catch (InvalidInputException unused) {
            return false;
        }
    }

    @Override
    public boolean pushParamName(boolean z10) {
        if (!super.pushParamName(z10)) {
            return false;
        }
        Expression expression = (Expression) this.astStack[this.astPtr];
        int i10 = expression.sourceStart;
        int i11 = this.cursorLocation;
        if (i10 > i11 + 1 || i11 > expression.sourceEnd) {
            return true;
        }
        if (z10) {
            this.completionNode = new CompletionOnJavadocTypeParamReference((JavadocSingleTypeReference) expression);
        } else {
            this.completionNode = new CompletionOnJavadocParamNameReference((JavadocSingleNameReference) expression);
        }
        if (!CompletionEngine.DEBUG) {
            return true;
        }
        System.out.println("\tcompletion param=" + ((Object) this.completionNode));
        return true;
    }

    /* JADX WARN: Finally extract failed */
    @Override
    public void pushText(int i10, int i11) {
        Scanner scanner;
        int currentTokenEndPosition;
        Object obj;
        int i12 = this.cursorLocation;
        if (i10 > i12 || i12 > i11) {
            return;
        }
        this.scanner.resetTo(i10, i11);
        Scanner scanner2 = this.scanner;
        boolean z10 = scanner2.tokenizeWhiteSpace;
        scanner2.tokenizeWhiteSpace = true;
        try {
            this.pushText = true;
            int i13 = 1000;
            Object obj2 = null;
            while (!this.scanner.atEnd() && this.completionNode == null && !this.abort) {
                int readTokenSafely = readTokenSafely();
                if (readTokenSafely != 22) {
                    if (readTokenSafely == 37) {
                        consumeToken();
                        try {
                            Scanner scanner3 = this.scanner;
                            scanner3.tokenizeWhiteSpace = false;
                            parseTag(scanner3.getCurrentTokenStartPosition());
                        } catch (InvalidInputException unused) {
                            consumeToken();
                        }
                        this.scanner.tokenizeWhiteSpace = true;
                    } else if (readTokenSafely == 46) {
                        int currentTokenStartPosition = this.scanner.getCurrentTokenStartPosition() + 1;
                        int i14 = this.cursorLocation;
                        if (currentTokenStartPosition <= i14 && i14 <= (currentTokenEndPosition = this.scanner.getCurrentTokenEndPosition() - 1)) {
                            this.scanner.resetTo(currentTokenStartPosition, currentTokenEndPosition);
                        }
                        consumeToken();
                    } else if (readTokenSafely != 129) {
                        consumeToken();
                        obj2 = null;
                    } else {
                        consumeToken();
                        Scanner scanner4 = this.scanner;
                        if (scanner4.currentCharacter == '#') {
                            try {
                                scanner4.tokenizeWhiteSpace = false;
                                obj = parseMember(obj2);
                            } catch (InvalidInputException unused2) {
                                consumeToken();
                                obj = null;
                            }
                            this.scanner.tokenizeWhiteSpace = true;
                            CompletionOnJavadoc completionOnJavadoc = this.completionNode;
                            if (completionOnJavadoc != null) {
                                int i15 = this.inlineTagStarted ? 0 : 20;
                                if (obj instanceof JavadocMessageSend) {
                                    this.completionNode = new CompletionOnJavadocMessageSend((JavadocMessageSend) obj, this.memberStart, i15);
                                    if (CompletionEngine.DEBUG) {
                                        System.out.println("\tnew completion method=" + ((Object) this.completionNode));
                                    }
                                } else if (obj instanceof JavadocAllocationExpression) {
                                    this.completionNode = new CompletionOnJavadocAllocationExpression((JavadocAllocationExpression) obj, this.memberStart, i15);
                                    if (CompletionEngine.DEBUG) {
                                        System.out.println("\tnew completion method=" + ((Object) this.completionNode));
                                    }
                                } else {
                                    completionOnJavadoc.addCompletionFlags(i15);
                                }
                            }
                        }
                    }
                    i13 = readTokenSafely;
                } else {
                    try {
                        try {
                            this.scanner.tokenizeWhiteSpace = false;
                            obj2 = parseQualifiedName(true);
                            if (this.completionNode == null) {
                                consumeToken();
                                this.scanner.resetTo(this.tokenPreviousPosition, i11);
                                this.index = this.tokenPreviousPosition;
                            }
                            scanner = this.scanner;
                        } catch (InvalidInputException unused3) {
                            consumeToken();
                            scanner = this.scanner;
                        }
                        scanner.tokenizeWhiteSpace = true;
                        if (i13 != 1000) {
                            this.completionNode = null;
                            obj2 = null;
                            i13 = readTokenSafely;
                        } else {
                            i13 = readTokenSafely;
                        }
                    } catch (Throwable th2) {
                        this.scanner.tokenizeWhiteSpace = true;
                        throw th2;
                    }
                }
            }
            Scanner scanner5 = this.scanner;
            scanner5.tokenizeWhiteSpace = z10;
            this.pushText = false;
            this.index = i11;
            scanner5.currentPosition = i11;
            consumeToken();
            CompletionOnJavadoc completionOnJavadoc2 = this.completionNode;
            if (completionOnJavadoc2 != null) {
                if (this.inlineTagStarted) {
                    completionOnJavadoc2.addCompletionFlags(64);
                } else {
                    completionOnJavadoc2.addCompletionFlags(4);
                }
            }
        } catch (Throwable th3) {
            this.scanner.tokenizeWhiteSpace = z10;
            this.pushText = false;
            throw th3;
        }
    }

    @Override
    public int readToken() throws InvalidInputException {
        int readToken = super.readToken();
        if (readToken == 22) {
            Scanner scanner = this.scanner;
            if (scanner.currentPosition == scanner.startPosition) {
                scanner.getCurrentIdentifierSource();
            }
        }
        return readToken;
    }

    public Object syntaxRecoverArgumentType(Object obj, List list, Object obj2) throws InvalidInputException {
        char[] cArr;
        CompletionOnJavadoc completionOnJavadoc = this.completionNode;
        if (completionOnJavadoc != null && !this.pushText) {
            completionOnJavadoc.addCompletionFlags(8);
            CompletionOnJavadoc completionOnJavadoc2 = this.completionNode;
            if (!(completionOnJavadoc2 instanceof CompletionOnJavadocSingleTypeReference) || ((cArr = ((CompletionOnJavadocSingleTypeReference) completionOnJavadoc2).token) != null && cArr.length > 0)) {
                return completionOnJavadoc2;
            }
        }
        CompletionOnJavadoc completionOnJavadoc3 = this.completionNode;
        if (completionOnJavadoc3 instanceof CompletionOnJavadocSingleTypeReference) {
            char[] cArr2 = ((CompletionOnJavadocSingleTypeReference) completionOnJavadoc3).token;
            if (cArr2 != null && cArr2.length > 0) {
                list.add(obj2);
            }
        } else if (completionOnJavadoc3 instanceof CompletionOnJavadocQualifiedTypeReference) {
            CompletionOnJavadocQualifiedTypeReference completionOnJavadocQualifiedTypeReference = (CompletionOnJavadocQualifiedTypeReference) completionOnJavadoc3;
            char[][] cArr3 = completionOnJavadocQualifiedTypeReference.tokens;
            if (cArr3 != null && cArr3.length == completionOnJavadocQualifiedTypeReference.sourcePositions.length) {
                list.add(obj2);
            }
        } else {
            list.add(obj2);
        }
        Object createMethodReference = super.createMethodReference(obj, list);
        if (createMethodReference instanceof JavadocMessageSend) {
            JavadocMessageSend javadocMessageSend = (JavadocMessageSend) createMethodReference;
            int i10 = this.index;
            int i11 = this.cursorLocation;
            if (i10 > i11) {
                javadocMessageSend.sourceEnd = this.tokenPreviousPosition - 1;
            }
            long j10 = javadocMessageSend.nameSourcePosition;
            int i12 = (int) (j10 >>> 32);
            int i13 = (int) j10;
            if (i12 > i11 + 1 || i11 > i13) {
                this.completionNode = new CompletionOnJavadocMessageSend(javadocMessageSend, this.memberStart);
            } else {
                this.completionNode = new CompletionOnJavadocFieldReference(javadocMessageSend, this.memberStart);
            }
        } else if (createMethodReference instanceof JavadocAllocationExpression) {
            JavadocAllocationExpression javadocAllocationExpression = (JavadocAllocationExpression) createMethodReference;
            if (this.index > this.cursorLocation) {
                javadocAllocationExpression.sourceEnd = this.tokenPreviousPosition - 1;
            }
            this.completionNode = new CompletionOnJavadocAllocationExpression(javadocAllocationExpression, this.memberStart);
        }
        if (CompletionEngine.DEBUG) {
            System.out.println("\tcompletion method=" + ((Object) this.completionNode));
        }
        return this.completionNode;
    }

    public Object syntaxRecoverEmptyArgumentType(Object obj) throws InvalidInputException {
        if (obj instanceof JavadocMessageSend) {
            JavadocMessageSend javadocMessageSend = (JavadocMessageSend) obj;
            if (this.index > this.cursorLocation) {
                javadocMessageSend.sourceEnd = this.tokenPreviousPosition - 1;
            }
            this.completionNode = new CompletionOnJavadocMessageSend(javadocMessageSend, this.memberStart);
        } else if (obj instanceof JavadocAllocationExpression) {
            JavadocAllocationExpression javadocAllocationExpression = (JavadocAllocationExpression) obj;
            if (this.index > this.cursorLocation) {
                javadocAllocationExpression.sourceEnd = this.tokenPreviousPosition - 1;
            }
            this.completionNode = new CompletionOnJavadocAllocationExpression(javadocAllocationExpression, this.memberStart);
        }
        if (CompletionEngine.DEBUG) {
            System.out.println("\tcompletion method=" + ((Object) this.completionNode));
        }
        return this.completionNode;
    }

    @Override
    public Object syntaxRecoverQualifiedName(int i10) throws InvalidInputException {
        int i11 = this.cursorLocation;
        long[] jArr = this.identifierPositionStack;
        int i12 = this.identifierPtr;
        if (i11 == ((int) jArr[i12])) {
            return createTypeReference(i10);
        }
        int i13 = this.identifierLengthStack[this.identifierLengthPtr];
        char[][] cArr = new char[i13];
        int i14 = (i12 - i13) + 1;
        System.arraycopy(this.identifierStack, i14, cArr, 0, i13);
        long[] jArr2 = new long[i13 + 1];
        System.arraycopy(this.identifierPositionStack, i14, jArr2, 0, i13);
        int i15 = this.tokenPreviousPosition;
        jArr2[i13] = (i15 << 32) + i15;
        this.completionNode = new CompletionOnJavadocQualifiedTypeReference(cArr, CharOperation.NO_CHAR, jArr2, this.tagSourceStart, this.tagSourceEnd);
        if (CompletionEngine.DEBUG) {
            System.out.println("\tcompletion partial qualified type=" + ((Object) this.completionNode));
        }
        return this.completionNode;
    }

    @Override
    public void updateDocComment() {
        super.updateDocComment();
        Object obj = this.completionNode;
        if ((obj instanceof Expression) && ((Expression) obj).isTrulyExpression()) {
            getCompletionParser().assistNodeParent = this.docComment;
            getCompletionParser().assistNode = (ASTNode) this.completionNode;
            getCompletionJavadoc().completionNode = (Expression) this.completionNode;
        }
    }

    @Override
    public boolean verifySpaceOrEndComment() {
        CompletionScanner completionScanner = (CompletionScanner) this.scanner;
        if (completionScanner.completionIdentifier != null) {
            int i10 = completionScanner.completedIdentifierStart;
            int i11 = this.cursorLocation;
            if (i10 <= i11 && i11 <= completionScanner.completedIdentifierEnd) {
                return true;
            }
        }
        return super.verifySpaceOrEndComment();
    }
}
