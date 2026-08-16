package org.eclipse.jdt.core.dom;

import java.util.List;
import java.util.ListIterator;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.core.compiler.InvalidInputException;
import org.eclipse.jdt.internal.compiler.classfmt.ClassFileConstants;
import org.eclipse.jdt.internal.compiler.parser.AbstractCommentParser;
import org.eclipse.jdt.internal.compiler.parser.JavadocTagConstants;
import org.eclipse.jdt.internal.compiler.parser.Scanner;
import org.eclipse.jdt.internal.compiler.parser.ScannerHelper;

public class DocCommentParser extends AbstractCommentParser {
    private AST ast;
    private Javadoc docComment;

    public DocCommentParser(AST ast, Scanner scanner, boolean z10) {
        super(null);
        this.ast = ast;
        this.scanner = scanner;
        int apiLevel = ast.apiLevel();
        if (apiLevel == 2) {
            this.sourceLevel = ClassFileConstants.JDK1_3;
        } else if (apiLevel != 3) {
            this.sourceLevel = ClassFileConstants.JDK1_7;
        } else {
            this.sourceLevel = ClassFileConstants.JDK1_5;
        }
        this.checkDocComment = z10;
        this.kind = 258;
    }

    private void setComment(int i10, int i11) {
        this.docComment.setComment(new String(this.source, i10, i11));
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [org.eclipse.jdt.core.dom.ASTNode, org.eclipse.jdt.core.dom.MethodRefParameter, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r11v10 */
    /* JADX WARN: Type inference failed for: r11v11 */
    /* JADX WARN: Type inference failed for: r11v12 */
    /* JADX WARN: Type inference failed for: r11v3 */
    /* JADX WARN: Type inference failed for: r11v4, types: [org.eclipse.jdt.core.dom.Type] */
    /* JADX WARN: Type inference failed for: r11v5, types: [org.eclipse.jdt.core.dom.Type] */
    /* JADX WARN: Type inference failed for: r11v6, types: [org.eclipse.jdt.core.dom.ASTNode, org.eclipse.jdt.core.dom.ArrayType] */
    /* JADX WARN: Type inference failed for: r11v7, types: [org.eclipse.jdt.core.dom.Type] */
    /* JADX WARN: Type inference failed for: r8v15, types: [org.eclipse.jdt.core.dom.AST] */
    /* JADX WARN: Type inference failed for: r8v8, types: [org.eclipse.jdt.core.dom.AST] */
    @Override
    public Object createArgumentReference(char[] cArr, int i10, boolean z10, Object obj, long[] jArr, long j10) throws InvalidInputException {
        ?? r11;
        try {
            ?? newMethodRefParameter = this.ast.newMethodRefParameter();
            ASTNode aSTNode = (ASTNode) obj;
            int startPosition = aSTNode.getStartPosition();
            int startPosition2 = (aSTNode.getStartPosition() + aSTNode.getLength()) - 1;
            if (i10 > 0) {
                startPosition2 = (int) jArr[i10 - 1];
            }
            if (j10 >= 0) {
                startPosition2 = (int) j10;
            }
            if (cArr.length != 0) {
                SimpleName simpleName = new SimpleName(this.ast);
                simpleName.internalSetIdentifier(new String(cArr));
                newMethodRefParameter.setName(simpleName);
                int i11 = (int) (j10 >>> 32);
                simpleName.setSourceRange(i11, (startPosition2 - i11) + 1);
            }
            if (aSTNode.getNodeType() == 39) {
                r11 = (PrimitiveType) aSTNode;
            } else {
                SimpleType newSimpleType = this.ast.newSimpleType((Name) aSTNode);
                newSimpleType.setSourceRange(startPosition, aSTNode.getLength());
                r11 = newSimpleType;
            }
            if (i10 > 0 && !z10) {
                ?? r82 = this.ast;
                int i12 = 0;
                r11 = r11;
                if (r82.apiLevel <= 4) {
                    while (i12 < i10) {
                        ArrayType newArrayType = this.ast.newArrayType(r11);
                        newArrayType.setSourceRange(startPosition, (((int) jArr[i12]) - startPosition) + 1);
                        i12++;
                        r11 = newArrayType;
                    }
                } else {
                    r11 = r82.newArrayType(r11, 0);
                    r11.setSourceRange(startPosition, (((int) jArr[i10 - 1]) - startPosition) + 1);
                    while (i12 < i10) {
                        Dimension newDimension = this.ast.newDimension();
                        long j11 = jArr[i12];
                        int i13 = (int) (j11 >>> 32);
                        newDimension.setSourceRange(i13, (((int) j11) - i13) + 1);
                        r11.dimensions().add(newDimension);
                        i12++;
                    }
                }
            }
            newMethodRefParameter.setType(r11);
            if (this.ast.apiLevel > 8) {
                newMethodRefParameter.setVarargs(z10);
            }
            newMethodRefParameter.setSourceRange(startPosition, (startPosition2 - startPosition) + 1);
            return newMethodRefParameter;
        } catch (ClassCastException unused) {
            throw new InvalidInputException();
        }
    }

    @Override
    public Object createFieldReference(Object obj) throws InvalidInputException {
        try {
            MemberRef newMemberRef = this.ast.newMemberRef();
            SimpleName simpleName = new SimpleName(this.ast);
            simpleName.internalSetIdentifier(new String(this.identifierStack[0]));
            newMemberRef.setName(simpleName);
            long j10 = this.identifierPositionStack[0];
            int i10 = (int) (j10 >>> 32);
            int i11 = (int) j10;
            simpleName.setSourceRange(i10, (i11 - i10) + 1);
            if (obj == null) {
                int i12 = this.memberStart;
                newMemberRef.setSourceRange(i12, (i11 - i12) + 1);
            } else {
                Name name = (Name) obj;
                newMemberRef.setQualifier(name);
                int startPosition = name.getStartPosition();
                newMemberRef.setSourceRange(startPosition, (((simpleName.getStartPosition() + simpleName.getLength()) - 1) - startPosition) + 1);
            }
            return newMemberRef;
        } catch (ClassCastException unused) {
            throw new InvalidInputException();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Object createMethodReference(Object obj, List list) throws InvalidInputException {
        int startPosition;
        try {
            MethodRef newMethodRef = this.ast.newMethodRef();
            SimpleName simpleName = new SimpleName(this.ast);
            int i10 = this.identifierLengthStack[0] - 1;
            simpleName.internalSetIdentifier(new String(this.identifierStack[i10]));
            newMethodRef.setName(simpleName);
            long j10 = this.identifierPositionStack[i10];
            int i11 = (int) (j10 >>> 32);
            int i12 = (int) j10;
            simpleName.setSourceRange(i11, (i12 - i11) + 1);
            if (obj == null) {
                startPosition = this.memberStart;
                newMethodRef.setSourceRange(startPosition, (i12 - startPosition) + 1);
            } else {
                Name name = (Name) obj;
                newMethodRef.setQualifier(name);
                startPosition = name.getStartPosition();
            }
            if (list != null) {
                ListIterator listIterator = list.listIterator();
                while (listIterator.hasNext()) {
                    newMethodRef.parameters().add((MethodRefParameter) listIterator.next());
                }
            }
            newMethodRef.setSourceRange(startPosition, (this.scanner.getCurrentTokenEndPosition() - startPosition) + 1);
            return newMethodRef;
        } catch (ClassCastException unused) {
            throw new InvalidInputException();
        }
    }

    @Override
    public void createTag() {
        TagElement tagElement;
        TagElement newTagElement = this.ast.newTagElement();
        Scanner scanner = this.scanner;
        int i10 = scanner.currentPosition;
        scanner.resetTo(this.tagSourceStart, this.tagSourceEnd);
        StringBuffer stringBuffer = new StringBuffer();
        int i11 = this.tagSourceStart;
        this.scanner.getNextChar();
        while (true) {
            Scanner scanner2 = this.scanner;
            if (scanner2.currentPosition > this.tagSourceEnd + 1) {
                break;
            }
            stringBuffer.append(scanner2.currentCharacter);
            this.scanner.getNextChar();
        }
        newTagElement.setTagName(stringBuffer.toString());
        if (this.inlineTagStarted) {
            i11 = this.inlineTagStart;
            int i12 = this.astPtr;
            if (i12 == -1) {
                tagElement = this.ast.newTagElement();
                tagElement.setSourceRange(i11, (this.tagSourceEnd - i11) + 1);
                pushOnAstStack(tagElement, true);
            } else {
                tagElement = (TagElement) this.astStack[i12];
            }
            int startPosition = tagElement.getStartPosition();
            tagElement.fragments().add(newTagElement);
            tagElement.setSourceRange(startPosition, (this.tagSourceEnd - startPosition) + 1);
        } else {
            pushOnAstStack(newTagElement, true);
        }
        newTagElement.setSourceRange(i11, (this.tagSourceEnd - i11) + 1);
        this.scanner.resetTo(i10, this.javadocEnd);
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:18:0x001a. Please report as an issue. */
    @Override
    public Object createTypeReference(int i10) {
        ASTNode newPrimitiveType;
        int i11 = this.identifierLengthStack[this.identifierLengthPtr];
        String[] strArr = new String[i11];
        int i12 = (this.identifierPtr - i11) + 1;
        for (int i13 = 0; i13 < i11; i13++) {
            strArr[i13] = new String(this.identifierStack[i12 + i13]);
        }
        if (i10 != -1) {
            switch (i10) {
                case 99:
                    newPrimitiveType = this.ast.newPrimitiveType(PrimitiveType.BOOLEAN);
                    break;
                case 100:
                    newPrimitiveType = this.ast.newPrimitiveType(PrimitiveType.BYTE);
                    break;
                case 101:
                case 102:
                case 106:
                default:
                    return null;
                case 103:
                    newPrimitiveType = this.ast.newPrimitiveType(PrimitiveType.CHAR);
                    break;
                case 104:
                    newPrimitiveType = this.ast.newPrimitiveType(PrimitiveType.DOUBLE);
                    break;
                case 105:
                    newPrimitiveType = this.ast.newPrimitiveType(PrimitiveType.FLOAT);
                    break;
                case 107:
                    newPrimitiveType = this.ast.newPrimitiveType(PrimitiveType.INT);
                    break;
                case 108:
                    newPrimitiveType = this.ast.newPrimitiveType(PrimitiveType.LONG);
                    break;
                case 109:
                    newPrimitiveType = this.ast.newPrimitiveType(PrimitiveType.SHORT);
                    break;
                case 110:
                    newPrimitiveType = this.ast.newPrimitiveType(PrimitiveType.VOID);
                    break;
            }
        } else {
            newPrimitiveType = this.ast.internalNewName(strArr);
        }
        long j10 = this.identifierPositionStack[i12];
        int i14 = (int) (j10 >>> 32);
        if (i11 > 1) {
            Name name = (Name) newPrimitiveType;
            int i15 = this.identifierPtr;
            while (i15 > i12) {
                long j11 = this.identifierPositionStack[i15];
                int i16 = (int) (j11 >>> 32);
                int i17 = (int) j11;
                name.index = i11;
                QualifiedName qualifiedName = (QualifiedName) name;
                SimpleName name2 = qualifiedName.getName();
                name2.index = i11;
                name2.setSourceRange(i16, (i17 - i16) + 1);
                name.setSourceRange(i14, (i17 - i14) + 1);
                name = qualifiedName.getQualifier();
                i15--;
                i11--;
            }
            name.setSourceRange(i14, (((int) this.identifierPositionStack[i12]) - i14) + 1);
            name.index = i11;
        } else {
            newPrimitiveType.setSourceRange(i14, (((int) j10) - i14) + 1);
        }
        return newPrimitiveType;
    }

    public Javadoc parse(int[] iArr) {
        int i10 = iArr[0];
        return parse(i10, iArr[1] - i10);
    }

    @Override
    public boolean parseIdentifierTag(boolean z10) {
        if (!super.parseIdentifierTag(z10)) {
            return false;
        }
        createTag();
        int i10 = this.tagSourceEnd + 1;
        this.index = i10;
        this.scanner.resetTo(i10, this.javadocEnd);
        return true;
    }

    public boolean parseReturn() {
        createTag();
        return true;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:177:0x026d A[FALL_THROUGH] */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean parseTag(int i10) throws InvalidInputException {
        int i11 = this.index;
        int readTokenAndConsume = readTokenAndConsume();
        char[] cArr = CharOperation.NO_CHAR;
        Scanner scanner = this.scanner;
        boolean z10 = true;
        if (i11 == scanner.startPosition) {
            this.tagSourceStart = scanner.getCurrentTokenStartPosition();
            this.tagSourceEnd = this.scanner.getCurrentTokenEndPosition();
            cArr = this.scanner.getCurrentIdentifierSource();
        } else {
            this.tagSourceEnd = i11 - 1;
        }
        char c10 = this.scanner.currentCharacter;
        if (c10 != ' ' && !ScannerHelper.isWhitespace(c10)) {
            while (readTokenAndConsume != 61) {
                int i12 = this.index;
                Scanner scanner2 = this.scanner;
                if (i12 < scanner2.eofPosition) {
                    int length = cArr.length;
                    char c11 = scanner2.currentCharacter;
                    if (c11 != '*') {
                        if (c11 == '-') {
                            char[] cArr2 = new char[length + 1];
                            System.arraycopy(cArr, 0, cArr2, 0, length);
                            cArr2[length] = this.scanner.currentCharacter;
                            cArr = cArr2;
                        } else if (c11 != ':' && c11 != '<' && c11 != '>' && c11 != '}') {
                            switch (c11) {
                                case '!':
                                case '\"':
                                case '#':
                                    break;
                                default:
                                    switch (c11) {
                                        case '%':
                                        case '&':
                                        case '\'':
                                            break;
                                        default:
                                            if (c11 != ' ' && !ScannerHelper.isWhitespace(c11)) {
                                                readTokenAndConsume = readTokenAndConsume();
                                                char[] currentIdentifierSource = this.scanner.getCurrentIdentifierSource();
                                                char[] cArr3 = new char[currentIdentifierSource.length + length];
                                                System.arraycopy(cArr, 0, cArr3, 0, length);
                                                System.arraycopy(currentIdentifierSource, 0, cArr3, length, currentIdentifierSource.length);
                                                cArr = cArr3;
                                                break;
                                            }
                                            break;
                                    }
                            }
                        }
                        this.tagSourceEnd = this.scanner.getCurrentTokenEndPosition();
                        this.scanner.getNextChar();
                        this.index = this.scanner.currentPosition;
                    }
                }
            }
        }
        int length2 = cArr.length;
        int i13 = this.tagSourceEnd;
        this.index = i13 + 1;
        this.scanner.currentPosition = i13 + 1;
        this.tagSourceStart = i10;
        if (cArr.length == 0) {
            return false;
        }
        this.tagValue = 0;
        if (readTokenAndConsume != 17) {
            if (readTokenAndConsume == 22) {
                char c12 = cArr[0];
                if (c12 == 'i') {
                    if (length2 == JavadocTagConstants.TAG_INHERITDOC_LENGTH && CharOperation.equals(JavadocTagConstants.TAG_INHERITDOC, cArr)) {
                        if (this.reportProblems) {
                            recordInheritedPosition((this.tagSourceStart << 32) + this.tagSourceEnd);
                        }
                        this.tagValue = 9;
                    } else {
                        this.tagValue = 100;
                    }
                    createTag();
                } else if (c12 == 'l') {
                    if (length2 == JavadocTagConstants.TAG_LINK_LENGTH && CharOperation.equals(JavadocTagConstants.TAG_LINK, cArr)) {
                        this.tagValue = 7;
                    } else if (length2 == JavadocTagConstants.TAG_LINKPLAIN_LENGTH && CharOperation.equals(JavadocTagConstants.TAG_LINKPLAIN, cArr)) {
                        this.tagValue = 8;
                    } else if (length2 == JavadocTagConstants.TAG_LITERAL_LENGTH && CharOperation.equals(JavadocTagConstants.TAG_LITERAL, cArr)) {
                        this.tagValue = 19;
                    }
                    int i14 = this.tagValue;
                    if (i14 == 0 || i14 == 19) {
                        if (i14 == 0) {
                            this.tagValue = 100;
                        }
                        createTag();
                    } else {
                        if (this.inlineTagStarted) {
                            z10 = parseReference();
                        }
                        z10 = false;
                    }
                } else if (c12 != 'p') {
                    if (c12 != 's') {
                        if (c12 != 'v') {
                            switch (c12) {
                                case 'c':
                                    if (length2 != JavadocTagConstants.TAG_CATEGORY_LENGTH || !CharOperation.equals(JavadocTagConstants.TAG_CATEGORY, cArr)) {
                                        if (length2 != JavadocTagConstants.TAG_CODE_LENGTH || !CharOperation.equals(JavadocTagConstants.TAG_CODE, cArr)) {
                                            this.tagValue = 100;
                                            createTag();
                                            break;
                                        } else {
                                            this.tagValue = 18;
                                            createTag();
                                            break;
                                        }
                                    } else {
                                        this.tagValue = 11;
                                        z10 = parseIdentifierTag(false);
                                        break;
                                    }
                                    break;
                                case 'd':
                                    if (length2 == JavadocTagConstants.TAG_DEPRECATED_LENGTH && CharOperation.equals(JavadocTagConstants.TAG_DEPRECATED, cArr)) {
                                        this.deprecated = true;
                                        this.tagValue = 1;
                                    } else {
                                        this.tagValue = 100;
                                    }
                                    createTag();
                                    break;
                                case 'e':
                                    if (length2 != JavadocTagConstants.TAG_EXCEPTION_LENGTH || !CharOperation.equals(JavadocTagConstants.TAG_EXCEPTION, cArr)) {
                                        this.tagValue = 100;
                                        createTag();
                                        break;
                                    } else {
                                        this.tagValue = 5;
                                        z10 = parseThrows();
                                        break;
                                    }
                                    break;
                                default:
                                    this.tagValue = 100;
                                    createTag();
                                    break;
                            }
                        } else if (this.sourceLevel >= ClassFileConstants.JDK1_5 && length2 == JavadocTagConstants.TAG_VALUE_LENGTH && CharOperation.equals(JavadocTagConstants.TAG_VALUE, cArr)) {
                            this.tagValue = 10;
                            if (this.inlineTagStarted) {
                                z10 = parseReference();
                            }
                            z10 = false;
                        } else {
                            this.tagValue = 100;
                            createTag();
                        }
                    } else if (length2 == JavadocTagConstants.TAG_SEE_LENGTH && CharOperation.equals(JavadocTagConstants.TAG_SEE, cArr)) {
                        this.tagValue = 6;
                        if (!this.inlineTagStarted) {
                            z10 = parseReference();
                        }
                        z10 = false;
                    } else {
                        this.tagValue = 100;
                        createTag();
                    }
                } else if (length2 == JavadocTagConstants.TAG_PARAM_LENGTH && CharOperation.equals(JavadocTagConstants.TAG_PARAM, cArr)) {
                    this.tagValue = 2;
                    z10 = parseParam();
                } else {
                    this.tagValue = 100;
                    createTag();
                }
            } else if (readTokenAndConsume != 48 && readTokenAndConsume != 67) {
                if (readTokenAndConsume == 120) {
                    this.tagValue = 4;
                    z10 = parseThrows();
                } else if (readTokenAndConsume != 123 && readTokenAndConsume != 70 && readTokenAndConsume != 71 && readTokenAndConsume != 85 && readTokenAndConsume != 86 && readTokenAndConsume != 127 && readTokenAndConsume != 128) {
                    switch (readTokenAndConsume) {
                        default:
                            switch (readTokenAndConsume) {
                                default:
                                    switch (readTokenAndConsume) {
                                        default:
                                            switch (readTokenAndConsume) {
                                                case 73:
                                                case 74:
                                                case 75:
                                                case 76:
                                                case 77:
                                                case 78:
                                                case 79:
                                                case 80:
                                                case 81:
                                                case 83:
                                                    break;
                                                case 82:
                                                    this.tagValue = 3;
                                                    z10 = parseReturn();
                                                    break;
                                                default:
                                                    switch (readTokenAndConsume) {
                                                    }
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
                                            this.tagValue = 100;
                                            createTag();
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
            }
            this.textStart = this.index;
            return z10;
        }
        this.tagValue = 100;
        createTag();
        this.textStart = this.index;
        return z10;
    }

    @Override
    public boolean pushParamName(boolean z10) {
        SimpleName simpleName = new SimpleName(this.ast);
        simpleName.internalSetIdentifier(new String(this.identifierStack[z10 ? 1 : 0]));
        long j10 = this.identifierPositionStack[z10 ? 1 : 0];
        int i10 = (int) (j10 >>> 32);
        int i11 = (int) (j10 & 4294967295L);
        simpleName.setSourceRange(i10, (i11 - i10) + 1);
        TagElement newTagElement = this.ast.newTagElement();
        newTagElement.setTagName(TagElement.TAG_PARAM);
        if (z10) {
            TextElement newTextElement = this.ast.newTextElement();
            newTextElement.setText(new String(this.identifierStack[0]));
            long j11 = this.identifierPositionStack[0];
            int i12 = (int) (j11 >>> 32);
            newTextElement.setSourceRange(i12, (((int) (j11 & 4294967295L)) - i12) + 1);
            newTagElement.fragments().add(newTextElement);
            newTagElement.fragments().add(simpleName);
            TextElement newTextElement2 = this.ast.newTextElement();
            newTextElement2.setText(new String(this.identifierStack[2]));
            long j12 = this.identifierPositionStack[2];
            int i13 = (int) (j12 >>> 32);
            int i14 = (int) (j12 & 4294967295L);
            newTextElement2.setSourceRange(i13, (i14 - i13) + 1);
            newTagElement.fragments().add(newTextElement2);
            int i15 = this.tagSourceStart;
            newTagElement.setSourceRange(i15, (i14 - i15) + 1);
        } else {
            int i16 = this.tagSourceStart;
            newTagElement.setSourceRange(i16, (i11 - i16) + 1);
            newTagElement.fragments().add(simpleName);
        }
        pushOnAstStack(newTagElement, true);
        return true;
    }

    @Override
    public boolean pushSeeRef(Object obj) {
        TagElement tagElement;
        TagElement newTagElement = this.ast.newTagElement();
        ASTNode aSTNode = (ASTNode) obj;
        newTagElement.fragments().add(aSTNode);
        int startPosition = (aSTNode.getStartPosition() + aSTNode.getLength()) - 1;
        if (this.inlineTagStarted) {
            int i10 = this.inlineTagStart;
            newTagElement.setSourceRange(i10, (startPosition - i10) + 1);
            int i11 = this.tagValue;
            if (i11 == 7) {
                newTagElement.setTagName(TagElement.TAG_LINK);
            } else if (i11 == 8) {
                newTagElement.setTagName(TagElement.TAG_LINKPLAIN);
            } else if (i11 == 10) {
                newTagElement.setTagName(TagElement.TAG_VALUE);
            }
            int i12 = this.inlineTagStart;
            int i13 = this.astPtr;
            if (i13 == -1) {
                tagElement = this.ast.newTagElement();
                pushOnAstStack(tagElement, true);
            } else {
                tagElement = (TagElement) this.astStack[i13];
                i12 = tagElement.getStartPosition();
            }
            tagElement.fragments().add(newTagElement);
            tagElement.setSourceRange(i12, (startPosition - i12) + 1);
        } else {
            newTagElement.setTagName(TagElement.TAG_SEE);
            int i14 = this.tagSourceStart;
            newTagElement.setSourceRange(i14, (startPosition - i14) + 1);
            pushOnAstStack(newTagElement, true);
        }
        return true;
    }

    @Override
    public void pushText(int i10, int i11) {
        TagElement tagElement;
        TextElement newTextElement = this.ast.newTextElement();
        int i12 = i11 - i10;
        newTextElement.setText(new String(this.source, i10, i12));
        newTextElement.setSourceRange(i10, i12);
        int i13 = this.astPtr;
        if (i13 == -1) {
            tagElement = this.ast.newTagElement();
            tagElement.setSourceRange(i10, i12);
            pushOnAstStack(tagElement, true);
        } else {
            tagElement = (TagElement) this.astStack[i13];
            i10 = tagElement.getStartPosition();
        }
        List fragments = tagElement.fragments();
        if (this.inlineTagStarted) {
            int size = fragments.size();
            if (size == 0) {
                tagElement = this.ast.newTagElement();
                fragments.add(tagElement);
            } else {
                ASTNode aSTNode = (ASTNode) fragments.get(size - 1);
                if (aSTNode.getNodeType() == 65) {
                    tagElement = (TagElement) aSTNode;
                    i10 = tagElement.getStartPosition();
                }
            }
        }
        tagElement.fragments().add(newTextElement);
        tagElement.setSourceRange(i10, i11 - i10);
        this.textStart = -1;
    }

    @Override
    public boolean pushThrowName(Object obj) {
        TagElement newTagElement = this.ast.newTagElement();
        int i10 = this.tagValue;
        if (i10 == 4) {
            newTagElement.setTagName(TagElement.TAG_THROWS);
        } else if (i10 == 5) {
            newTagElement.setTagName(TagElement.TAG_EXCEPTION);
        }
        newTagElement.setSourceRange(this.tagSourceStart, (this.scanner.getCurrentTokenEndPosition() - this.tagSourceStart) + 1);
        newTagElement.fragments().add(obj);
        pushOnAstStack(newTagElement, true);
        return true;
    }

    @Override
    public void refreshInlineTagPosition(int i10) {
        int i11 = this.astPtr;
        if (i11 != -1) {
            TagElement tagElement = (TagElement) this.astStack[i11];
            if (this.inlineTagStarted) {
                int startPosition = tagElement.getStartPosition();
                tagElement.setSourceRange(startPosition, (i10 - startPosition) + 1);
                if (tagElement.fragments().size() > 0) {
                    ASTNode aSTNode = (ASTNode) tagElement.fragments().get(tagElement.fragments().size() - 1);
                    if (aSTNode.getNodeType() == 65) {
                        int startPosition2 = aSTNode.getStartPosition();
                        aSTNode.setSourceRange(startPosition2, (i10 - startPosition2) + 1);
                    }
                }
            }
        }
    }

    @Override
    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append("javadoc: ");
        stringBuffer.append((Object) this.docComment);
        stringBuffer.append("\n");
        stringBuffer.append(super.toString());
        return stringBuffer.toString();
    }

    @Override
    public void updateDocComment() {
        for (int i10 = 0; i10 <= this.astPtr; i10++) {
            this.docComment.tags().add(this.astStack[i10]);
        }
    }

    public Javadoc parse(int i10, int i11) {
        Scanner scanner = this.scanner;
        this.source = scanner.source;
        this.lineEnds = scanner.lineEnds;
        this.docComment = new Javadoc(this.ast);
        if (this.checkDocComment) {
            this.javadocStart = i10;
            this.javadocEnd = (i10 + i11) - 1;
            this.firstTagPosition = i10;
            commentParse();
        }
        this.docComment.setSourceRange(i10, i11);
        if (this.ast.apiLevel == 2) {
            setComment(i10, i11);
        }
        return this.docComment;
    }
}
