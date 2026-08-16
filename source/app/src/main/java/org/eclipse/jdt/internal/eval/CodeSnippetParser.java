package org.eclipse.jdt.internal.eval;

import org.eclipse.jdt.core.compiler.CategorizedProblem;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.CompilationResult;
import org.eclipse.jdt.internal.compiler.ast.ASTNode;
import org.eclipse.jdt.internal.compiler.ast.AbstractMethodDeclaration;
import org.eclipse.jdt.internal.compiler.ast.AllocationExpression;
import org.eclipse.jdt.internal.compiler.ast.Annotation;
import org.eclipse.jdt.internal.compiler.ast.Assignment;
import org.eclipse.jdt.internal.compiler.ast.Block;
import org.eclipse.jdt.internal.compiler.ast.CompilationUnitDeclaration;
import org.eclipse.jdt.internal.compiler.ast.Expression;
import org.eclipse.jdt.internal.compiler.ast.LocalDeclaration;
import org.eclipse.jdt.internal.compiler.ast.MessageSend;
import org.eclipse.jdt.internal.compiler.ast.MethodDeclaration;
import org.eclipse.jdt.internal.compiler.ast.NameReference;
import org.eclipse.jdt.internal.compiler.ast.QualifiedAllocationExpression;
import org.eclipse.jdt.internal.compiler.ast.QualifiedTypeReference;
import org.eclipse.jdt.internal.compiler.ast.SingleNameReference;
import org.eclipse.jdt.internal.compiler.ast.SingleTypeReference;
import org.eclipse.jdt.internal.compiler.ast.Statement;
import org.eclipse.jdt.internal.compiler.ast.TryStatement;
import org.eclipse.jdt.internal.compiler.ast.TypeDeclaration;
import org.eclipse.jdt.internal.compiler.ast.TypeReference;
import org.eclipse.jdt.internal.compiler.impl.ReferenceContext;
import org.eclipse.jdt.internal.compiler.parser.Parser;
import org.eclipse.jdt.internal.compiler.parser.ParserBasicInformation;
import org.eclipse.jdt.internal.compiler.parser.RecoveredElement;
import org.eclipse.jdt.internal.compiler.parser.Scanner;
import org.eclipse.jdt.internal.compiler.problem.ProblemReporter;
import w2.C15883c;

public class CodeSnippetParser extends Parser implements EvaluationConstants {
    int codeSnippetEnd;
    int codeSnippetStart;
    EvaluationContext evaluationContext;
    boolean hasRecoveredOnExpression;
    int lastStatement;
    int lineSeparatorLength;
    int problemCountBeforeRecovery;

    public CodeSnippetParser(ProblemReporter problemReporter, EvaluationContext evaluationContext, boolean z10, int i10, int i11) {
        super(problemReporter, z10);
        this.lastStatement = -1;
        this.problemCountBeforeRecovery = 0;
        this.codeSnippetStart = i10;
        this.codeSnippetEnd = i11;
        this.evaluationContext = evaluationContext;
        this.reportOnlyOneSyntaxError = true;
        this.javadocParser.checkDocComment = false;
    }

    private boolean isTopLevelType() {
        return this.nestedType - this.switchNestingLevel == (!this.diet ? 1 : 0);
    }

    private void recordLastStatementIfNeeded() {
        int i10;
        if (!isTopLevelType() || (i10 = this.scanner.startPosition) > this.codeSnippetEnd + this.lineSeparatorLength) {
            return;
        }
        this.lastStatement = i10;
    }

    @Override
    public void classInstanceCreation(boolean z10) {
        int[] iArr = this.astLengthStack;
        int i10 = this.astLengthPtr;
        this.astLengthPtr = i10 - 1;
        int i11 = iArr[i10];
        if (i11 == 1) {
            ASTNode[] aSTNodeArr = this.astStack;
            int i12 = this.astPtr;
            if (aSTNodeArr[i12] == null) {
                this.astPtr = i12 - 1;
                AllocationExpression qualifiedAllocationExpression = z10 ? new QualifiedAllocationExpression() : new CodeSnippetAllocationExpression(this.evaluationContext);
                qualifiedAllocationExpression.sourceEnd = this.endPosition;
                int[] iArr2 = this.expressionLengthStack;
                int i13 = this.expressionLengthPtr;
                this.expressionLengthPtr = i13 - 1;
                int i14 = iArr2[i13];
                if (i14 != 0) {
                    int i15 = this.expressionPtr - i14;
                    this.expressionPtr = i15;
                    Expression[] expressionArr = new Expression[i14];
                    qualifiedAllocationExpression.arguments = expressionArr;
                    System.arraycopy(this.expressionStack, i15 + 1, expressionArr, 0, i14);
                }
                TypeReference typeReference = getTypeReference(0);
                qualifiedAllocationExpression.type = typeReference;
                checkForDiamond(typeReference);
                int[] iArr3 = this.intStack;
                int i16 = this.intPtr;
                this.intPtr = i16 - 1;
                qualifiedAllocationExpression.sourceStart = iArr3[i16];
                pushOnExpressionStack(qualifiedAllocationExpression);
                return;
            }
        }
        dispatchDeclarationInto(i11);
        ASTNode[] aSTNodeArr2 = this.astStack;
        int i17 = this.astPtr;
        TypeDeclaration typeDeclaration = (TypeDeclaration) aSTNodeArr2[i17];
        int i18 = this.endStatementPosition;
        typeDeclaration.declarationSourceEnd = i18;
        QualifiedAllocationExpression qualifiedAllocationExpression2 = typeDeclaration.allocation;
        if (qualifiedAllocationExpression2 != null) {
            qualifiedAllocationExpression2.sourceEnd = i18;
        }
        this.astPtr = i17 - 1;
        this.astLengthPtr--;
    }

