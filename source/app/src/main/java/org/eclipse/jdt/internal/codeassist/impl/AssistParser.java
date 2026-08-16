package org.eclipse.jdt.internal.codeassist.impl;

import java.util.HashSet;
import org.eclipse.jdt.core.compiler.InvalidInputException;
import org.eclipse.jdt.internal.compiler.CompilationResult;
import org.eclipse.jdt.internal.compiler.ast.ASTNode;
import org.eclipse.jdt.internal.compiler.ast.AbstractMethodDeclaration;
import org.eclipse.jdt.internal.compiler.ast.AbstractVariableDeclaration;
import org.eclipse.jdt.internal.compiler.ast.Annotation;
import org.eclipse.jdt.internal.compiler.ast.Block;
import org.eclipse.jdt.internal.compiler.ast.CompilationUnitDeclaration;
import org.eclipse.jdt.internal.compiler.ast.ConstructorDeclaration;
import org.eclipse.jdt.internal.compiler.ast.ExplicitConstructorCall;
import org.eclipse.jdt.internal.compiler.ast.Expression;
import org.eclipse.jdt.internal.compiler.ast.FieldDeclaration;
import org.eclipse.jdt.internal.compiler.ast.ForeachStatement;
import org.eclipse.jdt.internal.compiler.ast.ImportReference;
import org.eclipse.jdt.internal.compiler.ast.Initializer;
import org.eclipse.jdt.internal.compiler.ast.LambdaExpression;
import org.eclipse.jdt.internal.compiler.ast.LocalDeclaration;
import org.eclipse.jdt.internal.compiler.ast.MessageSend;
import org.eclipse.jdt.internal.compiler.ast.MethodDeclaration;
import org.eclipse.jdt.internal.compiler.ast.ModuleDeclaration;
import org.eclipse.jdt.internal.compiler.ast.ModuleReference;
import org.eclipse.jdt.internal.compiler.ast.NameReference;
import org.eclipse.jdt.internal.compiler.ast.RequiresStatement;
import org.eclipse.jdt.internal.compiler.ast.Statement;
import org.eclipse.jdt.internal.compiler.ast.SuperReference;
import org.eclipse.jdt.internal.compiler.ast.TypeDeclaration;
import org.eclipse.jdt.internal.compiler.ast.TypeReference;
import org.eclipse.jdt.internal.compiler.impl.ReferenceContext;
import org.eclipse.jdt.internal.compiler.parser.Parser;
import org.eclipse.jdt.internal.compiler.parser.RecoveredBlock;
import org.eclipse.jdt.internal.compiler.parser.RecoveredElement;
import org.eclipse.jdt.internal.compiler.parser.RecoveredExportsStatement;
import org.eclipse.jdt.internal.compiler.parser.RecoveredField;
import org.eclipse.jdt.internal.compiler.parser.RecoveredInitializer;
import org.eclipse.jdt.internal.compiler.parser.RecoveredLocalVariable;
import org.eclipse.jdt.internal.compiler.parser.RecoveredMethod;
import org.eclipse.jdt.internal.compiler.parser.RecoveredStatement;
import org.eclipse.jdt.internal.compiler.parser.RecoveredType;
import org.eclipse.jdt.internal.compiler.parser.RecoveredUnit;
import org.eclipse.jdt.internal.compiler.parser.Scanner;
import org.eclipse.jdt.internal.compiler.problem.AbortCompilation;
import org.eclipse.jdt.internal.compiler.problem.ProblemReporter;

public abstract class AssistParser extends Parser {
    static final boolean $assertionsDisabled = false;
    protected static final int ASSIST_PARSER = 512;
    protected static final int BLOCK_BODY = 1;
    protected static final int EXPRESSION_BODY = 0;
    protected static final int ElementStackIncrement = 100;
    protected static final int K_ATTRIBUTE_VALUE_DELIMITER = 517;
    protected static final int K_ENUM_CONSTANT_DELIMITER = 518;
    protected static final int K_FIELD_INITIALIZER_DELIMITER = 516;
    protected static final int K_LAMBDA_EXPRESSION_DELIMITER = 519;
    protected static final int K_METHOD_DELIMITER = 515;
    protected static final int K_MODULE_INFO_DELIMITER = 520;
    protected static final int K_SELECTOR = 513;
    protected static final int K_TYPE_DELIMITER = 514;
    protected static final int NO_BODY = 0;
    protected static final int[] RECOVERY_TOKENS = {26, 25, 33, 66};
    protected static final int SUPER_CONSTRUCTOR = -2;
    protected static final int THIS_CONSTRUCTOR = -1;
    protected static final int WITH_BODY = 1;
    public ASTNode assistNode;
    int[] blockStarts;
    protected int bracketDepth;
    protected int[] elementInfoStack;
    protected int[] elementKindStack;
    protected Object[] elementObjectInfoStack;
    protected int elementPtr;
    protected boolean isFirst;
    public boolean isOrphanCompletionNode;
    private boolean lastArrowAssociatedWithCase;
    protected int lastModifiers;
    protected int lastModifiersStart;
    protected int previousIdentifierPtr;
    protected int previousInfo;
    protected int previousKind;
    protected Object previousObjectInfo;
    protected int previousToken;
    private boolean resumedAfterRepair;
    int[] snapShotPositions;
    int snapShotPtr;
    AssistParser[] snapShotStack;

    public AssistParser(ProblemReporter problemReporter) {
        super(problemReporter, true);
        this.resumedAfterRepair = false;
        this.lastModifiers = 0;
        this.lastModifiersStart = -1;
        this.blockStarts = new int[30];
        this.elementKindStack = new int[100];
        this.elementInfoStack = new int[100];
        this.elementObjectInfoStack = new Object[100];
        this.isFirst = false;
        this.snapShotStack = new AssistParser[3];
        this.snapShotPositions = new int[3];
        this.snapShotPtr = -1;
        this.lastArrowAssociatedWithCase = false;
        this.javadocParser.checkDocComment = false;
        setMethodsFullRecovery(false);
        setStatementsRecovery(false);
    }

    private void adjustBracket(int i10) {
        if (i10 != 6 && i10 != 23) {
            if (i10 != 25 && i10 != 33) {
                if (i10 != 49) {
                    if (i10 != 66) {
                        return;
                    }
                }
            }
            this.bracketDepth--;
            return;
        }
        this.bracketDepth++;
    }

    private void initModuleInfo(RecoveredElement recoveredElement) {
        if (recoveredElement instanceof RecoveredUnit) {
            RecoveredUnit recoveredUnit = (RecoveredUnit) recoveredElement;
            if (recoveredUnit.unitDeclaration.isModuleInfo()) {
                for (int i10 = 0; i10 <= this.astPtr; i10++) {
                    ASTNode aSTNode = this.astStack[i10];
                    if (aSTNode instanceof ModuleDeclaration) {
                        recoveredUnit.add((ModuleDeclaration) aSTNode, this.bracketDepth);
                        return;
                    }
                }
            }
        }
    }

    public void addNewSnapShot(int i10) {
        int i11 = this.snapShotPtr + 1;
        this.snapShotPtr = i11;
        AssistParser[] assistParserArr = this.snapShotStack;
        if (i11 >= assistParserArr.length) {
            int length = assistParserArr.length;
            int i12 = length + 3;
            AssistParser[] assistParserArr2 = new AssistParser[i12];
            this.snapShotStack = assistParserArr2;
            System.arraycopy(assistParserArr, 0, assistParserArr2, 0, length);
            int[] iArr = this.snapShotPositions;
            int[] iArr2 = new int[i12];
            this.snapShotPositions = iArr2;
            System.arraycopy(iArr, 0, iArr2, 0, length);
        }
        this.snapShotStack[this.snapShotPtr] = createSnapShotParser();
        this.snapShotPositions[this.snapShotPtr] = i10;
    }

    public abstract char[] assistIdentifier();

    public boolean assistNodeNeedsStacking() {
        return false;
    }

    public ASTNode assistNodeParent() {
        return null;
    }

    public Object becomeSimpleParser() {
        return null;
    }

    public int bodyEnd(AbstractMethodDeclaration abstractMethodDeclaration) {
        return abstractMethodDeclaration.bodyEnd;
    }

