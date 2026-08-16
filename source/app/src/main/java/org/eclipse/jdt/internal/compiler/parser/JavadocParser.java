package org.eclipse.jdt.internal.compiler.parser;

import java.util.List;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.core.compiler.InvalidInputException;
import org.eclipse.jdt.internal.compiler.ast.ASTNode;
import org.eclipse.jdt.internal.compiler.ast.Expression;
import org.eclipse.jdt.internal.compiler.ast.Javadoc;
import org.eclipse.jdt.internal.compiler.ast.JavadocAllocationExpression;
import org.eclipse.jdt.internal.compiler.ast.JavadocArgumentExpression;
import org.eclipse.jdt.internal.compiler.ast.JavadocArrayQualifiedTypeReference;
import org.eclipse.jdt.internal.compiler.ast.JavadocArraySingleTypeReference;
import org.eclipse.jdt.internal.compiler.ast.JavadocFieldReference;
import org.eclipse.jdt.internal.compiler.ast.JavadocImplicitTypeReference;
import org.eclipse.jdt.internal.compiler.ast.JavadocMessageSend;
import org.eclipse.jdt.internal.compiler.ast.JavadocQualifiedTypeReference;
import org.eclipse.jdt.internal.compiler.ast.JavadocReturnStatement;
import org.eclipse.jdt.internal.compiler.ast.JavadocSingleNameReference;
import org.eclipse.jdt.internal.compiler.ast.JavadocSingleTypeReference;
import org.eclipse.jdt.internal.compiler.ast.TypeDeclaration;
import org.eclipse.jdt.internal.compiler.ast.TypeReference;
import org.eclipse.jdt.internal.compiler.classfmt.ClassFileConstants;
import org.eclipse.jdt.internal.compiler.impl.CompilerOptions;
import org.eclipse.jdt.internal.compiler.problem.ProblemReporter;
import org.eclipse.jdt.internal.compiler.util.Util;

public class JavadocParser extends AbstractCommentParser {
    public Javadoc docComment;
    private int invalidParamReferencesPtr;
    private ASTNode[] invalidParamReferencesStack;
    private long invalidValuePositions;
    public boolean shouldReportProblems;
    private int tagWaitingForDescription;
    private long validValuePositions;
    private static final JavadocSingleNameReference[] NO_SINGLE_NAME_REFERENCE = new JavadocSingleNameReference[0];
    private static final JavadocSingleTypeReference[] NO_SINGLE_TYPE_REFERENCE = new JavadocSingleTypeReference[0];
    private static final TypeReference[] NO_TYPE_REFERENCE = new TypeReference[0];
    private static final Expression[] NO_EXPRESSION = new Expression[0];

    public JavadocParser(Parser parser) {
        super(parser);
        CompilerOptions compilerOptions;
        this.invalidParamReferencesPtr = -1;
        this.shouldReportProblems = true;
        this.kind = 513;
        if (parser == null || (compilerOptions = parser.options) == null) {
            return;
        }
        this.setJavadocPositions = compilerOptions.processAnnotations;
    }

    public boolean checkDeprecation(int i10) {
        int i11;
        Scanner scanner = this.sourceParser.scanner;
        this.javadocStart = scanner.commentStarts[i10];
        this.javadocEnd = scanner.commentStops[i10] - 1;
        this.firstTagPosition = scanner.commentTagStarts[i10];
        this.validValuePositions = -1L;
        this.invalidValuePositions = -1L;
        this.tagWaitingForDescription = 0;
        if (this.checkDocComment) {
            this.docComment = new Javadoc(this.javadocStart, this.javadocEnd);
        } else if (this.setJavadocPositions) {
            Javadoc javadoc = new Javadoc(this.javadocStart, this.javadocEnd);
            this.docComment = javadoc;
            javadoc.bits &= -65537;
        } else {
            this.docComment = null;
        }
        if (this.firstTagPosition == 0 && ((i11 = this.kind & 255) == 1 || i11 == 16)) {
            return false;
        }
        try {
            char[] cArr = this.sourceParser.scanner.source;
            this.source = cArr;
            this.scanner.setSource(cArr);
            if (this.checkDocComment) {
                Scanner scanner2 = this.scanner;
                Scanner scanner3 = this.sourceParser.scanner;
                int[] iArr = scanner3.lineEnds;
                scanner2.lineEnds = iArr;
                scanner2.linePtr = scanner3.linePtr;
                this.lineEnds = iArr;
                commentParse();
                this.source = null;
                this.scanner.setSource((char[]) null);
                return this.deprecated;
            }
            Scanner scanner4 = this.sourceParser.scanner;
            int lineNumber = Util.getLineNumber(this.javadocStart, scanner4.lineEnds, 0, scanner4.linePtr);
            int lineNumber2 = Util.getLineNumber(this.javadocEnd, scanner4.lineEnds, 0, scanner4.linePtr);
            this.index = this.javadocStart + 3;
            this.deprecated = false;
            int i12 = lineNumber;
            while (i12 <= lineNumber2) {
                this.index = i12 == lineNumber ? this.javadocStart + 3 : this.sourceParser.scanner.getLineStart(i12);
                this.lineEnd = i12 == lineNumber2 ? this.javadocEnd - 2 : this.sourceParser.scanner.getLineEnd(i12);
                while (true) {
                    if (this.index < this.lineEnd) {
                        char readChar = readChar();
                        if (readChar != '\t' && readChar != '\n' && readChar != '\f' && readChar != '\r' && readChar != ' ' && readChar != '*') {
                            if (readChar == '@') {
                                parseSimpleTag();
                            }
                        }
                    }
                }
                i12++;
            }
            return this.deprecated;
        } finally {
            this.source = null;
            this.scanner.setSource((char[]) null);
        }
    }