    @Override
    public void consumeClassDeclaration() {
        super.consumeClassDeclaration();
        recordLastStatementIfNeeded();
    }

    @Override
    public void consumeClassHeaderName1() {
        TypeDeclaration typeDeclaration;
        int[] iArr = this.nestedMethod;
        int i10 = this.nestedType;
        if (iArr[i10] != 0) {
            typeDeclaration = new TypeDeclaration(this.compilationUnit.compilationResult);
            typeDeclaration.bits |= 256;
            markEnclosingMemberWithLocalType();
            blockReal();
        } else if (i10 != 0) {
            typeDeclaration = new TypeDeclaration(this.compilationUnit.compilationResult);
            typeDeclaration.bits |= 1024;
        } else {
            typeDeclaration = new CodeSnippetTypeDeclaration(this.compilationUnit.compilationResult);
        }
        long[] jArr = this.identifierPositionStack;
        int i11 = this.identifierPtr;
        long j10 = jArr[i11];
        int i12 = (int) j10;
        typeDeclaration.sourceEnd = i12;
        typeDeclaration.sourceStart = (int) (j10 >>> 32);
        char[][] cArr = this.identifierStack;
        this.identifierPtr = i11 - 1;
        typeDeclaration.name = cArr[i11];
        this.identifierLengthPtr--;
        int[] iArr2 = this.intStack;
        int i13 = this.intPtr;
        this.intPtr = i13 - 1;
        typeDeclaration.declarationSourceStart = iArr2[i13];
        int i14 = i13 - 3;
        this.intPtr = i14;
        int i15 = iArr2[i13 - 2];
        typeDeclaration.modifiersSourceStart = i15;
        this.intPtr = i13 - 4;
        typeDeclaration.modifiers = iArr2[i14];
        if (i15 >= 0) {
            typeDeclaration.declarationSourceStart = i15;
        }
        typeDeclaration.bodyStart = i12 + 1;
        pushOnAstStack(typeDeclaration);
        this.listLength = 0;
        RecoveredElement recoveredElement = this.currentElement;
        if (recoveredElement != null) {
            this.lastCheckPoint = typeDeclaration.bodyStart;
            this.currentElement = recoveredElement.add(typeDeclaration, 0);
            this.lastIgnoredToken = -1;
        }
        typeDeclaration.javadoc = this.javadoc;
        this.javadoc = null;
    }

