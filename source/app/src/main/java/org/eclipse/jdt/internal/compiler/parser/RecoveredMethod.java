package org.eclipse.jdt.internal.compiler.parser;

import java.util.HashSet;
import java.util.Set;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.ast.ASTNode;
import org.eclipse.jdt.internal.compiler.ast.AbstractMethodDeclaration;
import org.eclipse.jdt.internal.compiler.ast.Annotation;
import org.eclipse.jdt.internal.compiler.ast.Argument;
import org.eclipse.jdt.internal.compiler.ast.Block;
import org.eclipse.jdt.internal.compiler.ast.ConstructorDeclaration;
import org.eclipse.jdt.internal.compiler.ast.ExplicitConstructorCall;
import org.eclipse.jdt.internal.compiler.ast.FieldDeclaration;
import org.eclipse.jdt.internal.compiler.ast.LocalDeclaration;
import org.eclipse.jdt.internal.compiler.ast.MemberValuePair;
import org.eclipse.jdt.internal.compiler.ast.MethodDeclaration;
import org.eclipse.jdt.internal.compiler.ast.Statement;
import org.eclipse.jdt.internal.compiler.ast.SuperReference;
import org.eclipse.jdt.internal.compiler.ast.TypeDeclaration;
import org.eclipse.jdt.internal.compiler.ast.TypeParameter;
import org.eclipse.jdt.internal.compiler.ast.TypeReference;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;
import org.eclipse.jdt.internal.compiler.util.Util;

public class RecoveredMethod extends RecoveredElement implements TerminalTokens {
    public int annotationCount;
    public RecoveredAnnotation[] annotations;
    public boolean discardBody;
    public int localTypeCount;
    public RecoveredType[] localTypes;
    public RecoveredBlock methodBody;
    public AbstractMethodDeclaration methodDeclaration;
    public int modifiers;
    public int modifiersStart;
    int pendingAnnotationCount;
    RecoveredAnnotation[] pendingAnnotations;
    int pendingModifersSourceStart;
    int pendingModifiers;

    public RecoveredMethod(AbstractMethodDeclaration abstractMethodDeclaration, RecoveredElement recoveredElement, int i10, Parser parser) {
        super(recoveredElement, i10, parser);
        this.discardBody = true;
        this.pendingModifersSourceStart = -1;
        this.methodDeclaration = abstractMethodDeclaration;
        boolean bodyStartsAtHeaderEnd = bodyStartsAtHeaderEnd();
        this.foundOpeningBrace = !bodyStartsAtHeaderEnd;
        if (bodyStartsAtHeaderEnd) {
            return;
        }
        this.bracketBalance++;
    }

    @Override
    public RecoveredElement add(Block block, int i10) {
        return add(block, i10, false);
    }

    @Override
    public RecoveredElement addAnnotationName(int i10, int i11, int i12, int i13) {
        RecoveredAnnotation[] recoveredAnnotationArr = this.pendingAnnotations;
        if (recoveredAnnotationArr == null) {
            this.pendingAnnotations = new RecoveredAnnotation[5];
            this.pendingAnnotationCount = 0;
        } else {
            int i14 = this.pendingAnnotationCount;
            if (i14 == recoveredAnnotationArr.length) {
                RecoveredAnnotation[] recoveredAnnotationArr2 = new RecoveredAnnotation[i14 * 2];
                this.pendingAnnotations = recoveredAnnotationArr2;
                System.arraycopy(recoveredAnnotationArr, 0, recoveredAnnotationArr2, 0, i14);
            }
        }
        RecoveredAnnotation recoveredAnnotation = new RecoveredAnnotation(i10, i11, i12, this, i13);
        RecoveredAnnotation[] recoveredAnnotationArr3 = this.pendingAnnotations;
        int i15 = this.pendingAnnotationCount;
        this.pendingAnnotationCount = i15 + 1;
        recoveredAnnotationArr3[i15] = recoveredAnnotation;
        return recoveredAnnotation;
    }

    @Override
    public void addModifier(int i10, int i11) {
        this.pendingModifiers = i10 | this.pendingModifiers;
        if (this.pendingModifersSourceStart < 0) {
            this.pendingModifersSourceStart = i11;
        }
    }