    @Override
    public Object createArgumentReference(char[] cArr, int i10, boolean z10, Object obj, long[] jArr, long j10) throws InvalidInputException {
        try {
            TypeReference typeReference = (TypeReference) obj;
            if (i10 > 0) {
                typeReference = obj instanceof JavadocSingleTypeReference ? new JavadocArraySingleTypeReference(((JavadocSingleTypeReference) obj).token, i10, (typeReference.sourceStart << 32) + typeReference.sourceEnd) : new JavadocArrayQualifiedTypeReference((JavadocQualifiedTypeReference) obj, i10);
            }
            int i11 = typeReference.sourceEnd;
            if (i10 > 0) {
                i11 = (int) jArr[i10 - 1];
                if (z10) {
                    typeReference.bits |= 16384;
                }
            }
            if (j10 >= 0) {
                i11 = (int) j10;
            }
            return new JavadocArgumentExpression(cArr, typeReference.sourceStart, i11, typeReference);
        } catch (ClassCastException unused) {
            throw new InvalidInputException();
        }
    }

    @Override
    public Object createFieldReference(Object obj) throws InvalidInputException {
        try {
            TypeReference typeReference = (TypeReference) obj;
            if (typeReference == null) {
                typeReference = new JavadocImplicitTypeReference(this.sourceParser.compilationUnit.getMainTypeName(), this.memberStart);
            }
            JavadocFieldReference javadocFieldReference = new JavadocFieldReference(this.identifierStack[0], this.identifierPositionStack[0]);
            javadocFieldReference.receiver = typeReference;
            javadocFieldReference.tagSourceStart = this.tagSourceStart;
            javadocFieldReference.tagSourceEnd = this.tagSourceEnd;
            javadocFieldReference.tagValue = this.tagValue;
            return javadocFieldReference;
        } catch (ClassCastException unused) {
            throw new InvalidInputException();
        }
    }

    @Override
    public Object createMethodReference(Object obj, List list) throws InvalidInputException {
        boolean z10;
        try {
            TypeReference typeReference = (TypeReference) obj;
            int i10 = this.identifierLengthStack[0];
            if (typeReference == null) {
                char[] mainTypeName = this.sourceParser.compilationUnit.getMainTypeName();
                TypeDeclaration parsedTypeDeclaration = getParsedTypeDeclaration();
                if (parsedTypeDeclaration != null) {
                    mainTypeName = parsedTypeDeclaration.name;
                }
                z10 = CharOperation.equals(this.identifierStack[i10 - 1], mainTypeName);
                typeReference = new JavadocImplicitTypeReference(mainTypeName, this.memberStart);
            } else if (typeReference instanceof JavadocSingleTypeReference) {
                z10 = CharOperation.equals(this.identifierStack[i10 - 1], ((JavadocSingleTypeReference) typeReference).token);
            } else {
                if (!(typeReference instanceof JavadocQualifiedTypeReference)) {
                    throw new InvalidInputException();
                }
                char[][] cArr = ((JavadocQualifiedTypeReference) typeReference).tokens;
                int i11 = i10 - 1;
                boolean equals = CharOperation.equals(this.identifierStack[i11], cArr[cArr.length - 1]);
                if (equals) {
                    boolean z11 = true;
                    for (int i12 = 0; i12 < i11 && z11; i12++) {
                        z11 = CharOperation.equals(this.identifierStack[i12], cArr[i12]);
                    }
                    if (!z11) {
                        if (!this.reportProblems) {
                            return null;
                        }
                        ProblemReporter problemReporter = this.sourceParser.problemReporter();
                        long[] jArr = this.identifierPositionStack;
                        problemReporter.javadocInvalidMemberTypeQualification((int) (jArr[0] >>> 32), (int) jArr[i11], -1);
                        return null;
                    }
                }
                z10 = equals;
            }
            if (list == null) {
                if (!z10) {
                    int i13 = i10 - 1;
                    JavadocMessageSend javadocMessageSend = new JavadocMessageSend(this.identifierStack[i13], this.identifierPositionStack[i13]);
                    javadocMessageSend.receiver = typeReference;
                    javadocMessageSend.tagValue = this.tagValue;
                    javadocMessageSend.sourceEnd = this.scanner.getCurrentTokenEndPosition();
                    return javadocMessageSend;
                }
                JavadocAllocationExpression javadocAllocationExpression = new JavadocAllocationExpression(this.identifierPositionStack[i10 - 1]);
                javadocAllocationExpression.type = typeReference;
                javadocAllocationExpression.tagValue = this.tagValue;
                javadocAllocationExpression.sourceEnd = this.scanner.getCurrentTokenEndPosition();
                if (i10 == 1) {
                    javadocAllocationExpression.qualification = new char[][]{this.identifierStack[0]};
                } else {
                    char[][] cArr2 = this.identifierStack;
                    char[][] cArr3 = new char[i10];
                    javadocAllocationExpression.qualification = cArr3;
                    System.arraycopy(cArr2, 0, cArr3, 0, i10);
                    javadocAllocationExpression.sourceStart = (int) (this.identifierPositionStack[0] >>> 32);
                }
                javadocAllocationExpression.memberStart = this.memberStart;
                return javadocAllocationExpression;
            }
            JavadocArgumentExpression[] javadocArgumentExpressionArr = new JavadocArgumentExpression[list.size()];
            list.toArray(javadocArgumentExpressionArr);
            if (!z10) {
                int i14 = i10 - 1;
                JavadocMessageSend javadocMessageSend2 = new JavadocMessageSend(this.identifierStack[i14], this.identifierPositionStack[i14], javadocArgumentExpressionArr);
                javadocMessageSend2.receiver = typeReference;
                javadocMessageSend2.tagValue = this.tagValue;
                javadocMessageSend2.sourceEnd = this.scanner.getCurrentTokenEndPosition();
                return javadocMessageSend2;
            }
            JavadocAllocationExpression javadocAllocationExpression2 = new JavadocAllocationExpression(this.identifierPositionStack[i10 - 1]);
            javadocAllocationExpression2.arguments = javadocArgumentExpressionArr;
            javadocAllocationExpression2.type = typeReference;
            javadocAllocationExpression2.tagValue = this.tagValue;
            javadocAllocationExpression2.sourceEnd = this.scanner.getCurrentTokenEndPosition();
            if (i10 == 1) {
                javadocAllocationExpression2.qualification = new char[][]{this.identifierStack[0]};
            } else {
                char[][] cArr4 = this.identifierStack;
                char[][] cArr5 = new char[i10];
                javadocAllocationExpression2.qualification = cArr5;
                System.arraycopy(cArr4, 0, cArr5, 0, i10);
                javadocAllocationExpression2.sourceStart = (int) (this.identifierPositionStack[0] >>> 32);
            }
            javadocAllocationExpression2.memberStart = this.memberStart;
            return javadocAllocationExpression2;
        } catch (ClassCastException unused) {
            throw new InvalidInputException();
        }
    }