    @Override
    public RecoveredElement buildInitialRecoveryState() {
        RecoveredElement recoveredElement;
        int i10;
        int i11;
        ReferenceContext referenceContext = this.referenceContext;
        if (referenceContext instanceof CompilationUnitDeclaration) {
            RecoveredElement buildInitialRecoveryState = super.buildInitialRecoveryState();
            flushAssistState();
            flushElementStack();
            this.snapShotPtr = -1;
            initModuleInfo(buildInitialRecoveryState);
            return buildInitialRecoveryState;
        }
        this.lastCheckPoint = 0;
        ASTNode aSTNode = null;
        if (referenceContext instanceof AbstractMethodDeclaration) {
            recoveredElement = new RecoveredMethod((AbstractMethodDeclaration) referenceContext, null, 0, this);
            this.lastCheckPoint = ((AbstractMethodDeclaration) this.referenceContext).bodyStart;
        } else {
            if (referenceContext instanceof TypeDeclaration) {
                FieldDeclaration[] fieldDeclarationArr = ((TypeDeclaration) referenceContext).fields;
                int length = fieldDeclarationArr == null ? 0 : fieldDeclarationArr.length;
                for (int i12 = 0; i12 < length; i12++) {
                    FieldDeclaration fieldDeclaration = fieldDeclarationArr[i12];
                    if (fieldDeclaration != null && fieldDeclaration.getKind() == 2) {
                        int i13 = fieldDeclaration.declarationSourceStart;
                        Scanner scanner = this.scanner;
                        int i14 = scanner.initialPosition;
                        if (i13 <= i14 && i14 <= (i10 = fieldDeclaration.declarationSourceEnd) && scanner.eofPosition <= i10 + 1) {
                            recoveredElement = new RecoveredInitializer(fieldDeclaration, null, 1, this);
                            this.lastCheckPoint = fieldDeclaration.declarationSourceStart;
                            break;
                        }
                    }
                }
            }
            recoveredElement = null;
        }
        if (recoveredElement == null) {
            return recoveredElement;
        }
        Block block = new Block(0);
        int i15 = this.blockStarts[0];
        block.sourceStart = i15;
        RecoveredElement add = recoveredElement.add(block, 1);
        int i16 = 0;
        ASTNode aSTNode2 = null;
        int i17 = 1;
        while (i16 <= this.astPtr) {
            aSTNode2 = this.astStack[i16];
            int i18 = aSTNode2.sourceStart;
            int i19 = i17;
            while (true) {
                if (i17 > this.realBlockPtr) {
                    i17 = i19;
                    break;
                }
                int i20 = this.blockStarts[i17];
                if (i20 >= 0) {
                    if (i20 > i18) {
                        break;
                    }
                    if (i20 != i15) {
                        Block block2 = new Block(0);
                        i11 = this.blockStarts[i17];
                        block2.sourceStart = i11;
                        add = add.add(block2, 1);
                        i15 = i11;
                    }
                } else {
                    if ((-i20) > i18) {
                        break;
                    }
                    Block block3 = new Block(0);
                    i11 = -this.blockStarts[i17];
                    block3.sourceStart = i11;
                    add = add.add(block3, 1);
                    i15 = i11;
                }
                i19 = i17 + 1;
                i17 = i19;
            }
            if (aSTNode2 instanceof LocalDeclaration) {
                LocalDeclaration localDeclaration = (LocalDeclaration) aSTNode2;
                if (localDeclaration.declarationSourceEnd == 0) {
                    add = add.add(localDeclaration, 0);
                    Expression expression = localDeclaration.initialization;
                    if (expression == null) {
                        this.lastCheckPoint = localDeclaration.sourceEnd + 1;
                    } else {
                        this.lastCheckPoint = expression.sourceEnd + 1;
                    }
                } else {
                    if (localDeclaration.isArgument()) {
                        add.add(localDeclaration, 0);
                    } else {
                        add = add.add(localDeclaration, 0);
                    }
                    this.lastCheckPoint = localDeclaration.declarationSourceEnd + 1;
                }
            } else if (aSTNode2 instanceof AbstractMethodDeclaration) {
                AbstractMethodDeclaration abstractMethodDeclaration = (AbstractMethodDeclaration) aSTNode2;
                if (abstractMethodDeclaration.declarationSourceEnd == 0) {
                    add = add.add(abstractMethodDeclaration, 0);
                    this.lastCheckPoint = abstractMethodDeclaration.bodyStart;
                } else {
                    add = add.add(abstractMethodDeclaration, 0);
                    this.lastCheckPoint = abstractMethodDeclaration.declarationSourceEnd + 1;
                }
            } else if (aSTNode2 instanceof Initializer) {
                Initializer initializer = (Initializer) aSTNode2;
                if (initializer.declarationSourceEnd == 0) {
                    add = add.add((FieldDeclaration) initializer, 1);
                    this.lastCheckPoint = initializer.sourceStart;
                } else {
                    add = add.add((FieldDeclaration) initializer, 0);
                    this.lastCheckPoint = initializer.declarationSourceEnd + 1;
                }
            } else if (aSTNode2 instanceof FieldDeclaration) {
                FieldDeclaration fieldDeclaration2 = (FieldDeclaration) aSTNode2;
                if (fieldDeclaration2.declarationSourceEnd == 0) {
                    add = add.add(fieldDeclaration2, 0);
                    Expression expression2 = fieldDeclaration2.initialization;
                    if (expression2 == null) {
                        this.lastCheckPoint = fieldDeclaration2.sourceEnd + 1;
                    } else {
                        this.lastCheckPoint = expression2.sourceEnd + 1;
                    }
                } else {
                    add = add.add(fieldDeclaration2, 0);
                    this.lastCheckPoint = fieldDeclaration2.declarationSourceEnd + 1;
                }
            } else if (aSTNode2 instanceof TypeDeclaration) {
                TypeDeclaration typeDeclaration = (TypeDeclaration) aSTNode2;
                if (typeDeclaration.declarationSourceEnd == 0) {
                    add = add.add(typeDeclaration, 0);
                    this.lastCheckPoint = typeDeclaration.bodyStart;
                } else {
                    add = add.add(typeDeclaration, 0);
                    this.lastCheckPoint = typeDeclaration.declarationSourceEnd + 1;
                }
            } else if (this.assistNode != null && (aSTNode2 instanceof Statement)) {
                Statement statement = (Statement) aSTNode2;
                if (statement instanceof Expression) {
                    Expression expression3 = (Expression) statement;
                    if (expression3.isTrulyExpression() && !expression3.statementExpression()) {
                    }
                }
                ASTNode aSTNode3 = this.assistNode;
                if (aSTNode3.sourceStart >= statement.sourceStart && aSTNode3.sourceEnd <= statement.sourceEnd) {
                    add.add(statement, 0);
                    this.lastCheckPoint = statement.sourceEnd + 1;
                    this.isOrphanCompletionNode = false;
                } else if ((statement instanceof ForeachStatement) && ((ForeachStatement) statement).action == null) {
                    add = add.add(statement, 0);
                    this.lastCheckPoint = statement.sourceEnd + 1;
                }
            } else if (aSTNode2 instanceof ImportReference) {
                ImportReference importReference = (ImportReference) aSTNode2;
                add = add.add(importReference, 0);
                this.lastCheckPoint = importReference.declarationSourceEnd + 1;
            }
            i16++;
            aSTNode = aSTNode2;
        }
        if (this.currentToken == 33) {
            if (isIndirectlyInsideLambdaExpression()) {
                this.ignoreNextClosingBrace = true;
            } else {
                this.currentToken = 0;
            }
        }
        ASTNode aSTNode4 = this.assistNode;
        int i21 = aSTNode4 == null ? this.lastCheckPoint : aSTNode4.sourceStart;
        boolean z10 = (aSTNode instanceof LambdaExpression) && (((LambdaExpression) aSTNode2).body() instanceof Block);
        while (i17 <= this.realBlockPtr) {
            int i22 = this.blockStarts[i17];
            if (i22 >= 0) {
                if ((i22 < i21 || z10) && i22 != i15) {
                    Block block4 = new Block(0);
                    int i23 = this.blockStarts[i17];
                    block4.sourceStart = i23;
                    add = add.add(block4, 1);
                    z10 = false;
                    i15 = i23;
                }
            } else if (i22 < i21) {
                Block block5 = new Block(0);
                i15 = -this.blockStarts[i17];
                block5.sourceStart = i15;
                add = add.add(block5, 1);
            }
            i17++;
        }
        return add;
    }

    public void commit(boolean z10) {
        int i10 = this.scanner.startPosition;
        int i11 = this.snapShotPtr;
        if (i11 == -1) {
            addNewSnapShot(i10);
        } else {
            if ((z10 ? i10 : this.blockStarts[this.realBlockPtr]) != this.snapShotPositions[i11]) {
                addNewSnapShot(i10);
            }
        }
        this.snapShotStack[this.snapShotPtr].copyState(this);
    }

    @Override
    public void consumeAnnotationTypeDeclarationHeader() {
        super.consumeAnnotationTypeDeclarationHeader();
        pushOnElementStack(514);
    }

    @Override
    public void consumeBlock() {
        super.consumeBlock();
        if (this.snapShotPtr <= -1 || !(this.astStack[this.astPtr] instanceof Block)) {
            return;
        }
        popSnapShot();
    }

    @Override
    public void consumeBlockStatement() {
        super.consumeBlockStatement();
        if (!triggerRecoveryUponLambdaClosure((Statement) this.astStack[this.astPtr], true) || this.currentElement == null) {
            return;
        }
        this.restartRecovery = true;
    }

    @Override
    public void consumeBlockStatements() {
        super.consumeBlockStatements();
        if (!triggerRecoveryUponLambdaClosure((Statement) this.astStack[this.astPtr], true) || this.currentElement == null) {
            return;
        }
        this.restartRecovery = true;
    }

    @Override
    public void consumeClassBodyDeclaration() {
        popElement(515);
        super.consumeClassBodyDeclaration();
    }

    @Override
    public void consumeClassBodyopt() {
        super.consumeClassBodyopt();
        popElement(513);
    }

    @Override
    public void consumeClassHeader() {
        super.consumeClassHeader();
        pushOnElementStack(514);
    }

    @Override
    public void consumeConstructorBody() {
        super.consumeConstructorBody();
        popElement(515);
    }

    @Override
    public void consumeConstructorHeader() {
        super.consumeConstructorHeader();
        pushOnElementStack(515);
    }

    @Override
    public void consumeEnhancedForStatementHeaderInit(boolean z10) {
        super.consumeEnhancedForStatementHeaderInit(z10);
        RecoveredElement recoveredElement = this.currentElement;
        if (recoveredElement != null) {
            LocalDeclaration localDeclaration = ((ForeachStatement) this.astStack[this.astPtr]).elementVariable;
            this.lastCheckPoint = localDeclaration.sourceEnd + 1;
            this.currentElement = recoveredElement.add(localDeclaration, 0);
        }
    }

    @Override
    public void consumeEnterAnonymousClassBody(boolean z10) {
        super.consumeEnterAnonymousClassBody(z10);
        popElement(513);
        pushOnElementStack(514);
    }

    @Override
    public void consumeEnterMemberValue() {
        super.consumeEnterMemberValue();
        pushOnElementStack(517, this.identifierPtr);
    }

    @Override
    public void consumeEnumConstantHeader() {
        if (this.currentToken == 49) {
            popElement(518);
            pushOnElementStack(518, 1);
            pushOnElementStack(516);
            pushOnElementStack(514);
        }
        super.consumeEnumConstantHeader();
        if (!triggerRecoveryUponLambdaClosure((Statement) this.astStack[this.astPtr], true) || this.currentElement == null) {
            return;
        }
        this.restartRecovery = true;
    }

    @Override
    public void consumeEnumConstantHeaderName() {
        super.consumeEnumConstantHeaderName();
        pushOnElementStack(518);
    }

    @Override
    public void consumeEnumConstantNoClassBody() {
        popElement(518);
        super.consumeEnumConstantNoClassBody();
    }

    @Override
    public void consumeEnumConstantWithClassBody() {
        popElement(514);
        popElement(516);
        popElement(518);
        super.consumeEnumConstantWithClassBody();
    }

    @Override
    public void consumeEnumHeader() {
        super.consumeEnumHeader();
        pushOnElementStack(514);
    }

    @Override
    public void consumeExitMemberValue() {
        super.consumeExitMemberValue();
        popElement(517);
    }

    @Override
    public void consumeExplicitConstructorInvocation(int i10, int i11) {
        super.consumeExplicitConstructorInvocation(i10, i11);
        popElement(513);
    }

