package org.eclipse.jdt.internal.compiler.ast;

import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.ASTVisitor;
import org.eclipse.jdt.internal.compiler.ast.NullAnnotationMatching;
import org.eclipse.jdt.internal.compiler.classfmt.ClassFileConstants;
import org.eclipse.jdt.internal.compiler.codegen.BranchLabel;
import org.eclipse.jdt.internal.compiler.codegen.CodeStream;
import org.eclipse.jdt.internal.compiler.flow.FlowContext;
import org.eclipse.jdt.internal.compiler.flow.FlowInfo;
import org.eclipse.jdt.internal.compiler.impl.Constant;
import org.eclipse.jdt.internal.compiler.lookup.AnnotationBinding;
import org.eclipse.jdt.internal.compiler.lookup.ArrayBinding;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.ClassScope;
import org.eclipse.jdt.internal.compiler.lookup.LookupEnvironment;
import org.eclipse.jdt.internal.compiler.lookup.MethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.Scope;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;

public abstract class Statement extends ASTNode {
    public static final int COMPLAINED_FAKE_REACHABLE = 1;
    public static final int COMPLAINED_UNREACHABLE = 2;
    public static final int NOT_COMPLAINED = 0;

    private void internalCheckAgainstNullTypeAnnotation(BlockScope blockScope, TypeBinding typeBinding, Expression expression, int i10, FlowContext flowContext, FlowInfo flowInfo) {
        NullAnnotationMatching analyse = NullAnnotationMatching.analyse(typeBinding, expression.resolvedType, null, null, i10, expression, NullAnnotationMatching.CheckMode.COMPATIBLE);
        if (analyse.isDefiniteMismatch()) {
            blockScope.problemReporter().nullityMismatchingTypeAnnotation(expression, expression.resolvedType, typeBinding, analyse);
            return;
        }
        if (analyse.wantToReport()) {
            analyse.report(blockScope);
        }
        if (analyse.isUnchecked()) {
            flowContext.recordNullityMismatch(blockScope, expression, expression.resolvedType, typeBinding, flowInfo, i10, analyse);
        }
    }

    public static boolean isKnowDeadCodePattern(Expression expression) {
        if (expression instanceof UnaryExpression) {
            expression = ((UnaryExpression) expression).expression;
        }
        return expression instanceof Reference;
    }

    public void analyseArguments(BlockScope blockScope, FlowContext flowContext, FlowInfo flowInfo, MethodBinding methodBinding, Expression[] expressionArr) {
        int i10;
        TypeBinding typeBinding;
        TypeBinding typeBinding2;
        if (expressionArr != null) {
            if (blockScope.compilerOptions().sourceLevel < ClassFileConstants.JDK1_7 || !methodBinding.isPolymorphic()) {
                boolean usesNullTypeAnnotations = blockScope.environment().usesNullTypeAnnotations();
                int i11 = 0;
                boolean z10 = true;
                boolean z11 = methodBinding.parameterNonNullness != null;
                int length = methodBinding.parameters.length;
                if ((usesNullTypeAnnotations || z11) && methodBinding.isVarargs()) {
                    i10 = length - 1;
                    typeBinding = methodBinding.parameters[i10];
                    if (length != expressionArr.length || ((typeBinding2 = expressionArr[i10].resolvedType) != TypeBinding.NULL && (typeBinding.dimensions() != typeBinding2.dimensions() || !typeBinding2.isCompatibleWith(typeBinding)))) {
                        z10 = false;
                    }
                    if (!z10) {
                        length--;
                    }
                } else {
                    i10 = -1;
                    z10 = false;
                    typeBinding = null;
                }
                if (!usesNullTypeAnnotations) {
                    if (z11) {
                        while (i11 < length) {
                            if (methodBinding.parameterNonNullness[i11] == Boolean.TRUE) {
                                TypeBinding typeBinding3 = methodBinding.parameters[i11];
                                Expression expression = expressionArr[i11];
                                int nullStatus = expression.nullStatus(flowInfo, flowContext);
                                if (nullStatus != 4) {
                                    flowContext.recordNullityMismatch(blockScope, expression, expression.resolvedType, typeBinding3, flowInfo, nullStatus, null);
                                }
                            }
                            i11++;
                        }
                        return;
                    }
                    return;
                }
                while (i11 < length) {
                    analyseOneArgument18(blockScope, flowContext, flowInfo, methodBinding.parameters[i11], expressionArr[i11], z11 ? methodBinding.parameterNonNullness[i11] : null, methodBinding.original().parameters[i11]);
                    i11++;
                }
                if (z10 || !(typeBinding instanceof ArrayBinding)) {
                    return;
                }
                TypeBinding elementsType = ((ArrayBinding) typeBinding).elementsType();
                Boolean bool = z11 ? methodBinding.parameterNonNullness[i10] : null;
                while (length < expressionArr.length) {
                    analyseOneArgument18(blockScope, flowContext, flowInfo, elementsType, expressionArr[length], bool, methodBinding.original().parameters[i10]);
                    length++;
                }
            }
        }
    }