    public void attach(TypeParameter[] typeParameterArr, int i10) {
        if (this.methodDeclaration.modifiers != 0) {
            return;
        }
        int i11 = typeParameterArr[typeParameterArr.length - 1].sourceEnd;
        Parser parser = parser();
        Scanner scanner = parser.scanner;
        if (Util.getLineNumber(this.methodDeclaration.declarationSourceStart, scanner.lineEnds, 0, scanner.linePtr) != Util.getLineNumber(i11, scanner.lineEnds, 0, scanner.linePtr)) {
            return;
        }
        int i12 = parser.modifiersSourceStart;
        if (i12 <= i11 || i12 >= this.methodDeclaration.declarationSourceStart) {
            AbstractMethodDeclaration abstractMethodDeclaration = this.methodDeclaration;
            if (abstractMethodDeclaration instanceof MethodDeclaration) {
                ((MethodDeclaration) abstractMethodDeclaration).typeParameters = typeParameterArr;
                abstractMethodDeclaration.declarationSourceStart = i10;
            } else if (abstractMethodDeclaration instanceof ConstructorDeclaration) {
                ((ConstructorDeclaration) abstractMethodDeclaration).typeParameters = typeParameterArr;
                abstractMethodDeclaration.declarationSourceStart = i10;
            }
        }
    }

    public boolean bodyStartsAtHeaderEnd() {
        AbstractMethodDeclaration abstractMethodDeclaration = this.methodDeclaration;
        return abstractMethodDeclaration.bodyStart == abstractMethodDeclaration.sourceEnd + 1;
    }

    @Override
    public ASTNode parseTree() {
        return this.methodDeclaration;
    }

    @Override
    public void resetPendingModifiers() {
        this.pendingAnnotations = null;
        this.pendingAnnotationCount = 0;
        this.pendingModifiers = 0;
        this.pendingModifersSourceStart = -1;
    }

    @Override
    public int sourceEnd() {
        return this.methodDeclaration.declarationSourceEnd;
    }

    @Override
    public String toString(int i10) {
        StringBuffer stringBuffer = new StringBuffer(tabString(i10));
        stringBuffer.append("Recovered method:\n");
        int i11 = i10 + 1;
        this.methodDeclaration.print(i11, stringBuffer);
        if (this.annotations != null) {
            for (int i12 = 0; i12 < this.annotationCount; i12++) {
                stringBuffer.append("\n");
                stringBuffer.append(this.annotations[i12].toString(i11));
            }
        }
        if (this.localTypes != null) {
            for (int i13 = 0; i13 < this.localTypeCount; i13++) {
                stringBuffer.append("\n");
                stringBuffer.append(this.localTypes[i13].toString(i11));
            }
        }
        if (this.methodBody != null) {
            stringBuffer.append("\n");
            stringBuffer.append(this.methodBody.toString(i11));
        }
        return stringBuffer.toString();
    }

    @Override
    public void updateBodyStart(int i10) {
        this.foundOpeningBrace = true;
        this.methodDeclaration.bodyStart = i10;
    }