    @Override
    public void consumeFieldDeclaration() {
        super.consumeFieldDeclaration();
        if (triggerRecoveryUponLambdaClosure((Statement) this.astStack[this.astPtr], true)) {
            if (this.currentElement instanceof RecoveredType) {
                popUntilElement(514);
            }
            if (this.currentElement != null) {
                this.restartRecovery = true;
            }
        }
    }

    @Override
    public void consumeForceNoDiet() {
        super.consumeForceNoDiet();
        if (isInsideMethod()) {
            return;
        }
        if (topKnownElementKind(512) != 518) {
            if (topKnownElementKind(512, 2) != 518) {
                pushOnElementStack(516);
            }
        } else if (topKnownElementInfo(512) != 0) {
            pushOnElementStack(516);
        }
    }

    @Override
    public void consumeInterfaceHeader() {
        super.consumeInterfaceHeader();
        pushOnElementStack(514);
    }

    @Override
    public void consumeMethodBody() {
        super.consumeMethodBody();
        popElement(515);
    }

    @Override
    public void consumeMethodDeclaration(boolean z10, boolean z11) {
        if (!z10) {
            popElement(515);
        }
        super.consumeMethodDeclaration(z10, z11);
        if (this.snapShotPtr <= -1 || !(this.astStack[this.astPtr] instanceof AbstractMethodDeclaration)) {
            return;
        }
        popSnapShot();
    }

    @Override
    public void consumeMethodHeader() {
        super.consumeMethodHeader();
        pushOnElementStack(515);
    }

    @Override
    public void consumeMethodInvocationName() {
        super.consumeMethodInvocationName();
        popElement(513);
        MessageSend messageSend = (MessageSend) this.expressionStack[this.expressionPtr];
        if (messageSend == this.assistNode) {
            this.lastCheckPoint = messageSend.sourceEnd + 1;
        }
    }

    @Override
    public void consumeMethodInvocationNameWithTypeArguments() {
        super.consumeMethodInvocationNameWithTypeArguments();
        popElement(513);
        MessageSend messageSend = (MessageSend) this.expressionStack[this.expressionPtr];
        if (messageSend == this.assistNode) {
            this.lastCheckPoint = messageSend.sourceEnd + 1;
        }
    }

    @Override
    public void consumeMethodInvocationPrimary() {
        super.consumeMethodInvocationPrimary();
        popElement(513);
        MessageSend messageSend = (MessageSend) this.expressionStack[this.expressionPtr];
        if (messageSend == this.assistNode) {
            this.lastCheckPoint = messageSend.sourceEnd + 1;
        }
    }

    @Override
    public void consumeMethodInvocationPrimaryWithTypeArguments() {
        super.consumeMethodInvocationPrimaryWithTypeArguments();
        popElement(513);
        MessageSend messageSend = (MessageSend) this.expressionStack[this.expressionPtr];
        if (messageSend == this.assistNode) {
            this.lastCheckPoint = messageSend.sourceEnd + 1;
        }
    }

    @Override
    public void consumeMethodInvocationSuper() {
        super.consumeMethodInvocationSuper();
        popElement(513);
        MessageSend messageSend = (MessageSend) this.expressionStack[this.expressionPtr];
        if (messageSend == this.assistNode) {
            this.lastCheckPoint = messageSend.sourceEnd + 1;
        }
    }

    @Override
    public void consumeMethodInvocationSuperWithTypeArguments() {
        super.consumeMethodInvocationSuperWithTypeArguments();
        popElement(513);
        MessageSend messageSend = (MessageSend) this.expressionStack[this.expressionPtr];
        if (messageSend == this.assistNode) {
            this.lastCheckPoint = messageSend.sourceEnd + 1;
        }
    }

    @Override
    public void consumeModuleDeclaration() {
        super.consumeModuleDeclaration();
        popElement(520);
    }

    @Override
    public void consumeModuleHeader() {
        pushOnElementStack(520);
        int indexOfAssistIdentifier = indexOfAssistIdentifier();
        if (indexOfAssistIdentifier < 0) {
            super.consumeModuleHeader();
            return;
        }
        int i10 = this.identifierLengthStack[this.identifierLengthPtr];
        char[][] identifierSubSet = identifierSubSet(indexOfAssistIdentifier + 1);
        this.identifierLengthPtr--;
        int i11 = this.identifierPtr - i10;
        this.identifierPtr = i11;
        long[] jArr = new long[i10];
        System.arraycopy(this.identifierPositionStack, i11 + 1, jArr, 0, i10);
        ModuleDeclaration createAssistModuleDeclaration = createAssistModuleDeclaration(this.compilationUnit.compilationResult, identifierSubSet, jArr);
        this.compilationUnit.moduleDeclaration = createAssistModuleDeclaration;
        this.assistNode = createAssistModuleDeclaration;
        int i12 = createAssistModuleDeclaration.sourceEnd;
        this.lastCheckPoint = i12 + 1;
        int[] iArr = this.intStack;
        int i13 = this.intPtr;
        this.intPtr = i13 - 1;
        createAssistModuleDeclaration.declarationSourceStart = iArr[i13];
        createAssistModuleDeclaration.bodyStart = i12 + 1;
        pushOnAstStack(createAssistModuleDeclaration);
        this.listLength = 0;
        RecoveredElement recoveredElement = this.currentElement;
        if (recoveredElement != null) {
            this.lastCheckPoint = createAssistModuleDeclaration.bodyStart;
            this.currentElement = recoveredElement.add(createAssistModuleDeclaration, 0);
            this.lastIgnoredToken = -1;
        }
    }

    @Override
    public void consumeNestedLambda() {
        super.consumeNestedLambda();
        pushOnElementStack(519, 0, (LambdaExpression) this.astStack[this.astPtr]);
    }

    @Override
    public void consumeNestedMethod() {
        super.consumeNestedMethod();
        if (isInsideMethod()) {
            return;
        }
        pushOnElementStack(515);
    }

    @Override
    public void consumeOpenBlock() {
        super.consumeOpenBlock();
        int[] iArr = this.blockStarts;
        int length = iArr.length;
        if (this.realBlockPtr >= length) {
            int[] iArr2 = new int[length + 255];
            this.blockStarts = iArr2;
            System.arraycopy(iArr, 0, iArr2, 0, length);
        }
        this.blockStarts[this.realBlockPtr] = this.scanner.startPosition;
        if (requireExtendedRecovery() && this.currentToken == 49 && this.unstackedAct > 867) {
            int[] iArr3 = this.stack;
            int length2 = iArr3.length;
            int i10 = this.stateStackTop + 1;
            this.stateStackTop = i10;
            if (i10 >= length2 - 1) {
                int[] iArr4 = new int[length2 + 255];
                this.stack = iArr4;
                System.arraycopy(iArr3, 0, iArr4, 0, length2);
            }
            int[] iArr5 = this.stack;
            int i11 = this.stateStackTop;
            int i12 = i11 + 1;
            this.stateStackTop = i12;
            int i13 = this.unstackedAct;
            iArr5[i11] = i13;
            iArr5[i12] = Parser.tAction(i13, this.currentToken);
            commit(true);
            this.stateStackTop -= 2;
        }
    }

    public void consumeOpenFakeBlock() {
        super.consumeOpenBlock();
        int[] iArr = this.blockStarts;
        int length = iArr.length;
        if (this.realBlockPtr >= length) {
            int[] iArr2 = new int[length + 255];
            this.blockStarts = iArr2;
            System.arraycopy(iArr, 0, iArr2, 0, length);
        }
        this.blockStarts[this.realBlockPtr] = -this.scanner.startPosition;
    }

    @Override
    public void consumePackageDeclarationName() {
        int indexOfAssistIdentifier = indexOfAssistIdentifier();
        if (indexOfAssistIdentifier < 0) {
            super.consumePackageDeclarationName();
            return;
        }
        int i10 = this.identifierLengthStack[this.identifierLengthPtr];
        char[][] identifierSubSet = identifierSubSet(indexOfAssistIdentifier + 1);
        this.identifierLengthPtr--;
        int i11 = this.identifierPtr - i10;
        this.identifierPtr = i11;
        long[] jArr = new long[i10];
        System.arraycopy(this.identifierPositionStack, i11 + 1, jArr, 0, i10);
        ImportReference createAssistPackageReference = createAssistPackageReference(identifierSubSet, jArr);
        this.assistNode = createAssistPackageReference;
        this.lastCheckPoint = createAssistPackageReference.sourceEnd + 1;
        this.compilationUnit.currentPackage = createAssistPackageReference;
        if (this.currentToken == 26) {
            createAssistPackageReference.declarationSourceEnd = this.scanner.currentPosition - 1;
        } else {
            createAssistPackageReference.declarationSourceEnd = (int) jArr[i10 - 1];
        }
        int[] iArr = this.intStack;
        int i12 = this.intPtr;
        this.intPtr = i12 - 1;
        createAssistPackageReference.declarationSourceStart = iArr[i12];
        int flushCommentsDefinedPriorTo = flushCommentsDefinedPriorTo(createAssistPackageReference.declarationSourceEnd);
        createAssistPackageReference.declarationSourceEnd = flushCommentsDefinedPriorTo;
        if (this.currentElement != null) {
            this.lastCheckPoint = flushCommentsDefinedPriorTo + 1;
            this.restartRecovery = true;
        }
    }

    @Override
    public void consumePackageDeclarationNameWithModifiers() {
        int indexOfAssistIdentifier = indexOfAssistIdentifier();
        if (indexOfAssistIdentifier < 0) {
            super.consumePackageDeclarationNameWithModifiers();
            return;
        }
        int i10 = this.identifierLengthStack[this.identifierLengthPtr];
        char[][] identifierSubSet = identifierSubSet(indexOfAssistIdentifier + 1);
        this.identifierLengthPtr--;
        int i11 = this.identifierPtr - i10;
        this.identifierPtr = i11;
        long[] jArr = new long[i10];
        System.arraycopy(this.identifierPositionStack, i11 + 1, jArr, 0, i10);
        this.intPtr -= 2;
        ImportReference createAssistPackageReference = createAssistPackageReference(identifierSubSet, jArr);
        int[] iArr = this.expressionLengthStack;
        int i12 = this.expressionLengthPtr;
        this.expressionLengthPtr = i12 - 1;
        int i13 = iArr[i12];
        if (i13 != 0) {
            Expression[] expressionArr = this.expressionStack;
            int i14 = this.expressionPtr - i13;
            this.expressionPtr = i14;
            Annotation[] annotationArr = new Annotation[i13];
            createAssistPackageReference.annotations = annotationArr;
            System.arraycopy(expressionArr, i14 + 1, annotationArr, 0, i13);
        }
        this.assistNode = createAssistPackageReference;
        this.lastCheckPoint = createAssistPackageReference.sourceEnd + 1;
        this.compilationUnit.currentPackage = createAssistPackageReference;
        if (this.currentToken == 26) {
            createAssistPackageReference.declarationSourceEnd = this.scanner.currentPosition - 1;
        } else {
            createAssistPackageReference.declarationSourceEnd = (int) jArr[i13 - 1];
        }
        int[] iArr2 = this.intStack;
        int i15 = this.intPtr;
        this.intPtr = i15 - 1;
        createAssistPackageReference.declarationSourceStart = iArr2[i15];
        int flushCommentsDefinedPriorTo = flushCommentsDefinedPriorTo(createAssistPackageReference.declarationSourceEnd);
        createAssistPackageReference.declarationSourceEnd = flushCommentsDefinedPriorTo;
        if (this.currentElement != null) {
            this.lastCheckPoint = flushCommentsDefinedPriorTo + 1;
            this.restartRecovery = true;
        }
    }