    @Override
    public void consumeClassInstanceCreationExpressionWithTypeArguments() {
        int[] iArr = this.astLengthStack;
        int i10 = this.astLengthPtr;
        this.astLengthPtr = i10 - 1;
        int i11 = iArr[i10];
        if (i11 == 1) {
            ASTNode[] aSTNodeArr = this.astStack;
            int i12 = this.astPtr;
            if (aSTNodeArr[i12] == null) {
                this.astPtr = i12 - 1;
                CodeSnippetAllocationExpression codeSnippetAllocationExpression = new CodeSnippetAllocationExpression(this.evaluationContext);
                codeSnippetAllocationExpression.sourceEnd = this.endPosition;
                int[] iArr2 = this.expressionLengthStack;
                int i13 = this.expressionLengthPtr;
                this.expressionLengthPtr = i13 - 1;
                int i14 = iArr2[i13];
                if (i14 != 0) {
                    int i15 = this.expressionPtr - i14;
                    this.expressionPtr = i15;
                    Expression[] expressionArr = new Expression[i14];
                    codeSnippetAllocationExpression.arguments = expressionArr;
                    System.arraycopy(this.expressionStack, i15 + 1, expressionArr, 0, i14);
                }
                codeSnippetAllocationExpression.type = getTypeReference(0);
                int[] iArr3 = this.genericsLengthStack;
                int i16 = this.genericsLengthPtr;
                this.genericsLengthPtr = i16 - 1;
                int i17 = iArr3[i16];
                int i18 = this.genericsPtr - i17;
                this.genericsPtr = i18;
                TypeReference[] typeReferenceArr = new TypeReference[i17];
                codeSnippetAllocationExpression.typeArguments = typeReferenceArr;
                System.arraycopy(this.genericsStack, i18 + 1, typeReferenceArr, 0, i17);
                int i19 = this.intPtr;
                int[] iArr4 = this.intStack;
                this.intPtr = i19 - 2;
                codeSnippetAllocationExpression.sourceStart = iArr4[i19 - 1];
                pushOnExpressionStack(codeSnippetAllocationExpression);
                return;
            }
        }
        dispatchDeclarationInto(i11);
        TypeDeclaration typeDeclaration = (TypeDeclaration) this.astStack[this.astPtr];
        int i20 = this.endStatementPosition;
        typeDeclaration.declarationSourceEnd = i20;
        typeDeclaration.bodyEnd = i20;
        if (i11 == 0 && !containsComment(typeDeclaration.bodyStart, i20)) {
            typeDeclaration.bits |= 8;
        }
        this.astPtr--;
        this.astLengthPtr--;
        QualifiedAllocationExpression qualifiedAllocationExpression = typeDeclaration.allocation;
        if (qualifiedAllocationExpression != null) {
            qualifiedAllocationExpression.sourceEnd = this.endStatementPosition;
            int[] iArr5 = this.genericsLengthStack;
            int i21 = this.genericsLengthPtr;
            this.genericsLengthPtr = i21 - 1;
            int i22 = iArr5[i21];
            int i23 = this.genericsPtr - i22;
            this.genericsPtr = i23;
            TypeReference[] typeReferenceArr2 = new TypeReference[i22];
            qualifiedAllocationExpression.typeArguments = typeReferenceArr2;
            System.arraycopy(this.genericsStack, i23 + 1, typeReferenceArr2, 0, i22);
            int[] iArr6 = this.intStack;
            int i24 = this.intPtr;
            this.intPtr = i24 - 1;
            qualifiedAllocationExpression.sourceStart = iArr6[i24];
        }
    }

    @Override
    public void consumeEmptyStatement() {
        super.consumeEmptyStatement();
        recordLastStatementIfNeeded();
    }

    @Override
    public void consumeEnhancedForStatement() {
        super.consumeEnhancedForStatement();
        recordLastStatementIfNeeded();
    }

    @Override
    public void consumeExpressionStatement() {
        super.consumeExpressionStatement();
        recordLastStatementIfNeeded();
    }

    @Override
    public void consumeFieldAccess(boolean z10) {
        char[][] cArr = this.identifierStack;
        int i10 = this.identifierPtr;
        char[] cArr2 = cArr[i10];
        long[] jArr = this.identifierPositionStack;
        this.identifierPtr = i10 - 1;
        CodeSnippetFieldReference codeSnippetFieldReference = new CodeSnippetFieldReference(cArr2, jArr[i10], this.evaluationContext);
        this.identifierLengthPtr--;
        if (!z10) {
            Expression expression = this.expressionStack[this.expressionPtr];
            codeSnippetFieldReference.receiver = expression;
            if (expression.isThis()) {
                codeSnippetFieldReference.sourceStart = codeSnippetFieldReference.receiver.sourceStart;
            }
            this.expressionStack[this.expressionPtr] = codeSnippetFieldReference;
            return;
        }
        int[] iArr = this.intStack;
        int i11 = this.intPtr;
        this.intPtr = i11 - 1;
        codeSnippetFieldReference.sourceStart = iArr[i11];
        problemReporter().codeSnippetMissingClass(null, 0, 0);
        codeSnippetFieldReference.receiver = new CodeSnippetSuperReference(codeSnippetFieldReference.sourceStart, this.endPosition);
        pushOnExpressionStack(codeSnippetFieldReference);
    }

    @Override
    public void consumeInternalCompilationUnit() {
    }

    @Override
    public void consumeInternalCompilationUnitWithTypes() {
        int[] iArr = this.astLengthStack;
        int i10 = this.astLengthPtr;
        this.astLengthPtr = i10 - 1;
        int i11 = iArr[i10];
        if (i11 != 0) {
            TypeDeclaration[] typeDeclarationArr = new TypeDeclaration[i11];
            this.compilationUnit.types = typeDeclarationArr;
            int i12 = this.astPtr - i11;
            this.astPtr = i12;
            System.arraycopy(this.astStack, i12 + 1, typeDeclarationArr, 0, i11);
        }
    }

    @Override
    public void consumeLocalVariableDeclarationStatement() {
        super.consumeLocalVariableDeclarationStatement();
        recordLastStatementIfNeeded();
    }