    @Override
    public void updateFromParserState() {
        Parser parser;
        int i10;
        int i11;
        int i12;
        int i13;
        if (!bodyStartsAtHeaderEnd() || this.parent == null || (i10 = (parser = parser()).listLength) <= 0 || (i11 = parser.astLengthPtr) <= 0) {
            return;
        }
        int i14 = this.methodDeclaration.sourceEnd;
        int i15 = parser.rParenPos;
        if (i14 == i15) {
            int i16 = parser.astLengthStack[i11];
            int i17 = parser.astPtr - i16;
            boolean z10 = i17 >= 0;
            if (z10) {
                if (!(parser.astStack[i17] instanceof AbstractMethodDeclaration)) {
                    z10 = false;
                }
                int i18 = i16 + 1;
                for (int i19 = 1; i19 < i18; i19++) {
                    if (!(parser.astStack[i17 + i19] instanceof TypeReference)) {
                        z10 = false;
                    }
                }
            }
            if (z10) {
                parser.consumeMethodHeaderThrowsClause();
                return;
            } else {
                parser.listLength = 0;
                return;
            }
        }
        int i20 = parser.currentToken;
        if (i20 == 23 || i20 == 26) {
            int[] iArr = parser.astLengthStack;
            iArr[i11] = iArr[i11] - 1;
            parser.astPtr--;
            parser.listLength = i10 - 1;
            parser.currentToken = 0;
        }
        int i21 = parser.astLengthStack[i11];
        int i22 = (parser.astPtr - i21) + 1;
        boolean z11 = i15 < parser.lParenPos;
        MemberValuePair[] memberValuePairArr = null;
        while (i21 > 0) {
            ASTNode[] aSTNodeArr = parser.astStack;
            if (!(aSTNodeArr[parser.astPtr] instanceof MemberValuePair)) {
                break;
            }
            memberValuePairArr = new MemberValuePair[i21];
            System.arraycopy(aSTNodeArr, i22, memberValuePairArr, 0, i21);
            int i23 = parser.astLengthPtr - 1;
            parser.astLengthPtr = i23;
            int i24 = parser.astPtr - i21;
            parser.astPtr = i24;
            i21 = parser.astLengthStack[i23];
            i22 = (i24 - i21) + 1;
            z11 = true;
        }
        int i25 = 0;
        while (true) {
            if (i25 >= i21) {
                break;
            }
            i13 = i22 + i25;
            ASTNode aSTNode = parser.astStack[i13];
            if (!(aSTNode instanceof Argument)) {
                parser.astLengthStack[parser.astLengthPtr] = i25;
                parser.astPtr = i13 - 1;
                parser.listLength = i25;
                parser.currentToken = 0;
                break;
            }
            Argument argument = (Argument) aSTNode;
            char[][] typeName = argument.type.getTypeName();
            if ((argument.modifiers & (-17)) != 0 || (typeName.length == 1 && CharOperation.equals(typeName[0], TypeBinding.VOID.sourceName()))) {
                break;
            }
            if (z11) {
                parser.rParenPos = argument.sourceEnd + 1;
            }
            i25++;
        }
        parser.astLengthStack[parser.astLengthPtr] = i25;
        parser.astPtr = i13 - 1;
        parser.listLength = i25;
        parser.currentToken = 0;
        if (parser.listLength > 0 && (i12 = parser.astLengthPtr) > 0) {
            int i26 = parser.astLengthStack[i12];
            int i27 = parser.astPtr - i26;
            boolean z12 = i27 >= 0;
            if (z12) {
                if (!(parser.astStack[i27] instanceof AbstractMethodDeclaration)) {
                    z12 = false;
                }
                int i28 = i26 + 1;
                for (int i29 = 1; i29 < i28; i29++) {
                    if (!(parser.astStack[i27 + i29] instanceof Argument)) {
                        z12 = false;
                    }
                }
            }
            if (z12) {
                parser.consumeMethodHeaderRightParen();
                if (parser.currentElement == this) {
                    AbstractMethodDeclaration abstractMethodDeclaration = this.methodDeclaration;
                    Argument[] argumentArr = abstractMethodDeclaration.arguments;
                    if (argumentArr != null) {
                        abstractMethodDeclaration.sourceEnd = argumentArr[argumentArr.length - 1].sourceEnd;
                    } else {
                        abstractMethodDeclaration.sourceEnd = abstractMethodDeclaration.receiver.sourceEnd;
                    }
                    int i30 = abstractMethodDeclaration.sourceEnd + 1;
                    abstractMethodDeclaration.bodyStart = i30;
                    parser.lastCheckPoint = i30;
                }
            }
        }
        if (memberValuePairArr != null) {
            System.arraycopy(memberValuePairArr, 0, parser.astStack, parser.astPtr + 1, memberValuePairArr.length);
            parser.astPtr += memberValuePairArr.length;
            int[] iArr2 = parser.astLengthStack;
            int i31 = parser.astLengthPtr + 1;
            parser.astLengthPtr = i31;
            iArr2[i31] = memberValuePairArr.length;
        }
    }

    @Override
    public RecoveredElement updateOnClosingBrace(int i10, int i11) {
        RecoveredElement recoveredElement;
        if (this.methodDeclaration.isAnnotationMethod()) {
            updateSourceEndIfNecessary(i10, i11);
            return (this.foundOpeningBrace || (recoveredElement = this.parent) == null) ? this : recoveredElement.updateOnClosingBrace(i10, i11);
        }
        RecoveredElement recoveredElement2 = this.parent;
        if (recoveredElement2 == null || !(recoveredElement2 instanceof RecoveredType) || TypeDeclaration.kind(((RecoveredType) recoveredElement2).typeDeclaration.modifiers) != 2 || this.foundOpeningBrace) {
            return super.updateOnClosingBrace(i10, i11);
        }
        int i12 = i10 - 1;
        updateSourceEndIfNecessary(i12, i12);
        return this.parent.updateOnClosingBrace(i10, i11);
    }