    public abstract FlowInfo analyseCode(BlockScope blockScope, FlowContext flowContext, FlowInfo flowInfo);

    public void analyseOneArgument18(BlockScope blockScope, FlowContext flowContext, FlowInfo flowInfo, TypeBinding typeBinding, Expression expression, Boolean bool, TypeBinding typeBinding2) {
        if ((expression instanceof ConditionalExpression) && expression.isPolyExpression()) {
            ConditionalExpression conditionalExpression = (ConditionalExpression) expression;
            conditionalExpression.internalAnalyseOneArgument18(blockScope, flowContext, typeBinding, conditionalExpression.valueIfTrue, flowInfo, conditionalExpression.ifTrueNullStatus, bool, typeBinding2);
            conditionalExpression.internalAnalyseOneArgument18(blockScope, flowContext, typeBinding, conditionalExpression.valueIfFalse, flowInfo, conditionalExpression.ifFalseNullStatus, bool, typeBinding2);
        } else {
            if (!(expression instanceof SwitchExpression) || !expression.isPolyExpression()) {
                internalAnalyseOneArgument18(blockScope, flowContext, typeBinding, expression, flowInfo, expression.nullStatus(flowInfo, flowContext), bool, typeBinding2);
                return;
            }
            SwitchExpression switchExpression = (SwitchExpression) expression;
            for (int i10 = 0; i10 < switchExpression.resultExpressions.size(); i10++) {
                switchExpression.internalAnalyseOneArgument18(blockScope, flowContext, typeBinding, switchExpression.resultExpressions.get(i10), flowInfo, switchExpression.resultExpressionNullStatus.get(i10).intValue(), bool, typeBinding2);
            }
        }
    }