    @Override
    public void consumeMethodDeclaration(boolean z10, boolean z11) {
        super.consumeMethodDeclaration(z10, z11);
        MethodDeclaration methodDeclaration = (MethodDeclaration) this.astStack[this.astPtr];
        if (isTopLevelType()) {
            Statement[] statementArr = methodDeclaration.statements;
            int length = statementArr == null ? -1 : statementArr.length - 1;
            if (length >= 0) {
                Statement statement = statementArr[length];
                if ((statement instanceof Expression) && ((Expression) statement).isTrulyExpression()) {
                    Statement[] statementArr2 = methodDeclaration.statements;
                    Expression expression = (Expression) statementArr2[length];
                    statementArr2[length] = new CodeSnippetReturnStatement(expression, expression.sourceStart, expression.sourceEnd);
                }
            }
        }
        int i10 = methodDeclaration.bodyStart - 1;
        long j10 = i10;
        char c10 = C15883c.f126249O;
        long j11 = (j10 << 32) + j10;
        long[] jArr = {j11};
        char[][] cArr = this.evaluationContext.localVariableNames;
        if (cArr != null) {
            int length2 = cArr.length;
            Statement[] statementArr3 = new Statement[length2 + 1];
            int i11 = 0;
            while (i11 < length2) {
                char[] cArr2 = this.evaluationContext.localVariableTypeNames[i11];
                int indexOf = CharOperation.indexOf('[', cArr2);
                if (indexOf >= 0) {
                    cArr2 = CharOperation.subarray(cArr2, 0, indexOf);
                }
                int indexOf2 = CharOperation.indexOf(c10, cArr2);
                if (indexOf2 >= 0) {
                    cArr2 = CharOperation.subarray(cArr2, 0, indexOf2);
                }
                TypeReference singleTypeReference = CharOperation.indexOf('.', cArr2) == -1 ? new SingleTypeReference(cArr2, j11) : new QualifiedTypeReference(CharOperation.splitOn('.', cArr2), jArr);
                int occurencesOf = CharOperation.occurencesOf('[', this.evaluationContext.localVariableTypeNames[i11]);
                if (occurencesOf > 0) {
                    singleTypeReference = augmentTypeWithAdditionalDimensions(singleTypeReference, occurencesOf, null, false);
                }
                SingleNameReference singleNameReference = new SingleNameReference(CharOperation.concat(EvaluationConstants.LOCAL_VAR_PREFIX, this.evaluationContext.localVariableNames[i11]), j11);
                LocalDeclaration localDeclaration = new LocalDeclaration(this.evaluationContext.localVariableNames[i11], i10, i10);
                localDeclaration.initialization = singleNameReference;
                localDeclaration.type = singleTypeReference;
                localDeclaration.modifiers = this.evaluationContext.localVariableModifiers[i11];
                statementArr3[i11] = localDeclaration;
                i11++;
                c10 = C15883c.f126249O;
            }
            TryStatement tryStatement = new TryStatement();
            Block block = new Block(methodDeclaration.explicitDeclarations);
            block.sourceStart = i10;
            block.sourceEnd = i10;
            block.statements = methodDeclaration.statements;
            tryStatement.tryBlock = block;
            Block block2 = new Block(0);
            block2.sourceStart = i10;
            block2.sourceEnd = i10;
            block2.statements = new Statement[length2];
            for (int i12 = 0; i12 < length2; i12++) {
                SingleNameReference singleNameReference2 = new SingleNameReference(this.evaluationContext.localVariableNames[i12], j11);
                block2.statements[i12] = new Assignment(new SingleNameReference(CharOperation.concat(EvaluationConstants.LOCAL_VAR_PREFIX, this.evaluationContext.localVariableNames[i12]), j11), singleNameReference2, singleNameReference2.sourceEnd);
            }
            tryStatement.finallyBlock = block2;
            statementArr3[length2] = tryStatement;
            methodDeclaration.statements = statementArr3;
        }
    }