    @Override
    public RecoveredElement updateOnOpeningBrace(int i10, int i11) {
        int i12;
        if (this.bracketBalance == 0 && (i12 = parser().lastIgnoredToken) != -1 && i12 != 120) {
            this.foundOpeningBrace = true;
            this.bracketBalance = 1;
        }
        return super.updateOnOpeningBrace(i10, i11);
    }

    @Override
    public void updateParseTree() {
        updatedMethodDeclaration(0, new HashSet());
    }

    @Override
    public void updateSourceEndIfNecessary(int i10, int i11) {
        if (this.methodDeclaration.declarationSourceEnd == 0) {
            if (parser().rBraceSuccessorStart < i11) {
                AbstractMethodDeclaration abstractMethodDeclaration = this.methodDeclaration;
                abstractMethodDeclaration.declarationSourceEnd = i11;
                abstractMethodDeclaration.bodyEnd = i10 - 1;
            } else {
                this.methodDeclaration.declarationSourceEnd = parser().rBraceEnd;
                this.methodDeclaration.bodyEnd = parser().rBraceStart;
            }
        }
    }

    public AbstractMethodDeclaration updatedMethodDeclaration(int i10, Set<TypeDeclaration> set) {
        int i11 = this.modifiers;
        if (i11 != 0) {
            AbstractMethodDeclaration abstractMethodDeclaration = this.methodDeclaration;
            abstractMethodDeclaration.modifiers = i11 | abstractMethodDeclaration.modifiers;
            int i12 = this.modifiersStart;
            if (i12 < abstractMethodDeclaration.declarationSourceStart) {
                abstractMethodDeclaration.declarationSourceStart = i12;
            }
        }
        int i13 = this.annotationCount;
        if (i13 > 0) {
            Annotation[] annotationArr = this.methodDeclaration.annotations;
            int length = annotationArr == null ? 0 : annotationArr.length;
            Annotation[] annotationArr2 = new Annotation[length + i13];
            if (length > 0) {
                System.arraycopy(annotationArr, 0, annotationArr2, i13, length);
            }
            for (int i14 = 0; i14 < this.annotationCount; i14++) {
                annotationArr2[i14] = this.annotations[i14].updatedAnnotationReference();
            }
            AbstractMethodDeclaration abstractMethodDeclaration2 = this.methodDeclaration;
            abstractMethodDeclaration2.annotations = annotationArr2;
            int i15 = this.annotations[0].annotation.sourceStart;
            if (i15 < abstractMethodDeclaration2.declarationSourceStart) {
                abstractMethodDeclaration2.declarationSourceStart = i15;
            }
        }
        RecoveredBlock recoveredBlock = this.methodBody;
        if (recoveredBlock != null) {
            Block updatedBlock = recoveredBlock.updatedBlock(i10, set);
            if (updatedBlock != null) {
                AbstractMethodDeclaration abstractMethodDeclaration3 = this.methodDeclaration;
                abstractMethodDeclaration3.statements = updatedBlock.statements;
                if (abstractMethodDeclaration3.declarationSourceEnd == 0) {
                    int i16 = updatedBlock.sourceEnd;
                    abstractMethodDeclaration3.declarationSourceEnd = i16;
                    abstractMethodDeclaration3.bodyEnd = i16;
                }
                if (abstractMethodDeclaration3.isConstructor()) {
                    AbstractMethodDeclaration abstractMethodDeclaration4 = this.methodDeclaration;
                    ConstructorDeclaration constructorDeclaration = (ConstructorDeclaration) abstractMethodDeclaration4;
                    Statement[] statementArr = abstractMethodDeclaration4.statements;
                    if (statementArr != null) {
                        Statement statement = statementArr[0];
                        if (statement instanceof ExplicitConstructorCall) {
                            constructorDeclaration.constructorCall = (ExplicitConstructorCall) statement;
                            int length2 = statementArr.length - 1;
                            Statement[] statementArr2 = new Statement[length2];
                            abstractMethodDeclaration4.statements = statementArr2;
                            System.arraycopy(statementArr, 1, statementArr2, 0, length2);
                        }
                    }
                    if (constructorDeclaration.constructorCall == null) {
                        constructorDeclaration.constructorCall = SuperReference.implicitSuperConstructorCall();
                    }
                }
            }
        } else {
            AbstractMethodDeclaration abstractMethodDeclaration5 = this.methodDeclaration;
            if (abstractMethodDeclaration5.declarationSourceEnd == 0) {
                int i17 = abstractMethodDeclaration5.sourceEnd;
                int i18 = i17 + 1;
                int i19 = abstractMethodDeclaration5.bodyStart;
                if (i18 == i19) {
                    abstractMethodDeclaration5.declarationSourceEnd = i17;
                    abstractMethodDeclaration5.bodyStart = i17;
                    abstractMethodDeclaration5.bodyEnd = i17;
                } else {
                    abstractMethodDeclaration5.declarationSourceEnd = i19;
                    abstractMethodDeclaration5.bodyEnd = i19;
                }
            }
        }
        if (this.localTypeCount > 0) {
            this.methodDeclaration.bits |= 2;
        }
        return this.methodDeclaration;
    }

