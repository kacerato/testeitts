package org.eclipse.jdt.internal.compiler.ast;

import org.eclipse.jdt.internal.compiler.ASTVisitor;
import org.eclipse.jdt.internal.compiler.classfmt.ClassFileConstants;
import org.eclipse.jdt.internal.compiler.codegen.BranchLabel;
import org.eclipse.jdt.internal.compiler.codegen.CodeStream;
import org.eclipse.jdt.internal.compiler.flow.FlowContext;
import org.eclipse.jdt.internal.compiler.flow.FlowInfo;
import org.eclipse.jdt.internal.compiler.flow.UnconditionalFlowInfo;
import org.eclipse.jdt.internal.compiler.impl.CompilerOptions;
import org.eclipse.jdt.internal.compiler.impl.Constant;
import org.eclipse.jdt.internal.compiler.lookup.BaseTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.LookupEnvironment;
import org.eclipse.jdt.internal.compiler.lookup.MethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.NullTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.PolyTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.Scope;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;

public class ConditionalExpression extends OperatorExpression implements IPolyExpression {
    public Expression condition;
    private TypeBinding expectedType;
    int ifFalseNullStatus;
    int ifTrueNullStatus;
    public Constant optimizedBooleanConstant;
    public Constant optimizedIfFalseConstant;
    public Constant optimizedIfTrueConstant;
    private TypeBinding originalValueIfFalseType;
    private TypeBinding originalValueIfTrueType;
    private boolean use18specifics;
    public Expression valueIfFalse;
    public Expression valueIfTrue;
    int trueInitStateIndex = -1;
    int falseInitStateIndex = -1;
    int mergedInitStateIndex = -1;
    private int nullStatus = 1;
    private ExpressionContext expressionContext = ExpressionContext.VANILLA_CONTEXT;
    private boolean isPolyExpression = false;

    public ConditionalExpression(Expression expression, Expression expression2, Expression expression3) {
        this.condition = expression;
        this.valueIfTrue = expression2;
        this.valueIfFalse = expression3;
        this.sourceStart = expression.sourceStart;
        this.sourceEnd = expression3.sourceEnd;
    }

    private void computeNullStatus(FlowInfo flowInfo, FlowInfo flowInfo2, FlowContext flowContext) {
        if (this.ifTrueNullStatus == -1) {
            this.ifTrueNullStatus = this.valueIfTrue.nullStatus(flowInfo, flowContext);
        }
        int nullStatus = this.valueIfFalse.nullStatus(flowInfo2, flowContext);
        this.ifFalseNullStatus = nullStatus;
        int i10 = this.ifTrueNullStatus;
        if (i10 == nullStatus) {
            this.nullStatus = i10;
            return;
        }
        if (flowInfo.reachMode() != 0) {
            this.nullStatus = this.ifFalseNullStatus;
            return;
        }
        if (flowInfo2.reachMode() != 0) {
            this.nullStatus = this.ifTrueNullStatus;
            return;
        }
        int computeNullStatus = Expression.computeNullStatus(0, this.ifTrueNullStatus | this.ifFalseNullStatus);
        if (computeNullStatus > 0) {
            this.nullStatus = computeNullStatus;
        }
    }