    @Override
    public void consumeMethodInvocationName() {
        int i10 = this.scanner.startPosition;
        if (i10 < this.codeSnippetStart || i10 > this.codeSnippetEnd + 1 + this.lineSeparatorLength || !isTopLevelType()) {
            super.consumeMethodInvocationName();
            return;
        }
        MessageSend newMessageSend = newMessageSend();
        newMessageSend.sourceEnd = this.rParenPos;
        long[] jArr = this.identifierPositionStack;
        int i11 = this.identifierPtr;
        long j10 = jArr[i11];
        newMessageSend.nameSourcePosition = j10;
        newMessageSend.sourceStart = (int) (j10 >>> 32);
        char[][] cArr = this.identifierStack;
        this.identifierPtr = i11 - 1;
        newMessageSend.selector = cArr[i11];
        int[] iArr = this.identifierLengthStack;
        int i12 = this.identifierLengthPtr;
        int i13 = iArr[i12];
        if (i13 == 1) {
            newMessageSend.receiver = new CodeSnippetThisReference(0, 0, this.evaluationContext, true);
            this.identifierLengthPtr--;
        } else {
            iArr[i12] = i13 - 1;
            int[] iArr2 = this.typeAnnotationLengthStack;
            int i14 = this.typeAnnotationLengthPtr;
            this.typeAnnotationLengthPtr = i14 - 1;
            int i15 = iArr2[i14];
            if (i15 != 0) {
                Annotation[] annotationArr = this.typeAnnotationStack;
                int i16 = this.typeAnnotationPtr - i15;
                this.typeAnnotationPtr = i16;
                Annotation[] annotationArr2 = new Annotation[i15];
                System.arraycopy(annotationArr, i16 + 1, annotationArr2, 0, i15);
                problemReporter().misplacedTypeAnnotations(annotationArr2[0], annotationArr2[i15 - 1]);
            }
            NameReference unspecifiedReference = getUnspecifiedReference();
            newMessageSend.receiver = unspecifiedReference;
            newMessageSend.sourceStart = unspecifiedReference.sourceStart;
        }
        pushOnExpressionStack(newMessageSend);
    }

    @Override
    public void consumeMethodInvocationNameWithTypeArguments() {
        int i10 = this.scanner.startPosition;
        if (i10 < this.codeSnippetStart || i10 > this.codeSnippetEnd + 1 + this.lineSeparatorLength || !isTopLevelType()) {
            super.consumeMethodInvocationNameWithTypeArguments();
            return;
        }
        MessageSend newMessageSendWithTypeArguments = newMessageSendWithTypeArguments();
        newMessageSendWithTypeArguments.sourceEnd = this.rParenPos;
        long[] jArr = this.identifierPositionStack;
        int i11 = this.identifierPtr;
        long j10 = jArr[i11];
        newMessageSendWithTypeArguments.nameSourcePosition = j10;
        newMessageSendWithTypeArguments.sourceStart = (int) (j10 >>> 32);
        char[][] cArr = this.identifierStack;
        this.identifierPtr = i11 - 1;
        newMessageSendWithTypeArguments.selector = cArr[i11];
        this.identifierLengthPtr--;
        int[] iArr = this.genericsLengthStack;
        int i12 = this.genericsLengthPtr;
        this.genericsLengthPtr = i12 - 1;
        int i13 = iArr[i12];
        int i14 = this.genericsPtr - i13;
        this.genericsPtr = i14;
        TypeReference[] typeReferenceArr = new TypeReference[i13];
        newMessageSendWithTypeArguments.typeArguments = typeReferenceArr;
        System.arraycopy(this.genericsStack, i14 + 1, typeReferenceArr, 0, i13);
        this.intPtr--;
        NameReference unspecifiedReference = getUnspecifiedReference();
        newMessageSendWithTypeArguments.receiver = unspecifiedReference;
        newMessageSendWithTypeArguments.sourceStart = unspecifiedReference.sourceStart;
        pushOnExpressionStack(newMessageSendWithTypeArguments);
    }

    @Override
    public void consumeMethodInvocationSuper() {
        MessageSend newMessageSend = newMessageSend();
        int[] iArr = this.intStack;
        int i10 = this.intPtr;
        this.intPtr = i10 - 1;
        newMessageSend.sourceStart = iArr[i10];
        newMessageSend.sourceEnd = this.rParenPos;
        long[] jArr = this.identifierPositionStack;
        int i11 = this.identifierPtr;
        newMessageSend.nameSourcePosition = jArr[i11];
        char[][] cArr = this.identifierStack;
        this.identifierPtr = i11 - 1;
        newMessageSend.selector = cArr[i11];
        this.identifierLengthPtr--;
        newMessageSend.receiver = new CodeSnippetSuperReference(newMessageSend.sourceStart, this.endPosition);
        pushOnExpressionStack(newMessageSend);
    }