    public RecoveredElement add(Block block, int i10, boolean z10) {
        int i11 = this.methodDeclaration.declarationSourceEnd;
        if (i11 > 0 && block.sourceStart > i11) {
            resetPendingModifiers();
            RecoveredElement recoveredElement = this.parent;
            return recoveredElement == null ? this : recoveredElement.add(block, i10);
        }
        if (!this.foundOpeningBrace && !z10) {
            this.foundOpeningBrace = true;
            this.bracketBalance++;
        }
        RecoveredBlock recoveredBlock = this.methodBody;
        if (recoveredBlock != null) {
            recoveredBlock.addBlockStatement(new RecoveredBlock(block, this, i10));
        } else {
            this.methodBody = new RecoveredBlock(block, this, i10);
        }
        return block.sourceEnd == 0 ? this.methodBody : this;
    }

    @Override
    public RecoveredElement add(FieldDeclaration fieldDeclaration, int i10) {
        TypeReference typeReference;
        resetPendingModifiers();
        if ((fieldDeclaration.modifiers & (-17)) == 0 && (typeReference = fieldDeclaration.type) != null) {
            char[][] typeName = typeReference.getTypeName();
            if (typeName.length != 1 || !CharOperation.equals(typeName[0], TypeBinding.VOID.sourceName())) {
                int i11 = this.methodDeclaration.declarationSourceEnd;
                if (i11 > 0 && fieldDeclaration.declarationSourceStart > i11) {
                    RecoveredElement recoveredElement = this.parent;
                    return recoveredElement == null ? this : recoveredElement.add(fieldDeclaration, i10);
                }
                if (!this.foundOpeningBrace) {
                    this.foundOpeningBrace = true;
                    this.bracketBalance++;
                }
                return this;
            }
        }
        if (this.parent == null) {
            return this;
        }
        updateSourceEndIfNecessary(previousAvailableLineEnd(fieldDeclaration.declarationSourceStart - 1));
        return this.parent.add(fieldDeclaration, i10);
    }

    public void attach(RecoveredAnnotation[] recoveredAnnotationArr, int i10, int i11, int i12) {
        if (i10 > 0) {
            Annotation[] annotationArr = this.methodDeclaration.annotations;
            if (annotationArr != null) {
                this.annotations = new RecoveredAnnotation[i10];
                this.annotationCount = 0;
                for (int i13 = 0; i13 < i10; i13++) {
                    int i14 = 0;
                    while (true) {
                        if (i14 >= annotationArr.length) {
                            RecoveredAnnotation[] recoveredAnnotationArr2 = this.annotations;
                            int i15 = this.annotationCount;
                            this.annotationCount = i15 + 1;
                            recoveredAnnotationArr2[i15] = recoveredAnnotationArr[i13];
                            break;
                        }
                        if (recoveredAnnotationArr[i13].annotation == annotationArr[i14]) {
                            break;
                        } else {
                            i14++;
                        }
                    }
                }
            } else {
                this.annotations = recoveredAnnotationArr;
                this.annotationCount = i10;
            }
        }
        if (i11 != 0) {
            this.modifiers = i11;
            this.modifiersStart = i12;
        }
    }

