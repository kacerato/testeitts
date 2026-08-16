package org.eclipse.jdt.internal.codeassist.select;

import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.codeassist.impl.AssistParser;
import org.eclipse.jdt.internal.compiler.CompilationResult;
import org.eclipse.jdt.internal.compiler.ast.ASTNode;
import org.eclipse.jdt.internal.compiler.ast.AbstractVariableDeclaration;
import org.eclipse.jdt.internal.compiler.ast.Annotation;
import org.eclipse.jdt.internal.compiler.ast.Argument;
import org.eclipse.jdt.internal.compiler.ast.ArrayAllocationExpression;
import org.eclipse.jdt.internal.compiler.ast.CaseStatement;
import org.eclipse.jdt.internal.compiler.ast.CastExpression;
import org.eclipse.jdt.internal.compiler.ast.CompilationUnitDeclaration;
import org.eclipse.jdt.internal.compiler.ast.Expression;
import org.eclipse.jdt.internal.compiler.ast.FieldDeclaration;
import org.eclipse.jdt.internal.compiler.ast.ImportReference;
import org.eclipse.jdt.internal.compiler.ast.LambdaExpression;
import org.eclipse.jdt.internal.compiler.ast.LocalDeclaration;
import org.eclipse.jdt.internal.compiler.ast.MarkerAnnotation;
import org.eclipse.jdt.internal.compiler.ast.MemberValuePair;
import org.eclipse.jdt.internal.compiler.ast.MessageSend;
import org.eclipse.jdt.internal.compiler.ast.ModuleDeclaration;
import org.eclipse.jdt.internal.compiler.ast.ModuleReference;
import org.eclipse.jdt.internal.compiler.ast.NameReference;
import org.eclipse.jdt.internal.compiler.ast.NormalAnnotation;
import org.eclipse.jdt.internal.compiler.ast.QualifiedAllocationExpression;
import org.eclipse.jdt.internal.compiler.ast.ReferenceExpression;
import org.eclipse.jdt.internal.compiler.ast.ReturnStatement;
import org.eclipse.jdt.internal.compiler.ast.SingleMemberAnnotation;
import org.eclipse.jdt.internal.compiler.ast.SingleNameReference;
import org.eclipse.jdt.internal.compiler.ast.Statement;
import org.eclipse.jdt.internal.compiler.ast.SuperReference;
import org.eclipse.jdt.internal.compiler.ast.SwitchStatement;
import org.eclipse.jdt.internal.compiler.ast.ThisReference;
import org.eclipse.jdt.internal.compiler.ast.TypeDeclaration;
import org.eclipse.jdt.internal.compiler.ast.TypeReference;
import org.eclipse.jdt.internal.compiler.env.ICompilationUnit;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;
import org.eclipse.jdt.internal.compiler.parser.JavadocParser;
import org.eclipse.jdt.internal.compiler.parser.RecoveredElement;
import org.eclipse.jdt.internal.compiler.parser.RecoveredType;
import org.eclipse.jdt.internal.compiler.problem.ProblemReporter;
import org.eclipse.jdt.internal.compiler.util.Util;
import org.openjdk.tools.doclint.DocLint;

public class SelectionParser extends AssistParser {
    protected static final int K_BETWEEN_CASE_AND_COLONORARROW = 1025;
    protected static final int K_CAST_STATEMENT = 1027;
    protected static final int K_INSIDE_RETURN_STATEMENT = 1026;
    protected static final int SELECTION_OR_ASSIST_PARSER = 1536;
    protected static final int SELECTION_PARSER = 1024;
    public static final char[] SUPER = "super".toCharArray();
    public static final char[] THIS = "this".toCharArray();
    public ASTNode assistNodeParent;
    public int selectionEnd;
    private int selectionNodeFoundLevel;
    public int selectionStart;