    @Override
    public void consumeRestoreDiet() {
        super.consumeRestoreDiet();
        if (isInsideMethod()) {
            return;
        }
        popUntilElement(516);
        popElement(516);
    }

    @Override
    public void consumeSinglePkgName() {
        int indexOfAssistIdentifier = indexOfAssistIdentifier();
        if (indexOfAssistIdentifier < 0) {
            super.consumeSinglePkgName();
            return;
        }
        int i10 = this.identifierLengthStack[this.identifierLengthPtr];
        char[][] identifierSubSet = identifierSubSet(indexOfAssistIdentifier + 1);
        this.identifierLengthPtr--;
        int i11 = this.identifierPtr - i10;
        this.identifierPtr = i11;
        long[] jArr = new long[i10];
        System.arraycopy(this.identifierPositionStack, i11 + 1, jArr, 0, i10);
        ImportReference createAssistPackageVisibilityReference = createAssistPackageVisibilityReference(identifierSubSet, jArr);
        this.assistNode = createAssistPackageVisibilityReference;
        this.lastCheckPoint = createAssistPackageVisibilityReference.sourceEnd + 1;
        pushOnAstStack(createAssistPackageVisibilityReference);
        if (this.currentToken == 26) {
            createAssistPackageVisibilityReference.declarationSourceEnd = this.scanner.currentPosition - 1;
        } else {
            createAssistPackageVisibilityReference.declarationSourceEnd = (int) jArr[i10 - 1];
        }
    }

    @Override
    public void consumeSingleRequiresModuleName() {
        int indexOfAssistIdentifier = indexOfAssistIdentifier();
        if (indexOfAssistIdentifier < 0) {
            super.consumeSingleRequiresModuleName();
            return;
        }
        ModuleReference createAssistModuleReference = createAssistModuleReference(indexOfAssistIdentifier);
        this.assistNode = createAssistModuleReference;
        this.lastCheckPoint = createAssistModuleReference.sourceEnd + 1;
        RequiresStatement requiresStatement = new RequiresStatement(createAssistModuleReference);
        if (this.currentToken == 26) {
            requiresStatement.declarationSourceEnd = this.scanner.currentPosition - 1;
        } else {
            requiresStatement.declarationSourceEnd = createAssistModuleReference.sourceEnd;
        }
        requiresStatement.sourceStart = requiresStatement.declarationSourceStart;
        requiresStatement.declarationEnd = requiresStatement.declarationSourceEnd;
        int[] iArr = this.intStack;
        int i10 = this.intPtr;
        int i11 = i10 - 1;
        this.intPtr = i11;
        int i12 = iArr[i10];
        requiresStatement.modifiersSourceStart = i12;
        int i13 = requiresStatement.modifiers;
        int i14 = i10 - 2;
        this.intPtr = i14;
        requiresStatement.modifiers = iArr[i11] | i13;
        this.intPtr = i10 - 3;
        requiresStatement.declarationSourceStart = iArr[i14];
        if (i12 >= 0) {
            requiresStatement.declarationSourceStart = i12;
        }
        requiresStatement.sourceEnd = createAssistModuleReference.sourceEnd;
        pushOnAstStack(requiresStatement);
        RecoveredElement recoveredElement = this.currentElement;
        if (recoveredElement != null) {
            this.lastCheckPoint = requiresStatement.declarationSourceEnd + 1;
            this.currentElement = recoveredElement.add(requiresStatement, 0);
            this.lastIgnoredToken = -1;
        }
    }