    @Override
    public void consumeMethodInvocationSuperWithTypeArguments() {
        MessageSend newMessageSendWithTypeArguments = newMessageSendWithTypeArguments();
        this.intPtr--;
        newMessageSendWithTypeArguments.sourceEnd = this.rParenPos;
        long[] jArr = this.identifierPositionStack;
        int i10 = this.identifierPtr;
        newMessageSendWithTypeArguments.nameSourcePosition = jArr[i10];
        char[][] cArr = this.identifierStack;
        this.identifierPtr = i10 - 1;
        newMessageSendWithTypeArguments.selector = cArr[i10];
        this.identifierLengthPtr--;
        int[] iArr = this.genericsLengthStack;
        int i11 = this.genericsLengthPtr;
        this.genericsLengthPtr = i11 - 1;
        int i12 = iArr[i11];
        int i13 = this.genericsPtr - i12;
        this.genericsPtr = i13;
        TypeReference[] typeReferenceArr = new TypeReference[i12];
        newMessageSendWithTypeArguments.typeArguments = typeReferenceArr;
        System.arraycopy(this.genericsStack, i13 + 1, typeReferenceArr, 0, i12);
        int[] iArr2 = this.intStack;
        int i14 = this.intPtr;
        this.intPtr = i14 - 1;
        newMessageSendWithTypeArguments.sourceStart = iArr2[i14];
        newMessageSendWithTypeArguments.receiver = new CodeSnippetSuperReference(newMessageSendWithTypeArguments.sourceStart, this.endPosition);
        pushOnExpressionStack(newMessageSendWithTypeArguments);
    }

    @Override
    public void consumePrimaryNoNewArrayThis() {
        int i10 = this.scanner.startPosition;
        if (i10 < this.codeSnippetStart || i10 > this.codeSnippetEnd + 1 + this.lineSeparatorLength || !isTopLevelType()) {
            super.consumePrimaryNoNewArrayThis();
            return;
        }
        int[] iArr = this.intStack;
        int i11 = this.intPtr;
        this.intPtr = i11 - 1;
        pushOnExpressionStack(new CodeSnippetThisReference(iArr[i11], this.endPosition, this.evaluationContext, false));
    }

    @Override
    public void consumeStatementBreak() {
        super.consumeStatementBreak();
        recordLastStatementIfNeeded();
    }

    @Override
    public void consumeStatementBreakWithLabel() {
        super.consumeStatementBreakWithLabel();
        recordLastStatementIfNeeded();
    }

    @Override
    public void consumeStatementCatch() {
        super.consumeStatementCatch();
        recordLastStatementIfNeeded();
    }

    @Override
    public void consumeStatementContinue() {
        super.consumeStatementContinue();
        recordLastStatementIfNeeded();
    }

    @Override
    public void consumeStatementContinueWithLabel() {
        super.consumeStatementContinueWithLabel();
        recordLastStatementIfNeeded();
    }

    @Override
    public void consumeStatementDo() {
        super.consumeStatementDo();
        recordLastStatementIfNeeded();
    }

    @Override
    public void consumeStatementFor() {
        super.consumeStatementFor();
        recordLastStatementIfNeeded();
    }

    @Override
    public void consumeStatementIfNoElse() {
        super.consumeStatementIfNoElse();
        recordLastStatementIfNeeded();
    }

    @Override
    public void consumeStatementIfWithElse() {
        super.consumeStatementIfWithElse();
        recordLastStatementIfNeeded();
    }

    @Override
    public void consumeStatementLabel() {
        super.consumeStatementLabel();
        recordLastStatementIfNeeded();
    }

    @Override
    public void consumeStatementReturn() {
        int i10;
        if ((this.hasRecoveredOnExpression || ((i10 = this.scanner.startPosition) >= this.codeSnippetStart && i10 <= this.codeSnippetEnd + 1 + this.lineSeparatorLength)) && this.expressionLengthStack[this.expressionLengthPtr] != 0 && isTopLevelType()) {
            this.expressionLengthPtr--;
            Expression[] expressionArr = this.expressionStack;
            int i11 = this.expressionPtr;
            this.expressionPtr = i11 - 1;
            Expression expression = expressionArr[i11];
            pushOnAstStack(new CodeSnippetReturnStatement(expression, expression.sourceStart, expression.sourceEnd));
        } else {
            super.consumeStatementReturn();
        }
        recordLastStatementIfNeeded();
    }

    @Override
    public void consumeStatementSwitch() {
        super.consumeStatementSwitch();
        recordLastStatementIfNeeded();
    }

    @Override
    public void consumeStatementSynchronized() {
        super.consumeStatementSynchronized();
        recordLastStatementIfNeeded();
    }

    @Override
    public void consumeStatementThrow() {
        super.consumeStatementThrow();
        recordLastStatementIfNeeded();
    }

    @Override
    public void consumeStatementTry(boolean z10, boolean z11) {
        super.consumeStatementTry(z10, z11);
        recordLastStatementIfNeeded();
    }

    @Override
    public void consumeStatementWhile() {
        super.consumeStatementWhile();
        recordLastStatementIfNeeded();
    }