    @Override
    public FlowInfo analyseCode(BlockScope blockScope, FlowContext flowContext, FlowInfo flowInfo) {
        FlowInfo conditional;
        boolean z10 = false;
        int i10 = (flowInfo.reachMode() & 3) != 0 ? 1 : 0;
        Constant optimizedBooleanConstant = this.condition.optimizedBooleanConstant();
        Constant constant = Constant.NotAConstant;
        boolean z11 = optimizedBooleanConstant != constant && optimizedBooleanConstant.booleanValue();
        boolean z12 = (optimizedBooleanConstant == constant || optimizedBooleanConstant.booleanValue()) ? false : true;
        int reachMode = flowInfo.reachMode();
        FlowInfo analyseCode = this.condition.analyseCode(blockScope, flowContext, flowInfo, optimizedBooleanConstant == constant);
        flowContext.conditionalLevel++;
        FlowInfo copy = analyseCode.initsWhenTrue().copy();
        CompilerOptions compilerOptions = blockScope.compilerOptions();
        if (z12) {
            if ((reachMode & 3) == 0) {
                copy.setReachMode(1);
            }
            if (!Statement.isKnowDeadCodePattern(this.condition) || compilerOptions.reportDeadCodeInTrivialIfStatement) {
                this.valueIfTrue.complainIfUnreachable(copy, blockScope, i10, false);
            }
        }
        this.trueInitStateIndex = blockScope.methodScope().recordInitializationStates(copy);
        FlowInfo analyseCode2 = this.valueIfTrue.analyseCode(blockScope, flowContext, copy);
        this.valueIfTrue.checkNPEbyUnboxing(blockScope, flowContext, analyseCode2);
        this.ifTrueNullStatus = -1;
        if (compilerOptions.enableSyntacticNullAnalysisForFields) {
            this.ifTrueNullStatus = this.valueIfTrue.nullStatus(analyseCode2, flowContext);
            flowContext.expireNullCheckedFieldInfo();
        }
        FlowInfo copy2 = analyseCode.initsWhenFalse().copy();
        if (z11) {
            if ((reachMode & 3) == 0) {
                copy2.setReachMode(1);
            }
            if (!Statement.isKnowDeadCodePattern(this.condition) || compilerOptions.reportDeadCodeInTrivialIfStatement) {
                this.valueIfFalse.complainIfUnreachable(copy2, blockScope, i10, true);
            }
        }
        this.falseInitStateIndex = blockScope.methodScope().recordInitializationStates(copy2);
        FlowInfo analyseCode3 = this.valueIfFalse.analyseCode(blockScope, flowContext, copy2);
        this.valueIfFalse.checkNPEbyUnboxing(blockScope, flowContext, analyseCode3);
        flowContext.conditionalLevel--;
        if (z11) {
            conditional = analyseCode2.addPotentialInitializationsFrom(analyseCode3);
            int i11 = this.ifTrueNullStatus;
            if (i11 != -1) {
                this.nullStatus = i11;
            } else {
                this.nullStatus = this.valueIfTrue.nullStatus(analyseCode2, flowContext);
            }
        } else if (z12) {
            FlowInfo addPotentialInitializationsFrom = analyseCode3.addPotentialInitializationsFrom(analyseCode2);
            this.nullStatus = this.valueIfFalse.nullStatus(analyseCode3, flowContext);
            conditional = addPotentialInitializationsFrom;
        } else {
            computeNullStatus(analyseCode2, analyseCode3, flowContext);
            Constant constant2 = this.optimizedIfTrueConstant;
            boolean z13 = (constant2 == null || constant2 == constant || !constant2.booleanValue()) ? false : true;
            boolean z14 = (constant2 == null || constant2 == constant || constant2.booleanValue()) ? false : true;
            Constant constant3 = this.optimizedIfFalseConstant;
            boolean z15 = (constant3 == null || constant3 == constant || !constant3.booleanValue()) ? false : true;
            if (constant3 != null && constant3 != constant && !constant3.booleanValue()) {
                z10 = true;
            }
            UnconditionalFlowInfo unconditionalCopy = analyseCode2.initsWhenTrue().unconditionalCopy();
            UnconditionalFlowInfo unconditionalCopy2 = analyseCode3.initsWhenTrue().unconditionalCopy();
            UnconditionalFlowInfo unconditionalInits = analyseCode2.initsWhenFalse().unconditionalInits();
            UnconditionalFlowInfo unconditionalInits2 = analyseCode3.initsWhenFalse().unconditionalInits();
            if (z14) {
                unconditionalCopy.setReachMode(1);
            }
            if (z10) {
                unconditionalCopy2.setReachMode(1);
            }
            if (z13) {
                unconditionalInits.setReachMode(1);
            }
            if (z15) {
                unconditionalInits2.setReachMode(1);
            }
            conditional = FlowInfo.conditional(unconditionalCopy.mergedWith(unconditionalCopy2), unconditionalInits.mergedWith(unconditionalInits2));
        }
        this.mergedInitStateIndex = blockScope.methodScope().recordInitializationStates(conditional);
        conditional.setReachMode(reachMode);
        return conditional;
    }