    @Override
    public Object createReturnStatement() {
        return new JavadocReturnStatement(this.scanner.getCurrentTokenStartPosition(), this.scanner.getCurrentTokenEndPosition());
    }

    @Override
    public void createTag() {
        this.tagValue = 100;
    }

    @Override
    public Object createTypeReference(int i10) {
        int i11 = this.identifierLengthStack[this.identifierLengthPtr];
        if (i11 == 1) {
            char[][] cArr = this.identifierStack;
            int i12 = this.identifierPtr;
            return new JavadocSingleTypeReference(cArr[i12], this.identifierPositionStack[i12], this.tagSourceStart, this.tagSourceEnd);
        }
        if (i11 <= 1) {
            return null;
        }
        char[][] cArr2 = new char[i11];
        System.arraycopy(this.identifierStack, (this.identifierPtr - i11) + 1, cArr2, 0, i11);
        long[] jArr = new long[i11];
        System.arraycopy(this.identifierPositionStack, (this.identifierPtr - i11) + 1, jArr, 0, i11);
        return new JavadocQualifiedTypeReference(cArr2, jArr, this.tagSourceStart, this.tagSourceEnd);
    }

    public TypeDeclaration getParsedTypeDeclaration() {
        for (int i10 = this.sourceParser.astPtr; i10 >= 0; i10--) {
            ASTNode aSTNode = this.sourceParser.astStack[i10];
            if (aSTNode instanceof TypeDeclaration) {
                TypeDeclaration typeDeclaration = (TypeDeclaration) aSTNode;
                if (typeDeclaration.bodyEnd == 0) {
                    return typeDeclaration;
                }
            }
        }
        return null;
    }

    public void parseInheritDocTag() {
    }

    @Override
    public boolean parseParam() throws InvalidInputException {
        boolean parseParam = super.parseParam();
        this.tagWaitingForDescription = (parseParam && this.reportProblems) ? 2 : 0;
        return parseParam;
    }

    public boolean parseReturn() {
        if (this.returnStatement == null) {
            this.returnStatement = createReturnStatement();
            return true;
        }
        if (!this.reportProblems) {
            return false;
        }
        this.sourceParser.problemReporter().javadocDuplicatedReturnTag(this.scanner.getCurrentTokenStartPosition(), this.scanner.getCurrentTokenEndPosition());
        return false;
    }