    public void branchChainTo(BranchLabel branchLabel) {
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [org.eclipse.jdt.internal.compiler.ast.Statement$1] */
    public boolean breaksOut(final char[] cArr) {
        return new ASTVisitor() {
            boolean breaksOut;

            public boolean breaksOut() {
                Statement.this.traverse(this, null);
                return this.breaksOut;
            }

            @Override
            public boolean visit(TypeDeclaration typeDeclaration, BlockScope blockScope) {
                return cArr != null;
            }

            @Override
            public boolean visit(TypeDeclaration typeDeclaration, ClassScope classScope) {
                return cArr != null;
            }

            @Override
            public boolean visit(LambdaExpression lambdaExpression, BlockScope blockScope) {
                return cArr != null;
            }

            @Override
            public boolean visit(WhileStatement whileStatement, BlockScope blockScope) {
                return cArr != null;
            }

            @Override
            public boolean visit(DoStatement doStatement, BlockScope blockScope) {
                return cArr != null;
            }

            @Override
            public boolean visit(ForeachStatement foreachStatement, BlockScope blockScope) {
                return cArr != null;
            }

            @Override
            public boolean visit(ForStatement forStatement, BlockScope blockScope) {
                return cArr != null;
            }

            @Override
            public boolean visit(SwitchStatement switchStatement, BlockScope blockScope) {
                return cArr != null;
            }

            @Override
            public boolean visit(BreakStatement breakStatement, BlockScope blockScope) {
                char[] cArr2 = cArr;
                if (cArr2 != null && !CharOperation.equals(cArr2, breakStatement.label)) {
                    return false;
                }
                this.breaksOut = true;
                return false;
            }
        }.breaksOut();
    }

    public void checkAgainstNullAnnotation(BlockScope blockScope, FlowContext flowContext, FlowInfo flowInfo, Expression expression) {
        int nullStatus = expression.nullStatus(flowInfo, flowContext);
        boolean usesNullTypeAnnotations = blockScope.environment().usesNullTypeAnnotations();
        try {
            MethodBinding referenceMethodBinding = blockScope.methodScope().referenceMethodBinding();
            long j10 = usesNullTypeAnnotations ? referenceMethodBinding.returnType.tagBits : referenceMethodBinding.tagBits;
            if (usesNullTypeAnnotations) {
                checkAgainstNullTypeAnnotation(blockScope, referenceMethodBinding.returnType, expression, flowContext, flowInfo);
            } else {
                if (nullStatus == 4 || (j10 & 72057594037927936L) == 0) {
                    return;
                }
                flowContext.recordNullityMismatch(blockScope, expression, expression.resolvedType, referenceMethodBinding.returnType, flowInfo, nullStatus, null);
            }
        } catch (NullPointerException unused) {
        }
    }

    public void checkAgainstNullTypeAnnotation(BlockScope blockScope, TypeBinding typeBinding, Expression expression, FlowContext flowContext, FlowInfo flowInfo) {
        if ((expression instanceof ConditionalExpression) && expression.isPolyExpression()) {
            ConditionalExpression conditionalExpression = (ConditionalExpression) expression;
            internalCheckAgainstNullTypeAnnotation(blockScope, typeBinding, conditionalExpression.valueIfTrue, conditionalExpression.ifTrueNullStatus, flowContext, flowInfo);
            internalCheckAgainstNullTypeAnnotation(blockScope, typeBinding, conditionalExpression.valueIfFalse, conditionalExpression.ifFalseNullStatus, flowContext, flowInfo);
        } else {
            if (!(expression instanceof SwitchExpression) || !expression.isPolyExpression()) {
                internalCheckAgainstNullTypeAnnotation(blockScope, typeBinding, expression, expression.nullStatus(flowInfo, flowContext), flowContext, flowInfo);
                return;
            }
            SwitchExpression switchExpression = (SwitchExpression) expression;
            for (int i10 = 0; i10 < switchExpression.resultExpressions.size(); i10++) {
                internalCheckAgainstNullTypeAnnotation(blockScope, typeBinding, switchExpression.resultExpressions.get(i10), switchExpression.resultExpressionNullStatus.get(i10).intValue(), flowContext, flowInfo);
            }
        }
    }

    public int complainIfUnreachable(FlowInfo flowInfo, BlockScope blockScope, int i10, boolean z10) {
        if ((flowInfo.reachMode() & 3) == 0) {
            return i10;
        }
        if ((flowInfo.reachMode() & 1) != 0) {
            this.bits &= Integer.MAX_VALUE;
        }
        if (flowInfo == FlowInfo.DEAD_END) {
            if (i10 < 2) {
                blockScope.problemReporter().unreachableCode(this);
                if (z10) {
                    blockScope.checkUnclosedCloseables(flowInfo, null, null, null);
                }
            }
            return 2;
        }
        if (i10 < 1) {
            blockScope.problemReporter().fakeReachable(this);
            if (z10) {
                blockScope.checkUnclosedCloseables(flowInfo, null, null, null);
            }
        }
        return 1;
    }

    public boolean completesByContinue() {
        return false;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [org.eclipse.jdt.internal.compiler.ast.Statement$2] */
    public boolean continuesAtOuterLabel() {
        return new ASTVisitor() {
            boolean continuesToLabel;

            public boolean continuesAtOuterLabel() {
                Statement.this.traverse(this, null);
                return this.continuesToLabel;
            }

            @Override
            public boolean visit(ContinueStatement continueStatement, BlockScope blockScope) {
                if (continueStatement.label == null) {
                    return false;
                }
                this.continuesToLabel = true;
                return false;
            }
        }.continuesAtOuterLabel();
    }

    public boolean doesNotCompleteNormally() {
        return false;
    }

    public TypeBinding expectedType() {
        return invocationTargetType();
    }

    public MethodBinding findConstructorBinding(BlockScope blockScope, Invocation invocation, ReferenceBinding referenceBinding, TypeBinding[] typeBindingArr) {
        return ASTNode.resolvePolyExpressionArguments(invocation, blockScope.getConstructor(referenceBinding, typeBindingArr, invocation), typeBindingArr, blockScope);
    }

    public void generateArguments(MethodBinding methodBinding, Expression[] expressionArr, BlockScope blockScope, CodeStream codeStream) {
        if (!methodBinding.isVarargs()) {
            if (expressionArr != null) {
                for (Expression expression : expressionArr) {
                    expression.generateCode(blockScope, codeStream, true);
                }
                return;
            }
            return;
        }
        TypeBinding[] typeBindingArr = methodBinding.parameters;
        int length = typeBindingArr.length;
        int i10 = length - 1;
        for (int i11 = 0; i11 < i10; i11++) {
            expressionArr[i11].generateCode(blockScope, codeStream, true);
        }
        ArrayBinding arrayBinding = (ArrayBinding) typeBindingArr[i10];
        ArrayBinding arrayBinding2 = (ArrayBinding) methodBinding.parameters[i10].erasure();
        int i12 = arrayBinding.elementsType().f102482id;
        int length2 = expressionArr == null ? 0 : expressionArr.length;
        if (length2 > length) {
            codeStream.generateInlinedValue(length2 - i10);
            codeStream.newArray(arrayBinding2);
            for (int i13 = i10; i13 < length2; i13++) {
                codeStream.dup();
                codeStream.generateInlinedValue(i13 - i10);
                expressionArr[i13].generateCode(blockScope, codeStream, true);
                codeStream.arrayAtPut(i12, false);
            }
            return;
        }
        if (length2 != length) {
            codeStream.generateInlinedValue(0);
            codeStream.newArray(arrayBinding2);
            return;
        }
        TypeBinding typeBinding = expressionArr[i10].resolvedType;
        if (typeBinding == TypeBinding.NULL || (arrayBinding.dimensions() == typeBinding.dimensions() && typeBinding.isCompatibleWith(arrayBinding2))) {
            expressionArr[i10].generateCode(blockScope, codeStream, true);
            return;
        }
        codeStream.generateInlinedValue(1);
        codeStream.newArray(arrayBinding2);
        codeStream.dup();
        codeStream.generateInlinedValue(0);
        expressionArr[i10].generateCode(blockScope, codeStream, true);
        codeStream.arrayAtPut(i12, false);
    }

    public abstract void generateCode(BlockScope blockScope, CodeStream codeStream);

    public ExpressionContext getExpressionContext() {
        return ExpressionContext.VANILLA_CONTEXT;
    }

    public void internalAnalyseOneArgument18(BlockScope blockScope, FlowContext flowContext, TypeBinding typeBinding, Expression expression, FlowInfo flowInfo, int i10, Boolean bool, TypeBinding typeBinding2) {
        TypeBinding typeBinding3;
        Boolean bool2 = Boolean.TRUE;
        int i11 = bool == bool2 ? i10 : 0;
        TypeBinding typeBinding4 = typeBinding;
        NullAnnotationMatching analyse = NullAnnotationMatching.analyse(typeBinding, expression.resolvedType, i10);
        if (!analyse.isAnyMismatch() && i11 != 0) {
            typeBinding4 = typeBinding2;
        }
        if (i11 == 2) {
            blockScope.problemReporter().nullityMismatchingTypeAnnotation(expression, expression.resolvedType, typeBinding4, analyse);
            return;
        }
        if (analyse.isAnyMismatch() || (i11 & 16) != 0) {
            if (typeBinding4.hasNullTypeAnnotations() || bool != bool2) {
                typeBinding3 = typeBinding4;
            } else {
                LookupEnvironment environment = blockScope.environment();
                typeBinding3 = environment.createAnnotatedType(typeBinding4, new AnnotationBinding[]{environment.getNonNullAnnotation()});
            }
            flowContext.recordNullityMismatch(blockScope, expression, expression.resolvedType, typeBinding3, flowInfo, i10, analyse);
        }
    }

    public TypeBinding invocationTargetType() {
        return null;
    }

    public boolean isBoxingCompatible(TypeBinding typeBinding, TypeBinding typeBinding2, Expression expression, Scope scope) {
        if (scope.isBoxingCompatibleWith(typeBinding, typeBinding2)) {
            return true;
        }
        if (!typeBinding.isBaseType() || typeBinding2.isBaseType() || typeBinding2.isTypeVariable() || scope.compilerOptions().sourceLevel < ClassFileConstants.JDK1_5) {
            return false;
        }
        int i10 = typeBinding2.f102482id;
        return (i10 == 26 || i10 == 27 || i10 == 28) && expression.isConstantValueOfTypeAssignableToType(typeBinding, scope.environment().computeBoxingType(typeBinding2));
    }

    public boolean isEmptyBlock() {
        return false;
    }

    public boolean isValidJavaStatement() {
        return true;
    }

    @Override
    public StringBuffer print(int i10, StringBuffer stringBuffer) {
        return printStatement(i10, stringBuffer);
    }

    public abstract StringBuffer printStatement(int i10, StringBuffer stringBuffer);

    public abstract void resolve(BlockScope blockScope);

    public Constant[] resolveCase(BlockScope blockScope, TypeBinding typeBinding, SwitchStatement switchStatement) {
        resolve(blockScope);
        return new Constant[]{Constant.NotAConstant};
    }

    public TypeBinding resolveExpressionType(BlockScope blockScope) {
        return null;
    }
}