    @Override
    public void consumeSingleStaticImportDeclarationName() {
        int indexOfAssistIdentifier = indexOfAssistIdentifier();
        if (indexOfAssistIdentifier < 0) {
            super.consumeSingleStaticImportDeclarationName();
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
        this.assistNode = createAssistImportReference;
        this.lastCheckPoint = createAssistImportReference.sourceEnd + 1;
        pushOnAstStack(createAssistImportReference);
        if (this.currentToken == 26) {
            createAssistImportReference.declarationSourceEnd = this.scanner.currentPosition - 1;
        } else {
            createAssistImportReference.declarationSourceEnd = (int) jArr[i10 - 1];
        }
        int[] iArr = this.intStack;
        int i12 = this.intPtr;
        this.intPtr = i12 - 1;
        createAssistImportReference.declarationSourceStart = iArr[i12];
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
    public void consumeSingleTargetModuleName() {
        int indexOfAssistIdentifier = indexOfAssistIdentifier();
        if (indexOfAssistIdentifier < 0) {
            super.consumeSingleTargetModuleName();
            return;
        }
        ModuleReference createAssistModuleReference = createAssistModuleReference(indexOfAssistIdentifier);
        this.assistNode = createAssistModuleReference;
        this.lastCheckPoint = createAssistModuleReference.sourceEnd + 1;
        pushOnAstStack(createAssistModuleReference);
        RecoveredElement recoveredElement = this.currentElement;
        if (recoveredElement instanceof RecoveredExportsStatement) {
            this.lastCheckPoint = createAssistModuleReference.sourceEnd + 1;
            this.currentElement = ((RecoveredExportsStatement) recoveredElement).add(createAssistModuleReference, 0);
            this.lastIgnoredToken = -1;
        }
    }

    @Override
    public void consumeSingleTypeImportDeclarationName() {
        int indexOfAssistIdentifier = indexOfAssistIdentifier();
        if (indexOfAssistIdentifier < 0) {
            super.consumeSingleTypeImportDeclarationName();
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
        this.assistNode = createAssistImportReference;
        this.lastCheckPoint = createAssistImportReference.sourceEnd + 1;
        pushOnAstStack(createAssistImportReference);
        if (this.currentToken == 26) {
            createAssistImportReference.declarationSourceEnd = this.scanner.currentPosition - 1;
        } else {
            createAssistImportReference.declarationSourceEnd = (int) jArr[i10 - 1];
        }
        int[] iArr = this.intStack;
        int i12 = this.intPtr;
        this.intPtr = i12 - 1;
        createAssistImportReference.declarationSourceStart = iArr[i12];
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
    public void consumeStaticInitializer() {
        super.consumeStaticInitializer();
        popElement(515);
    }

    @Override
    public void consumeStaticOnly() {
        super.consumeStaticOnly();
        pushOnElementStack(515);
    }

    @Override
    public void consumeToken(int i10) {
        if (98 == i10) {
            this.lastArrowAssociatedWithCase = this.caseFlagSet;
        }
        super.consumeToken(i10);
        if (this.isFirst) {
            this.isFirst = false;
            return;
        }
        if (isInsideMethod() || isInsideFieldInitialization() || isInsideAttributeValue() || isInsideEnumConstantnitialization()) {
            adjustBracket(i10);
            if (i10 == 23) {
                int i11 = this.previousToken;
                if (i11 == 22) {
                    pushOnElementStack(513, this.identifierPtr);
                } else if (i11 == 34) {
                    pushOnElementStack(513, -2);
                } else if (i11 != 35) {
                    switch (i11) {
                        case 14:
                        case 15:
                        case 16:
                            int i12 = this.identifierPtr;
                            if (i12 > -1) {
                                pushOnElementStack(513, i12);
                                break;
                            }
                            break;
                    }
                } else {
                    pushOnElementStack(513, -1);
                }
            } else if (i10 == 49 && this.previousToken == 98 && !this.lastArrowAssociatedWithCase) {
                popElement(519);
                pushOnElementStack(519, 1, this.previousObjectInfo);
            }
        } else if (isInsideModuleInfo()) {
            adjustBracket(i10);
        } else if (i10 == 33 && topKnownElementKind(512) == 514) {
            popElement(514);
        }
        this.previousToken = i10;
        if (i10 == 22) {
            this.previousIdentifierPtr = this.identifierPtr;
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
    public void copyState(Parser parser) {
        super.copyState(parser);
        AssistParser assistParser = (AssistParser) parser;
        this.previousToken = assistParser.previousToken;
        this.previousIdentifierPtr = assistParser.previousIdentifierPtr;
        this.lastModifiers = assistParser.lastModifiers;
        this.lastModifiersStart = assistParser.lastModifiersStart;
        this.bracketDepth = assistParser.bracketDepth;
        this.elementPtr = assistParser.elementPtr;
        int[] iArr = assistParser.blockStarts;
        int length = iArr.length;
        int[] iArr2 = new int[length];
        this.blockStarts = iArr2;
        System.arraycopy(iArr, 0, iArr2, 0, length);
        int[] iArr3 = assistParser.elementKindStack;
        int length2 = iArr3.length;
        int[] iArr4 = new int[length2];
        this.elementKindStack = iArr4;
        System.arraycopy(iArr3, 0, iArr4, 0, length2);
        int[] iArr5 = assistParser.elementInfoStack;
        int length3 = iArr5.length;
        int[] iArr6 = new int[length3];
        this.elementInfoStack = iArr6;
        System.arraycopy(iArr5, 0, iArr6, 0, length3);
        Object[] objArr = assistParser.elementObjectInfoStack;
        int length4 = objArr.length;
        Object[] objArr2 = new Object[length4];
        this.elementObjectInfoStack = objArr2;
        System.arraycopy(objArr, 0, objArr2, 0, length4);
        this.previousKind = assistParser.previousKind;
        this.previousInfo = assistParser.previousInfo;
        this.previousObjectInfo = assistParser.previousObjectInfo;
    }

    public abstract ImportReference createAssistImportReference(char[][] cArr, long[] jArr, int i10);

    public abstract ModuleDeclaration createAssistModuleDeclaration(CompilationResult compilationResult, char[][] cArr, long[] jArr);

    public abstract ModuleReference createAssistModuleReference(int i10);

    public abstract ImportReference createAssistPackageReference(char[][] cArr, long[] jArr);

    public abstract ImportReference createAssistPackageVisibilityReference(char[][] cArr, long[] jArr);

    public abstract TypeReference createParameterizedQualifiedAssistTypeReference(char[][] cArr, TypeReference[][] typeReferenceArr, char[] cArr2, TypeReference[] typeReferenceArr2, long[] jArr);

    public abstract TypeReference createParameterizedSingleAssistTypeReference(TypeReference[] typeReferenceArr, char[] cArr, long j10);

    public abstract NameReference createQualifiedAssistNameReference(char[][] cArr, char[] cArr2, long[] jArr);

    public abstract TypeReference createQualifiedAssistTypeReference(char[][] cArr, char[] cArr2, long[] jArr);

    public abstract NameReference createSingleAssistNameReference(char[] cArr, long j10);

    public abstract TypeReference createSingleAssistTypeReference(char[] cArr, long j10);

    public abstract AssistParser createSnapShotParser();

    public ASTNode enclosingNode() {
        return null;
    }

    public int fallBackToSpringForward(Statement statement) {
        int automatonState = automatonState();
        int i10 = this.currentToken;
        if (i10 == 61) {
            Scanner scanner = this.scanner;
            int length = scanner.source.length;
            ReferenceContext referenceContext = this.referenceContext;
            if (referenceContext instanceof AbstractMethodDeclaration) {
                length = ((AbstractMethodDeclaration) referenceContext).bodyEnd;
            }
            if (scanner.eofPosition >= length) {
                return 0;
            }
            shouldStackAssistNode();
            this.scanner.eofPosition = length;
            int nextToken = getNextToken();
            if (automatonWillShift(nextToken, automatonState)) {
                this.currentToken = nextToken;
                return 2;
            }
            this.scanner.ungetToken(nextToken);
        } else {
            this.scanner.ungetToken(i10);
            if (i10 == 33) {
                ignoreNextClosingBrace();
            }
        }
        int length2 = RECOVERY_TOKENS.length;
        for (int i11 = 0; i11 < length2; i11++) {
            int[] iArr = RECOVERY_TOKENS;
            if (automatonWillShift(iArr[i11], automatonState)) {
                this.currentToken = iArr[i11];
                return 2;
            }
        }
        int i12 = this.snapShotPtr;
        if (i12 == -1) {
            return 1;
        }
        copyState(this.snapShotStack[i12]);
        if (assistNodeNeedsStacking()) {
            this.currentToken = 26;
            return 2;
        }
        this.currentToken = this.scanner.fastForward(statement);
        return 2;
    }

    public void flushAssistState() {
        this.assistNode = null;
        this.isOrphanCompletionNode = false;
        setAssistIdentifier(null);
    }

    public void flushElementStack() {
        for (int i10 = 0; i10 <= this.elementPtr; i10++) {
            this.elementObjectInfoStack[i10] = null;
        }
        this.elementPtr = -1;
        this.previousKind = 0;
        this.previousInfo = 0;
        this.previousObjectInfo = null;
    }

    public TypeReference getAssistTypeReferenceForGenericType(int i10, int i11, int i12) {
        TypeReference createParameterizedQualifiedAssistTypeReference;
        TypeReference[] typeReferenceArr;
        if (i11 == 1 && i12 == 1) {
            int[] iArr = this.genericsLengthStack;
            int i13 = this.genericsLengthPtr;
            this.genericsLengthPtr = i13 - 1;
            int i14 = iArr[i13];
            if (i14 > -1) {
                typeReferenceArr = new TypeReference[i14];
                int i15 = this.genericsPtr - i14;
                this.genericsPtr = i15;
                System.arraycopy(this.genericsStack, i15 + 1, typeReferenceArr, 0, i14);
            } else {
                typeReferenceArr = TypeReference.NO_TYPE_ARGUMENTS;
            }
            long[] jArr = new long[i11];
            System.arraycopy(this.identifierPositionStack, this.identifierPtr, jArr, 0, i11);
            this.identifierPtr--;
            TypeReference createParameterizedSingleAssistTypeReference = createParameterizedSingleAssistTypeReference(typeReferenceArr, assistIdentifier(), jArr[0]);
            this.assistNode = createParameterizedSingleAssistTypeReference;
            this.lastCheckPoint = createParameterizedSingleAssistTypeReference.sourceEnd + 1;
            return createParameterizedSingleAssistTypeReference;
        }
        TypeReference[][] typeReferenceArr2 = new TypeReference[i12];
        char[][] cArr = new char[i12];
        long[] jArr2 = new long[i12];
        int i16 = i12;
        while (i16 > 0) {
            int[] iArr2 = this.genericsLengthStack;
            int i17 = this.genericsLengthPtr;
            this.genericsLengthPtr = i17 - 1;
            int i18 = iArr2[i17];
            if (i18 > 0) {
                int i19 = this.genericsPtr - i18;
                this.genericsPtr = i19;
                TypeReference[] typeReferenceArr3 = new TypeReference[i18];
                typeReferenceArr2[i16 - 1] = typeReferenceArr3;
                System.arraycopy(this.genericsStack, i19 + 1, typeReferenceArr3, 0, i18);
            }
            if (i11 != 1) {
                int i20 = this.identifierPtr - i11;
                this.identifierPtr = i20;
                int i21 = i16 - i11;
                System.arraycopy(this.identifierStack, i20 + 1, cArr, i21, i11);
                System.arraycopy(this.identifierPositionStack, this.identifierPtr + 1, jArr2, i21, i11);
            } else {
                int i22 = i16 - 1;
                char[][] cArr2 = this.identifierStack;
                int i23 = this.identifierPtr;
                cArr[i22] = cArr2[i23];
                long[] jArr3 = this.identifierPositionStack;
                this.identifierPtr = i23 - 1;
                jArr2[i22] = jArr3[i23];
            }
            i16 -= i11;
            if (i16 > 0) {
                int[] iArr3 = this.identifierLengthStack;
                int i24 = this.identifierLengthPtr;
                this.identifierLengthPtr = i24 - 1;
                i11 = iArr3[i24];
            }
        }
        int i25 = i12;
        for (int i26 = 0; i26 < i12; i26++) {
            if (cArr[i26] == assistIdentifier()) {
                i25 = i26;
            }
        }
        if (i25 == 0) {
            TypeReference[] typeReferenceArr4 = typeReferenceArr2[0];
            createParameterizedQualifiedAssistTypeReference = (typeReferenceArr4 == null || typeReferenceArr4.length <= 0) ? createSingleAssistTypeReference(assistIdentifier(), jArr2[0]) : createParameterizedSingleAssistTypeReference(typeReferenceArr4, assistIdentifier(), jArr2[0]);
        } else {
            TypeReference[] typeReferenceArr5 = typeReferenceArr2[i25];
            char[][] cArr3 = new char[i25];
            System.arraycopy(cArr, 0, cArr3, 0, i25);
            TypeReference[][] typeReferenceArr6 = new TypeReference[i25];
            System.arraycopy(typeReferenceArr2, 0, typeReferenceArr6, 0, i25);
            boolean z10 = false;
            for (int i27 = 0; i27 < i25; i27++) {
                if (typeReferenceArr6[i27] != null) {
                    z10 = true;
                }
            }
            createParameterizedQualifiedAssistTypeReference = (z10 || (typeReferenceArr5 != null && typeReferenceArr5.length > 0)) ? createParameterizedQualifiedAssistTypeReference(cArr3, typeReferenceArr6, assistIdentifier(), typeReferenceArr5, jArr2) : createQualifiedAssistTypeReference(cArr3, assistIdentifier(), jArr2);
        }
        this.assistNode = createParameterizedQualifiedAssistTypeReference;
        this.lastCheckPoint = createParameterizedQualifiedAssistTypeReference.sourceEnd + 1;
        return createParameterizedQualifiedAssistTypeReference;
    }

    public int getNextToken() {
        try {
            return this.scanner.getNextToken();
        } catch (InvalidInputException unused) {
            return 61;
        }
    }

    @Override
    public TypeReference getTypeReference(int i10) {
        TypeReference createQualifiedAssistTypeReference;
        int indexOfAssistIdentifier = indexOfAssistIdentifier(true);
        if (indexOfAssistIdentifier < 0) {
            return super.getTypeReference(i10);
        }
        int[] iArr = this.identifierLengthStack;
        int i11 = this.identifierLengthPtr;
        int i12 = iArr[i11];
        int[] iArr2 = this.genericsIdentifiersLengthStack;
        int i13 = this.genericsIdentifiersLengthPtr;
        this.genericsIdentifiersLengthPtr = i13 - 1;
        int i14 = iArr2[i13];
        if (i12 != i14 || this.genericsLengthStack[this.genericsLengthPtr] != 0) {
            this.identifierLengthPtr = i11 - 1;
            return getAssistTypeReferenceForGenericType(i10, i12, i14);
        }
        char[][] identifierSubSet = identifierSubSet(indexOfAssistIdentifier);
        this.identifierLengthPtr--;
        int i15 = this.identifierPtr - i12;
        this.identifierPtr = i15;
        long[] jArr = new long[i12];
        System.arraycopy(this.identifierPositionStack, i15 + 1, jArr, 0, i12);
        if (indexOfAssistIdentifier == 0) {
            this.genericsLengthPtr--;
            createQualifiedAssistTypeReference = createSingleAssistTypeReference(assistIdentifier(), jArr[0]);
        } else {
            this.genericsLengthPtr--;
            createQualifiedAssistTypeReference = createQualifiedAssistTypeReference(identifierSubSet, assistIdentifier(), jArr);
        }
        this.assistNode = createQualifiedAssistTypeReference;
        this.lastCheckPoint = createQualifiedAssistTypeReference.sourceEnd + 1;
        return createQualifiedAssistTypeReference;
    }

    @Override
    public NameReference getUnspecifiedReferenceOptimized() {
        int indexOfAssistIdentifier = indexOfAssistIdentifier();
        if (indexOfAssistIdentifier < 0) {
            return super.getUnspecifiedReferenceOptimized();
        }
        consumeNonTypeUseName();
        int i10 = this.identifierLengthStack[this.identifierLengthPtr];
        char[][] identifierSubSet = identifierSubSet(indexOfAssistIdentifier);
        this.identifierLengthPtr--;
        int i11 = this.identifierPtr - i10;
        this.identifierPtr = i11;
        long[] jArr = new long[i10];
        System.arraycopy(this.identifierPositionStack, i11 + 1, jArr, 0, i10);
        NameReference createSingleAssistNameReference = indexOfAssistIdentifier == 0 ? createSingleAssistNameReference(assistIdentifier(), jArr[0]) : createQualifiedAssistNameReference(identifierSubSet, assistIdentifier(), jArr);
        createSingleAssistNameReference.bits = (createSingleAssistNameReference.bits & (-8)) | 3;
        this.assistNode = createSingleAssistNameReference;
        this.lastCheckPoint = createSingleAssistNameReference.sourceEnd + 1;
        return createSingleAssistNameReference;
    }

    @Override
    public void goForBlockStatementsOrCatchHeader() {
        super.goForBlockStatementsOrCatchHeader();
        this.isFirst = true;
    }

    @Override
    public void goForBlockStatementsopt() {
        super.goForBlockStatementsopt();
        this.isFirst = true;
    }

    @Override
    public void goForCompilationUnit() {
        super.goForCompilationUnit();
        this.isFirst = true;
    }

    @Override
    public void goForHeaders() {
        super.goForHeaders();
        this.isFirst = true;
    }

    public char[][] identifierSubSet(int i10) {
        if (i10 == 0) {
            return null;
        }
        char[][] cArr = new char[i10];
        System.arraycopy(this.identifierStack, (this.identifierPtr - this.identifierLengthStack[this.identifierLengthPtr]) + 1, cArr, 0, i10);
        return cArr;
    }

    public int indexOfAssistIdentifier() {
        return indexOfAssistIdentifier(false);
    }

    @Override
    public void initialize() {
        super.initialize();
        flushAssistState();
        flushElementStack();
        this.previousIdentifierPtr = -1;
        this.bracketDepth = 0;
    }

    @Override
    public abstract void initializeScanner();

    @Override
    public boolean isAssistParser() {
        return true;
    }

    public boolean isIndirectlyInsideEnumConstantnitialization() {
        for (int i10 = this.elementPtr; i10 > -1; i10--) {
            if (this.elementKindStack[i10] == 518) {
                return true;
            }
        }
        return false;
    }

    public boolean isIndirectlyInsideFieldInitialization() {
        for (int i10 = this.elementPtr; i10 > -1; i10--) {
            if (this.elementKindStack[i10] == 516) {
                return true;
            }
        }
        return false;
    }

    public boolean isIndirectlyInsideLambdaBlock() {
        for (int i10 = this.elementPtr; i10 > -1; i10--) {
            if (this.elementKindStack[i10] == 519 && this.elementInfoStack[i10] == 1) {
                return true;
            }
        }
        return false;
    }

    @Override
    public boolean isIndirectlyInsideLambdaExpression() {
        for (int i10 = this.elementPtr; i10 > -1; i10--) {
            if (this.elementKindStack[i10] == 519) {
                return true;
            }
        }
        return false;
    }

    public boolean isIndirectlyInsideMethod() {
        for (int i10 = this.elementPtr; i10 > -1; i10--) {
            if (this.elementKindStack[i10] == 515) {
                return true;
            }
        }
        return false;
    }

    public boolean isIndirectlyInsideType() {
        for (int i10 = this.elementPtr; i10 > -1; i10--) {
            if (this.elementKindStack[i10] == 514) {
                return true;
            }
        }
        return false;
    }

    public boolean isInsideArrayInitializer() {
        return false;
    }

    public boolean isInsideAttributeValue() {
        for (int i10 = this.elementPtr; i10 > -1; i10--) {
            switch (this.elementKindStack[i10]) {
                case 514:
                case 515:
                case 516:
                    return false;
                case 517:
                    return true;
                default:
            }
        }
        return false;
    }

    public boolean isInsideEnumConstantnitialization() {
        int i10;
        for (int i11 = this.elementPtr; i11 > -1 && (i10 = this.elementKindStack[i11]) != 514 && i10 != 515; i11--) {
            if (i10 == 518) {
                return true;
            }
        }
        return false;
    }

    public boolean isInsideFieldInitialization() {
        for (int i10 = this.elementPtr; i10 > -1; i10--) {
            switch (this.elementKindStack[i10]) {
                case 514:
                case 515:
                    return false;
                case 516:
                    return true;
                default:
            }
        }
        return false;
    }

    public boolean isInsideMethod() {
        for (int i10 = this.elementPtr; i10 > -1; i10--) {
            switch (this.elementKindStack[i10]) {
                case 514:
                    return false;
                case 515:
                    return true;
                case 516:
                    return false;
                default:
            }
        }
        return false;
    }

    public boolean isInsideModuleInfo() {
        for (int i10 = this.elementPtr; i10 > -1; i10--) {
            int i11 = this.elementKindStack[i10];
            if (i11 == 520) {
                return true;
            }
            switch (i11) {
                case 514:
                case 515:
                case 516:
                    return false;
                default:
            }
        }
        return false;
    }

    public boolean isInsideType() {
        for (int i10 = this.elementPtr; i10 > -1; i10--) {
            switch (this.elementKindStack[i10]) {
                case 514:
                    return true;
                case 515:
                case 516:
                    return false;
                default:
            }
        }
        return false;
    }

    public int lastIndexOfElement(int i10) {
        for (int i11 = this.elementPtr; i11 > -1; i11--) {
            if (this.elementKindStack[i11] == i10) {
                return i11;
            }
        }
        return -1;
    }

    public void parseBlockStatements(AbstractMethodDeclaration abstractMethodDeclaration, CompilationUnitDeclaration compilationUnitDeclaration) {
        if (abstractMethodDeclaration instanceof MethodDeclaration) {
            parseBlockStatements((MethodDeclaration) abstractMethodDeclaration, compilationUnitDeclaration);
        } else if (abstractMethodDeclaration instanceof ConstructorDeclaration) {
            parseBlockStatements((ConstructorDeclaration) abstractMethodDeclaration, compilationUnitDeclaration);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0012, code lost:
    
        if (r0 >= 0) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0014, code lost:
    
        if (r0 < 0) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0016, code lost:
    
        r1 = r3.elementKindStack;
        r2 = r1[r0];
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x001a, code lost:
    
        if (r2 == r4) goto L16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x001d, code lost:
    
        r3.previousKind = r2;
        r3.previousInfo = r3.elementInfoStack[r0];
        r3.previousObjectInfo = r3.elementObjectInfoStack[r0];
        r4 = r3.elementPtr - r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x002e, code lost:
    
        if (r4 <= 0) goto L19;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0030, code lost:
    
        r2 = r0 + 1;
        java.lang.System.arraycopy(r1, r2, r1, r0, r4);
        r1 = r3.elementInfoStack;
        java.lang.System.arraycopy(r1, r2, r1, r0, r4);
        r1 = r3.elementObjectInfoStack;
        java.lang.System.arraycopy(r1, r2, r1, r0, r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x003f, code lost:
    
        r4 = r3.elementObjectInfoStack;
        r0 = r3.elementPtr;
        r4[r0] = null;
        r3.elementPtr = r0 - 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x004a, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:?, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:?, code lost:
    
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:6:0x0007, code lost:
    
        if (r4 != 519) goto L7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x000d, code lost:
    
        if (r3.elementKindStack[r0] == 519) goto L10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0010, code lost:
    
        r0 = r0 - 1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void popElement(int i10) {
        int i11 = this.elementPtr;
        if (i11 < 0) {
        }
    }

    public void popSnapShot() {
        AssistParser[] assistParserArr = this.snapShotStack;
        int i10 = this.snapShotPtr;
        this.snapShotPtr = i10 - 1;
        assistParserArr[i10] = null;
    }

    public void popUntilElement(int i10) {
        int i11 = this.elementPtr;
        if (i11 < 0) {
            return;
        }
        while (i11 >= 0 && this.elementKindStack[i11] != i10) {
            i11--;
        }
        if (i11 >= 0) {
            if (i11 < this.elementPtr) {
                int i12 = i11 + 1;
                this.previousKind = this.elementKindStack[i12];
                this.previousInfo = this.elementInfoStack[i12];
                this.previousObjectInfo = this.elementObjectInfoStack[i12];
                while (i12 <= this.elementPtr) {
                    this.elementObjectInfoStack[i12] = null;
                    i12++;
                }
            }
            this.elementPtr = i11;
        }
    }

    @Override
    public void prepareForBlockStatements() {
        int[] iArr = this.nestedMethod;
        this.nestedType = 0;
        iArr[0] = 1;
        this.variablesCounter[0] = 0;
        int[] iArr2 = this.realBlockStack;
        this.realBlockPtr = 1;
        iArr2[1] = 0;
        int lastIndexOfElement = lastIndexOfElement(516);
        int lastIndexOfElement2 = lastIndexOfElement(515);
        if (lastIndexOfElement2 == lastIndexOfElement) {
            flushElementStack();
        } else if (lastIndexOfElement2 > lastIndexOfElement) {
            popUntilElement(515);
        } else {
            popUntilElement(516);
        }
    }

    public void prepareForHeaders() {
        int[] iArr = this.nestedMethod;
        this.nestedType = 0;
        iArr[0] = 0;
        this.variablesCounter[0] = 0;
        int[] iArr2 = this.realBlockStack;
        this.realBlockPtr = 0;
        iArr2[0] = 0;
        popUntilElement(514);
        if (topKnownElementKind(512) != 514) {
            flushElementStack();
        }
    }

    public void pushOnElementStack(int i10) {
        pushOnElementStack(i10, 0, null);
    }

    @Override
    public void recoveryExitFromVariable() {
        RecoveredElement recoveredElement = this.currentElement;
        if (recoveredElement == null || !(recoveredElement instanceof RecoveredField) || (recoveredElement instanceof RecoveredInitializer)) {
            super.recoveryExitFromVariable();
            return;
        }
        super.recoveryExitFromVariable();
        if (recoveredElement != this.currentElement) {
            popElement(516);
        }
    }

    @Override
    public void recoveryTokenCheck() {
        boolean z10;
        RecoveredElement recoveredElement = this.currentElement;
        int i10 = this.currentToken;
        if (i10 != 33) {
            if (i10 != 49) {
                super.recoveryTokenCheck();
                return;
            }
            super.recoveryTokenCheck();
            if (this.currentElement instanceof RecoveredInitializer) {
                if (recoveredElement instanceof RecoveredField) {
                    popUntilElement(516);
                    popElement(516);
                }
                if (this.currentElement == recoveredElement || topKnownElementKind(512) == 515) {
                    return;
                }
                pushOnElementStack(515);
                return;
            }
            return;
        }
        super.recoveryTokenCheck();
        if (this.currentElement == recoveredElement || isInsideAttributeValue() || isIndirectlyInsideLambdaExpression()) {
            return;
        }
        if ((recoveredElement instanceof RecoveredInitializer) || (recoveredElement instanceof RecoveredMethod) || ((((z10 = recoveredElement instanceof RecoveredBlock)) && (recoveredElement.parent instanceof RecoveredInitializer)) || (z10 && (recoveredElement.parent instanceof RecoveredMethod)))) {
            popUntilElement(515);
            popElement(515);
        } else if (recoveredElement instanceof RecoveredType) {
            popUntilElement(514);
            if (!(this.referenceContext instanceof CompilationUnitDeclaration) || isIndirectlyInsideFieldInitialization() || (this.currentElement instanceof RecoveredUnit)) {
                popElement(514);
            }
        }
    }

    public Statement replaceAssistStatement(RecoveredElement recoveredElement, ASTNode aSTNode, int i10, int i11, Statement statement) {
        RecoveredStatement recoveredStatement;
        if (recoveredElement == null) {
            return null;
        }
        if (!(recoveredElement instanceof RecoveredBlock)) {
            return recoveredElement instanceof RecoveredMethod ? replaceAssistStatement(((RecoveredMethod) recoveredElement).methodBody, aSTNode, i10, i11, statement) : recoveredElement instanceof RecoveredInitializer ? replaceAssistStatement(((RecoveredInitializer) recoveredElement).initializerBody, aSTNode, i10, i11, statement) : statement;
        }
        RecoveredBlock recoveredBlock = (RecoveredBlock) recoveredElement;
        RecoveredStatement[] recoveredStatementArr = recoveredBlock.statements;
        if (recoveredStatementArr == null) {
            return statement;
        }
        boolean z10 = false;
        for (int i12 = 0; i12 < recoveredStatementArr.length && (recoveredStatement = recoveredStatementArr[i12]) != null; i12++) {
            ASTNode parseTree = recoveredStatement.parseTree();
            if (parseTree.sourceStart >= i10 && parseTree.sourceEnd <= i11) {
                if (z10) {
                    recoveredStatementArr[i12] = null;
                } else {
                    recoveredStatementArr[i12] = new RecoveredStatement(statement, recoveredBlock, 0);
                    recoveredBlock.statementCount = i12 + 1;
                    z10 = true;
                }
            }
        }
        if (z10) {
            return null;
        }
        return statement;
    }

    public boolean requireExtendedRecovery() {
        return lastIndexOfElement(519) >= 0;
    }

    public void reset() {
        flushAssistState();
    }

    public void restoreAssistParser(Object obj) {
    }

    @Override
    public int resumeAfterRecovery() {
        if (requireExtendedRecovery()) {
            if (this.unstackedAct != 16966) {
                if (this.currentToken == 49) {
                    this.ignoreNextOpeningBrace = true;
                }
                return 2;
            }
            int fallBackToSpringForward = fallBackToSpringForward(null);
            this.resumedAfterRepair = fallBackToSpringForward == 2;
            if (fallBackToSpringForward == 2 || fallBackToSpringForward == 0) {
                return fallBackToSpringForward;
            }
        }
        this.astPtr = -1;
        this.astLengthPtr = -1;
        this.expressionPtr = -1;
        this.expressionLengthPtr = -1;
        this.typeAnnotationLengthPtr = -1;
        this.typeAnnotationPtr = -1;
        this.identifierPtr = -1;
        this.identifierLengthPtr = -1;
        this.intPtr = -1;
        this.dimensions = 0;
        this.recoveredStaticInitializerStart = 0;
        this.genericsIdentifiersLengthPtr = -1;
        this.genericsLengthPtr = -1;
        this.genericsPtr = -1;
        this.valueLambdaNestDepth = -1;
        this.modifiers = 0;
        this.modifiersSourceStart = -1;
        if (this.diet) {
            this.dietInt = 0;
        }
        if (this.unstackedAct != 16966 && this.resumedAfterRepair) {
            this.scanner.ungetToken(this.currentToken);
        } else if (!moveRecoveryCheckpoint()) {
            return 0;
        }
        this.resumedAfterRepair = false;
        ReferenceContext referenceContext = this.referenceContext;
        if (!(referenceContext instanceof CompilationUnitDeclaration) && this.assistNode == null) {
            if (!(referenceContext instanceof AbstractMethodDeclaration) && !(referenceContext instanceof TypeDeclaration)) {
                return 0;
            }
            if (this.currentElement instanceof RecoveredType) {
                prepareForHeaders();
                goForHeaders();
            } else {
                prepareForBlockStatements();
                goForBlockStatementsOrCatchHeader();
            }
            return 1;
        }
        if (isInsideMethod() && isIndirectlyInsideFieldInitialization() && this.assistNode == null) {
            prepareForBlockStatements();
            goForBlockStatementsOrCatchHeader();
        } else if (isInsideArrayInitializer() && isIndirectlyInsideFieldInitialization() && this.assistNode == null) {
            prepareForBlockStatements();
            goForBlockStatementsopt();
        } else {
            prepareForHeaders();
            ReferenceContext referenceContext2 = this.referenceContext;
            if ((referenceContext2 instanceof CompilationUnitDeclaration) && ((CompilationUnitDeclaration) referenceContext2).isModuleInfo()) {
                pushOnElementStack(520);
            }
            goForHeaders();
            this.diet = true;
            this.dietInt = 0;
        }
        return 1;
    }

    public abstract void setAssistIdentifier(char[] cArr);

    public void shouldStackAssistNode() {
    }

    public int topKnownElementInfo(int i10) {
        return topKnownElementInfo(i10, 0);
    }

    public int topKnownElementKind(int i10) {
        return topKnownElementKind(i10, 0);
    }

    public Object topKnownElementObjectInfo(int i10, int i11) {
        for (int i12 = this.elementPtr; i12 > -1; i12--) {
            if ((this.elementKindStack[i12] & i10) != 0) {
                if (i11 <= 0) {
                    return this.elementObjectInfoStack[i12];
                }
                i11--;
            }
        }
        return null;
    }

    public boolean triggerRecoveryUponLambdaClosure(Statement statement, boolean z10) {
        RecoveredElement recoveredElement;
        int i10;
        LocalDeclaration localDeclaration;
        Expression expression;
        int i11;
        int i12;
        int i13 = statement.sourceStart;
        boolean z11 = statement instanceof AbstractVariableDeclaration;
        int i14 = z11 ? ((AbstractVariableDeclaration) statement).declarationSourceEnd : statement.sourceEnd;
        boolean z12 = false;
        for (int i15 = this.elementPtr; i15 >= 0; i15--) {
            if (this.elementKindStack[i15] == 519) {
                LambdaExpression lambdaExpression = (LambdaExpression) this.elementObjectInfoStack[i15];
                if (lambdaExpression == null) {
                    return false;
                }
                if (lambdaExpression.sourceStart < i13 || lambdaExpression.sourceEnd > i14) {
                    if (z10) {
                        int[] iArr = this.stack;
                        int length = iArr.length;
                        int i16 = this.stateStackTop + 1;
                        this.stateStackTop = i16;
                        if (i16 >= length) {
                            int[] iArr2 = new int[length + 255];
                            this.stack = iArr2;
                            System.arraycopy(iArr, 0, iArr2, 0, length);
                        }
                        this.stack[this.stateStackTop] = this.unstackedAct;
                        commit(false);
                        this.stateStackTop--;
                    }
                    return false;
                }
                this.elementPtr = i15 - 1;
                z12 = true;
            }
        }
        if (z12 && (recoveredElement = this.currentElement) != null && !(recoveredElement instanceof RecoveredField) && !z11) {
            Statement replaceAssistStatement = replaceAssistStatement(recoveredElement.topElement(), assistNodeParent(), i13, i14, statement);
            if (replaceAssistStatement != null) {
                RecoveredElement recoveredElement2 = this.currentElement;
                if (!(recoveredElement2 instanceof RecoveredBlock)) {
                    RecoveredElement recoveredElement3 = recoveredElement2.parent;
                    recoveredElement2 = recoveredElement3 instanceof RecoveredBlock ? recoveredElement3 : recoveredElement2 instanceof RecoveredMethod ? ((RecoveredMethod) recoveredElement2).methodBody : null;
                }
                RecoveredBlock recoveredBlock = (RecoveredBlock) recoveredElement2;
                if (recoveredBlock != null) {
                    int i17 = recoveredBlock.statementCount;
                    RecoveredStatement recoveredStatement = i17 > 0 ? recoveredBlock.statements[i17 - 1] : null;
                    Statement updatedStatement = recoveredStatement != null ? recoveredStatement.updatedStatement(0, new HashSet()) : null;
                    if (updatedStatement != null) {
                        int i18 = updatedStatement.sourceStart;
                        if (i18 == 0 || (i10 = updatedStatement.sourceEnd) == 0 || (i18 >= i13 && i10 <= i14)) {
                            recoveredBlock.statements[recoveredBlock.statementCount - 1] = new RecoveredStatement(replaceAssistStatement, recoveredBlock, 0);
                        } else if ((recoveredStatement instanceof RecoveredLocalVariable) && (replaceAssistStatement instanceof Expression)) {
                            Expression expression2 = (Expression) replaceAssistStatement;
                            if (expression2.isTrulyExpression() && (localDeclaration = ((RecoveredLocalVariable) recoveredStatement).localDeclaration) != null && (expression = localDeclaration.initialization) != null && ((i11 = expression.sourceStart) == 0 || (i12 = expression.sourceEnd) == 0 || (i11 >= i13 && i12 <= i14))) {
                                localDeclaration.initialization = expression2;
                                int i19 = replaceAssistStatement.sourceEnd;
                                localDeclaration.declarationSourceEnd = i19;
                                localDeclaration.declarationEnd = i19;
                            }
                        }
                        replaceAssistStatement = null;
                    }
                }
            }
            if (replaceAssistStatement != null) {
                while (true) {
                    RecoveredElement recoveredElement4 = this.currentElement;
                    if (recoveredElement4 == null) {
                        break;
                    }
                    if (recoveredElement4.parseTree().sourceStart < replaceAssistStatement.sourceStart) {
                        this.currentElement.add(replaceAssistStatement, 0);
                        break;
                    }
                    this.currentElement = this.currentElement.parent;
                }
            }
        }
        if (this.snapShotPtr > -1) {
            popSnapShot();
        }
        return z12;
    }

    public ASTNode wrapWithExplicitConstructorCallIfNeeded(ASTNode aSTNode) {
        int i10;
        if (aSTNode != null && topKnownElementKind(512) == 513 && (aSTNode instanceof Expression)) {
            Expression expression = (Expression) aSTNode;
            if (expression.isTrulyExpression() && ((i10 = topKnownElementInfo(512)) == -1 || i10 == -2)) {
                ExplicitConstructorCall explicitConstructorCall = new ExplicitConstructorCall(i10 == -1 ? 3 : 2);
                explicitConstructorCall.arguments = new Expression[]{expression};
                explicitConstructorCall.sourceStart = aSTNode.sourceStart;
                explicitConstructorCall.sourceEnd = aSTNode.sourceEnd;
                return explicitConstructorCall;
            }
        }
        return aSTNode;
    }

    public int bodyEnd(Initializer initializer) {
        return initializer.declarationSourceEnd;
    }

    public int indexOfAssistIdentifier(boolean z10) {
        char[] assistIdentifier;
        int i10;
        if (this.identifierLengthPtr < 0 || (assistIdentifier = assistIdentifier()) == null) {
            return -1;
        }
        int i11 = this.identifierLengthStack[this.identifierLengthPtr];
        if (z10 && i11 > 0 && (i10 = this.genericsIdentifiersLengthPtr) > -1) {
            i11 = this.genericsIdentifiersLengthStack[i10];
        }
        for (int i12 = 0; i12 < i11; i12++) {
            if (this.identifierStack[this.identifierPtr - i12] == assistIdentifier) {
                return (i11 - i12) - 1;
            }
        }
        return -1;
    }

    public void pushOnElementStack(int i10, int i11) {
        pushOnElementStack(i10, i11, null);
    }

    public int topKnownElementInfo(int i10, int i11) {
        for (int i12 = this.elementPtr; i12 > -1; i12--) {
            if ((this.elementKindStack[i12] & i10) != 0) {
                if (i11 <= 0) {
                    return this.elementInfoStack[i12];
                }
                i11--;
            }
        }
        return 0;
    }

    public int topKnownElementKind(int i10, int i11) {
        for (int i12 = this.elementPtr; i12 > -1; i12--) {
            int i13 = this.elementKindStack[i12];
            if ((i13 & i10) != 0) {
                if (i11 <= 0) {
                    return i13;
                }
                i11--;
            }
        }
        return 0;
    }

    public void pushOnElementStack(int i10, int i11, Object obj) {
        int i12 = this.elementPtr;
        if (i12 < -1) {
            return;
        }
        this.previousKind = 0;
        this.previousInfo = 0;
        this.previousObjectInfo = null;
        int[] iArr = this.elementKindStack;
        int length = iArr.length;
        int i13 = i12 + 1;
        this.elementPtr = i13;
        if (i13 >= length) {
            int i14 = length + 255;
            int[] iArr2 = new int[i14];
            this.elementKindStack = iArr2;
            System.arraycopy(iArr, 0, iArr2, 0, length);
            int[] iArr3 = this.elementInfoStack;
            int[] iArr4 = new int[i14];
            this.elementInfoStack = iArr4;
            System.arraycopy(iArr3, 0, iArr4, 0, length);
            Object[] objArr = this.elementObjectInfoStack;
            Object[] objArr2 = new Object[i14];
            this.elementObjectInfoStack = objArr2;
            System.arraycopy(objArr, 0, objArr2, 0, length);
        }
        int[] iArr5 = this.elementKindStack;
        int i15 = this.elementPtr;
        iArr5[i15] = i10;
        this.elementInfoStack[i15] = i11;
        this.elementObjectInfoStack[i15] = obj;
    }

    public Object topKnownElementObjectInfo(int i10) {
        return topKnownElementObjectInfo(i10, 0);
    }

    public void parseBlockStatements(ConstructorDeclaration constructorDeclaration, CompilationUnitDeclaration compilationUnitDeclaration) {
        initialize();
        this.lastModifiers = constructorDeclaration.modifiers;
        this.lastModifiersStart = constructorDeclaration.modifiersSourceStart;
        goForBlockStatementsopt();
        this.referenceContext = constructorDeclaration;
        this.compilationUnit = compilationUnitDeclaration;
        this.scanner.resetTo(constructorDeclaration.bodyStart, bodyEnd(constructorDeclaration));
        consumeNestedMethod();
        try {
            parse();
        } catch (AbortCompilation unused) {
            this.lastAct = 16966;
        }
        if (this.lastAct == 16966) {
            constructorDeclaration.bits |= 524288;
            return;
        }
        int[] iArr = this.realBlockStack;
        int i10 = this.realBlockPtr;
        this.realBlockPtr = i10 - 1;
        constructorDeclaration.explicitDeclarations = iArr[i10];
        int[] iArr2 = this.astLengthStack;
        int i11 = this.astLengthPtr;
        this.astLengthPtr = i11 - 1;
        int i12 = iArr2[i11];
        if (i12 != 0) {
            int i13 = this.astPtr - i12;
            this.astPtr = i13;
            ASTNode[] aSTNodeArr = this.astStack;
            if (aSTNodeArr[i13 + 1] instanceof ExplicitConstructorCall) {
                int i14 = i12 - 1;
                Statement[] statementArr = new Statement[i14];
                constructorDeclaration.statements = statementArr;
                System.arraycopy(aSTNodeArr, i13 + 2, statementArr, 0, i14);
                constructorDeclaration.constructorCall = (ExplicitConstructorCall) this.astStack[this.astPtr + 1];
            } else {
                Statement[] statementArr2 = new Statement[i12];
                constructorDeclaration.statements = statementArr2;
                System.arraycopy(aSTNodeArr, i13 + 1, statementArr2, 0, i12);
                constructorDeclaration.constructorCall = SuperReference.implicitSuperConstructorCall();
            }
        } else {
            constructorDeclaration.constructorCall = SuperReference.implicitSuperConstructorCall();
            if (!containsComment(constructorDeclaration.bodyStart, constructorDeclaration.bodyEnd)) {
                constructorDeclaration.bits |= 8;
            }
        }
        ExplicitConstructorCall explicitConstructorCall = constructorDeclaration.constructorCall;
        if (explicitConstructorCall.sourceEnd == 0) {
            explicitConstructorCall.sourceEnd = constructorDeclaration.sourceEnd;
            explicitConstructorCall.sourceStart = constructorDeclaration.sourceStart;
        }
    }

    @Override
    public void initialize(boolean z10) {
        super.initialize(z10);
        flushAssistState();
        flushElementStack();
        this.previousIdentifierPtr = -1;
        this.bracketDepth = 0;
    }

    public void parseBlockStatements(Initializer initializer, TypeDeclaration typeDeclaration, CompilationUnitDeclaration compilationUnitDeclaration) {
        initialize();
        this.lastModifiers = initializer.modifiers;
        this.lastModifiersStart = initializer.modifiersSourceStart;
        goForBlockStatementsopt();
        this.referenceContext = typeDeclaration;
        this.compilationUnit = compilationUnitDeclaration;
        this.scanner.resetTo(initializer.sourceStart, bodyEnd(initializer));
        consumeNestedMethod();
        try {
            parse();
        } catch (AbortCompilation unused) {
            this.lastAct = 16966;
        } finally {
            this.nestedMethod[this.nestedType] = r6[r7] - 1;
        }
        if (this.lastAct == 16966) {
            initializer.bits |= 524288;
            return;
        }
        Block block = initializer.block;
        int[] iArr = this.realBlockStack;
        int i10 = this.realBlockPtr;
        this.realBlockPtr = i10 - 1;
        block.explicitDeclarations = iArr[i10];
        int[] iArr2 = this.astLengthStack;
        int i11 = this.astLengthPtr;
        this.astLengthPtr = i11 - 1;
        int i12 = iArr2[i11];
        if (i12 > 0) {
            ASTNode[] aSTNodeArr = this.astStack;
            int i13 = this.astPtr - i12;
            this.astPtr = i13;
            Statement[] statementArr = new Statement[i12];
            block.statements = statementArr;
            System.arraycopy(aSTNodeArr, i13 + 1, statementArr, 0, i12);
        } else if (!containsComment(block.sourceStart, block.sourceEnd)) {
            initializer.block.bits |= 8;
        }
        if ((typeDeclaration.bits & 2) != 0) {
            initializer.bits |= 2;
        }
    }

    public void parseBlockStatements(MethodDeclaration methodDeclaration, CompilationUnitDeclaration compilationUnitDeclaration) {
        if (!methodDeclaration.isNative() && (methodDeclaration.modifiers & 16777216) == 0) {
            initialize();
            this.lastModifiers = methodDeclaration.modifiers;
            this.lastModifiersStart = methodDeclaration.modifiersSourceStart;
            goForBlockStatementsopt();
            this.referenceContext = methodDeclaration;
            this.compilationUnit = compilationUnitDeclaration;
            this.scanner.resetTo(methodDeclaration.bodyStart, bodyEnd(methodDeclaration));
            consumeNestedMethod();
            try {
                parse();
            } catch (AbortCompilation unused) {
                this.lastAct = 16966;
            } finally {
                this.nestedMethod[this.nestedType] = r5[r0] - 1;
            }
            if (this.lastAct == 16966) {
                methodDeclaration.bits |= 524288;
                return;
            }
            int[] iArr = this.realBlockStack;
            int i10 = this.realBlockPtr;
            this.realBlockPtr = i10 - 1;
            methodDeclaration.explicitDeclarations = iArr[i10];
            int[] iArr2 = this.astLengthStack;
            int i11 = this.astLengthPtr;
            this.astLengthPtr = i11 - 1;
            int i12 = iArr2[i11];
            if (i12 != 0) {
                ASTNode[] aSTNodeArr = this.astStack;
                int i13 = this.astPtr - i12;
                this.astPtr = i13;
                Statement[] statementArr = new Statement[i12];
                methodDeclaration.statements = statementArr;
                System.arraycopy(aSTNodeArr, i13 + 1, statementArr, 0, i12);
                return;
            }
            if (containsComment(methodDeclaration.bodyStart, methodDeclaration.bodyEnd)) {
                return;
            }
            methodDeclaration.bits |= 8;
        }
    }
}