    @Override
    public boolean checkNPE(BlockScope blockScope, FlowContext flowContext, FlowInfo flowInfo, int i10) {
        int i11 = this.nullStatus;
        if ((i11 & 2) != 0) {
            blockScope.problemReporter().expressionNullReference(this);
            return true;
        }
        if ((i11 & 16) == 0) {
            return true;
        }
        blockScope.problemReporter().expressionPotentialNullReference(this);
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x00d6  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean computeConversions(BlockScope blockScope, TypeBinding typeBinding) {
        boolean z10;
        TypeBinding typeBinding2;
        Expression expression;
        TypeBinding typeBinding3 = this.originalValueIfTrueType;
        if (typeBinding3 != null && typeBinding3.isValidBinding()) {
            if (this.valueIfTrue.isConstantValueOfTypeAssignableToType(this.originalValueIfTrueType, typeBinding) || this.originalValueIfTrueType.isCompatibleWith(typeBinding)) {
                this.valueIfTrue.computeConversion(blockScope, typeBinding, this.originalValueIfTrueType);
                if (this.originalValueIfTrueType.needsUncheckedConversion(typeBinding)) {
                    blockScope.problemReporter().unsafeTypeConversion(this.valueIfTrue, this.originalValueIfTrueType, typeBinding);
                }
                Expression expression2 = this.valueIfTrue;
                if ((expression2 instanceof CastExpression) && (expression2.bits & 16416) == 0) {
                    CastExpression.checkNeedForAssignedCast(blockScope, typeBinding, (CastExpression) expression2);
                }
            } else {
                if (!isBoxingCompatible(this.originalValueIfTrueType, typeBinding, this.valueIfTrue, blockScope)) {
                    blockScope.problemReporter().typeMismatchError(this.originalValueIfTrueType, typeBinding, this.valueIfTrue, (ASTNode) null);
                    z10 = false;
                    typeBinding2 = this.originalValueIfFalseType;
                    if (typeBinding2 != null && typeBinding2.isValidBinding()) {
                        if (!this.valueIfFalse.isConstantValueOfTypeAssignableToType(this.originalValueIfFalseType, typeBinding) || this.originalValueIfFalseType.isCompatibleWith(typeBinding)) {
                            this.valueIfFalse.computeConversion(blockScope, typeBinding, this.originalValueIfFalseType);
                            if (this.originalValueIfFalseType.needsUncheckedConversion(typeBinding)) {
                                blockScope.problemReporter().unsafeTypeConversion(this.valueIfFalse, this.originalValueIfFalseType, typeBinding);
                            }
                            expression = this.valueIfFalse;
                            if ((expression instanceof CastExpression) && (expression.bits & 16416) == 0) {
                                CastExpression.checkNeedForAssignedCast(blockScope, typeBinding, (CastExpression) expression);
                            }
                        } else {
                            if (!isBoxingCompatible(this.originalValueIfFalseType, typeBinding, this.valueIfFalse, blockScope)) {
                                blockScope.problemReporter().typeMismatchError(this.originalValueIfFalseType, typeBinding, this.valueIfFalse, (ASTNode) null);
                                return false;
                            }
                            this.valueIfFalse.computeConversion(blockScope, typeBinding, this.originalValueIfFalseType);
                            Expression expression3 = this.valueIfFalse;
                            if ((expression3 instanceof CastExpression) && (expression3.bits & 16416) == 0) {
                                CastExpression.checkNeedForAssignedCast(blockScope, typeBinding, (CastExpression) expression3);
                            }
                        }
                    }
                    return z10;
                }
                this.valueIfTrue.computeConversion(blockScope, typeBinding, this.originalValueIfTrueType);
                Expression expression4 = this.valueIfTrue;
                if ((expression4 instanceof CastExpression) && (expression4.bits & 16416) == 0) {
                    CastExpression.checkNeedForAssignedCast(blockScope, typeBinding, (CastExpression) expression4);
                }
            }
        }
        z10 = true;
        typeBinding2 = this.originalValueIfFalseType;
        if (typeBinding2 != null) {
            if (this.valueIfFalse.isConstantValueOfTypeAssignableToType(this.originalValueIfFalseType, typeBinding)) {
            }
            this.valueIfFalse.computeConversion(blockScope, typeBinding, this.originalValueIfFalseType);
            if (this.originalValueIfFalseType.needsUncheckedConversion(typeBinding)) {
            }
            expression = this.valueIfFalse;
            if (expression instanceof CastExpression) {
                CastExpression.checkNeedForAssignedCast(blockScope, typeBinding, (CastExpression) expression);
            }
        }
        return z10;
    }

    @Override
    public void generateCode(BlockScope blockScope, CodeStream codeStream, boolean z10) {
        int i10 = codeStream.position;
        Constant constant = this.constant;
        Constant constant2 = Constant.NotAConstant;
        if (constant != constant2) {
            if (z10) {
                codeStream.generateConstant(constant, this.implicitConversion);
            }
            codeStream.recordPositionsFrom(i10, this.sourceStart);
            return;
        }
        Constant optimizedBooleanConstant = this.condition.optimizedBooleanConstant();
        boolean z11 = optimizedBooleanConstant == constant2 || optimizedBooleanConstant.booleanValue();
        boolean z12 = optimizedBooleanConstant == constant2 || !optimizedBooleanConstant.booleanValue();
        BranchLabel branchLabel = new BranchLabel(codeStream);
        BranchLabel branchLabel2 = new BranchLabel(codeStream);
        branchLabel2.tagBits |= 2;
        this.condition.generateOptimizedBoolean(blockScope, codeStream, null, branchLabel2, optimizedBooleanConstant == constant2);
        int i11 = this.trueInitStateIndex;
        if (i11 != -1) {
            codeStream.removeNotDefinitelyAssignedVariables(blockScope, i11);
            codeStream.addDefinitelyAssignedVariables(blockScope, this.trueInitStateIndex);
        }
        if (z11) {
            this.valueIfTrue.generateCode(blockScope, codeStream, z10);
            if (z12) {
                int i12 = codeStream.position;
                codeStream.goto_(branchLabel);
                codeStream.recordPositionsFrom(i12, this.valueIfTrue.sourceEnd);
                if (z10) {
                    int i13 = this.resolvedType.f102482id;
                    if (i13 == 7 || i13 == 8) {
                        codeStream.decrStackSize(2);
                    } else {
                        codeStream.decrStackSize(1);
                    }
                }
            }
        }
        if (z12) {
            int i14 = this.falseInitStateIndex;
            if (i14 != -1) {
                codeStream.removeNotDefinitelyAssignedVariables(blockScope, i14);
                codeStream.addDefinitelyAssignedVariables(blockScope, this.falseInitStateIndex);
            }
            if (branchLabel2.forwardReferenceCount() > 0) {
                branchLabel2.place();
            }
            this.valueIfFalse.generateCode(blockScope, codeStream, z10);
            if (z10) {
                codeStream.recordExpressionType(this.resolvedType);
            }
            if (z11) {
                branchLabel.place();
            }
        }
        int i15 = this.mergedInitStateIndex;
        if (i15 != -1) {
            codeStream.removeNotDefinitelyAssignedVariables(blockScope, i15);
        }
        if (z10) {
            codeStream.generateImplicitConversion(this.implicitConversion);
        }
        codeStream.recordPositionsFrom(i10, this.sourceStart);
    }

    @Override
    public void generateOptimizedBoolean(BlockScope blockScope, CodeStream codeStream, BranchLabel branchLabel, BranchLabel branchLabel2, boolean z10) {
        Constant constant;
        Constant constant2;
        int i10 = codeStream.position;
        Constant constant3 = this.constant;
        Constant constant4 = Constant.NotAConstant;
        if ((constant3 != constant4 && constant3.typeID() == 5) || ((this.valueIfTrue.implicitConversion & 255) >> 4) != 5 || ((this.valueIfFalse.implicitConversion & 255) >> 4) != 5) {
            super.generateOptimizedBoolean(blockScope, codeStream, branchLabel, branchLabel2, z10);
            return;
        }
        Expression expression = this.condition;
        Constant constant5 = expression.constant;
        Constant optimizedBooleanConstant = expression.optimizedBooleanConstant();
        boolean z11 = (constant5 == constant4 || constant5.booleanValue()) && (optimizedBooleanConstant == constant4 || optimizedBooleanConstant.booleanValue());
        boolean z12 = (constant5 == constant4 || !constant5.booleanValue()) && (optimizedBooleanConstant == constant4 || !optimizedBooleanConstant.booleanValue());
        BranchLabel branchLabel3 = new BranchLabel(codeStream);
        boolean z13 = constant5 == constant4 && optimizedBooleanConstant == constant4;
        Expression expression2 = this.condition;
        BranchLabel branchLabel4 = new BranchLabel(codeStream);
        expression2.generateOptimizedBoolean(blockScope, codeStream, null, branchLabel4, z13);
        int i11 = this.trueInitStateIndex;
        if (i11 != -1) {
            codeStream.removeNotDefinitelyAssignedVariables(blockScope, i11);
            codeStream.addDefinitelyAssignedVariables(blockScope, this.trueInitStateIndex);
        }
        if (z11) {
            this.valueIfTrue.generateOptimizedBoolean(blockScope, codeStream, branchLabel, branchLabel2, z10);
            if (z12 && (branchLabel2 != null ? branchLabel != null || (constant = this.optimizedIfTrueConstant) == null || constant == constant4 || constant.booleanValue() : branchLabel == null || (constant2 = this.optimizedIfTrueConstant) == null || constant2 == constant4 || !constant2.booleanValue())) {
                int i12 = codeStream.position;
                codeStream.goto_(branchLabel3);
                codeStream.recordPositionsFrom(i12, this.valueIfTrue.sourceEnd);
            }
        }
        if (z12) {
            branchLabel4.place();
            int i13 = this.falseInitStateIndex;
            if (i13 != -1) {
                codeStream.removeNotDefinitelyAssignedVariables(blockScope, i13);
                codeStream.addDefinitelyAssignedVariables(blockScope, this.falseInitStateIndex);
            }
            this.valueIfFalse.generateOptimizedBoolean(blockScope, codeStream, branchLabel, branchLabel2, z10);
            branchLabel3.place();
        }
        int i14 = this.mergedInitStateIndex;
        if (i14 != -1) {
            codeStream.removeNotDefinitelyAssignedVariables(blockScope, i14);
        }
        codeStream.recordPositionsFrom(i10, this.sourceEnd);
    }

    @Override
    public ExpressionContext getExpressionContext() {
        return this.expressionContext;
    }

    @Override
    public Expression[] getPolyExpressions() {
        Expression[] polyExpressions = this.valueIfTrue.getPolyExpressions();
        Expression[] polyExpressions2 = this.valueIfFalse.getPolyExpressions();
        if (polyExpressions.length == 0) {
            return polyExpressions2;
        }
        if (polyExpressions2.length == 0) {
            return polyExpressions;
        }
        Expression[] expressionArr = new Expression[polyExpressions.length + polyExpressions2.length];
        System.arraycopy(polyExpressions, 0, expressionArr, 0, polyExpressions.length);
        System.arraycopy(polyExpressions2, 0, expressionArr, polyExpressions.length, polyExpressions2.length);
        return expressionArr;
    }

    @Override
    public boolean isBoxingCompatibleWith(TypeBinding typeBinding, Scope scope) {
        return isPolyExpression() ? (this.valueIfTrue.isCompatibleWith(typeBinding, scope) || this.valueIfTrue.isBoxingCompatibleWith(typeBinding, scope)) && (this.valueIfFalse.isCompatibleWith(typeBinding, scope) || this.valueIfFalse.isBoxingCompatibleWith(typeBinding, scope)) : super.isBoxingCompatibleWith(typeBinding, scope);
    }

    @Override
    public boolean isCompatibleWith(TypeBinding typeBinding, Scope scope) {
        return isPolyExpression() ? this.valueIfTrue.isCompatibleWith(typeBinding, scope) && this.valueIfFalse.isCompatibleWith(typeBinding, scope) : super.isCompatibleWith(typeBinding, scope);
    }

    @Override
    public boolean isFunctionalType() {
        return this.valueIfTrue.isFunctionalType() || this.valueIfFalse.isFunctionalType();
    }

    @Override
    public boolean isPertinentToApplicability(TypeBinding typeBinding, MethodBinding methodBinding) {
        return this.valueIfTrue.isPertinentToApplicability(typeBinding, methodBinding) && this.valueIfFalse.isPertinentToApplicability(typeBinding, methodBinding);
    }

    @Override
    public boolean isPolyExpression() throws UnsupportedOperationException {
        int i10;
        int i11;
        if (!this.use18specifics) {
            return false;
        }
        if (this.isPolyExpression) {
            return true;
        }
        ExpressionContext expressionContext = this.expressionContext;
        if ((expressionContext != ExpressionContext.ASSIGNMENT_CONTEXT && expressionContext != ExpressionContext.INVOCATION_CONTEXT) || this.originalValueIfTrueType == null || this.originalValueIfFalseType == null) {
            return false;
        }
        if (this.valueIfTrue.isPolyExpression() || this.valueIfFalse.isPolyExpression()) {
            return true;
        }
        if ((this.originalValueIfTrueType.isBaseType() || ((i11 = this.originalValueIfTrueType.f102482id) >= 26 && i11 <= 33)) && (this.originalValueIfFalseType.isBaseType() || ((i10 = this.originalValueIfFalseType.f102482id) >= 26 && i10 <= 33))) {
            return false;
        }
        this.isPolyExpression = true;
        return true;
    }

    @Override
    public boolean isPotentiallyCompatibleWith(TypeBinding typeBinding, Scope scope) {
        return this.valueIfTrue.isPotentiallyCompatibleWith(typeBinding, scope) && this.valueIfFalse.isPotentiallyCompatibleWith(typeBinding, scope);
    }

    @Override
    public int nullStatus(FlowInfo flowInfo, FlowContext flowContext) {
        if ((this.implicitConversion & 512) != 0) {
            return 4;
        }
        return this.nullStatus;
    }

    @Override
    public Constant optimizedBooleanConstant() {
        Constant constant = this.optimizedBooleanConstant;
        return constant == null ? this.constant : constant;
    }

    @Override
    public StringBuffer printExpressionNoParenthesis(int i10, StringBuffer stringBuffer) {
        this.condition.printExpression(i10, stringBuffer).append(" ? ");
        this.valueIfTrue.printExpression(0, stringBuffer).append(" : ");
        return this.valueIfFalse.printExpression(0, stringBuffer);
    }

    @Override
    public TypeBinding resolveType(BlockScope blockScope) {
        Constant constant;
        Constant constant2;
        ExpressionContext expressionContext;
        LookupEnvironment environment = blockScope.environment();
        long j10 = blockScope.compilerOptions().sourceLevel;
        boolean z10 = j10 >= ClassFileConstants.JDK1_5;
        boolean z11 = j10 >= ClassFileConstants.JDK1_8;
        this.use18specifics = z11;
        if (z11 && ((expressionContext = this.expressionContext) == ExpressionContext.ASSIGNMENT_CONTEXT || expressionContext == ExpressionContext.INVOCATION_CONTEXT)) {
            this.valueIfTrue.setExpressionContext(expressionContext);
            this.valueIfTrue.setExpectedType(this.expectedType);
            this.valueIfFalse.setExpressionContext(this.expressionContext);
            this.valueIfFalse.setExpectedType(this.expectedType);
        }
        Constant constant3 = this.constant;
        Constant constant4 = Constant.NotAConstant;
        if (constant3 != constant4) {
            this.constant = constant4;
            Expression expression = this.condition;
            BaseTypeBinding baseTypeBinding = TypeBinding.BOOLEAN;
            TypeBinding resolveTypeExpecting = expression.resolveTypeExpecting(blockScope, baseTypeBinding);
            this.condition.computeConversion(blockScope, baseTypeBinding, resolveTypeExpecting);
            Expression expression2 = this.valueIfTrue;
            if (expression2 instanceof CastExpression) {
                expression2.bits |= 32;
            }
            this.originalValueIfTrueType = expression2.resolveType(blockScope);
            Expression expression3 = this.valueIfFalse;
            if (expression3 instanceof CastExpression) {
                expression3.bits |= 32;
            }
            TypeBinding resolveType = expression3.resolveType(blockScope);
            this.originalValueIfFalseType = resolveType;
            if (resolveTypeExpecting == null || this.originalValueIfTrueType == null || resolveType == null) {
                return null;
            }
        } else {
            if (this.originalValueIfTrueType.kind() == 65540) {
                this.originalValueIfTrueType = this.valueIfTrue.resolveType(blockScope);
            }
            if (this.originalValueIfFalseType.kind() == 65540) {
                this.originalValueIfFalseType = this.valueIfFalse.resolveType(blockScope);
            }
            TypeBinding typeBinding = this.originalValueIfTrueType;
            if (typeBinding == null || !typeBinding.isValidBinding()) {
                this.resolvedType = null;
                return null;
            }
            TypeBinding typeBinding2 = this.originalValueIfFalseType;
            if (typeBinding2 == null || !typeBinding2.isValidBinding()) {
                this.resolvedType = null;
                return null;
            }
        }
        if (isPolyExpression()) {
            TypeBinding typeBinding3 = this.expectedType;
            if (typeBinding3 == null || !typeBinding3.isProperType(true)) {
                return new PolyTypeBinding(this);
            }
            TypeBinding typeBinding4 = computeConversions(blockScope, this.expectedType) ? this.expectedType : null;
            this.resolvedType = typeBinding4;
            return typeBinding4;
        }
        TypeBinding typeBinding5 = this.originalValueIfTrueType;
        TypeBinding typeBinding6 = this.originalValueIfFalseType;
        if (z10 && TypeBinding.notEquals(typeBinding5, typeBinding6)) {
            if (typeBinding5.isBaseType()) {
                if (typeBinding6.isBaseType()) {
                    NullTypeBinding nullTypeBinding = TypeBinding.NULL;
                    if (typeBinding5 == nullTypeBinding) {
                        typeBinding6 = environment.computeBoxingType(typeBinding6);
                    } else if (typeBinding6 == nullTypeBinding) {
                        typeBinding5 = environment.computeBoxingType(typeBinding5);
                    }
                } else {
                    TypeBinding computeBoxingType = typeBinding6.isBaseType() ? typeBinding6 : environment.computeBoxingType(typeBinding6);
                    if (typeBinding5.isNumericType() && computeBoxingType.isNumericType()) {
                        typeBinding6 = computeBoxingType;
                    } else if (typeBinding5 != TypeBinding.NULL) {
                        typeBinding6 = environment.computeBoxingType(typeBinding6);
                    }
                }
            } else if (typeBinding6.isBaseType()) {
                TypeBinding computeBoxingType2 = typeBinding5.isBaseType() ? typeBinding5 : environment.computeBoxingType(typeBinding5);
                if (computeBoxingType2.isNumericType() && typeBinding6.isNumericType()) {
                    typeBinding5 = computeBoxingType2;
                } else if (typeBinding6 != TypeBinding.NULL) {
                    typeBinding5 = environment.computeBoxingType(typeBinding5);
                }
            } else {
                TypeBinding computeBoxingType3 = environment.computeBoxingType(typeBinding5);
                TypeBinding computeBoxingType4 = environment.computeBoxingType(typeBinding6);
                if (computeBoxingType3.isNumericType() && computeBoxingType4.isNumericType()) {
                    typeBinding5 = computeBoxingType3;
                    typeBinding6 = computeBoxingType4;
                }
            }
        }
        Constant constant5 = this.condition.constant;
        if (constant5 != constant4 && (constant = this.valueIfTrue.constant) != constant4 && (constant2 = this.valueIfFalse.constant) != constant4) {
            if (!constant5.booleanValue()) {
                constant = constant2;
            }
            this.constant = constant;
        }
        if (TypeBinding.equalsEquals(typeBinding5, typeBinding6)) {
            this.valueIfTrue.computeConversion(blockScope, typeBinding5, this.originalValueIfTrueType);
            this.valueIfFalse.computeConversion(blockScope, typeBinding6, this.originalValueIfFalseType);
            if (TypeBinding.equalsEquals(typeBinding5, TypeBinding.BOOLEAN)) {
                this.optimizedIfTrueConstant = this.valueIfTrue.optimizedBooleanConstant();
                Constant optimizedBooleanConstant = this.valueIfFalse.optimizedBooleanConstant();
                this.optimizedIfFalseConstant = optimizedBooleanConstant;
                Constant constant6 = this.optimizedIfTrueConstant;
                if (constant6 == constant4 || optimizedBooleanConstant == constant4 || constant6.booleanValue() != this.optimizedIfFalseConstant.booleanValue()) {
                    Constant optimizedBooleanConstant2 = this.condition.optimizedBooleanConstant();
                    if (optimizedBooleanConstant2 != constant4) {
                        this.optimizedBooleanConstant = optimizedBooleanConstant2.booleanValue() ? this.optimizedIfTrueConstant : this.optimizedIfFalseConstant;
                    }
                } else {
                    this.optimizedBooleanConstant = this.optimizedIfTrueConstant;
                }
            }
            TypeBinding moreDangerousType = NullAnnotationMatching.moreDangerousType(typeBinding5, typeBinding6);
            this.resolvedType = moreDangerousType;
            return moreDangerousType;
        }
        if (!typeBinding5.isNumericType() || !typeBinding6.isNumericType()) {
            if (typeBinding5.isBaseType() && typeBinding5 != TypeBinding.NULL) {
                if (!z10) {
                    blockScope.problemReporter().conditionalArgumentsIncompatibleTypes(this, typeBinding5, typeBinding6);
                    return null;
                }
                typeBinding5 = environment.computeBoxingType(typeBinding5);
            }
            if (typeBinding6.isBaseType() && typeBinding6 != TypeBinding.NULL) {
                if (!z10) {
                    blockScope.problemReporter().conditionalArgumentsIncompatibleTypes(this, typeBinding5, typeBinding6);
                    return null;
                }
                typeBinding6 = environment.computeBoxingType(typeBinding6);
            }
            if (z10) {
                NullTypeBinding nullTypeBinding2 = TypeBinding.NULL;
                TypeBinding lowerUpperBound = typeBinding5 == nullTypeBinding2 ? typeBinding6 : typeBinding6 == nullTypeBinding2 ? typeBinding5 : blockScope.lowerUpperBound(new TypeBinding[]{typeBinding5, typeBinding6});
                if (lowerUpperBound != null) {
                    this.valueIfTrue.computeConversion(blockScope, lowerUpperBound, this.originalValueIfTrueType);
                    this.valueIfFalse.computeConversion(blockScope, lowerUpperBound, this.originalValueIfFalseType);
                    TypeBinding capture = lowerUpperBound.capture(blockScope, this.sourceStart, this.sourceEnd);
                    this.resolvedType = capture;
                    return capture;
                }
            } else {
                if (typeBinding6.isCompatibleWith(typeBinding5)) {
                    this.valueIfTrue.computeConversion(blockScope, typeBinding5, this.originalValueIfTrueType);
                    this.valueIfFalse.computeConversion(blockScope, typeBinding5, this.originalValueIfFalseType);
                    this.resolvedType = typeBinding5;
                    return typeBinding5;
                }
                if (typeBinding5.isCompatibleWith(typeBinding6)) {
                    this.valueIfTrue.computeConversion(blockScope, typeBinding6, this.originalValueIfTrueType);
                    this.valueIfFalse.computeConversion(blockScope, typeBinding6, this.originalValueIfFalseType);
                    this.resolvedType = typeBinding6;
                    return typeBinding6;
                }
            }
            blockScope.problemReporter().conditionalArgumentsIncompatibleTypes(this, typeBinding5, typeBinding6);
            return null;
        }
        BaseTypeBinding baseTypeBinding2 = TypeBinding.BYTE;
        if (!TypeBinding.equalsEquals(typeBinding5, baseTypeBinding2) || !TypeBinding.equalsEquals(typeBinding6, TypeBinding.SHORT)) {
            BaseTypeBinding baseTypeBinding3 = TypeBinding.SHORT;
            if (!TypeBinding.equalsEquals(typeBinding5, baseTypeBinding3) || !TypeBinding.equalsEquals(typeBinding6, baseTypeBinding2)) {
                if ((TypeBinding.equalsEquals(typeBinding5, baseTypeBinding2) || TypeBinding.equalsEquals(typeBinding5, baseTypeBinding3) || TypeBinding.equalsEquals(typeBinding5, TypeBinding.CHAR)) && TypeBinding.equalsEquals(typeBinding6, TypeBinding.INT) && this.valueIfFalse.isConstantValueOfTypeAssignableToType(typeBinding6, typeBinding5)) {
                    this.valueIfTrue.computeConversion(blockScope, typeBinding5, this.originalValueIfTrueType);
                    this.valueIfFalse.computeConversion(blockScope, typeBinding5, this.originalValueIfFalseType);
                    this.resolvedType = typeBinding5;
                    return typeBinding5;
                }
                if ((TypeBinding.equalsEquals(typeBinding6, baseTypeBinding2) || TypeBinding.equalsEquals(typeBinding6, baseTypeBinding3) || TypeBinding.equalsEquals(typeBinding6, TypeBinding.CHAR)) && TypeBinding.equalsEquals(typeBinding5, TypeBinding.INT) && this.valueIfTrue.isConstantValueOfTypeAssignableToType(typeBinding5, typeBinding6)) {
                    this.valueIfTrue.computeConversion(blockScope, typeBinding6, this.originalValueIfTrueType);
                    this.valueIfFalse.computeConversion(blockScope, typeBinding6, this.originalValueIfFalseType);
                    this.resolvedType = typeBinding6;
                    return typeBinding6;
                }
                if (BaseTypeBinding.isNarrowing(typeBinding5.f102482id, 10) && BaseTypeBinding.isNarrowing(typeBinding6.f102482id, 10)) {
                    Expression expression4 = this.valueIfTrue;
                    BaseTypeBinding baseTypeBinding4 = TypeBinding.INT;
                    expression4.computeConversion(blockScope, baseTypeBinding4, this.originalValueIfTrueType);
                    this.valueIfFalse.computeConversion(blockScope, baseTypeBinding4, this.originalValueIfFalseType);
                    this.resolvedType = baseTypeBinding4;
                    return baseTypeBinding4;
                }
                if (BaseTypeBinding.isNarrowing(typeBinding5.f102482id, 7) && BaseTypeBinding.isNarrowing(typeBinding6.f102482id, 7)) {
                    Expression expression5 = this.valueIfTrue;
                    BaseTypeBinding baseTypeBinding5 = TypeBinding.LONG;
                    expression5.computeConversion(blockScope, baseTypeBinding5, this.originalValueIfTrueType);
                    this.valueIfFalse.computeConversion(blockScope, baseTypeBinding5, this.originalValueIfFalseType);
                    this.resolvedType = baseTypeBinding5;
                    return baseTypeBinding5;
                }
                if (BaseTypeBinding.isNarrowing(typeBinding5.f102482id, 9) && BaseTypeBinding.isNarrowing(typeBinding6.f102482id, 9)) {
                    Expression expression6 = this.valueIfTrue;
                    BaseTypeBinding baseTypeBinding6 = TypeBinding.FLOAT;
                    expression6.computeConversion(blockScope, baseTypeBinding6, this.originalValueIfTrueType);
                    this.valueIfFalse.computeConversion(blockScope, baseTypeBinding6, this.originalValueIfFalseType);
                    this.resolvedType = baseTypeBinding6;
                    return baseTypeBinding6;
                }
                Expression expression7 = this.valueIfTrue;
                BaseTypeBinding baseTypeBinding7 = TypeBinding.DOUBLE;
                expression7.computeConversion(blockScope, baseTypeBinding7, this.originalValueIfTrueType);
                this.valueIfFalse.computeConversion(blockScope, baseTypeBinding7, this.originalValueIfFalseType);
                this.resolvedType = baseTypeBinding7;
                return baseTypeBinding7;
            }
        }
        Expression expression8 = this.valueIfTrue;
        BaseTypeBinding baseTypeBinding8 = TypeBinding.SHORT;
        expression8.computeConversion(blockScope, baseTypeBinding8, this.originalValueIfTrueType);
        this.valueIfFalse.computeConversion(blockScope, baseTypeBinding8, this.originalValueIfFalseType);
        this.resolvedType = baseTypeBinding8;
        return baseTypeBinding8;
    }

    @Override
    public boolean sIsMoreSpecific(TypeBinding typeBinding, TypeBinding typeBinding2, Scope scope) {
        if (super.sIsMoreSpecific(typeBinding, typeBinding2, scope)) {
            return true;
        }
        return isPolyExpression() && this.valueIfTrue.sIsMoreSpecific(typeBinding, typeBinding2, scope) && this.valueIfFalse.sIsMoreSpecific(typeBinding, typeBinding2, scope);
    }

    @Override
    public void setExpectedType(TypeBinding typeBinding) {
        this.expectedType = typeBinding;
    }

    @Override
    public void setExpressionContext(ExpressionContext expressionContext) {
        this.expressionContext = expressionContext;
    }

    @Override
    public void traverse(ASTVisitor aSTVisitor, BlockScope blockScope) {
        if (aSTVisitor.visit(this, blockScope)) {
            this.condition.traverse(aSTVisitor, blockScope);
            this.valueIfTrue.traverse(aSTVisitor, blockScope);
            this.valueIfFalse.traverse(aSTVisitor, blockScope);
        }
        aSTVisitor.endVisit(this, blockScope);
    }
}