    public SelectionParser(ProblemReporter problemReporter) {
        super(problemReporter);
        this.selectionNodeFoundLevel = 0;
        this.javadocParser.checkDocComment = true;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:12:0x009d  */
    /* JADX WARN: Removed duplicated region for block: B:21:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private void buildMoreCompletionContext(Expression expression) {
        Statement statement;
        int i10;
        int i11 = topKnownElementKind(1536);
        if (i11 != 0) {
            int i12 = topKnownElementInfo(1536);
            switch (i11) {
                case 1025:
                    if (this.expressionPtr > 0) {
                        SwitchStatement switchStatement = new SwitchStatement();
                        Expression expression2 = this.expressionStack[this.expressionPtr - 1];
                        switchStatement.expression = expression2;
                        int i13 = this.astLengthPtr;
                        if (i13 > -1 && (i10 = this.astPtr) > -1) {
                            int i14 = this.astLengthStack[i13];
                            ASTNode[] aSTNodeArr = this.astStack;
                            int i15 = (i10 - i14) + 1;
                            ASTNode aSTNode = aSTNodeArr[i15];
                            if (i14 != 0 && aSTNode.sourceStart > expression2.sourceEnd) {
                                Statement[] statementArr = new Statement[i14 + 1];
                                switchStatement.statements = statementArr;
                                System.arraycopy(aSTNodeArr, i15, statementArr, 0, i14);
                            }
                        }
                        CaseStatement caseStatement = new CaseStatement(expression, expression.sourceStart, expression.sourceEnd);
                        Statement[] statementArr2 = switchStatement.statements;
                        if (statementArr2 == null) {
                            switchStatement.statements = new Statement[]{caseStatement};
                        } else {
                            statementArr2[statementArr2.length - 1] = caseStatement;
                        }
                        this.assistNodeParent = switchStatement;
                        statement = switchStatement;
                        break;
                    }
                    break;
                case K_INSIDE_RETURN_STATEMENT:
                    if (i12 == this.bracketDepth) {
                        ReturnStatement returnStatement = new ReturnStatement(expression, expression.sourceStart, expression.sourceEnd);
                        this.assistNodeParent = returnStatement;
                        statement = returnStatement;
                        break;
                    }
                    break;
                case K_CAST_STATEMENT:
                    int i16 = this.expressionPtr;
                    if (i16 > 0) {
                        Expression expression3 = this.expressionStack[i16 - 1];
                        if (expression3 instanceof TypeReference) {
                            CastExpression castExpression = new CastExpression(expression, (TypeReference) expression3);
                            castExpression.sourceStart = expression3.sourceStart;
                            castExpression.sourceEnd = expression.sourceEnd;
                            this.assistNodeParent = castExpression;
                            statement = castExpression;
                            break;
                        }
                    }
                    break;
            }
            if (lastIndexOfElement(519) >= 0) {
                if (statement != null) {
                    this.currentElement = this.currentElement.add(statement, 0);
                    return;
                }
                this.currentElement = this.currentElement.add((Statement) wrapWithExplicitConstructorCallIfNeeded(expression), 0);
                int i17 = this.lastCheckPoint;
                int i18 = expression.sourceEnd;
                if (i17 < i18) {
                    this.lastCheckPoint = i18 + 1;
                    return;
                }
                return;
            }
            return;
        }
        statement = null;
        if (lastIndexOfElement(519) >= 0) {
        }
    }

    private boolean checkRecoveredType() {
        if (!(this.currentElement instanceof RecoveredType) || indexOfAssistIdentifier() < 0) {
            return false;
        }
        int i10 = this.lastErrorEndPosition;
        if ((i10 < this.selectionStart || i10 > this.selectionEnd + 1) && ((RecoveredType) this.currentElement).foundOpeningBrace) {
            TypeReference typeReference = getTypeReference(0);
            this.assistNode = typeReference;
            this.lastCheckPoint = typeReference.sourceEnd + 1;
            this.isOrphanCompletionNode = true;
            return true;
        }
        return false;
    }

    @Override
    public char[] assistIdentifier() {
        return ((SelectionScanner) this.scanner).selectionIdentifier;
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0051  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x0062  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void attachOrphanCompletionNode() {
        if (!this.isOrphanCompletionNode) {
            return;
        }
        ASTNode aSTNode = this.assistNode;
        this.isOrphanCompletionNode = false;
        RecoveredElement recoveredElement = this.currentElement;
        if ((recoveredElement instanceof RecoveredType) && ((RecoveredType) recoveredElement).foundOpeningBrace && (aSTNode instanceof TypeReference)) {
            this.currentElement = recoveredElement.add((FieldDeclaration) new SelectionOnFieldType((TypeReference) aSTNode), 0);
            return;
        }
        if (aSTNode instanceof Expression) {
            Expression expression = (Expression) aSTNode;
            if (expression.isTrulyExpression()) {
                buildMoreCompletionContext(expression);
                if (isIndirectlyInsideLambdaExpression()) {
                    this.currentToken = 0;
                    return;
                }
                int i10 = this.currentToken;
                if (i10 == 49) {
                    this.ignoreNextOpeningBrace = true;
                    return;
                } else {
                    if (i10 == 33) {
                        this.ignoreNextClosingBrace = true;
                        return;
                    }
                    return;
                }
            }
        }
        if (lastIndexOfElement(519) < 0) {
            this.currentElement = this.currentElement.add((Statement) aSTNode, 0);
        }
        if (isIndirectlyInsideLambdaExpression()) {
        }
    }

    public void checkRestartRecovery() {
        int i10 = this.selectionNodeFoundLevel;
        if (i10 > 0) {
            int i11 = i10 - 1;
            this.selectionNodeFoundLevel = i11;
            if (i11 == 0) {
                this.restartRecovery = true;
            }
        }
    }

    @Override
    public void classInstanceCreation(boolean z10) {
        if (this.astLengthStack[this.astLengthPtr] != 1 || this.astStack[this.astPtr] != null) {
            super.classInstanceCreation(z10);
            return;
        }
        int indexOfAssistIdentifier = indexOfAssistIdentifier();
        if (indexOfAssistIdentifier < 0) {
            super.classInstanceCreation(z10);
            return;
        }
        int i10 = this.identifierLengthPtr;
        if (i10 > -1 && this.identifierLengthStack[i10] - 1 != indexOfAssistIdentifier) {
            super.classInstanceCreation(z10);
            return;
        }
        this.astPtr--;
        this.astLengthPtr--;
        SelectionOnQualifiedAllocationExpression selectionOnQualifiedAllocationExpression = new SelectionOnQualifiedAllocationExpression();
        selectionOnQualifiedAllocationExpression.sourceEnd = this.endPosition;
        int[] iArr = this.expressionLengthStack;
        int i11 = this.expressionLengthPtr;
        this.expressionLengthPtr = i11 - 1;
        int i12 = iArr[i11];
        if (i12 != 0) {
            int i13 = this.expressionPtr - i12;
            this.expressionPtr = i13;
            Expression[] expressionArr = new Expression[i12];
            selectionOnQualifiedAllocationExpression.arguments = expressionArr;
            System.arraycopy(this.expressionStack, i13 + 1, expressionArr, 0, i12);
        }
        char[] assistIdentifier = assistIdentifier();
        setAssistIdentifier(null);
        TypeReference typeReference = getTypeReference(0);
        selectionOnQualifiedAllocationExpression.type = typeReference;
        checkForDiamond(typeReference);
        setAssistIdentifier(assistIdentifier);
        int[] iArr2 = this.intStack;
        int i14 = this.intPtr;
        this.intPtr = i14 - 1;
        selectionOnQualifiedAllocationExpression.sourceStart = iArr2[i14];
        pushOnExpressionStack(selectionOnQualifiedAllocationExpression);
        this.assistNode = selectionOnQualifiedAllocationExpression;
        this.lastCheckPoint = selectionOnQualifiedAllocationExpression.sourceEnd + 1;
        if (!this.diet) {
            this.restartRecovery = true;
            this.lastIgnoredToken = -1;
        }
        this.isOrphanCompletionNode = true;
    }

    @Override
    public void consumeArrayCreationExpressionWithInitializer() {
        super.consumeArrayCreationExpressionWithInitializer();
        if (((ArrayAllocationExpression) this.expressionStack[this.expressionPtr]).type == this.assistNode) {
            if (!this.diet) {
                this.restartRecovery = true;
                this.lastIgnoredToken = -1;
            }
            this.isOrphanCompletionNode = true;
        }
    }

    @Override
    public void consumeArrayCreationExpressionWithoutInitializer() {
        super.consumeArrayCreationExpressionWithoutInitializer();
        if (((ArrayAllocationExpression) this.expressionStack[this.expressionPtr]).type == this.assistNode) {
            if (!this.diet) {
                this.restartRecovery = true;
                this.lastIgnoredToken = -1;
            }
            this.isOrphanCompletionNode = true;
        }
    }

    @Override
    public void consumeAssignment() {
        super.consumeAssignment();
        checkRestartRecovery();
    }

    @Override
    public void consumeBlock() {
        super.consumeBlock();
        int i10 = this.selectionNodeFoundLevel;
        if (i10 > 0) {
            this.selectionNodeFoundLevel = i10 - 1;
        }
    }

    @Override
    public void consumeBlockStatement() {
        super.consumeBlockStatement();
        checkRestartRecovery();
    }

    @Override
    public void consumeCastExpressionLL1() {
        popElement(K_CAST_STATEMENT);
        super.consumeCastExpressionLL1();
    }

    @Override
    public void consumeCastExpressionLL1WithBounds() {
        popElement(K_CAST_STATEMENT);
        super.consumeCastExpressionLL1WithBounds();
    }

    @Override
    public void consumeCastExpressionWithGenericsArray() {
        popElement(K_CAST_STATEMENT);
        super.consumeCastExpressionWithGenericsArray();
    }

    @Override
    public void consumeCastExpressionWithNameArray() {
        popElement(K_CAST_STATEMENT);
        super.consumeCastExpressionWithNameArray();
    }

    @Override
    public void consumeCastExpressionWithPrimitiveType() {
        popElement(K_CAST_STATEMENT);
        super.consumeCastExpressionWithPrimitiveType();
    }

    @Override
    public void consumeCastExpressionWithQualifiedGenericsArray() {
        popElement(K_CAST_STATEMENT);
        super.consumeCastExpressionWithQualifiedGenericsArray();
    }

    @Override
    public void consumeCatchFormalParameter() {
        int i10;
        if (indexOfAssistIdentifier() < 0) {
            super.consumeCatchFormalParameter();
            if (!(this.diet && this.dietInt == 0) && (i10 = this.astPtr) > -1 && ((Argument) this.astStack[i10]).type == this.assistNode) {
                this.isOrphanCompletionNode = true;
                this.restartRecovery = true;
                this.lastIgnoredToken = -1;
                return;
            }
            return;
        }
        this.identifierLengthPtr--;
        char[][] cArr = this.identifierStack;
        int i11 = this.identifierPtr;
        char[] cArr2 = cArr[i11];
        long[] jArr = this.identifierPositionStack;
        this.identifierPtr = i11 - 1;
        long j10 = jArr[i11];
        int i12 = this.intPtr;
        int i13 = i12 - 1;
        this.intPtr = i13;
        ASTNode[] aSTNodeArr = this.astStack;
        int i14 = this.astPtr;
        this.astPtr = i14 - 1;
        TypeReference typeReference = (TypeReference) aSTNodeArr[i14];
        this.astLengthPtr--;
        int[] iArr = this.intStack;
        this.intPtr = i12 - 2;
        int i15 = iArr[i13];
        this.intPtr = i12 - 3;
        SelectionOnArgumentName selectionOnArgumentName = new SelectionOnArgumentName(cArr2, j10, typeReference, this.intStack[this.intPtr + 1] & (-1048577));
        selectionOnArgumentName.bits &= -5;
        selectionOnArgumentName.declarationSourceStart = i15;
        int[] iArr2 = this.expressionLengthStack;
        int i16 = this.expressionLengthPtr;
        this.expressionLengthPtr = i16 - 1;
        int i17 = iArr2[i16];
        if (i17 != 0) {
            Expression[] expressionArr = this.expressionStack;
            int i18 = this.expressionPtr - i17;
            this.expressionPtr = i18;
            Annotation[] annotationArr = new Annotation[i17];
            selectionOnArgumentName.annotations = annotationArr;
            System.arraycopy(expressionArr, i18 + 1, annotationArr, 0, i17);
        }
        pushOnAstStack(selectionOnArgumentName);
        this.assistNode = selectionOnArgumentName;
        this.lastCheckPoint = (int) j10;
        this.isOrphanCompletionNode = true;
        if (!this.diet) {
            this.restartRecovery = true;
            this.lastIgnoredToken = -1;
        }
        this.listLength++;
    }

    @Override
    public void consumeClassInstanceCreationExpressionQualifiedWithTypeArguments() {
        if (this.astLengthStack[this.astLengthPtr] != 1 || this.astStack[this.astPtr] != null) {
            super.consumeClassInstanceCreationExpressionQualifiedWithTypeArguments();
        } else {
            if (indexOfAssistIdentifier() < 0) {
                super.consumeClassInstanceCreationExpressionQualifiedWithTypeArguments();
                return;
            }
            this.astPtr--;
            this.astLengthPtr--;
            SelectionOnQualifiedAllocationExpression selectionOnQualifiedAllocationExpression = new SelectionOnQualifiedAllocationExpression();
            selectionOnQualifiedAllocationExpression.sourceEnd = this.endPosition;
            int[] iArr = this.expressionLengthStack;
            int i10 = this.expressionLengthPtr;
            this.expressionLengthPtr = i10 - 1;
            int i11 = iArr[i10];
            if (i11 != 0) {
                int i12 = this.expressionPtr - i11;
                this.expressionPtr = i12;
                Expression[] expressionArr = new Expression[i11];
                selectionOnQualifiedAllocationExpression.arguments = expressionArr;
                System.arraycopy(this.expressionStack, i12 + 1, expressionArr, 0, i11);
            }
            char[] assistIdentifier = assistIdentifier();
            setAssistIdentifier(null);
            TypeReference typeReference = getTypeReference(0);
            selectionOnQualifiedAllocationExpression.type = typeReference;
            checkForDiamond(typeReference);
            setAssistIdentifier(assistIdentifier);
            int[] iArr2 = this.genericsLengthStack;
            int i13 = this.genericsLengthPtr;
            this.genericsLengthPtr = i13 - 1;
            int i14 = iArr2[i13];
            int i15 = this.genericsPtr - i14;
            this.genericsPtr = i15;
            TypeReference[] typeReferenceArr = new TypeReference[i14];
            selectionOnQualifiedAllocationExpression.typeArguments = typeReferenceArr;
            System.arraycopy(this.genericsStack, i15 + 1, typeReferenceArr, 0, i14);
            int i16 = this.intPtr;
            int[] iArr3 = this.intStack;
            this.intPtr = i16 - 2;
            selectionOnQualifiedAllocationExpression.sourceStart = iArr3[i16 - 1];
            pushOnExpressionStack(selectionOnQualifiedAllocationExpression);
            this.assistNode = selectionOnQualifiedAllocationExpression;
            this.lastCheckPoint = selectionOnQualifiedAllocationExpression.sourceEnd + 1;
            if (!this.diet) {
                this.restartRecovery = true;
                this.lastIgnoredToken = -1;
            }
            this.isOrphanCompletionNode = true;
        }
        this.expressionLengthPtr--;
        Expression[] expressionArr2 = this.expressionStack;
        int i17 = this.expressionPtr;
        int i18 = i17 - 1;
        this.expressionPtr = i18;
        QualifiedAllocationExpression qualifiedAllocationExpression = (QualifiedAllocationExpression) expressionArr2[i17];
        Expression expression = expressionArr2[i18];
        qualifiedAllocationExpression.enclosingInstance = expression;
        expressionArr2[i18] = qualifiedAllocationExpression;
        qualifiedAllocationExpression.sourceStart = expression.sourceStart;
    }

    @Override
    public void consumeClassInstanceCreationExpressionWithTypeArguments() {
        if (this.astLengthStack[this.astLengthPtr] != 1 || this.astStack[this.astPtr] != null) {
            super.consumeClassInstanceCreationExpressionWithTypeArguments();
            return;
        }
        if (indexOfAssistIdentifier() < 0) {
            super.consumeClassInstanceCreationExpressionWithTypeArguments();
            return;
        }
        this.astPtr--;
        this.astLengthPtr--;
        SelectionOnQualifiedAllocationExpression selectionOnQualifiedAllocationExpression = new SelectionOnQualifiedAllocationExpression();
        selectionOnQualifiedAllocationExpression.sourceEnd = this.endPosition;
        int[] iArr = this.expressionLengthStack;
        int i10 = this.expressionLengthPtr;
        this.expressionLengthPtr = i10 - 1;
        int i11 = iArr[i10];
        if (i11 != 0) {
            int i12 = this.expressionPtr - i11;
            this.expressionPtr = i12;
            Expression[] expressionArr = new Expression[i11];
            selectionOnQualifiedAllocationExpression.arguments = expressionArr;
            System.arraycopy(this.expressionStack, i12 + 1, expressionArr, 0, i11);
        }
        char[] assistIdentifier = assistIdentifier();
        setAssistIdentifier(null);
        TypeReference typeReference = getTypeReference(0);
        selectionOnQualifiedAllocationExpression.type = typeReference;
        checkForDiamond(typeReference);
        setAssistIdentifier(assistIdentifier);
        int[] iArr2 = this.genericsLengthStack;
        int i13 = this.genericsLengthPtr;
        this.genericsLengthPtr = i13 - 1;
        int i14 = iArr2[i13];
        int i15 = this.genericsPtr - i14;
        this.genericsPtr = i15;
        TypeReference[] typeReferenceArr = new TypeReference[i14];
        selectionOnQualifiedAllocationExpression.typeArguments = typeReferenceArr;
        System.arraycopy(this.genericsStack, i15 + 1, typeReferenceArr, 0, i14);
        int i16 = this.intPtr;
        int[] iArr3 = this.intStack;
        this.intPtr = i16 - 2;
        selectionOnQualifiedAllocationExpression.sourceStart = iArr3[i16 - 1];
        pushOnExpressionStack(selectionOnQualifiedAllocationExpression);
        this.assistNode = selectionOnQualifiedAllocationExpression;
        this.lastCheckPoint = selectionOnQualifiedAllocationExpression.sourceEnd + 1;
        if (!this.diet) {
            this.restartRecovery = true;
            this.lastIgnoredToken = -1;
        }
        this.isOrphanCompletionNode = true;
    }

    @Override
    public void consumeEnterAnonymousClassBody(boolean z10) {
        if (indexOfAssistIdentifier() < 0) {
            super.consumeEnterAnonymousClassBody(z10);
            return;
        }
        char[] assistIdentifier = assistIdentifier();
        setAssistIdentifier(null);
        TypeReference typeReference = getTypeReference(0);
        setAssistIdentifier(assistIdentifier);
        TypeDeclaration typeDeclaration = new TypeDeclaration(this.compilationUnit.compilationResult);
        typeDeclaration.name = CharOperation.NO_CHAR;
        typeDeclaration.bits |= 768;
        SelectionOnQualifiedAllocationExpression selectionOnQualifiedAllocationExpression = new SelectionOnQualifiedAllocationExpression(typeDeclaration);
        markEnclosingMemberWithLocalType();
        pushOnAstStack(typeDeclaration);
        selectionOnQualifiedAllocationExpression.sourceEnd = this.rParenPos;
        int[] iArr = this.expressionLengthStack;
        int i10 = this.expressionLengthPtr;
        this.expressionLengthPtr = i10 - 1;
        int i11 = iArr[i10];
        if (i11 != 0) {
            int i12 = this.expressionPtr - i11;
            this.expressionPtr = i12;
            Expression[] expressionArr = new Expression[i11];
            selectionOnQualifiedAllocationExpression.arguments = expressionArr;
            System.arraycopy(this.expressionStack, i12 + 1, expressionArr, 0, i11);
        }
        if (z10) {
            this.expressionLengthPtr--;
            Expression[] expressionArr2 = this.expressionStack;
            int i13 = this.expressionPtr;
            this.expressionPtr = i13 - 1;
            selectionOnQualifiedAllocationExpression.enclosingInstance = expressionArr2[i13];
        }
        selectionOnQualifiedAllocationExpression.type = typeReference;
        typeDeclaration.sourceEnd = selectionOnQualifiedAllocationExpression.sourceEnd;
        int i14 = typeReference.sourceStart;
        typeDeclaration.declarationSourceStart = i14;
        typeDeclaration.sourceStart = i14;
        int[] iArr2 = this.intStack;
        int i15 = this.intPtr;
        this.intPtr = i15 - 1;
        selectionOnQualifiedAllocationExpression.sourceStart = iArr2[i15];
        pushOnExpressionStack(selectionOnQualifiedAllocationExpression);
        this.assistNode = selectionOnQualifiedAllocationExpression;
        this.lastCheckPoint = selectionOnQualifiedAllocationExpression.sourceEnd + 1;
        if (!this.diet) {
            this.restartRecovery = true;
            this.lastIgnoredToken = -1;
            if (isIndirectlyInsideLambdaExpression()) {
                this.ignoreNextOpeningBrace = true;
            } else {
                this.currentToken = 0;
            }
            this.hasReportedError = true;
        }
        int i16 = this.scanner.currentPosition;
        typeDeclaration.bodyStart = i16;
        this.listLength = 0;
        RecoveredElement recoveredElement = this.currentElement;
        if (recoveredElement != null) {
            this.lastCheckPoint = i16;
            this.currentElement = recoveredElement.add(typeDeclaration, 0);
            if (isIndirectlyInsideLambdaExpression()) {
                this.ignoreNextOpeningBrace = true;
            } else {
                this.currentToken = 0;
            }
            this.lastIgnoredToken = -1;
        }
    }

    @Override
    public void consumeEnterVariable() {
        super.consumeEnterVariable();
        TypeReference typeReference = ((AbstractVariableDeclaration) this.astStack[this.astPtr]).type;
        if (typeReference == this.assistNode) {
            if (!this.diet && !typeReference.isTypeNameVar(null)) {
                this.restartRecovery = true;
                this.lastIgnoredToken = -1;
            }
            this.isOrphanCompletionNode = false;
        }
    }

    @Override
    public void consumeExitVariableWithInitialization() {
        int i10;
        super.consumeExitVariableWithInitialization();
        AbstractVariableDeclaration abstractVariableDeclaration = (AbstractVariableDeclaration) this.astStack[this.astPtr];
        int i11 = abstractVariableDeclaration.declarationSourceStart;
        int i12 = abstractVariableDeclaration.declarationSourceEnd;
        if (!abstractVariableDeclaration.type.isTypeNameVar(null) && (((i10 = this.selectionStart) < i11 && this.selectionEnd < i11) || (i10 > i12 && this.selectionEnd > i12))) {
            abstractVariableDeclaration.initialization = null;
        }
        triggerRecoveryUponLambdaClosure(abstractVariableDeclaration, false);
    }

    @Override
    public void consumeFieldAccess(boolean z10) {
        if (indexOfAssistIdentifier() < 0) {
            super.consumeFieldAccess(z10);
            return;
        }
        char[][] cArr = this.identifierStack;
        int i10 = this.identifierPtr;
        char[] cArr2 = cArr[i10];
        long[] jArr = this.identifierPositionStack;
        this.identifierPtr = i10 - 1;
        SelectionOnFieldReference selectionOnFieldReference = new SelectionOnFieldReference(cArr2, jArr[i10]);
        this.identifierLengthPtr--;
        if (z10) {
            int[] iArr = this.intStack;
            int i11 = this.intPtr;
            this.intPtr = i11 - 1;
            selectionOnFieldReference.sourceStart = iArr[i11];
            selectionOnFieldReference.receiver = new SuperReference(selectionOnFieldReference.sourceStart, this.endPosition);
            pushOnExpressionStack(selectionOnFieldReference);
        } else {
            Expression expression = this.expressionStack[this.expressionPtr];
            selectionOnFieldReference.receiver = expression;
            if (expression.isThis()) {
                selectionOnFieldReference.sourceStart = selectionOnFieldReference.receiver.sourceStart;
            }
            this.expressionStack[this.expressionPtr] = selectionOnFieldReference;
        }
        this.assistNode = selectionOnFieldReference;
        this.lastCheckPoint = selectionOnFieldReference.sourceEnd + 1;
        if (!this.diet) {
            this.restartRecovery = true;
            this.lastIgnoredToken = -1;
        }
        this.isOrphanCompletionNode = true;
    }

    @Override
    public void consumeFormalParameter(boolean z10) {
        Annotation[] annotationArr;
        int i10;
        int i11;
        if (indexOfAssistIdentifier() < 0) {
            super.consumeFormalParameter(z10);
            if (!(this.diet && this.dietInt == 0) && (i11 = this.astPtr) > -1 && ((Argument) this.astStack[i11]).type == this.assistNode) {
                this.isOrphanCompletionNode = true;
                this.restartRecovery = true;
                this.lastIgnoredToken = -1;
                return;
            }
            return;
        }
        int[] iArr = this.intStack;
        int i12 = this.intPtr;
        int i13 = i12 - 1;
        this.intPtr = i13;
        if (iArr[i12] == 0) {
            this.expressionPtr--;
            this.expressionLengthPtr--;
        }
        this.identifierLengthPtr--;
        char[][] cArr = this.identifierStack;
        int i14 = this.identifierPtr;
        char[] cArr2 = cArr[i14];
        long[] jArr = this.identifierPositionStack;
        this.identifierPtr = i14 - 1;
        long j10 = jArr[i14];
        this.intPtr = i12 - 2;
        int i15 = iArr[i13];
        Annotation[][] annotationsOnDimensions = i15 == 0 ? null : getAnnotationsOnDimensions(i15);
        if (z10) {
            int[] iArr2 = this.intStack;
            int i16 = this.intPtr;
            this.intPtr = i16 - 1;
            i10 = iArr2[i16];
            int[] iArr3 = this.typeAnnotationLengthStack;
            int i17 = this.typeAnnotationLengthPtr;
            this.typeAnnotationLengthPtr = i17 - 1;
            int i18 = iArr3[i17];
            if (i18 != 0) {
                Annotation[] annotationArr2 = this.typeAnnotationStack;
                int i19 = this.typeAnnotationPtr - i18;
                this.typeAnnotationPtr = i19;
                annotationArr = new Annotation[i18];
                System.arraycopy(annotationArr2, i19 + 1, annotationArr, 0, i18);
            } else {
                annotationArr = null;
            }
        } else {
            annotationArr = null;
            i10 = 0;
        }
        int[] iArr4 = this.intStack;
        int i20 = this.intPtr;
        this.intPtr = i20 - 1;
        TypeReference typeReference = getTypeReference(iArr4[i20]);
        if (z10 || i15 != 0) {
            if (z10) {
                typeReference = augmentTypeWithAdditionalDimensions(typeReference, 1, annotationArr != null ? new Annotation[][]{annotationArr} : null, true);
            }
            if (i15 != 0) {
                typeReference = augmentTypeWithAdditionalDimensions(typeReference, i15, annotationsOnDimensions, false);
            }
            typeReference.sourceEnd = typeReference.isParameterizedTypeReference() ? this.endStatementPosition : this.endPosition;
        }
        TypeReference typeReference2 = typeReference;
        if (z10) {
            if (i15 == 0) {
                typeReference2.sourceEnd = i10;
            }
            typeReference2.bits |= 16384;
        }
        int[] iArr5 = this.intStack;
        int i21 = this.intPtr;
        this.intPtr = i21 - 1;
        int i22 = iArr5[i21];
        this.intPtr = i21 - 2;
        SelectionOnArgumentName selectionOnArgumentName = new SelectionOnArgumentName(cArr2, j10, typeReference2, this.intStack[this.intPtr + 1] & (-1048577));
        selectionOnArgumentName.declarationSourceStart = i22;
        int[] iArr6 = this.expressionLengthStack;
        int i23 = this.expressionLengthPtr;
        this.expressionLengthPtr = i23 - 1;
        int i24 = iArr6[i23];
        if (i24 != 0) {
            Expression[] expressionArr = this.expressionStack;
            int i25 = this.expressionPtr - i24;
            this.expressionPtr = i25;
            Annotation[] annotationArr3 = new Annotation[i24];
            selectionOnArgumentName.annotations = annotationArr3;
            System.arraycopy(expressionArr, i25 + 1, annotationArr3, 0, i24);
            RecoveredType currentRecoveryType = currentRecoveryType();
            if (currentRecoveryType != null) {
                currentRecoveryType.annotationsConsumed(selectionOnArgumentName.annotations);
            }
        }
        pushOnAstStack(selectionOnArgumentName);
        this.assistNode = selectionOnArgumentName;
        this.lastCheckPoint = (int) j10;
        this.isOrphanCompletionNode = true;
        if (!this.diet) {
            this.restartRecovery = true;
            this.lastIgnoredToken = -1;
        }
        this.listLength++;
    }

    @Override
    public void consumeInsideCastExpression() {
        super.consumeInsideCastExpression();
        pushOnElementStack(K_CAST_STATEMENT);
    }

    @Override
    public void consumeInsideCastExpressionLL1() {
        super.consumeInsideCastExpressionLL1();
        pushOnElementStack(K_CAST_STATEMENT);
    }

    @Override
    public void consumeInsideCastExpressionLL1WithBounds() {
        super.consumeInsideCastExpressionLL1WithBounds();
        pushOnElementStack(K_CAST_STATEMENT);
    }

    @Override
    public void consumeInsideCastExpressionWithQualifiedGenerics() {
        super.consumeInsideCastExpressionWithQualifiedGenerics();
        pushOnElementStack(K_CAST_STATEMENT);
    }

    @Override
    public void consumeInstanceOfExpression() {
        if (indexOfAssistIdentifier() < 0) {
            super.consumeInstanceOfExpression();
            return;
        }
        int[] iArr = this.intStack;
        int i10 = this.intPtr;
        this.intPtr = i10 - 1;
        getTypeReference(iArr[i10]);
        this.isOrphanCompletionNode = true;
        this.restartRecovery = true;
        this.lastIgnoredToken = -1;
    }

    @Override
    public void consumeInstanceOfExpressionWithName() {
        if (indexOfAssistIdentifier() < 0) {
            super.consumeInstanceOfExpressionWithName();
            return;
        }
        int[] iArr = this.intStack;
        int i10 = this.intPtr;
        this.intPtr = i10 - 1;
        getTypeReference(iArr[i10]);
        this.isOrphanCompletionNode = true;
        this.restartRecovery = true;
        this.lastIgnoredToken = -1;
    }

    @Override
    public void consumeLambdaExpression() {
        int i10;
        super.consumeLambdaExpression();
        LambdaExpression lambdaExpression = (LambdaExpression) this.expressionStack[this.expressionPtr];
        int arrowPosition = lambdaExpression.arrowPosition();
        int i11 = arrowPosition - 1;
        int i12 = this.selectionStart;
        if ((i12 == i11 || i12 == arrowPosition) && ((i10 = this.selectionEnd) == i11 || i10 == arrowPosition)) {
            this.expressionStack[this.expressionPtr] = new SelectionOnLambdaExpression(lambdaExpression);
        }
        if (this.selectionStart < lambdaExpression.sourceStart || this.selectionEnd > lambdaExpression.sourceEnd) {
            popElement(519);
        }
    }

    @Override
    public void consumeLocalVariableDeclarationStatement() {
        super.consumeLocalVariableDeclarationStatement();
        if (!this.diet) {
            ASTNode aSTNode = this.astStack[this.astPtr];
            if (aSTNode instanceof LocalDeclaration) {
                LocalDeclaration localDeclaration = (LocalDeclaration) aSTNode;
                if (this.selectionStart >= localDeclaration.sourceStart && this.selectionEnd <= localDeclaration.sourceEnd) {
                    this.restartRecovery = true;
                    this.lastIgnoredToken = -1;
                }
            }
        }
        checkRestartRecovery();
    }

    @Override
    public void consumeMarkerAnnotation(boolean z10) {
        int indexOfAssistIdentifier = indexOfAssistIdentifier();
        if (indexOfAssistIdentifier < 0) {
            super.consumeMarkerAnnotation(z10);
            return;
        }
        int i10 = this.identifierLengthStack[this.identifierLengthPtr];
        char[][] identifierSubSet = identifierSubSet(indexOfAssistIdentifier);
        this.identifierLengthPtr--;
        int i11 = this.identifierPtr - i10;
        this.identifierPtr = i11;
        long[] jArr = new long[i10];
        System.arraycopy(this.identifierPositionStack, i11 + 1, jArr, 0, i10);
        TypeReference createSingleAssistTypeReference = indexOfAssistIdentifier == 0 ? createSingleAssistTypeReference(assistIdentifier(), jArr[0]) : createQualifiedAssistTypeReference(identifierSubSet, assistIdentifier(), jArr);
        this.assistNode = createSingleAssistTypeReference;
        this.lastCheckPoint = createSingleAssistTypeReference.sourceEnd + 1;
        int[] iArr = this.intStack;
        int i12 = this.intPtr;
        this.intPtr = i12 - 1;
        Annotation markerAnnotation = new MarkerAnnotation(createSingleAssistTypeReference, iArr[i12]);
        markerAnnotation.declarationSourceEnd = markerAnnotation.sourceEnd;
        if (z10) {
            pushOnTypeAnnotationStack(markerAnnotation);
        } else {
            pushOnExpressionStack(markerAnnotation);
        }
    }

    @Override
    public void consumeMemberValuePair() {
        if (indexOfAssistIdentifier() < 0) {
            super.consumeMemberValuePair();
            return;
        }
        char[][] cArr = this.identifierStack;
        int i10 = this.identifierPtr;
        char[] cArr2 = cArr[i10];
        long[] jArr = this.identifierPositionStack;
        this.identifierPtr = i10 - 1;
        long j10 = jArr[i10];
        this.identifierLengthPtr--;
        Expression[] expressionArr = this.expressionStack;
        int i11 = this.expressionPtr;
        this.expressionPtr = i11 - 1;
        this.expressionLengthPtr--;
        SelectionOnNameOfMemberValuePair selectionOnNameOfMemberValuePair = new SelectionOnNameOfMemberValuePair(cArr2, (int) (j10 >>> 32), (int) j10, expressionArr[i11]);
        pushOnAstStack(selectionOnNameOfMemberValuePair);
        this.assistNode = selectionOnNameOfMemberValuePair;
        this.lastCheckPoint = selectionOnNameOfMemberValuePair.sourceEnd + 1;
    }

    @Override
    public void consumeMethodInvocationName() {
        int i10;
        ASTNode aSTNode;
        ASTNode aSTNode2;
        int i11;
        char[] cArr = this.identifierStack[this.identifierPtr];
        if (cArr != assistIdentifier()) {
            super.consumeMethodInvocationName();
            if (requireExtendedRecovery() && (i10 = this.astPtr) >= 0 && (aSTNode = this.astStack[i10]) == (aSTNode2 = this.assistNode) && (aSTNode2 instanceof ThisReference)) {
                MessageSend messageSend = (MessageSend) this.expressionStack[this.expressionPtr];
                Expression expression = messageSend.receiver;
                if ((expression instanceof SingleNameReference) && ((SingleNameReference) expression).token == CharOperation.NO_CHAR) {
                    this.astPtr = i10 - 1;
                    messageSend.receiver = (Expression) aSTNode;
                    return;
                }
                return;
            }
            return;
        }
        if (CharOperation.equals(cArr, SUPER)) {
            i11 = 2;
        } else {
            if (!CharOperation.equals(cArr, THIS)) {
                super.consumeMethodInvocationName();
                return;
            }
            i11 = 3;
        }
        final SelectionOnExplicitConstructorCall selectionOnExplicitConstructorCall = new SelectionOnExplicitConstructorCall(i11);
        selectionOnExplicitConstructorCall.sourceEnd = this.rParenPos;
        selectionOnExplicitConstructorCall.sourceStart = (int) (this.identifierPositionStack[this.identifierPtr] >>> 32);
        int[] iArr = this.expressionLengthStack;
        int i12 = this.expressionLengthPtr;
        this.expressionLengthPtr = i12 - 1;
        int i13 = iArr[i12];
        if (i13 != 0) {
            int i14 = this.expressionPtr - i13;
            this.expressionPtr = i14;
            Expression[] expressionArr = new Expression[i13];
            selectionOnExplicitConstructorCall.arguments = expressionArr;
            System.arraycopy(this.expressionStack, i14 + 1, expressionArr, 0, i13);
        }
        if (this.diet) {
            pushOnExpressionStack(new Expression() {
                @Override
                public StringBuffer printExpression(int i15, StringBuffer stringBuffer) {
                    return stringBuffer;
                }

                @Override
                public TypeBinding resolveType(BlockScope blockScope) {
                    selectionOnExplicitConstructorCall.resolve(blockScope);
                    return null;
                }
            });
        } else {
            pushOnAstStack(selectionOnExplicitConstructorCall);
            this.restartRecovery = true;
            this.lastIgnoredToken = -1;
        }
        this.assistNode = selectionOnExplicitConstructorCall;
        this.lastCheckPoint = selectionOnExplicitConstructorCall.sourceEnd + 1;
        this.isOrphanCompletionNode = true;
    }

    @Override
    public void consumeMethodInvocationPrimary() {
        int i10;
        char[] cArr = this.identifierStack[this.identifierPtr];
        if (cArr != assistIdentifier()) {
            super.consumeMethodInvocationPrimary();
            return;
        }
        if (CharOperation.equals(cArr, SUPER)) {
            i10 = 2;
        } else {
            if (!CharOperation.equals(cArr, THIS)) {
                super.consumeMethodInvocationPrimary();
                return;
            }
            i10 = 3;
        }
        final SelectionOnExplicitConstructorCall selectionOnExplicitConstructorCall = new SelectionOnExplicitConstructorCall(i10);
        selectionOnExplicitConstructorCall.sourceEnd = this.rParenPos;
        int[] iArr = this.expressionLengthStack;
        int i11 = this.expressionLengthPtr;
        this.expressionLengthPtr = i11 - 1;
        int i12 = iArr[i11];
        if (i12 != 0) {
            int i13 = this.expressionPtr - i12;
            this.expressionPtr = i13;
            Expression[] expressionArr = new Expression[i12];
            selectionOnExplicitConstructorCall.arguments = expressionArr;
            System.arraycopy(this.expressionStack, i13 + 1, expressionArr, 0, i12);
        }
        Expression[] expressionArr2 = this.expressionStack;
        int i14 = this.expressionPtr;
        this.expressionPtr = i14 - 1;
        Expression expression = expressionArr2[i14];
        selectionOnExplicitConstructorCall.qualification = expression;
        selectionOnExplicitConstructorCall.sourceStart = expression.sourceStart;
        if (this.diet) {
            pushOnExpressionStack(new Expression() {
                @Override
                public StringBuffer printExpression(int i15, StringBuffer stringBuffer) {
                    return stringBuffer;
                }

                @Override
                public TypeBinding resolveType(BlockScope blockScope) {
                    selectionOnExplicitConstructorCall.resolve(blockScope);
                    return null;
                }
            });
        } else {
            pushOnAstStack(selectionOnExplicitConstructorCall);
            this.restartRecovery = true;
            this.lastIgnoredToken = -1;
        }
        this.assistNode = selectionOnExplicitConstructorCall;
        this.lastCheckPoint = selectionOnExplicitConstructorCall.sourceEnd + 1;
        this.isOrphanCompletionNode = true;
    }

    @Override
    public void consumeNormalAnnotation(boolean z10) {
        int indexOfAssistIdentifier = indexOfAssistIdentifier();
        if (indexOfAssistIdentifier < 0) {
            super.consumeNormalAnnotation(z10);
            return;
        }
        int i10 = this.identifierLengthStack[this.identifierLengthPtr];
        char[][] identifierSubSet = identifierSubSet(indexOfAssistIdentifier);
        this.identifierLengthPtr--;
        int i11 = this.identifierPtr - i10;
        this.identifierPtr = i11;
        long[] jArr = new long[i10];
        System.arraycopy(this.identifierPositionStack, i11 + 1, jArr, 0, i10);
        TypeReference createSingleAssistTypeReference = indexOfAssistIdentifier == 0 ? createSingleAssistTypeReference(assistIdentifier(), jArr[0]) : createQualifiedAssistTypeReference(identifierSubSet, assistIdentifier(), jArr);
        this.assistNode = createSingleAssistTypeReference;
        this.lastCheckPoint = createSingleAssistTypeReference.sourceEnd + 1;
        int[] iArr = this.intStack;
        int i12 = this.intPtr;
        this.intPtr = i12 - 1;
        NormalAnnotation normalAnnotation = new NormalAnnotation(createSingleAssistTypeReference, iArr[i12]);
        int[] iArr2 = this.astLengthStack;
        int i13 = this.astLengthPtr;
        this.astLengthPtr = i13 - 1;
        int i14 = iArr2[i13];
        if (i14 != 0) {
            ASTNode[] aSTNodeArr = this.astStack;
            int i15 = this.astPtr - i14;
            this.astPtr = i15;
            MemberValuePair[] memberValuePairArr = new MemberValuePair[i14];
            normalAnnotation.memberValuePairs = memberValuePairArr;
            System.arraycopy(aSTNodeArr, i15 + 1, memberValuePairArr, 0, i14);
        }
        normalAnnotation.declarationSourceEnd = this.rParenPos;
        if (z10) {
            pushOnTypeAnnotationStack(normalAnnotation);
        } else {
            pushOnExpressionStack(normalAnnotation);
        }
    }

    @Override
    public void consumeOpenBlock() {
        super.consumeOpenBlock();
        int i10 = this.selectionNodeFoundLevel;
        if (i10 > 0) {
            this.selectionNodeFoundLevel = i10 + 1;
        }
    }

    @Override
    public void consumeReferenceExpression(ReferenceExpression referenceExpression) {
        int i10;
        int i11 = this.colonColonStart;
        int i12 = i11 + 1;
        this.colonColonStart = -1;
        int i13 = this.selectionStart;
        if ((i13 == i11 || i13 == i12) && ((i10 = this.selectionEnd) == i11 || i10 == i12)) {
            referenceExpression = new SelectionOnReferenceExpression(referenceExpression, this.scanner);
        }
        super.consumeReferenceExpression(referenceExpression);
    }

    @Override
    public void consumeSingleMemberAnnotation(boolean z10) {
        int indexOfAssistIdentifier = indexOfAssistIdentifier();
        if (indexOfAssistIdentifier < 0) {
            super.consumeSingleMemberAnnotation(z10);
            return;
        }
        int i10 = this.identifierLengthStack[this.identifierLengthPtr];
        char[][] identifierSubSet = identifierSubSet(indexOfAssistIdentifier);
        this.identifierLengthPtr--;
        int i11 = this.identifierPtr - i10;
        this.identifierPtr = i11;
        long[] jArr = new long[i10];
        System.arraycopy(this.identifierPositionStack, i11 + 1, jArr, 0, i10);
        TypeReference createSingleAssistTypeReference = indexOfAssistIdentifier == 0 ? createSingleAssistTypeReference(assistIdentifier(), jArr[0]) : createQualifiedAssistTypeReference(identifierSubSet, assistIdentifier(), jArr);
        this.assistNode = createSingleAssistTypeReference;
        this.lastCheckPoint = createSingleAssistTypeReference.sourceEnd + 1;
        int[] iArr = this.intStack;
        int i12 = this.intPtr;
        this.intPtr = i12 - 1;
        SingleMemberAnnotation singleMemberAnnotation = new SingleMemberAnnotation(createSingleAssistTypeReference, iArr[i12]);
        Expression[] expressionArr = this.expressionStack;
        int i13 = this.expressionPtr;
        this.expressionPtr = i13 - 1;
        singleMemberAnnotation.memberValue = expressionArr[i13];
        this.expressionLengthPtr--;
        singleMemberAnnotation.declarationSourceEnd = this.rParenPos;
        if (z10) {
            pushOnTypeAnnotationStack(singleMemberAnnotation);
        } else {
            pushOnExpressionStack(singleMemberAnnotation);
        }
    }

    @Override
    public void consumeStaticImportOnDemandDeclarationName() {
        int indexOfAssistIdentifier = indexOfAssistIdentifier();
        if (indexOfAssistIdentifier < 0) {
            super.consumeStaticImportOnDemandDeclarationName();
            return;
        }
        int i10 = this.identifierLengthStack[this.identifierLengthPtr];
        char[][] identifierSubSet = identifierSubSet(indexOfAssistIdentifier + 1);
        this.identifierLengthPtr--;
        int i11 = this.identifierPtr - i10;
        this.identifierPtr = i11;
        long[] jArr = new long[i10];
        System.arraycopy(this.identifierPositionStack, i11 + 1, jArr, 0, i10);
        ImportReference createAssistImportReference = createAssistImportReference(identifierSubSet, jArr, 8);
        createAssistImportReference.bits |= 131072;
        int[] iArr = this.intStack;
        int i12 = this.intPtr;
        this.intPtr = i12 - 1;
        createAssistImportReference.trailingStarPosition = iArr[i12];
        this.assistNode = createAssistImportReference;
        this.lastCheckPoint = createAssistImportReference.sourceEnd + 1;
        pushOnAstStack(createAssistImportReference);
        if (this.currentToken == 26) {
            createAssistImportReference.declarationSourceEnd = this.scanner.currentPosition - 1;
        } else {
            createAssistImportReference.declarationSourceEnd = (int) jArr[i10 - 1];
        }
        int[] iArr2 = this.intStack;
        int i13 = this.intPtr;
        this.intPtr = i13 - 1;
        createAssistImportReference.declarationSourceStart = iArr2[i13];
        int flushCommentsDefinedPriorTo = flushCommentsDefinedPriorTo(createAssistImportReference.declarationSourceEnd);
        createAssistImportReference.declarationSourceEnd = flushCommentsDefinedPriorTo;
        RecoveredElement recoveredElement = this.currentElement;
        if (recoveredElement != null) {
            this.lastCheckPoint = flushCommentsDefinedPriorTo + 1;
            this.currentElement = recoveredElement.add(createAssistImportReference, 0);
            this.lastIgnoredToken = -1;
            this.restartRecovery = true;
        }
    }

    @Override
    public void consumeToken(int i10) {
        super.consumeToken(i10);
        if (isInsideMethod() || isInsideFieldInitialization()) {
            if (i10 == 26) {
                if (topKnownElementKind(1536) == K_INSIDE_RETURN_STATEMENT && topKnownElementInfo(1536) == this.bracketDepth) {
                    popElement(K_INSIDE_RETURN_STATEMENT);
                    return;
                }
                return;
            }
            if (i10 == 32) {
                if (topKnownElementKind(1536) != 1025) {
                    return;
                }
                this.expressionPtr--;
                this.expressionLengthStack[this.expressionLengthPtr] = r5[r0] - 1;
                return;
            }
            if (i10 != 62) {
                if (i10 == 82) {
                    pushOnElementStack(K_INSIDE_RETURN_STATEMENT, this.bracketDepth);
                    return;
                } else if (i10 != 98) {
                    if (i10 != 101) {
                        return;
                    }
                    pushOnElementStack(1025);
                    return;
                }
            }
            if (topKnownElementKind(1536) == 1025) {
                popElement(1025);
            }
        }
    }

    @Override
    public void consumeTypeImportOnDemandDeclarationName() {
        int indexOfAssistIdentifier = indexOfAssistIdentifier();
        if (indexOfAssistIdentifier < 0) {
            super.consumeTypeImportOnDemandDeclarationName();
            return;
        }
        int i10 = this.identifierLengthStack[this.identifierLengthPtr];
        char[][] identifierSubSet = identifierSubSet(indexOfAssistIdentifier + 1);
        this.identifierLengthPtr--;
        int i11 = this.identifierPtr - i10;
        this.identifierPtr = i11;
        long[] jArr = new long[i10];
        System.arraycopy(this.identifierPositionStack, i11 + 1, jArr, 0, i10);
        ImportReference createAssistImportReference = createAssistImportReference(identifierSubSet, jArr, 0);
        createAssistImportReference.bits |= 131072;
        int[] iArr = this.intStack;
        int i12 = this.intPtr;
        this.intPtr = i12 - 1;
        createAssistImportReference.trailingStarPosition = iArr[i12];
        this.assistNode = createAssistImportReference;
        this.lastCheckPoint = createAssistImportReference.sourceEnd + 1;
        pushOnAstStack(createAssistImportReference);
        if (this.currentToken == 26) {
            createAssistImportReference.declarationSourceEnd = this.scanner.currentPosition - 1;
        } else {
            createAssistImportReference.declarationSourceEnd = (int) jArr[i10 - 1];
        }
        int[] iArr2 = this.intStack;
        int i13 = this.intPtr;
        this.intPtr = i13 - 1;
        createAssistImportReference.declarationSourceStart = iArr2[i13];
        int flushCommentsDefinedPriorTo = flushCommentsDefinedPriorTo(createAssistImportReference.declarationSourceEnd);
        createAssistImportReference.declarationSourceEnd = flushCommentsDefinedPriorTo;
        RecoveredElement recoveredElement = this.currentElement;
        if (recoveredElement != null) {
            this.lastCheckPoint = flushCommentsDefinedPriorTo + 1;
            this.currentElement = recoveredElement.add(createAssistImportReference, 0);
            this.lastIgnoredToken = -1;
            this.restartRecovery = true;
        }
    }

    @Override
    public ImportReference createAssistImportReference(char[][] cArr, long[] jArr, int i10) {
        return new SelectionOnImportReference(cArr, jArr, i10);
    }

    @Override
    public ModuleDeclaration createAssistModuleDeclaration(CompilationResult compilationResult, char[][] cArr, long[] jArr) {
        return new SelectionOnModuleDeclaration(compilationResult, cArr, jArr);
    }

    @Override
    public ModuleReference createAssistModuleReference(int i10) {
        int[] iArr = this.identifierLengthStack;
        int i11 = this.identifierLengthPtr;
        this.identifierLengthPtr = i11 - 1;
        int i12 = iArr[i11];
        char[][] cArr = new char[i12];
        int i13 = this.identifierPtr - i12;
        this.identifierPtr = i13;
        long[] jArr = new long[i12];
        System.arraycopy(this.identifierStack, i13 + 1, cArr, 0, i12);
        System.arraycopy(this.identifierPositionStack, this.identifierPtr + 1, jArr, 0, i12);
        return new SelectionOnModuleReference(cArr, jArr);
    }

    @Override
    public ImportReference createAssistPackageReference(char[][] cArr, long[] jArr) {
        return new SelectionOnPackageReference(cArr, jArr);
    }

    @Override
    public ImportReference createAssistPackageVisibilityReference(char[][] cArr, long[] jArr) {
        return new SelectionOnPackageVisibilityReference(cArr, jArr);
    }

    @Override
    public JavadocParser createJavadocParser() {
        return new SelectionJavadocParser(this);
    }

    @Override
    public LocalDeclaration createLocalDeclaration(char[] cArr, int i10, int i11) {
        if (indexOfAssistIdentifier() < 0) {
            return super.createLocalDeclaration(cArr, i10, i11);
        }
        SelectionOnLocalName selectionOnLocalName = new SelectionOnLocalName(cArr, i10, i11);
        this.assistNode = selectionOnLocalName;
        this.lastCheckPoint = i11 + 1;
        return selectionOnLocalName;
    }

    @Override
    public TypeReference createParameterizedQualifiedAssistTypeReference(char[][] cArr, TypeReference[][] typeReferenceArr, char[] cArr2, TypeReference[] typeReferenceArr2, long[] jArr) {
        return new SelectionOnParameterizedQualifiedTypeReference(cArr, cArr2, typeReferenceArr, typeReferenceArr2, jArr);
    }

    @Override
    public TypeReference createParameterizedSingleAssistTypeReference(TypeReference[] typeReferenceArr, char[] cArr, long j10) {
        return new SelectionOnParameterizedSingleTypeReference(cArr, typeReferenceArr, j10);
    }

    @Override
    public NameReference createQualifiedAssistNameReference(char[][] cArr, char[] cArr2, long[] jArr) {
        return new SelectionOnQualifiedNameReference(cArr, cArr2, jArr);
    }

    @Override
    public TypeReference createQualifiedAssistTypeReference(char[][] cArr, char[] cArr2, long[] jArr) {
        return new SelectionOnQualifiedTypeReference(cArr, cArr2, jArr);
    }

    @Override
    public NameReference createSingleAssistNameReference(char[] cArr, long j10) {
        return new SelectionOnSingleNameReference(cArr, j10);
    }

    @Override
    public TypeReference createSingleAssistTypeReference(char[] cArr, long j10) {
        return new SelectionOnSingleTypeReference(cArr, j10);
    }

    public CompilationUnitDeclaration dietParse(ICompilationUnit iCompilationUnit, CompilationResult compilationResult, int i10, int i11) {
        this.selectionStart = i10;
        this.selectionEnd = i11;
        SelectionScanner selectionScanner = (SelectionScanner) this.scanner;
        selectionScanner.selectionIdentifier = null;
        selectionScanner.selectionStart = i10;
        selectionScanner.selectionEnd = i11;
        return dietParse(iCompilationUnit, compilationResult);
    }

    @Override
    public NameReference getUnspecifiedReference(boolean z10) {
        ASTNode selectionOnSuperReference;
        int indexOfAssistIdentifier = indexOfAssistIdentifier();
        if (indexOfAssistIdentifier < 0) {
            return super.getUnspecifiedReference(z10);
        }
        if (z10) {
            consumeNonTypeUseName();
        }
        int i10 = this.identifierLengthStack[this.identifierLengthPtr];
        if (!CharOperation.equals(assistIdentifier(), SUPER)) {
            char[][] identifierSubSet = identifierSubSet(indexOfAssistIdentifier);
            this.identifierLengthPtr--;
            int i11 = this.identifierPtr - i10;
            this.identifierPtr = i11;
            long[] jArr = new long[i10];
            System.arraycopy(this.identifierPositionStack, i11 + 1, jArr, 0, i10);
            NameReference createSingleAssistNameReference = indexOfAssistIdentifier == 0 ? createSingleAssistNameReference(assistIdentifier(), jArr[0]) : createQualifiedAssistNameReference(identifierSubSet, assistIdentifier(), jArr);
            this.assistNode = createSingleAssistNameReference;
            this.lastCheckPoint = createSingleAssistNameReference.sourceEnd + 1;
            if (!this.diet) {
                this.restartRecovery = true;
                this.lastIgnoredToken = -1;
            }
            this.isOrphanCompletionNode = true;
            return createSingleAssistNameReference;
        }
        if (indexOfAssistIdentifier > 0) {
            this.identifierLengthStack[this.identifierLengthPtr] = indexOfAssistIdentifier;
            int i12 = this.identifierPtr - (i10 - indexOfAssistIdentifier);
            this.identifierPtr = i12;
            pushOnGenericsLengthStack(0);
            pushOnGenericsIdentifiersLengthStack(this.identifierLengthStack[this.identifierLengthPtr]);
            for (int i13 = 0; i13 < indexOfAssistIdentifier; i13++) {
                pushOnTypeAnnotationLengthStack(0);
            }
            TypeReference typeReference = getTypeReference(0);
            long j10 = this.identifierPositionStack[i12 + 1];
            selectionOnSuperReference = new SelectionOnQualifiedSuperReference(typeReference, (int) (j10 >>> 32), (int) j10);
        } else {
            this.identifierPtr -= i10;
            this.identifierLengthPtr--;
            long[] jArr2 = this.identifierPositionStack;
            int i14 = this.identifierPtr;
            selectionOnSuperReference = new SelectionOnSuperReference((int) (jArr2[i14 + 1] >>> 32), (int) jArr2[i14 + 1]);
        }
        pushOnAstStack(selectionOnSuperReference);
        this.assistNode = selectionOnSuperReference;
        this.lastCheckPoint = selectionOnSuperReference.sourceEnd + 1;
        if (!this.diet || this.dietInt != 0) {
            this.restartRecovery = true;
            this.lastIgnoredToken = -1;
        }
        this.isOrphanCompletionNode = true;
        return new SingleNameReference(CharOperation.NO_CHAR, 0L);
    }

    @Override
    public NameReference getUnspecifiedReferenceOptimized() {
        int indexOfAssistIdentifier = indexOfAssistIdentifier();
        NameReference unspecifiedReferenceOptimized = super.getUnspecifiedReferenceOptimized();
        if (indexOfAssistIdentifier >= 0) {
            if (!this.diet) {
                this.restartRecovery = true;
                this.lastIgnoredToken = -1;
            }
            this.isOrphanCompletionNode = true;
        }
        return unspecifiedReferenceOptimized;
    }

    @Override
    public void initializeScanner() {
        this.scanner = new SelectionScanner(this.options.sourceLevel);
    }

    @Override
    public MessageSend newMessageSend() {
        if (this.identifierStack[this.identifierPtr] != assistIdentifier()) {
            return super.newMessageSend();
        }
        SelectionOnMessageSend selectionOnMessageSend = new SelectionOnMessageSend();
        int[] iArr = this.expressionLengthStack;
        int i10 = this.expressionLengthPtr;
        this.expressionLengthPtr = i10 - 1;
        int i11 = iArr[i10];
        if (i11 != 0) {
            int i12 = this.expressionPtr - i11;
            this.expressionPtr = i12;
            Expression[] expressionArr = new Expression[i11];
            selectionOnMessageSend.arguments = expressionArr;
            System.arraycopy(this.expressionStack, i12 + 1, expressionArr, 0, i11);
        }
        this.assistNode = selectionOnMessageSend;
        if (!this.diet) {
            this.selectionNodeFoundLevel = 1;
            this.lastIgnoredToken = -1;
        }
        this.isOrphanCompletionNode = true;
        return selectionOnMessageSend;
    }

    @Override
    public MessageSend newMessageSendWithTypeArguments() {
        if (this.identifierStack[this.identifierPtr] != assistIdentifier()) {
            return super.newMessageSendWithTypeArguments();
        }
        SelectionOnMessageSend selectionOnMessageSend = new SelectionOnMessageSend();
        int[] iArr = this.expressionLengthStack;
        int i10 = this.expressionLengthPtr;
        this.expressionLengthPtr = i10 - 1;
        int i11 = iArr[i10];
        if (i11 != 0) {
            int i12 = this.expressionPtr - i11;
            this.expressionPtr = i12;
            Expression[] expressionArr = new Expression[i11];
            selectionOnMessageSend.arguments = expressionArr;
            System.arraycopy(this.expressionStack, i12 + 1, expressionArr, 0, i11);
        }
        this.assistNode = selectionOnMessageSend;
        if (!this.diet) {
            this.selectionNodeFoundLevel = 1;
            this.lastIgnoredToken = -1;
        }
        this.isOrphanCompletionNode = true;
        return selectionOnMessageSend;
    }

    @Override
    public ReferenceExpression newReferenceExpression() {
        if (this.identifierStack[this.identifierPtr] != assistIdentifier()) {
            return super.newReferenceExpression();
        }
        SelectionOnReferenceExpressionName selectionOnReferenceExpressionName = new SelectionOnReferenceExpressionName(this.scanner);
        this.assistNode = selectionOnReferenceExpressionName;
        return selectionOnReferenceExpressionName;
    }

    @Override
    public CompilationUnitDeclaration parse(ICompilationUnit iCompilationUnit, CompilationResult compilationResult, int i10, int i11) {
        if (i11 == -1) {
            return super.parse(iCompilationUnit, compilationResult, i10, i11);
        }
        this.selectionStart = i10;
        this.selectionEnd = i11;
        SelectionScanner selectionScanner = (SelectionScanner) this.scanner;
        selectionScanner.selectionIdentifier = null;
        selectionScanner.selectionStart = i10;
        selectionScanner.selectionEnd = i11;
        return super.parse(iCompilationUnit, compilationResult, -1, -1);
    }

    @Override
    public int resumeAfterRecovery() {
        if (this.assistNode != null && !(this.referenceContext instanceof CompilationUnitDeclaration)) {
            this.currentElement.preserveEnclosingBlocks();
            if (requireExtendedRecovery()) {
                if (this.unstackedAct != 16966) {
                    return 2;
                }
                return super.resumeAfterRecovery();
            }
            if (this.currentElement.enclosingType() == null) {
                RecoveredElement recoveredElement = this.currentElement;
                if (!(recoveredElement instanceof RecoveredType)) {
                    resetStacks();
                    return 0;
                }
                TypeDeclaration typeDeclaration = ((RecoveredType) recoveredElement).typeDeclaration;
                if (typeDeclaration != null && typeDeclaration.allocation == this.assistNode) {
                    resetStacks();
                    return 0;
                }
            }
        }
        return super.resumeAfterRecovery();
    }

    public void selectionIdentifierCheck() {
        checkRecoveredType();
    }

    @Override
    public void setAssistIdentifier(char[] cArr) {
        ((SelectionScanner) this.scanner).selectionIdentifier = cArr;
    }

    @Override
    public String toString() {
        String str = String.valueOf(Util.EMPTY_STRING) + "elementKindStack : int[] = {";
        for (int i10 = 0; i10 <= this.elementPtr; i10++) {
            str = String.valueOf(str) + String.valueOf(this.elementKindStack[i10]) + DocLint.SEPARATOR;
        }
        StringBuilder sb2 = new StringBuilder(String.valueOf(String.valueOf(str) + "}\n"));
        sb2.append("elementInfoStack : int[] = {");
        String sb3 = sb2.toString();
        for (int i11 = 0; i11 <= this.elementPtr; i11++) {
            sb3 = String.valueOf(sb3) + String.valueOf(this.elementInfoStack[i11]) + DocLint.SEPARATOR;
        }
        return String.valueOf(String.valueOf(sb3) + "}\n") + super.toString();
    }

    @Override
    public Argument typeElidedArgument() {
        if (this.identifierStack[this.identifierPtr] != assistIdentifier()) {
            return super.typeElidedArgument();
        }
        this.identifierLengthPtr--;
        char[][] cArr = this.identifierStack;
        int i10 = this.identifierPtr;
        char[] cArr2 = cArr[i10];
        long[] jArr = this.identifierPositionStack;
        this.identifierPtr = i10 - 1;
        long j10 = jArr[i10];
        SelectionOnArgumentName selectionOnArgumentName = new SelectionOnArgumentName(cArr2, j10, null, 0, true);
        selectionOnArgumentName.declarationSourceStart = (int) (j10 >>> 32);
        this.assistNode = selectionOnArgumentName;
        return selectionOnArgumentName;
    }

    @Override
    public void updateRecoveryState() {
        RecoveredElement recoveredElement;
        this.currentElement.updateFromParserState();
        selectionIdentifierCheck();
        attachOrphanCompletionNode();
        if (this.assistNode != null && (recoveredElement = this.currentElement) != null) {
            recoveredElement.preserveEnclosingBlocks();
        }
        recoveryTokenCheck();
    }

    @Override
    public SelectionParser createSnapShotParser() {
        return new SelectionParser(this.problemReporter);
    }
}