    @Override
    public RecoveredElement add(LocalDeclaration localDeclaration, int i10) {
        resetPendingModifiers();
        int i11 = this.methodDeclaration.declarationSourceEnd;
        if (i11 != 0 && localDeclaration.declarationSourceStart > i11) {
            RecoveredElement recoveredElement = this.parent;
            return recoveredElement == null ? this : recoveredElement.add(localDeclaration, i10);
        }
        RecoveredBlock recoveredBlock = this.methodBody;
        if (recoveredBlock == null) {
            Block block = new Block(0);
            block.sourceStart = this.methodDeclaration.bodyStart;
            RecoveredElement add = add(block, 1, localDeclaration.isArgument());
            if (this.bracketBalance > 0) {
                for (int i12 = 0; i12 < this.bracketBalance - 1; i12++) {
                    add = add.add(new Block(0), 1);
                }
                this.bracketBalance = 1;
            }
            return add.add(localDeclaration, i10);
        }
        return recoveredBlock.add(localDeclaration, i10, true);
    }

    @Override
    public RecoveredElement add(Statement statement, int i10) {
        resetPendingModifiers();
        int i11 = this.methodDeclaration.declarationSourceEnd;
        if (i11 != 0 && statement.sourceStart > i11) {
            RecoveredElement recoveredElement = this.parent;
            return recoveredElement == null ? this : recoveredElement.add(statement, i10);
        }
        RecoveredBlock recoveredBlock = this.methodBody;
        if (recoveredBlock == null) {
            Block block = new Block(0);
            block.sourceStart = this.methodDeclaration.bodyStart;
            RecoveredElement add = add(block, 1);
            if (this.bracketBalance > 0) {
                for (int i12 = 0; i12 < this.bracketBalance - 1; i12++) {
                    add = add.add(new Block(0), 1);
                }
                this.bracketBalance = 1;
            }
            return add.add(statement, i10);
        }
        return recoveredBlock.add(statement, i10, true);
    }

    @Override
    public RecoveredElement add(TypeDeclaration typeDeclaration, int i10) {
        int i11 = this.methodDeclaration.declarationSourceEnd;
        if (i11 != 0 && typeDeclaration.declarationSourceStart > i11) {
            RecoveredElement recoveredElement = this.parent;
            return recoveredElement == null ? this : recoveredElement.add(typeDeclaration, i10);
        }
        if ((typeDeclaration.bits & 256) == 0 && !parser().methodRecoveryActivated && !parser().statementRecoveryActivated) {
            int kind = TypeDeclaration.kind(typeDeclaration.modifiers);
            if (kind != 2 && kind != 4) {
                RecoveredType[] recoveredTypeArr = this.localTypes;
                if (recoveredTypeArr == null) {
                    this.localTypes = new RecoveredType[5];
                    this.localTypeCount = 0;
                } else {
                    int i12 = this.localTypeCount;
                    if (i12 == recoveredTypeArr.length) {
                        RecoveredType[] recoveredTypeArr2 = new RecoveredType[i12 * 2];
                        this.localTypes = recoveredTypeArr2;
                        System.arraycopy(recoveredTypeArr, 0, recoveredTypeArr2, 0, i12);
                    }
                }
                RecoveredType recoveredType = new RecoveredType(typeDeclaration, this, i10);
                RecoveredType[] recoveredTypeArr3 = this.localTypes;
                int i13 = this.localTypeCount;
                this.localTypeCount = i13 + 1;
                recoveredTypeArr3[i13] = recoveredType;
                int i14 = this.pendingAnnotationCount;
                if (i14 > 0) {
                    recoveredType.attach(this.pendingAnnotations, i14, this.pendingModifiers, this.pendingModifersSourceStart);
                }
                resetPendingModifiers();
                if (!this.foundOpeningBrace) {
                    this.foundOpeningBrace = true;
                    this.bracketBalance++;
                }
                return recoveredType;
            }
            resetPendingModifiers();
            updateSourceEndIfNecessary(previousAvailableLineEnd(typeDeclaration.declarationSourceStart - 1));
            RecoveredElement recoveredElement2 = this.parent;
            return recoveredElement2 == null ? this : recoveredElement2.add(typeDeclaration, i10);
        }
        if (this.methodBody == null) {
            Block block = new Block(0);
            block.sourceStart = this.methodDeclaration.bodyStart;
            add(block, 1);
        }
        this.methodBody.attachPendingModifiers(this.pendingAnnotations, this.pendingAnnotationCount, this.pendingModifiers, this.pendingModifersSourceStart);
        resetPendingModifiers();
        return this.methodBody.add(typeDeclaration, i10, true);
    }
}