    public void parseSimpleTag() {
        int i10;
        char c10;
        char[] cArr = this.source;
        int i11 = this.index;
        int i12 = i11 + 1;
        this.index = i12;
        char c11 = cArr[i11];
        if (c11 == '\\' && cArr[i12] == 'u') {
            this.index = i11 + 2;
            while (true) {
                char[] cArr2 = this.source;
                i10 = this.index;
                c10 = cArr2[i10];
                if (c10 != 'u') {
                    break;
                } else {
                    this.index = i10 + 1;
                }
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
                            c11 = (char) ((((((hexadecimalValue * 16) + hexadecimalValue2) * 16) + hexadecimalValue3) * 16) + hexadecimalValue4);
                        }
                    }
                }
            }
            this.index = i12;
        }
        if (c11 == 'd' && readChar() == 'e' && readChar() == 'p' && readChar() == 'r' && readChar() == 'e' && readChar() == 'c' && readChar() == 'a' && readChar() == 't' && readChar() == 'e' && readChar() == 'd') {
            char readChar = readChar();
            if (ScannerHelper.isWhitespace(readChar) || readChar == '*') {
                this.abort = true;
                this.deprecated = true;
                this.tagValue = 1;
            }
        }
    }

    @Override
    public boolean parseTag(int i10) throws InvalidInputException {
        int i11;
        int i12;
        boolean parseIdentifierTag;
        int i13 = this.tagWaitingForDescription;
        if (i13 != 0) {
            if (i13 == 2 || i13 == 4) {
                if (!this.inlineTagStarted) {
                    long[] jArr = this.identifierPositionStack;
                    this.sourceParser.problemReporter().javadocMissingTagDescriptionAfterReference((int) (jArr[0] >>> 32), (int) jArr[this.identifierPtr], this.sourceParser.modifiers);
                }
            } else if (!this.inlineTagStarted) {
                this.sourceParser.problemReporter().javadocMissingTagDescription(JavadocTagConstants.TAG_NAMES[this.tagWaitingForDescription], this.tagSourceStart, this.tagSourceEnd, this.sourceParser.modifiers);
            }
        }
        this.tagWaitingForDescription = 0;
        int i14 = this.index;
        this.tagSourceStart = i14;
        this.tagSourceEnd = i10;
        this.scanner.startPosition = i14;
        char readChar = readChar();
        if (readChar == ' ' || readChar == '#' || readChar == '*' || readChar == '}') {
            if (this.reportProblems) {
                this.sourceParser.problemReporter().javadocInvalidTag(i10, i14);
            }
            if (this.textStart == -1) {
                this.textStart = i14;
            }
            this.scanner.currentCharacter = readChar;
            return false;
        }
        if (ScannerHelper.isWhitespace(readChar)) {
            if (this.reportProblems) {
                this.sourceParser.problemReporter().javadocInvalidTag(i10, i14);
            }
            if (this.textStart == -1) {
                this.textStart = i14;
            }
            this.scanner.currentCharacter = readChar;
            return false;
        }
        char[] cArr = new char[32];
        int i15 = 32;
        int i16 = 0;
        char c10 = readChar;
        boolean z10 = true;
        while (true) {
            if (i16 == i15) {
                int i17 = i15 + 32;
                char[] cArr2 = new char[i17];
                System.arraycopy(cArr, 0, cArr2, 0, i15);
                i15 = i17;
                cArr = cArr2;
            }
            i11 = i16 + 1;
            cArr[i16] = c10;
            i12 = this.index;
            c10 = readChar();
            if (c10 == ' ') {
                break;
            }
            if (c10 == '#') {
                i16 = i11;
                z10 = false;
            } else {
                if (c10 == '*' || c10 == '}' || ScannerHelper.isWhitespace(c10)) {
                    break;
                }
                i16 = i11;
            }
        }
        this.tagSourceEnd = i12 - 1;
        Scanner scanner = this.scanner;
        scanner.currentCharacter = c10;
        scanner.currentPosition = i12;
        this.index = i12;
        if (!z10) {
            if (this.reportProblems) {
                this.sourceParser.problemReporter().javadocInvalidTag(this.tagSourceStart, this.tagSourceEnd);
            }
            if (this.textStart == -1) {
                this.textStart = this.index;
            }
            this.scanner.currentCharacter = c10;
            return false;
        }
        this.tagValue = 100;
        switch (readChar) {
            case 'a':
                if (i11 == JavadocTagConstants.TAG_AUTHOR_LENGTH && CharOperation.equals(JavadocTagConstants.TAG_AUTHOR, cArr, 0, i11)) {
                    this.tagValue = 12;
                    this.tagWaitingForDescription = 12;
                } else if (i11 == JavadocTagConstants.TAG_API_NOTE_LENGTH && CharOperation.equals(JavadocTagConstants.TAG_API_NOTE, cArr, 0, i11)) {
                    this.tagValue = 27;
                    this.tagWaitingForDescription = 27;
                }
                parseIdentifierTag = false;
                break;
            case 'b':
            case 'f':
            case 'g':
            case 'j':
            case 'k':
            case 'm':
            case 'n':
            case 'o':
            case 'q':
            default:
                createTag();
                parseIdentifierTag = false;
                break;
            case 'c':
                if (i11 == JavadocTagConstants.TAG_CATEGORY_LENGTH && CharOperation.equals(JavadocTagConstants.TAG_CATEGORY, cArr, 0, i11)) {
                    this.tagValue = 11;
                    if (!this.inlineTagStarted) {
                        parseIdentifierTag = parseIdentifierTag(false);
                        break;
                    }
                } else if (i11 == JavadocTagConstants.TAG_CODE_LENGTH && this.inlineTagStarted && CharOperation.equals(JavadocTagConstants.TAG_CODE, cArr, 0, i11)) {
                    this.tagValue = 18;
                    this.tagWaitingForDescription = 18;
                }
                parseIdentifierTag = false;
                break;
            case 'd':
                if (i11 != JavadocTagConstants.TAG_DEPRECATED_LENGTH || !CharOperation.equals(JavadocTagConstants.TAG_DEPRECATED, cArr, 0, i11)) {
                    if (i11 == JavadocTagConstants.TAG_DOC_ROOT_LENGTH && CharOperation.equals(JavadocTagConstants.TAG_DOC_ROOT, cArr, 0, i11)) {
                        this.tagValue = 20;
                    }
                    parseIdentifierTag = false;
                    break;
                } else {
                    this.deprecated = true;
                    this.tagValue = 1;
                    this.tagWaitingForDescription = 1;
                }
                parseIdentifierTag = true;
                break;
            case 'e':
                if (i11 == JavadocTagConstants.TAG_EXCEPTION_LENGTH && CharOperation.equals(JavadocTagConstants.TAG_EXCEPTION, cArr, 0, i11)) {
                    this.tagValue = 5;
                    if (!this.inlineTagStarted) {
                        parseIdentifierTag = parseThrows();
                        break;
                    }
                }
                parseIdentifierTag = false;
                break;
            case 'h':
                if (i11 == JavadocTagConstants.TAG_HIDDEN_LENGTH && CharOperation.equals(JavadocTagConstants.TAG_HIDDEN, cArr, 0, i11)) {
                    this.tagValue = 24;
                    parseIdentifierTag = true;
                    break;
                }
                parseIdentifierTag = false;
                break;
            case 'i':
                if (i11 != JavadocTagConstants.TAG_INDEX_LENGTH || !CharOperation.equals(JavadocTagConstants.TAG_INDEX, cArr, 0, i11)) {
                    if (i11 != JavadocTagConstants.TAG_INHERITDOC_LENGTH || !CharOperation.equals(JavadocTagConstants.TAG_INHERITDOC, cArr, 0, i11)) {
                        if (i11 == JavadocTagConstants.TAG_IMPL_SPEC_LENGTH && CharOperation.equals(JavadocTagConstants.TAG_IMPL_SPEC, cArr, 0, i11)) {
                            this.tagValue = 28;
                            this.tagWaitingForDescription = 28;
                        } else if (i11 == JavadocTagConstants.TAG_IMPL_NOTE_LENGTH && CharOperation.equals(JavadocTagConstants.TAG_IMPL_NOTE, cArr, 0, i11)) {
                            this.tagValue = 29;
                            this.tagWaitingForDescription = 29;
                        }
                        parseIdentifierTag = false;
                        break;
                    } else {
                        int i18 = this.lastBlockTagValue;
                        if (i18 == 0 || i18 == 2 || i18 == 3 || i18 == 4 || i18 == 5) {
                            if (this.reportProblems) {
                                recordInheritedPosition((this.tagSourceStart << 32) + this.tagSourceEnd);
                            }
                            if (this.inlineTagStarted) {
                                parseInheritDocTag();
                            }
                            parseIdentifierTag = true;
                        } else {
                            if (this.reportProblems) {
                                this.sourceParser.problemReporter().javadocUnexpectedTag(this.tagSourceStart, this.tagSourceEnd);
                            }
                            parseIdentifierTag = false;
                        }
                        this.tagValue = 9;
                        break;
                    }
                } else {
                    this.tagValue = 25;
                    this.tagWaitingForDescription = 25;
                    parseIdentifierTag = true;
                    break;
                }
                break;
            case 'l':
                if (i11 != JavadocTagConstants.TAG_LINK_LENGTH || !CharOperation.equals(JavadocTagConstants.TAG_LINK, cArr, 0, i11)) {
                    if (i11 == JavadocTagConstants.TAG_LINKPLAIN_LENGTH && CharOperation.equals(JavadocTagConstants.TAG_LINKPLAIN, cArr, 0, i11)) {
                        this.tagValue = 8;
                        if (this.inlineTagStarted) {
                            parseIdentifierTag = parseReference();
                            break;
                        }
                    } else if (i11 == JavadocTagConstants.TAG_LITERAL_LENGTH && this.inlineTagStarted && CharOperation.equals(JavadocTagConstants.TAG_LITERAL, cArr, 0, i11)) {
                        this.tagValue = 19;
                        this.tagWaitingForDescription = 19;
                    }
                    parseIdentifierTag = false;
                    break;
                } else {
                    this.tagValue = 7;
                    if (this.inlineTagStarted || (this.kind & 8) != 0) {
                        parseIdentifierTag = parseReference();
                        break;
                    }
                    parseIdentifierTag = false;
                }
                break;
            case 'p':
                if (i11 == JavadocTagConstants.TAG_PARAM_LENGTH && CharOperation.equals(JavadocTagConstants.TAG_PARAM, cArr, 0, i11)) {
                    this.tagValue = 2;
                    if (!this.inlineTagStarted) {
                        parseIdentifierTag = parseParam();
                        break;
                    }
                } else if (i11 == JavadocTagConstants.TAG_PROVIDES_LENGTH && CharOperation.equals(JavadocTagConstants.TAG_PROVIDES, cArr, 0, i11)) {
                    this.tagValue = 23;
                    this.tagWaitingForDescription = 23;
                }
                parseIdentifierTag = false;
                break;
            case 'r':
                if (i11 == JavadocTagConstants.TAG_RETURN_LENGTH && CharOperation.equals(JavadocTagConstants.TAG_RETURN, cArr, 0, i11)) {
                    this.tagValue = 3;
                    if (!this.inlineTagStarted) {
                        parseIdentifierTag = parseReturn();
                        break;
                    }
                }
                parseIdentifierTag = false;
                break;
            case 's':
                if (i11 == JavadocTagConstants.TAG_SEE_LENGTH && CharOperation.equals(JavadocTagConstants.TAG_SEE, cArr, 0, i11)) {
                    this.tagValue = 6;
                    if (!this.inlineTagStarted) {
                        parseIdentifierTag = parseReference();
                        break;
                    }
                } else if (i11 == JavadocTagConstants.TAG_SERIAL_LENGTH && CharOperation.equals(JavadocTagConstants.TAG_SERIAL, cArr, 0, i11)) {
                    this.tagValue = 13;
                    this.tagWaitingForDescription = 13;
                } else if (i11 == JavadocTagConstants.TAG_SERIAL_DATA_LENGTH && CharOperation.equals(JavadocTagConstants.TAG_SERIAL_DATA, cArr, 0, i11)) {
                    this.tagValue = 14;
                    this.tagWaitingForDescription = 14;
                } else if (i11 == JavadocTagConstants.TAG_SERIAL_FIELD_LENGTH && CharOperation.equals(JavadocTagConstants.TAG_SERIAL_FIELD, cArr, 0, i11)) {
                    this.tagValue = 15;
                    this.tagWaitingForDescription = 15;
                } else if (i11 == JavadocTagConstants.TAG_SINCE_LENGTH && CharOperation.equals(JavadocTagConstants.TAG_SINCE, cArr, 0, i11)) {
                    this.tagValue = 16;
                    this.tagWaitingForDescription = 16;
                } else if (i11 == JavadocTagConstants.TAG_SYSTEM_PROPERTY_LENGTH && CharOperation.equals(JavadocTagConstants.TAG_SYSTEM_PROPERTY, cArr, 0, i11)) {
                    this.tagValue = 21;
                    this.tagWaitingForDescription = 21;
                } else if (i11 == JavadocTagConstants.TAG_SUMMARY_LENGTH && CharOperation.equals(JavadocTagConstants.TAG_SUMMARY, cArr, 0, i11)) {
                    this.tagValue = 26;
                    this.tagWaitingForDescription = 26;
                }
                parseIdentifierTag = false;
                break;
            case 't':
                if (i11 == JavadocTagConstants.TAG_THROWS_LENGTH && CharOperation.equals(JavadocTagConstants.TAG_THROWS, cArr, 0, i11)) {
                    this.tagValue = 4;
                    if (!this.inlineTagStarted) {
                        parseIdentifierTag = parseThrows();
                        break;
                    }
                }
                parseIdentifierTag = false;
                break;
            case 'u':
                if (i11 == JavadocTagConstants.TAG_USES_LENGTH && CharOperation.equals(JavadocTagConstants.TAG_USES, cArr, 0, i11)) {
                    this.tagValue = 22;
                    this.tagWaitingForDescription = 22;
                }
                parseIdentifierTag = false;
                break;
            case 'v':
                if (i11 == JavadocTagConstants.TAG_VALUE_LENGTH && CharOperation.equals(JavadocTagConstants.TAG_VALUE, cArr, 0, i11)) {
                    this.tagValue = 10;
                    if (this.sourceLevel >= ClassFileConstants.JDK1_5) {
                        if (this.inlineTagStarted) {
                            parseIdentifierTag = parseReference();
                            break;
                        }
                    } else if (this.validValuePositions == -1) {
                        if (this.invalidValuePositions != -1 && this.reportProblems) {
                            ProblemReporter problemReporter = this.sourceParser.problemReporter();
                            long j10 = this.invalidValuePositions;
                            problemReporter.javadocUnexpectedTag((int) (j10 >>> 32), (int) j10);
                        }
                        this.invalidValuePositions = (this.tagSourceStart << 32) + this.tagSourceEnd;
                    } else if (this.reportProblems) {
                        this.sourceParser.problemReporter().javadocUnexpectedTag(this.tagSourceStart, this.tagSourceEnd);
                    }
                } else if (i11 == JavadocTagConstants.TAG_VERSION_LENGTH && CharOperation.equals(JavadocTagConstants.TAG_VERSION, cArr, 0, i11)) {
                    this.tagValue = 17;
                    this.tagWaitingForDescription = 17;
                } else {
                    createTag();
                }
                parseIdentifierTag = false;
                break;
        }
        this.textStart = this.index;
        int i19 = this.tagValue;
        if (i19 != 100) {
            boolean z11 = this.inlineTagStarted;
            if (!z11) {
                this.lastBlockTagValue = i19;
            }
            if ((z11 && JavadocTagConstants.JAVADOC_TAG_TYPE[i19] == 2) || (!z11 && JavadocTagConstants.JAVADOC_TAG_TYPE[i19] == 1)) {
                this.tagValue = 100;
                this.tagWaitingForDescription = 0;
                if (!this.reportProblems) {
                    return false;
                }
                this.sourceParser.problemReporter().javadocUnexpectedTag(this.tagSourceStart, this.tagSourceEnd);
                return false;
            }
        }
        return parseIdentifierTag;
    }

    @Override
    public boolean parseThrows() {
        boolean parseThrows = super.parseThrows();
        this.tagWaitingForDescription = (parseThrows && this.reportProblems) ? 4 : 0;
        return parseThrows;
    }

    @Override
    public boolean pushParamName(boolean z10) {
        ASTNode javadocSingleTypeReference = z10 ? new JavadocSingleTypeReference(this.identifierStack[1], this.identifierPositionStack[1], this.tagSourceStart, this.tagSourceEnd) : new JavadocSingleNameReference(this.identifierStack[0], this.identifierPositionStack[0], this.tagSourceStart, this.tagSourceEnd);
        if (this.astLengthPtr == -1) {
            pushOnAstStack(javadocSingleTypeReference, true);
        } else {
            if (!z10) {
                for (int i10 = 1; i10 <= this.astLengthPtr; i10 += 3) {
                    if (this.astLengthStack[i10] != 0) {
                        if (this.reportProblems) {
                            this.sourceParser.problemReporter().javadocUnexpectedTag(this.tagSourceStart, this.tagSourceEnd);
                        }
                        int i11 = this.invalidParamReferencesPtr;
                        if (i11 == -1) {
                            this.invalidParamReferencesStack = new JavadocSingleNameReference[10];
                        }
                        ASTNode[] aSTNodeArr = this.invalidParamReferencesStack;
                        int length = aSTNodeArr.length;
                        int i12 = i11 + 1;
                        this.invalidParamReferencesPtr = i12;
                        if (i12 >= length) {
                            JavadocSingleNameReference[] javadocSingleNameReferenceArr = new JavadocSingleNameReference[length + 10];
                            this.invalidParamReferencesStack = javadocSingleNameReferenceArr;
                            System.arraycopy(aSTNodeArr, 0, javadocSingleNameReferenceArr, 0, length);
                        }
                        this.invalidParamReferencesStack[this.invalidParamReferencesPtr] = javadocSingleTypeReference;
                        return false;
                    }
                }
            }
            int i13 = this.astLengthPtr % 3;
            if (i13 == 0) {
                pushOnAstStack(javadocSingleTypeReference, false);
            } else {
                if (i13 != 2) {
                    return false;
                }
                pushOnAstStack(javadocSingleTypeReference, true);
            }
        }
        return true;
    }

    @Override
    public boolean pushSeeRef(Object obj) {
        int i10 = this.astLengthPtr;
        if (i10 == -1) {
            pushOnAstStack(null, true);
            pushOnAstStack(null, true);
            pushOnAstStack(obj, true);
        } else {
            int i11 = i10 % 3;
            if (i11 == 0) {
                pushOnAstStack(null, true);
                pushOnAstStack(obj, true);
            } else if (i11 == 1) {
                pushOnAstStack(obj, true);
            } else {
                if (i11 != 2) {
                    return false;
                }
                pushOnAstStack(obj, false);
            }
        }
        return true;
    }

    @Override
    public void pushText(int i10, int i11) {
        this.tagWaitingForDescription = 0;
    }

    @Override
    public boolean pushThrowName(Object obj) {
        int i10 = this.astLengthPtr;
        if (i10 == -1) {
            pushOnAstStack(null, true);
            pushOnAstStack(obj, true);
        } else {
            int i11 = i10 % 3;
            if (i11 == 0) {
                pushOnAstStack(obj, true);
            } else if (i11 == 1) {
                pushOnAstStack(obj, false);
            } else {
                if (i11 != 2) {
                    return false;
                }
                pushOnAstStack(null, true);
                pushOnAstStack(obj, true);
            }
        }
        return true;
    }

    @Override
    public void refreshInlineTagPosition(int i10) {
        if (this.tagWaitingForDescription != 0) {
            this.sourceParser.problemReporter().javadocMissingTagDescription(JavadocTagConstants.TAG_NAMES[this.tagWaitingForDescription], this.tagSourceStart, this.tagSourceEnd, this.sourceParser.modifiers);
            this.tagWaitingForDescription = 0;
        }
    }

    @Override
    public void refreshReturnStatement() {
        ((JavadocReturnStatement) this.returnStatement).bits &= -262145;
    }

    @Override
    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("check javadoc: ");
        stringBuffer.append(this.checkDocComment);
        stringBuffer.append("\n");
        stringBuffer.append("javadoc: ");
        stringBuffer.append((Object) this.docComment);
        stringBuffer.append("\n");
        stringBuffer.append(super.toString());
        return stringBuffer.toString();
    }

    @Override
    public void updateDocComment() {
        int i10;
        int i11 = this.tagWaitingForDescription;
        if (i11 != 0) {
            if (i11 == 2 || i11 == 4) {
                if (!this.inlineTagStarted) {
                    long[] jArr = this.identifierPositionStack;
                    this.sourceParser.problemReporter().javadocMissingTagDescriptionAfterReference((int) (jArr[0] >>> 32), (int) jArr[this.identifierPtr], this.sourceParser.modifiers);
                }
            } else if (!this.inlineTagStarted) {
                this.sourceParser.problemReporter().javadocMissingTagDescription(JavadocTagConstants.TAG_NAMES[this.tagWaitingForDescription], this.tagSourceStart, this.tagSourceEnd, this.sourceParser.modifiers);
            }
        }
        this.tagWaitingForDescription = 0;
        long[] jArr2 = this.inheritedPositions;
        if (jArr2 != null && (i10 = this.inheritedPositionsPtr) != jArr2.length) {
            long[] jArr3 = new long[i10];
            this.inheritedPositions = jArr3;
            System.arraycopy(jArr2, 0, jArr3, 0, i10);
        }
        Javadoc javadoc = this.docComment;
        javadoc.inheritedPositions = this.inheritedPositions;
        long j10 = this.validValuePositions;
        if (j10 == -1) {
            j10 = this.invalidValuePositions;
        }
        javadoc.valuePositions = j10;
        Object obj = this.returnStatement;
        if (obj != null) {
            javadoc.returnStatement = (JavadocReturnStatement) obj;
        }
        int i12 = this.invalidParamReferencesPtr;
        if (i12 >= 0) {
            JavadocSingleNameReference[] javadocSingleNameReferenceArr = new JavadocSingleNameReference[i12 + 1];
            javadoc.invalidParameters = javadocSingleNameReferenceArr;
            System.arraycopy(this.invalidParamReferencesStack, 0, javadocSingleNameReferenceArr, 0, i12 + 1);
        }
        if (this.astLengthPtr == -1) {
            return;
        }
        int[] iArr = new int[3];
        for (int i13 = 0; i13 <= this.astLengthPtr; i13++) {
            int i14 = i13 % 3;
            iArr[i14] = iArr[i14] + this.astLengthStack[i13];
        }
        Javadoc javadoc2 = this.docComment;
        int i15 = iArr[2];
        javadoc2.seeReferences = i15 > 0 ? new Expression[i15] : NO_EXPRESSION;
        int i16 = iArr[1];
        javadoc2.exceptionReferences = i16 > 0 ? new TypeReference[i16] : NO_TYPE_REFERENCE;
        int i17 = iArr[0];
        javadoc2.paramReferences = i17 > 0 ? new JavadocSingleNameReference[i17] : NO_SINGLE_NAME_REFERENCE;
        javadoc2.paramTypeParameters = i17 > 0 ? new JavadocSingleTypeReference[i17] : NO_SINGLE_TYPE_REFERENCE;
        int i18 = i17;
        while (true) {
            int i19 = this.astLengthPtr;
            if (i19 < 0) {
                break;
            }
            int i20 = i19 % 3;
            if (i20 == 0) {
                int[] iArr2 = this.astLengthStack;
                this.astLengthPtr = i19 - 1;
                int i21 = iArr2[i19];
                for (int i22 = 0; i22 < i21; i22++) {
                    Object[] objArr = this.astStack;
                    int i23 = this.astPtr;
                    this.astPtr = i23 - 1;
                    Expression expression = (Expression) objArr[i23];
                    if (expression instanceof JavadocSingleNameReference) {
                        i17--;
                        this.docComment.paramReferences[i17] = (JavadocSingleNameReference) expression;
                    } else if (expression instanceof JavadocSingleTypeReference) {
                        i18--;
                        this.docComment.paramTypeParameters[i18] = (JavadocSingleTypeReference) expression;
                    }
                }
            } else if (i20 == 1) {
                int[] iArr3 = this.astLengthStack;
                this.astLengthPtr = i19 - 1;
                int i24 = iArr3[i19];
                for (int i25 = 0; i25 < i24; i25++) {
                    TypeReference[] typeReferenceArr = this.docComment.exceptionReferences;
                    int i26 = iArr[i20] - 1;
                    iArr[i20] = i26;
                    Object[] objArr2 = this.astStack;
                    int i27 = this.astPtr;
                    this.astPtr = i27 - 1;
                    typeReferenceArr[i26] = (TypeReference) objArr2[i27];
                }
            } else if (i20 == 2) {
                int[] iArr4 = this.astLengthStack;
                this.astLengthPtr = i19 - 1;
                int i28 = iArr4[i19];
                for (int i29 = 0; i29 < i28; i29++) {
                    Expression[] expressionArr = this.docComment.seeReferences;
                    int i30 = iArr[i20] - 1;
                    iArr[i20] = i30;
                    Object[] objArr3 = this.astStack;
                    int i31 = this.astPtr;
                    this.astPtr = i31 - 1;
                    expressionArr[i30] = (Expression) objArr3[i31];
                }
            }
        }
        if (i17 == 0) {
            this.docComment.paramTypeParameters = null;
            return;
        }
        if (i18 == 0) {
            this.docComment.paramReferences = null;
            return;
        }
        int i32 = iArr[0];
        Javadoc javadoc3 = this.docComment;
        JavadocSingleNameReference[] javadocSingleNameReferenceArr2 = javadoc3.paramReferences;
        int i33 = i32 - i17;
        JavadocSingleNameReference[] javadocSingleNameReferenceArr3 = new JavadocSingleNameReference[i33];
        javadoc3.paramReferences = javadocSingleNameReferenceArr3;
        System.arraycopy(javadocSingleNameReferenceArr2, i17, javadocSingleNameReferenceArr3, 0, i33);
        Javadoc javadoc4 = this.docComment;
        JavadocSingleTypeReference[] javadocSingleTypeReferenceArr = javadoc4.paramTypeParameters;
        int i34 = i32 - i18;
        JavadocSingleTypeReference[] javadocSingleTypeReferenceArr2 = new JavadocSingleTypeReference[i34];
        javadoc4.paramTypeParameters = javadocSingleTypeReferenceArr2;
        System.arraycopy(javadocSingleTypeReferenceArr, i18, javadocSingleTypeReferenceArr2, 0, i34);
    }
}