    @Override
    public CompilationUnitDeclaration endParse(int i10) {
        int i11;
        int sourceStart;
        int sourceStart2;
        if (this.hasRecoveredOnExpression) {
            CompilationResult compilationResult = this.compilationUnit.compilationResult;
            if (i10 != 16966) {
                for (int i12 = 0; i12 < compilationResult.problemCount; i12++) {
                    compilationResult.problems[i12] = null;
                }
                compilationResult.problemCount = 0;
                ReferenceContext referenceContext = this.referenceContext;
                if (referenceContext instanceof AbstractMethodDeclaration) {
                    ((AbstractMethodDeclaration) referenceContext).ignoreFurtherInvestigation = false;
                }
                if (referenceContext instanceof CompilationUnitDeclaration) {
                    ((CompilationUnitDeclaration) referenceContext).ignoreFurtherInvestigation = false;
                }
                consumeStatementReturn();
                EvaluationContext evaluationContext = this.evaluationContext;
                char[][] cArr = evaluationContext.localVariableNames;
                int length = (cArr == null ? 0 : cArr.length) + (evaluationContext.declaringTypeName == null ? 0 : 1);
                if (this.astPtr > (this.diet ? 0 : length + 2)) {
                    consumeBlockStatements();
                }
                consumeMethodBody();
                if (!this.diet) {
                    consumeMethodDeclaration(true, false);
                    if (length > 0) {
                        consumeClassBodyDeclarations();
                    }
                    consumeClassBodyDeclarationsopt();
                    consumeClassDeclaration();
                    consumeInternalCompilationUnitWithTypes();
                    consumeCompilationUnit();
                }
                this.lastAct = ParserBasicInformation.ACCEPT_ACTION;
            } else {
                int i13 = compilationResult.problemCount;
                int i14 = 0;
                int i15 = 0;
                while (true) {
                    i11 = this.problemCountBeforeRecovery;
                    if (i14 >= i11) {
                        break;
                    }
                    if (compilationResult.problems[i14].getID() != 1610612956 && (sourceStart2 = compilationResult.problems[i14].getSourceStart()) > i15 && sourceStart2 <= this.codeSnippetEnd) {
                        i15 = sourceStart2;
                    }
                    i14++;
                }
                int i16 = 0;
                while (i11 < i13) {
                    if (compilationResult.problems[i11].getID() != 1610612956 && (sourceStart = compilationResult.problems[i11].getSourceStart()) > i16 && sourceStart <= this.codeSnippetEnd) {
                        i16 = sourceStart;
                    }
                    i11++;
                }
                if (i16 > i15) {
                    CategorizedProblem[] categorizedProblemArr = compilationResult.problems;
                    int i17 = this.problemCountBeforeRecovery;
                    System.arraycopy(categorizedProblemArr, i17, categorizedProblemArr, 0, i13 - i17);
                    compilationResult.problemCount -= this.problemCountBeforeRecovery;
                } else {
                    compilationResult.problemCount -= i13 - this.problemCountBeforeRecovery;
                }
                for (int i18 = compilationResult.problemCount; i18 < i13; i18++) {
                    compilationResult.problems[i18] = null;
                }
            }
        }
        return super.endParse(i10);
    }

    @Override
    public NameReference getUnspecifiedReference(boolean z10) {
        if (z10) {
            consumeNonTypeUseName();
        }
        int i10 = this.scanner.startPosition;
        if (i10 < this.codeSnippetStart || i10 > this.codeSnippetEnd + 1 + this.lineSeparatorLength) {
            return super.getUnspecifiedReference(z10);
        }
        int[] iArr = this.identifierLengthStack;
        int i11 = this.identifierLengthPtr;
        this.identifierLengthPtr = i11 - 1;
        int i12 = iArr[i11];
        if (i12 == 1) {
            char[][] cArr = this.identifierStack;
            int i13 = this.identifierPtr;
            char[] cArr2 = cArr[i13];
            long[] jArr = this.identifierPositionStack;
            this.identifierPtr = i13 - 1;
            return new CodeSnippetSingleNameReference(cArr2, jArr[i13], this.evaluationContext);
        }
        char[][] cArr3 = new char[i12];
        int i14 = this.identifierPtr - i12;
        this.identifierPtr = i14;
        System.arraycopy(this.identifierStack, i14 + 1, cArr3, 0, i12);
        long[] jArr2 = new long[i12];
        System.arraycopy(this.identifierPositionStack, this.identifierPtr + 1, jArr2, 0, i12);
        long[] jArr3 = this.identifierPositionStack;
        int i15 = this.identifierPtr;
        return new CodeSnippetQualifiedNameReference(cArr3, jArr2, (int) (jArr3[i15 + 1] >> 32), (int) jArr3[i15 + i12], this.evaluationContext);
    }

    @Override
    public NameReference getUnspecifiedReferenceOptimized() {
        consumeNonTypeUseName();
        int i10 = this.scanner.startPosition;
        if (i10 < this.codeSnippetStart || i10 > this.codeSnippetEnd + 1 + this.lineSeparatorLength) {
            return super.getUnspecifiedReferenceOptimized();
        }
        int[] iArr = this.identifierLengthStack;
        int i11 = this.identifierLengthPtr;
        this.identifierLengthPtr = i11 - 1;
        int i12 = iArr[i11];
        if (i12 == 1) {
            char[][] cArr = this.identifierStack;
            int i13 = this.identifierPtr;
            char[] cArr2 = cArr[i13];
            long[] jArr = this.identifierPositionStack;
            this.identifierPtr = i13 - 1;
            CodeSnippetSingleNameReference codeSnippetSingleNameReference = new CodeSnippetSingleNameReference(cArr2, jArr[i13], this.evaluationContext);
            codeSnippetSingleNameReference.bits = (codeSnippetSingleNameReference.bits & (-8)) | 3;
            return codeSnippetSingleNameReference;
        }
        char[][] cArr3 = new char[i12];
        int i14 = this.identifierPtr - i12;
        this.identifierPtr = i14;
        System.arraycopy(this.identifierStack, i14 + 1, cArr3, 0, i12);
        long[] jArr2 = new long[i12];
        System.arraycopy(this.identifierPositionStack, this.identifierPtr + 1, jArr2, 0, i12);
        long[] jArr3 = this.identifierPositionStack;
        int i15 = this.identifierPtr;
        CodeSnippetQualifiedNameReference codeSnippetQualifiedNameReference = new CodeSnippetQualifiedNameReference(cArr3, jArr2, (int) (jArr3[i15 + 1] >> 32), (int) jArr3[i15 + i12], this.evaluationContext);
        codeSnippetQualifiedNameReference.bits = (codeSnippetQualifiedNameReference.bits & (-8)) | 3;
        return codeSnippetQualifiedNameReference;
    }

    @Override
    public void ignoreExpressionAssignment() {
        super.ignoreExpressionAssignment();
        recordLastStatementIfNeeded();
    }

    @Override
    public MessageSend newMessageSend() {
        CodeSnippetMessageSend codeSnippetMessageSend = new CodeSnippetMessageSend(this.evaluationContext);
        int[] iArr = this.expressionLengthStack;
        int i10 = this.expressionLengthPtr;
        this.expressionLengthPtr = i10 - 1;
        int i11 = iArr[i10];
        if (i11 != 0) {
            int i12 = this.expressionPtr - i11;
            this.expressionPtr = i12;
            Expression[] expressionArr = new Expression[i11];
            codeSnippetMessageSend.arguments = expressionArr;
            System.arraycopy(this.expressionStack, i12 + 1, expressionArr, 0, i11);
        }
        return codeSnippetMessageSend;
    }

    @Override
    public MessageSend newMessageSendWithTypeArguments() {
        CodeSnippetMessageSend codeSnippetMessageSend = new CodeSnippetMessageSend(this.evaluationContext);
        int[] iArr = this.expressionLengthStack;
        int i10 = this.expressionLengthPtr;
        this.expressionLengthPtr = i10 - 1;
        int i11 = iArr[i10];
        if (i11 != 0) {
            int i12 = this.expressionPtr - i11;
            this.expressionPtr = i12;
            Expression[] expressionArr = new Expression[i11];
            codeSnippetMessageSend.arguments = expressionArr;
            System.arraycopy(this.expressionStack, i12 + 1, expressionArr, 0, i11);
        }
        return codeSnippetMessageSend;
    }

    @Override
    public void reportSyntaxErrors(boolean z10, int i10) {
        if (!z10) {
            Scanner scanner = this.scanner;
            scanner.initialPosition = this.lastStatement;
            scanner.eofPosition = this.codeSnippetEnd + 1;
            i10 = 64;
        }
        super.reportSyntaxErrors(z10, i10);
    }

    @Override
    public int resumeOnSyntaxError() {
        if (this.diet || this.hasRecoveredOnExpression) {
            return 0;
        }
        this.problemCountBeforeRecovery = this.compilationUnit.compilationResult.problemCount;
        if (this.lastStatement < 0) {
            this.lastStatement = this.codeSnippetStart;
        }
        Scanner scanner = this.scanner;
        int i10 = this.lastStatement;
        scanner.initialPosition = i10;
        scanner.startPosition = i10;
        scanner.currentPosition = i10;
        int i11 = this.codeSnippetEnd;
        if (i11 < Integer.MAX_VALUE) {
            i11++;
        }
        scanner.eofPosition = i11;
        scanner.commentPtr = -1;
        this.expressionPtr = -1;
        this.typeAnnotationLengthPtr = -1;
        this.typeAnnotationPtr = -1;
        this.identifierPtr = -1;
        this.identifierLengthPtr = -1;
        goForExpression(true);
        this.hasRecoveredOnExpression = true;
        this.hasReportedError = false;
        this.hasError = false;
        return 1;
    }
}
