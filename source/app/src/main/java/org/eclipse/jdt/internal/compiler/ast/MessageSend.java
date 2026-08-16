package org.eclipse.jdt.internal.compiler.ast;

import java.util.HashMap;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.ASTVisitor;
import org.eclipse.jdt.internal.compiler.classfmt.ClassFileConstants;
import org.eclipse.jdt.internal.compiler.codegen.CodeStream;
import org.eclipse.jdt.internal.compiler.codegen.Opcodes;
import org.eclipse.jdt.internal.compiler.flow.FlowContext;
import org.eclipse.jdt.internal.compiler.flow.FlowInfo;
import org.eclipse.jdt.internal.compiler.flow.UnconditionalFlowInfo;
import org.eclipse.jdt.internal.compiler.impl.CompilerOptions;
import org.eclipse.jdt.internal.compiler.impl.Constant;
import org.eclipse.jdt.internal.compiler.impl.IrritantSet;
import org.eclipse.jdt.internal.compiler.impl.ReferenceContext;
import org.eclipse.jdt.internal.compiler.lookup.ArrayBinding;
import org.eclipse.jdt.internal.compiler.lookup.Binding;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.FieldBinding;
import org.eclipse.jdt.internal.compiler.lookup.ImplicitNullAnnotationVerifier;
import org.eclipse.jdt.internal.compiler.lookup.InferenceContext18;
import org.eclipse.jdt.internal.compiler.lookup.InferenceVariable;
import org.eclipse.jdt.internal.compiler.lookup.LocalVariableBinding;
import org.eclipse.jdt.internal.compiler.lookup.MethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.MissingTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.PackageBinding;
import org.eclipse.jdt.internal.compiler.lookup.ParameterizedGenericMethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.ParameterizedMethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.PolyParameterizedGenericMethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.PolyTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.PolymorphicMethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.ProblemMethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.ProblemReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.RawTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.Scope;
import org.eclipse.jdt.internal.compiler.lookup.SourceTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.TagBits;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeConstants;
import org.eclipse.jdt.internal.compiler.lookup.TypeVariableBinding;
import org.eclipse.jdt.internal.compiler.util.SimpleLookupTable;

public class MessageSend extends Expression implements IPolyExpression, Invocation {
    private static final int FALSE_ASSERTION = 2;
    private static final int NONNULL_ASSERTION = 4;
    private static final int NULL_ASSERTION = 3;
    private static final int TRUE_ASSERTION = 1;
    public TypeBinding actualReceiverType;
    protected boolean argsContainCast;
    public Expression[] arguments;
    public MethodBinding binding;
    public TypeBinding expectedType;
    public TypeBinding[] genericTypeArguments;
    private SimpleLookupTable inferenceContexts;
    public long nameSourcePosition;
    private InferenceContext18 outerInferenceContext;
    public Expression receiver;
    private boolean receiverIsType;
    public char[] selector;
    private HashMap<TypeBinding, MethodBinding> solutionsPerTargetType;
    public MethodBinding syntheticAccessor;
    public TypeReference[] typeArguments;
    public TypeBinding valueCast;
    public ExpressionContext expressionContext = ExpressionContext.VANILLA_CONTEXT;
    public TypeBinding[] argumentTypes = Binding.NO_PARAMETERS;
    public boolean argumentsHaveErrors = false;

    private FlowInfo analyseBooleanAssertion(BlockScope blockScope, Expression expression, FlowContext flowContext, FlowInfo flowInfo, boolean z10, boolean z11) {
        UnconditionalFlowInfo unconditionalInits;
        FlowInfo initsWhenTrue;
        Constant optimizedBooleanConstant = expression.optimizedBooleanConstant();
        Constant constant = Constant.NotAConstant;
        boolean z12 = false;
        boolean z13 = optimizedBooleanConstant != constant && optimizedBooleanConstant.booleanValue();
        if (optimizedBooleanConstant != constant && !optimizedBooleanConstant.booleanValue()) {
            z12 = true;
        }
        int i10 = flowContext.tagBits;
        flowContext.tagBits = i10 | 4096;
        if (!z11) {
            flowContext.tagBits = i10 | 4100;
        }
        FlowInfo analyseCode = expression.analyseCode(blockScope, flowContext, flowInfo.copy());
        flowContext.extendTimeToLiveForNullCheckedField(2);
        flowContext.tagBits = i10;
        if (z11) {
            unconditionalInits = analyseCode.initsWhenTrue().unconditionalInits();
            initsWhenTrue = analyseCode.initsWhenFalse();
        } else {
            unconditionalInits = analyseCode.initsWhenFalse().unconditionalInits();
            initsWhenTrue = analyseCode.initsWhenTrue();
            boolean z14 = z13;
            z13 = z12;
            z12 = z14;
        }
        if (z13) {
            initsWhenTrue.setReachMode(1);
        }
        return !z12 ? flowInfo.mergedWith(initsWhenTrue.nullInfoLessUnconditionalCopy()).addInitializationsFrom(unconditionalInits.discardInitializationInfo()) : flowInfo;
    }

    private FlowInfo analyseNullAssertion(BlockScope blockScope, Expression expression, FlowContext flowContext, FlowInfo flowInfo, boolean z10) {
        Reference reference;
        FieldBinding lastFieldBinding;
        boolean z11 = expression.nullStatus(flowInfo, flowContext) == (z10 ? 4 : 2);
        UnconditionalFlowInfo unconditionalInits = expression.analyseCode(blockScope, flowContext, flowInfo).unconditionalInits();
        LocalVariableBinding localVariableBinding = expression.localVariableBinding();
        if (localVariableBinding != null) {
            if (z10) {
                unconditionalInits.markAsDefinitelyNull(localVariableBinding);
            } else {
                unconditionalInits.markAsDefinitelyNonNull(localVariableBinding);
            }
        } else if (!z10 && (expression instanceof Reference) && blockScope.compilerOptions().enableSyntacticNullAnalysisForFields && (lastFieldBinding = (reference = (Reference) expression).lastFieldBinding()) != null && (lastFieldBinding.type.tagBits & 2) == 0) {
            flowContext.recordNullCheckedFieldReference(reference, 3);
        }
        if (z11) {
            unconditionalInits.setReachMode(2);
        }
        return unconditionalInits;
    }

    private int detectAssertionUtility(int i10) {
        TypeBinding[] typeBindingArr = this.binding.original().parameters;
        if (i10 >= typeBindingArr.length) {
            return 0;
        }
        TypeBinding typeBinding = typeBindingArr[i10];
        ReferenceBinding referenceBinding = this.binding.declaringClass;
        if (referenceBinding == null || typeBinding == null) {
            return 0;
        }
        switch (referenceBinding.f102482id) {
            case 68:
                int i11 = typeBinding.f102482id;
                if (i11 == 5) {
                    return 1;
                }
                return (i11 == 1 && CharOperation.equals(TypeConstants.IS_NOTNULL, this.selector)) ? 4 : 0;
            case 69:
            case 70:
                int i12 = typeBinding.f102482id;
                if (i12 == 5) {
                    if (CharOperation.equals(TypeConstants.ASSERT_TRUE, this.selector)) {
                        return 1;
                    }
                    return CharOperation.equals(TypeConstants.ASSERT_FALSE, this.selector) ? 2 : 0;
                }
                if (i12 != 1) {
                    return 0;
                }
                if (CharOperation.equals(TypeConstants.ASSERT_NOTNULL, this.selector)) {
                    return 4;
                }
                return CharOperation.equals(TypeConstants.ASSERT_NULL, this.selector) ? 3 : 0;
            case 71:
                int i13 = typeBinding.f102482id;
                return i13 == 5 ? CharOperation.equals(TypeConstants.IS_TRUE, this.selector) ? 1 : 0 : (i13 == 1 && CharOperation.equals(TypeConstants.NOT_NULL, this.selector)) ? 4 : 0;
            case 72:
                return typeBinding.f102482id == 5 ? CharOperation.equals(TypeConstants.IS_TRUE, this.selector) ? 1 : 0 : (typeBinding.isTypeVariable() && CharOperation.equals(TypeConstants.NOT_NULL, this.selector)) ? 4 : 0;
            case 73:
                return typeBinding.f102482id == 5 ? (CharOperation.equals(TypeConstants.CHECK_ARGUMENT, this.selector) || CharOperation.equals(TypeConstants.CHECK_STATE, this.selector)) ? 1 : 0 : (typeBinding.isTypeVariable() && CharOperation.equals(TypeConstants.CHECK_NOT_NULL, this.selector)) ? 4 : 0;
            case 74:
                return (typeBinding.isTypeVariable() && CharOperation.equals(TypeConstants.REQUIRE_NON_NULL, this.selector)) ? 4 : 0;
            default:
                return 0;
        }
    }

    private void recordCallingClose(BlockScope blockScope, FlowContext flowContext, FlowInfo flowInfo, Expression expression) {
        FakedTrackingVariable closeTrackingVariable = FakedTrackingVariable.getCloseTrackingVariable(expression, flowInfo, flowContext);
        if (closeTrackingVariable != null) {
            if (closeTrackingVariable.methodScope == blockScope.methodScope()) {
                closeTrackingVariable.markClose(flowInfo, flowContext);
            } else {
                closeTrackingVariable.markClosedInNestedMethod();
            }
        }
    }

    @Override
    public FlowInfo analyseCode(BlockScope blockScope, FlowContext flowContext, FlowInfo flowInfo) {
        Expression expression;
        int i10;
        int i11;
        int i12;
        FlowInfo analyseBooleanAssertion;
        Expression[] expressionArr;
        boolean isStatic = this.binding.isStatic();
        boolean z10 = !isStatic;
        boolean z11 = (flowContext.tagBits & 4096) != 0;
        FlowInfo unconditionalInits = this.receiver.analyseCode(blockScope, flowContext, flowInfo, z10).unconditionalInits();
        CompilerOptions compilerOptions = blockScope.compilerOptions();
        boolean z12 = compilerOptions.analyseResourceLeaks;
        if (z12) {
            if (isStatic) {
                Expression[] expressionArr2 = this.arguments;
                if (expressionArr2 != null && expressionArr2.length > 0 && FakedTrackingVariable.isAnyCloseable(expressionArr2[0].resolvedType)) {
                    int i13 = 0;
                    while (true) {
                        TypeConstants.CloseMethodRecord[] closeMethodRecordArr = TypeConstants.closeMethods;
                        if (i13 >= closeMethodRecordArr.length) {
                            break;
                        }
                        TypeConstants.CloseMethodRecord closeMethodRecord = closeMethodRecordArr[i13];
                        if (CharOperation.equals(closeMethodRecord.selector, this.selector) && CharOperation.equals(closeMethodRecord.typeName, this.binding.declaringClass.compoundName)) {
                            int min = Math.min(closeMethodRecord.numCloseableArgs, this.arguments.length);
                            for (int i14 = 0; i14 < min; i14++) {
                                recordCallingClose(blockScope, flowContext, unconditionalInits, this.arguments[i14]);
                            }
                        } else {
                            i13++;
                        }
                    }
                }
            } else if (CharOperation.equals(TypeConstants.CLOSE, this.selector)) {
                recordCallingClose(blockScope, flowContext, unconditionalInits, this.receiver);
            }
        }
        if (compilerOptions.isAnyEnabled(IrritantSet.UNLIKELY_ARGUMENT_TYPE) && this.binding.isValidBinding() && (expressionArr = this.arguments) != null) {
            if (expressionArr.length == 1 && !this.binding.isStatic()) {
                UnlikelyArgumentCheck determineCheckForNonStaticSingleArgumentMethod = UnlikelyArgumentCheck.determineCheckForNonStaticSingleArgumentMethod(this.argumentTypes[0], blockScope, this.selector, this.actualReceiverType, this.binding.parameters);
                if (determineCheckForNonStaticSingleArgumentMethod != null && determineCheckForNonStaticSingleArgumentMethod.isDangerous(blockScope)) {
                    blockScope.problemReporter().unlikelyArgumentType(this.arguments[0], this.binding, this.argumentTypes[0], determineCheckForNonStaticSingleArgumentMethod.typeToReport, determineCheckForNonStaticSingleArgumentMethod.dangerousMethod);
                }
            } else if (this.arguments.length == 2 && this.binding.isStatic()) {
                TypeBinding[] typeBindingArr = this.argumentTypes;
                UnlikelyArgumentCheck determineCheckForStaticTwoArgumentMethod = UnlikelyArgumentCheck.determineCheckForStaticTwoArgumentMethod(typeBindingArr[1], blockScope, this.selector, typeBindingArr[0], this.binding.parameters, this.actualReceiverType);
                if (determineCheckForStaticTwoArgumentMethod != null && determineCheckForStaticTwoArgumentMethod.isDangerous(blockScope)) {
                    blockScope.problemReporter().unlikelyArgumentType(this.arguments[1], this.binding, this.argumentTypes[1], determineCheckForStaticTwoArgumentMethod.typeToReport, determineCheckForStaticTwoArgumentMethod.dangerousMethod);
                }
            }
        }
        int i15 = 3;
        if (!isStatic) {
            this.receiver.checkNPE(blockScope, flowContext, unconditionalInits, (this.bits & 1048576) != 0 ? 3 : 2);
        }
        Expression[] expressionArr3 = this.arguments;
        if (expressionArr3 != null) {
            int length = expressionArr3.length;
            int i16 = 0;
            while (i16 < length) {
                Expression expression2 = this.arguments[i16];
                expression2.checkNPEbyUnboxing(blockScope, flowContext, unconditionalInits);
                int detectAssertionUtility = detectAssertionUtility(i16);
                if (detectAssertionUtility == 1) {
                    expression = expression2;
                    i10 = i16;
                    i11 = i15;
                    i12 = length;
                    analyseBooleanAssertion = analyseBooleanAssertion(blockScope, expression, flowContext, unconditionalInits, z11, true);
                } else if (detectAssertionUtility != 2) {
                    if (detectAssertionUtility == i15) {
                        expression = expression2;
                        i10 = i16;
                        i11 = i15;
                        analyseBooleanAssertion = analyseNullAssertion(blockScope, expression, flowContext, unconditionalInits, true);
                    } else if (detectAssertionUtility != 4) {
                        analyseBooleanAssertion = expression2.analyseCode(blockScope, flowContext, unconditionalInits).unconditionalInits();
                        expression = expression2;
                        i10 = i16;
                        i11 = i15;
                    } else {
                        expression = expression2;
                        i10 = i16;
                        i11 = i15;
                        analyseBooleanAssertion = analyseNullAssertion(blockScope, expression2, flowContext, unconditionalInits, false);
                    }
                    i12 = length;
                } else {
                    expression = expression2;
                    i10 = i16;
                    i11 = i15;
                    i12 = length;
                    analyseBooleanAssertion = analyseBooleanAssertion(blockScope, expression, flowContext, unconditionalInits, z11, false);
                }
                if (z12) {
                    analyseBooleanAssertion = FakedTrackingVariable.markPassedToOutside(blockScope, expression, analyseBooleanAssertion, flowContext, false);
                }
                unconditionalInits = analyseBooleanAssertion;
                i16 = i10 + 1;
                i15 = i11;
                length = i12;
            }
            analyseArguments(blockScope, flowContext, unconditionalInits, this.binding, this.arguments);
        }
        ReferenceBinding[] referenceBindingArr = this.binding.thrownExceptions;
        if (referenceBindingArr != Binding.NO_EXCEPTIONS) {
            if ((this.bits & 65536) != 0 && this.genericTypeArguments == null) {
                referenceBindingArr = blockScope.environment().convertToRawTypes(this.binding.thrownExceptions, true, true);
            }
            flowContext.checkExceptionHandlers(referenceBindingArr, this, unconditionalInits.copy(), blockScope);
        }
        manageSyntheticAccessIfNecessary(blockScope, unconditionalInits);
        flowContext.recordAbruptExit();
        flowContext.expireNullCheckedFieldInfo();
        return unconditionalInits;
    }

    @Override
    public Expression[] arguments() {
        return this.arguments;
    }

    @Override
    public MethodBinding binding() {
        return this.binding;
    }

    @Override
    public boolean checkNPE(BlockScope blockScope, FlowContext flowContext, FlowInfo flowInfo, int i10) {
        int nullStatus = nullStatus(flowInfo, flowContext);
        if ((nullStatus & 16) != 0) {
            if (this.binding.returnType.isTypeVariable() && nullStatus == 48 && blockScope.environment().globalOptions.pessimisticNullAnalysisForFreeTypeVariablesEnabled) {
                blockScope.problemReporter().methodReturnTypeFreeTypeVariableReference(this.binding, this);
                return true;
            }
            blockScope.problemReporter().messageSendPotentialNullReference(this.binding, this);
            return true;
        }
        if ((this.resolvedType.tagBits & 72057594037927936L) == 0) {
            return true;
        }
        NullAnnotationMatching okNonNullStatus = NullAnnotationMatching.okNonNullStatus(this);
        if (!okNonNullStatus.wantToReport()) {
            return true;
        }
        okNonNullStatus.report(blockScope);
        return true;
    }

    @Override
    public void cleanUpInferenceContexts() {
        SimpleLookupTable simpleLookupTable = this.inferenceContexts;
        if (simpleLookupTable == null) {
            return;
        }
        for (Object obj : simpleLookupTable.valueTable) {
            if (obj != null) {
                ((InferenceContext18) obj).cleanUp();
            }
        }
        this.inferenceContexts = null;
        this.outerInferenceContext = null;
        this.solutionsPerTargetType = null;
    }

    @Override
    public void computeConversion(Scope scope, TypeBinding typeBinding, TypeBinding typeBinding2) {
        if (typeBinding == null || typeBinding2 == null) {
            return;
        }
        MethodBinding methodBinding = this.binding;
        if (methodBinding != null && methodBinding.isValidBinding()) {
            TypeBinding typeBinding3 = this.binding.original().returnType;
            if (ArrayBinding.isArrayClone(this.actualReceiverType, this.binding) && typeBinding.f102482id != 1 && scope.compilerOptions().sourceLevel >= ClassFileConstants.JDK1_5) {
                this.valueCast = typeBinding;
            } else if (typeBinding3.leafComponentType().isTypeVariable()) {
                this.valueCast = typeBinding3.genericCast((typeBinding2.isBaseType() || !typeBinding.isBaseType()) ? typeBinding : typeBinding2);
            }
            TypeBinding typeBinding4 = this.valueCast;
            if (typeBinding4 instanceof ReferenceBinding) {
                ReferenceBinding referenceBinding = (ReferenceBinding) typeBinding4;
                if (!referenceBinding.canBeSeenBy(scope)) {
                    scope.problemReporter().invalidType(this, new ProblemReferenceBinding(CharOperation.splitOn('.', referenceBinding.shortReadableName()), referenceBinding, 2));
                }
            }
        }
        super.computeConversion(scope, typeBinding, typeBinding2);
    }

    public TypeBinding findMethodBinding(BlockScope blockScope) {
        ReferenceContext referenceContext = blockScope.methodScope().referenceContext;
        if (referenceContext instanceof LambdaExpression) {
            this.outerInferenceContext = ((LambdaExpression) referenceContext).inferenceContext;
        }
        TypeBinding typeBinding = this.expectedType;
        if (typeBinding != null && (this.binding instanceof PolyParameterizedGenericMethodBinding)) {
            this.binding = this.solutionsPerTargetType.get(typeBinding);
        }
        if (this.binding == null) {
            MethodBinding implicitMethod = this.receiver.isImplicitThis() ? blockScope.getImplicitMethod(this.selector, this.argumentTypes, this) : blockScope.getMethod(this.actualReceiverType, this.selector, this.argumentTypes, this);
            this.binding = implicitMethod;
            if (implicitMethod instanceof PolyParameterizedGenericMethodBinding) {
                this.solutionsPerTargetType = new HashMap<>();
                return new PolyTypeBinding(this);
            }
        }
        MethodBinding resolvePolyExpressionArguments = ASTNode.resolvePolyExpressionArguments(this, this.binding, this.argumentTypes, blockScope);
        this.binding = resolvePolyExpressionArguments;
        return resolvePolyExpressionArguments.returnType;
    }

    @Override
    public InferenceContext18 freshInferenceContext(Scope scope) {
        return new InferenceContext18(scope, this.arguments, this, this.outerInferenceContext);
    }

    @Override
    public void generateCode(BlockScope blockScope, CodeStream codeStream, boolean z10) {
        cleanUpInferenceContexts();
        int i10 = codeStream.position;
        MethodBinding methodBinding = this.binding;
        if (!(methodBinding instanceof PolymorphicMethodBinding)) {
            methodBinding = methodBinding.original();
        }
        boolean isStatic = methodBinding.isStatic();
        if (isStatic) {
            this.receiver.generateCode(blockScope, codeStream, false);
        } else if ((this.bits & ASTNode.DepthMASK) == 0 || !this.receiver.isImplicitThis()) {
            this.receiver.generateCode(blockScope, codeStream, true);
            if ((this.bits & 262144) != 0) {
                codeStream.checkcast(this.actualReceiverType);
            }
        } else {
            ReferenceBinding enclosingTypeAt = blockScope.enclosingSourceType().enclosingTypeAt((this.bits & ASTNode.DepthMASK) >> 5);
            codeStream.generateOuterAccess(blockScope.getEmulationPath(enclosingTypeAt, true, false), this, enclosingTypeAt, blockScope);
        }
        codeStream.recordPositionsFrom(i10, this.sourceStart);
        generateArguments(this.binding, this.arguments, blockScope, codeStream);
        int i11 = codeStream.position;
        MethodBinding methodBinding2 = this.syntheticAccessor;
        if (methodBinding2 == null) {
            TypeBinding constantPoolDeclaringClass = CodeStream.getConstantPoolDeclaringClass(blockScope, methodBinding, this.actualReceiverType, this.receiver.isImplicitThis());
            if (isStatic) {
                codeStream.invoke(Opcodes.OPC_invokestatic, methodBinding, constantPoolDeclaringClass, this.typeArguments);
            } else if (this.receiver.isSuper() || (!blockScope.enclosingSourceType().isNestmateOf(this.binding.declaringClass) && methodBinding.isPrivate())) {
                codeStream.invoke(Opcodes.OPC_invokespecial, methodBinding, constantPoolDeclaringClass, this.typeArguments);
            } else if (constantPoolDeclaringClass.isInterface()) {
                codeStream.invoke(Opcodes.OPC_invokeinterface, methodBinding, constantPoolDeclaringClass, this.typeArguments);
            } else {
                codeStream.invoke(Opcodes.OPC_invokevirtual, methodBinding, constantPoolDeclaringClass, this.typeArguments);
            }
        } else {
            codeStream.invoke(Opcodes.OPC_invokestatic, methodBinding2, null, this.typeArguments);
        }
        TypeBinding typeBinding = this.valueCast;
        if (typeBinding != null) {
            codeStream.checkcast(typeBinding);
        }
        if (z10) {
            codeStream.generateImplicitConversion(this.implicitConversion);
        } else {
            int i12 = this.implicitConversion;
            boolean z11 = (i12 & 1024) != 0;
            if (z11) {
                codeStream.generateImplicitConversion(i12);
            }
            int i13 = (z11 ? postConversionType(blockScope) : methodBinding.returnType).f102482id;
            if (i13 != 6) {
                if (i13 == 7 || i13 == 8) {
                    codeStream.pop2();
                } else {
                    codeStream.pop();
                }
            }
        }
        codeStream.recordPositionsFrom(i11, (int) (this.nameSourcePosition >>> 32));
    }

    @Override
    public TypeBinding[] genericTypeArguments() {
        return this.genericTypeArguments;
    }

    @Override
    public ExpressionContext getExpressionContext() {
        return this.expressionContext;
    }

    @Override
    public InferenceContext18 getInferenceContext(ParameterizedMethodBinding parameterizedMethodBinding) {
        SimpleLookupTable simpleLookupTable = this.inferenceContexts;
        if (simpleLookupTable == null) {
            return null;
        }
        return (InferenceContext18) simpleLookupTable.get(parameterizedMethodBinding);
    }

    @Override
    public TypeBinding invocationTargetType() {
        return this.expectedType;
    }

    @Override
    public boolean isBoxingCompatibleWith(TypeBinding typeBinding, Scope scope) {
        MethodBinding methodBinding;
        TypeBinding typeBinding2;
        if (this.argumentsHaveErrors || (methodBinding = this.binding) == null || !methodBinding.isValidBinding() || typeBinding == null || scope == null) {
            return false;
        }
        if (isPolyExpression() && !typeBinding.isPrimitiveOrBoxedPrimitiveType()) {
            return false;
        }
        TypeBinding typeBinding3 = this.expectedType;
        try {
            HashMap<TypeBinding, MethodBinding> hashMap = this.solutionsPerTargetType;
            MethodBinding methodBinding2 = hashMap != null ? hashMap.get(typeBinding) : null;
            if (methodBinding2 == null) {
                this.expectedType = typeBinding;
                methodBinding2 = isPolyExpression() ? ParameterizedGenericMethodBinding.computeCompatibleMethod18(this.binding.shallowOriginal(), this.argumentTypes, scope, this) : this.binding;
                registerResult(typeBinding, methodBinding2);
            }
            if (methodBinding2 != null && methodBinding2.isValidBinding() && (typeBinding2 = methodBinding2.returnType) != null && typeBinding2.isValidBinding()) {
                boolean isBoxingCompatible = super.isBoxingCompatible(methodBinding2.returnType.capture(scope, this.sourceStart, this.sourceEnd), typeBinding, this, scope);
                this.expectedType = typeBinding3;
                return isBoxingCompatible;
            }
            return false;
        } finally {
            this.expectedType = typeBinding3;
        }
    }

    @Override
    public boolean isCompatibleWith(TypeBinding typeBinding, Scope scope) {
        MethodBinding methodBinding;
        TypeBinding typeBinding2;
        if (this.argumentsHaveErrors || (methodBinding = this.binding) == null || !methodBinding.isValidBinding() || typeBinding == null || scope == null) {
            return false;
        }
        TypeBinding typeBinding3 = this.expectedType;
        try {
            HashMap<TypeBinding, MethodBinding> hashMap = this.solutionsPerTargetType;
            MethodBinding methodBinding2 = hashMap != null ? hashMap.get(typeBinding) : null;
            if (methodBinding2 == null) {
                this.expectedType = typeBinding;
                methodBinding2 = isPolyExpression() ? ParameterizedGenericMethodBinding.computeCompatibleMethod18(this.binding.shallowOriginal(), this.argumentTypes, scope, this) : this.binding;
                registerResult(typeBinding, methodBinding2);
            }
            if (methodBinding2 != null && methodBinding2.isValidBinding() && (typeBinding2 = methodBinding2.returnType) != null && typeBinding2.isValidBinding()) {
                if ((this.bits & 65536) != 0 && this.genericTypeArguments == null) {
                    typeBinding2 = scope.environment().convertToRawType(typeBinding2.erasure(), true);
                }
                boolean isCompatibleWith = typeBinding2.capture(scope, this.sourceStart, this.sourceEnd).isCompatibleWith(typeBinding, scope);
                this.expectedType = typeBinding3;
                return isCompatibleWith;
            }
            return false;
        } finally {
            this.expectedType = typeBinding3;
        }
    }

    @Override
    public boolean isPolyExpression() {
        return isPolyExpression(this.binding);
    }

    @Override
    public boolean isQualifiedSuper() {
        return this.receiver.isQualifiedSuper();
    }

    public boolean isSuperAccess() {
        return this.receiver.isSuper();
    }

    @Override
    public boolean isTypeAccess() {
        Expression expression = this.receiver;
        return expression != null && expression.isTypeReference();
    }

    public void manageSyntheticAccessIfNecessary(BlockScope blockScope, FlowInfo flowInfo) {
        if ((flowInfo.tagBits & 1) != 0) {
            return;
        }
        MethodBinding original = this.binding.original();
        if (this.binding.isPrivate()) {
            if ((!blockScope.enclosingSourceType().isNestmateOf(original.declaringClass) || (this.receiver instanceof QualifiedSuperReference)) && TypeBinding.notEquals(blockScope.enclosingSourceType(), original.declaringClass)) {
                this.syntheticAccessor = ((SourceTypeBinding) original.declaringClass).addSyntheticMethod(original, false);
                blockScope.problemReporter().needToEmulateMethodAccess(original, this);
                return;
            }
            return;
        }
        if (this.receiver instanceof QualifiedSuperReference) {
            if (this.actualReceiverType.isInterface()) {
                return;
            }
            this.syntheticAccessor = ((SourceTypeBinding) ((QualifiedSuperReference) this.receiver).currentCompatibleType).addSyntheticMethod(original, isSuperAccess());
            blockScope.problemReporter().needToEmulateMethodAccess(original, this);
            return;
        }
        if (!this.binding.isProtected() || (this.bits & ASTNode.DepthMASK) == 0) {
            return;
        }
        PackageBinding packageBinding = original.declaringClass.getPackage();
        SourceTypeBinding enclosingSourceType = blockScope.enclosingSourceType();
        if (packageBinding != enclosingSourceType.getPackage()) {
            this.syntheticAccessor = ((SourceTypeBinding) enclosingSourceType.enclosingTypeAt((this.bits & ASTNode.DepthMASK) >> 5)).addSyntheticMethod(original, isSuperAccess());
            blockScope.problemReporter().needToEmulateMethodAccess(original, this);
        }
    }

    @Override
    public int nameSourceEnd() {
        return (int) this.nameSourcePosition;
    }

    @Override
    public int nameSourceStart() {
        return (int) (this.nameSourcePosition >>> 32);
    }

    @Override
    public int nullStatus(FlowInfo flowInfo, FlowContext flowContext) {
        if ((this.implicitConversion & 512) != 0) {
            return 4;
        }
        if (!this.binding.isValidBinding()) {
            return 1;
        }
        MethodBinding methodBinding = this.binding;
        long j10 = methodBinding.tagBits;
        if ((j10 & TagBits.AnnotationNullMASK) == 0) {
            j10 = methodBinding.returnType.tagBits & TagBits.AnnotationNullMASK;
        }
        if (j10 == 0 && methodBinding.returnType.isFreeTypeVariable()) {
            return 48;
        }
        return FlowInfo.tagBitsToNullStatus(j10);
    }

    @Override
    public TypeBinding postConversionType(Scope scope) {
        TypeBinding typeBinding = this.resolvedType;
        TypeBinding typeBinding2 = this.valueCast;
        if (typeBinding2 != null) {
            typeBinding = typeBinding2;
        }
        int i10 = this.implicitConversion;
        switch ((i10 & 255) >> 4) {
            case 2:
                typeBinding = TypeBinding.CHAR;
                break;
            case 3:
                typeBinding = TypeBinding.BYTE;
                break;
            case 4:
                typeBinding = TypeBinding.SHORT;
                break;
            case 5:
                typeBinding = TypeBinding.BOOLEAN;
                break;
            case 7:
                typeBinding = TypeBinding.LONG;
                break;
            case 8:
                typeBinding = TypeBinding.DOUBLE;
                break;
            case 9:
                typeBinding = TypeBinding.FLOAT;
                break;
            case 10:
                typeBinding = TypeBinding.INT;
                break;
        }
        return (i10 & 512) != 0 ? scope.environment().computeBoxingType(typeBinding) : typeBinding;
    }

    @Override
    public StringBuffer printExpression(int i10, StringBuffer stringBuffer) {
        if (!this.receiver.isImplicitThis()) {
            this.receiver.printExpression(0, stringBuffer).append('.');
        }
        if (this.typeArguments != null) {
            stringBuffer.append('<');
            int length = this.typeArguments.length - 1;
            for (int i11 = 0; i11 < length; i11++) {
                this.typeArguments[i11].print(0, stringBuffer);
                stringBuffer.append(", ");
            }
            this.typeArguments[length].print(0, stringBuffer);
            stringBuffer.append('>');
        }
        stringBuffer.append(this.selector);
        stringBuffer.append('(');
        if (this.arguments != null) {
            for (int i12 = 0; i12 < this.arguments.length; i12++) {
                if (i12 > 0) {
                    stringBuffer.append(", ");
                }
                this.arguments[i12].printExpression(0, stringBuffer);
            }
        }
        stringBuffer.append(')');
        return stringBuffer;
    }

    @Override
    public boolean receiverIsImplicitThis() {
        return this.receiver.isImplicitThis();
    }

    @Override
    public void registerInferenceContext(ParameterizedGenericMethodBinding parameterizedGenericMethodBinding, InferenceContext18 inferenceContext18) {
        if (this.inferenceContexts == null) {
            this.inferenceContexts = new SimpleLookupTable();
        }
        this.inferenceContexts.put(parameterizedGenericMethodBinding, inferenceContext18);
    }

    @Override
    public void registerResult(TypeBinding typeBinding, MethodBinding methodBinding) {
        if (this.solutionsPerTargetType == null) {
            this.solutionsPerTargetType = new HashMap<>();
        }
        this.solutionsPerTargetType.put(typeBinding, methodBinding);
    }

    /* JADX WARN: Code restructure failed: missing block: B:150:0x0221, code lost:
    
        if (r0 != 8) goto L153;
     */
    /* JADX WARN: Code restructure failed: missing block: B:170:0x0235, code lost:
    
        if (r17.expressionContext != org.eclipse.jdt.internal.compiler.ast.ExpressionContext.INVOCATION_CONTEXT) goto L153;
     */
    /* JADX WARN: Removed duplicated region for block: B:152:0x0240  */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public TypeBinding resolveType(BlockScope blockScope) {
        TypeBinding typeBinding;
        TypeBinding typeBinding2;
        TypeBinding typeBinding3;
        boolean z10;
        MethodBinding methodBinding;
        Constant constant = this.constant;
        Constant constant2 = Constant.NotAConstant;
        int i10 = 0;
        if (constant != constant2) {
            this.constant = constant2;
            long j10 = blockScope.compilerOptions().sourceLevel;
            Expression expression = this.receiver;
            if (expression instanceof CastExpression) {
                expression.bits |= 32;
                z10 = true;
            } else {
                z10 = false;
            }
            TypeBinding resolveType = expression.resolveType(blockScope);
            this.actualReceiverType = resolveType;
            if (resolveType instanceof InferenceVariable) {
                return null;
            }
            Expression expression2 = this.receiver;
            this.receiverIsType = (expression2 instanceof NameReference) && (((NameReference) expression2).bits & 4) != 0;
            if (z10 && resolveType != null) {
                TypeBinding typeBinding4 = ((CastExpression) expression2).expression.resolvedType;
                if (TypeBinding.equalsEquals(typeBinding4, resolveType) && (!blockScope.environment().usesNullTypeAnnotations() || !NullAnnotationMatching.analyse(this.actualReceiverType, typeBinding4, -1).isAnyMismatch())) {
                    blockScope.problemReporter().unnecessaryCast((CastExpression) this.receiver);
                }
            }
            TypeReference[] typeReferenceArr = this.typeArguments;
            if (typeReferenceArr != null) {
                int length = typeReferenceArr.length;
                this.argumentsHaveErrors = j10 < ClassFileConstants.JDK1_5;
                this.genericTypeArguments = new TypeBinding[length];
                for (int i11 = 0; i11 < length; i11++) {
                    TypeReference typeReference = this.typeArguments[i11];
                    TypeBinding[] typeBindingArr = this.genericTypeArguments;
                    TypeBinding resolveType2 = typeReference.resolveType(blockScope, true, 64);
                    typeBindingArr[i11] = resolveType2;
                    if (resolveType2 == null) {
                        this.argumentsHaveErrors = true;
                    }
                    if (this.argumentsHaveErrors && (typeReference instanceof Wildcard)) {
                        blockScope.problemReporter().illegalUsageOfWildcard(typeReference);
                    }
                }
                if (this.argumentsHaveErrors) {
                    Expression[] expressionArr = this.arguments;
                    if (expressionArr != null) {
                        int length2 = expressionArr.length;
                        while (i10 < length2) {
                            this.arguments[i10].resolveType(blockScope);
                            i10++;
                        }
                    }
                    return null;
                }
            }
            Expression[] expressionArr2 = this.arguments;
            if (expressionArr2 != null) {
                this.argumentsHaveErrors = false;
                int length3 = expressionArr2.length;
                this.argumentTypes = new TypeBinding[length3];
                for (int i12 = 0; i12 < length3; i12++) {
                    Expression expression3 = this.arguments[i12];
                    if (expression3.resolvedType != null) {
                        blockScope.problemReporter().genericInferenceError("Argument was unexpectedly found resolved", this);
                    }
                    if (expression3 instanceof CastExpression) {
                        expression3.bits |= 32;
                        this.argsContainCast = true;
                    }
                    expression3.setExpressionContext(ExpressionContext.INVOCATION_CONTEXT);
                    TypeBinding[] typeBindingArr2 = this.argumentTypes;
                    TypeBinding resolveType3 = expression3.resolveType(blockScope);
                    typeBindingArr2[i12] = resolveType3;
                    if (resolveType3 == null) {
                        this.argumentsHaveErrors = true;
                    }
                }
                if (this.argumentsHaveErrors) {
                    if (this.actualReceiverType instanceof ReferenceBinding) {
                        TypeBinding[] typeBindingArr3 = new TypeBinding[length3];
                        while (true) {
                            length3--;
                            if (length3 < 0) {
                                break;
                            }
                            TypeBinding typeBinding5 = this.argumentTypes[length3];
                            if (typeBinding5 == null) {
                                typeBinding5 = TypeBinding.NULL;
                            }
                            typeBindingArr3[length3] = typeBinding5;
                        }
                        MethodBinding implicitMethod = this.receiver.isImplicitThis() ? blockScope.getImplicitMethod(this.selector, typeBindingArr3, this) : blockScope.findMethod((ReferenceBinding) this.actualReceiverType, this.selector, typeBindingArr3, this, false);
                        this.binding = implicitMethod;
                        if (implicitMethod != null && !implicitMethod.isValidBinding() && (methodBinding = ((ProblemMethodBinding) this.binding).closestMatch) != null) {
                            if (methodBinding.original().typeVariables != Binding.NO_TYPE_VARIABLES) {
                                methodBinding = blockScope.environment().createParameterizedGenericMethod(methodBinding.original(), (RawTypeBinding) null);
                            }
                            this.binding = methodBinding;
                            MethodBinding original = methodBinding.original();
                            if (original.isOrEnclosedByPrivateType() && !blockScope.isDefinedInMethod(original)) {
                                original.modifiers |= 134217728;
                            }
                        }
                    }
                    return null;
                }
            }
            TypeBinding typeBinding6 = this.actualReceiverType;
            if (typeBinding6 == null) {
                return null;
            }
            if (typeBinding6.isBaseType()) {
                blockScope.problemReporter().errorNoMethodFor(this, this.actualReceiverType, this.argumentTypes);
                return null;
            }
        }
        TypeBinding findMethodBinding = findMethodBinding(blockScope);
        if (findMethodBinding != null && findMethodBinding.isPolyType()) {
            this.resolvedType = this.binding.returnType.capture(blockScope, this.sourceStart, this.sourceEnd);
            return findMethodBinding;
        }
        if (!this.binding.isValidBinding()) {
            MethodBinding methodBinding2 = this.binding;
            if (methodBinding2.declaringClass == null) {
                TypeBinding typeBinding7 = this.actualReceiverType;
                if (!(typeBinding7 instanceof ReferenceBinding)) {
                    blockScope.problemReporter().errorNoMethodFor(this, this.actualReceiverType, this.argumentTypes);
                    return null;
                }
                methodBinding2.declaringClass = (ReferenceBinding) typeBinding7;
            }
            ReferenceBinding referenceBinding = methodBinding2.declaringClass;
            if (referenceBinding == null || !referenceBinding.isAnonymousType() || !(referenceBinding.superclass() instanceof MissingTypeBinding)) {
                blockScope.problemReporter().invalidMethod(this, this.binding, blockScope);
            }
            MethodBinding methodBinding3 = this.binding;
            MethodBinding methodBinding4 = ((ProblemMethodBinding) methodBinding3).closestMatch;
            int problemId = methodBinding3.problemId();
            if (problemId != 2 && problemId != 10) {
                if (problemId != 23) {
                    if (problemId != 25) {
                        if (problemId != 27) {
                            if (problemId != 6) {
                                if (problemId != 7) {
                                }
                            }
                        }
                    } else if (methodBinding4 != null && (typeBinding3 = methodBinding4.returnType) != null) {
                        this.resolvedType = typeBinding3.withoutToplevelNullAnnotation();
                    }
                    if (methodBinding4 != null) {
                        this.binding = methodBinding4;
                        MethodBinding original2 = methodBinding4.original();
                        if (original2.isOrEnclosedByPrivateType() && !blockScope.isDefinedInMethod(original2)) {
                            original2.modifiers |= 134217728;
                        }
                    }
                    typeBinding2 = this.resolvedType;
                    if (typeBinding2 == null && (typeBinding2.tagBits & 128) == 0) {
                        return typeBinding2;
                    }
                }
            }
            if (methodBinding4 != null) {
                this.resolvedType = methodBinding4.returnType;
            }
            if (methodBinding4 != null) {
            }
            typeBinding2 = this.resolvedType;
            return typeBinding2 == null ? null : null;
        }
        CompilerOptions compilerOptions = blockScope.compilerOptions();
        if (compilerOptions.complianceLevel <= ClassFileConstants.JDK1_6 && this.binding.isPolymorphic()) {
            blockScope.problemReporter().polymorphicMethodNotBelow17(this);
            return null;
        }
        if (compilerOptions.isAnnotationBasedNullAnalysisEnabled) {
            ImplicitNullAnnotationVerifier.ensureNullnessIsKnown(this.binding, blockScope);
            if (compilerOptions.sourceLevel >= ClassFileConstants.JDK1_8) {
                MethodBinding methodBinding5 = this.binding;
                if ((methodBinding5 instanceof ParameterizedGenericMethodBinding) && this.typeArguments != null) {
                    TypeVariableBinding[] typeVariables = methodBinding5.original().typeVariables();
                    while (true) {
                        TypeReference[] typeReferenceArr2 = this.typeArguments;
                        if (i10 >= typeReferenceArr2.length) {
                            break;
                        }
                        typeReferenceArr2[i10].checkNullConstraints(blockScope, (ParameterizedGenericMethodBinding) this.binding, typeVariables, i10);
                        i10++;
                    }
                }
            }
        }
        if ((this.bits & 1048576) != 0 && this.binding.isPolymorphic()) {
            this.binding = blockScope.environment().updatePolymorphicMethodReturnType((PolymorphicMethodBinding) this.binding, TypeBinding.VOID);
        }
        if ((this.binding.tagBits & 128) != 0) {
            blockScope.problemReporter().missingTypeInMethod(this, this.binding);
        }
        if (this.binding.isStatic()) {
            if (this.binding.declaringClass.isInterface() && !((isTypeAccess() || this.receiver.isImplicitThis()) && TypeBinding.equalsEquals(this.binding.declaringClass, this.actualReceiverType))) {
                blockScope.problemReporter().nonStaticOrAlienTypeReceiver(this, this.binding);
            } else if (!this.receiver.isImplicitThis() && !this.receiver.isSuper() && !this.receiverIsType) {
                blockScope.problemReporter().nonStaticAccessToStaticMethod(this, this.binding);
            }
            if (!this.receiver.isImplicitThis() && TypeBinding.notEquals(this.binding.declaringClass, this.actualReceiverType)) {
                blockScope.problemReporter().indirectAccessToStaticMethod(this, this.binding);
            }
        } else if (this.receiverIsType) {
            blockScope.problemReporter().mustUseAStaticMethod(this, this.binding);
            if (this.actualReceiverType.isRawType() && (this.receiver.bits & 1073741824) == 0 && compilerOptions.getSeverity(CompilerOptions.RawTypeReference) != 256) {
                blockScope.problemReporter().rawTypeReference(this.receiver, this.actualReceiverType);
            }
        } else {
            TypeBinding typeBinding8 = this.actualReceiverType;
            TypeBinding erasureCompatibleType = typeBinding8.getErasureCompatibleType(this.binding.declaringClass);
            this.actualReceiverType = erasureCompatibleType;
            this.receiver.computeConversion(blockScope, erasureCompatibleType, erasureCompatibleType);
            if (TypeBinding.notEquals(this.actualReceiverType, typeBinding8) && TypeBinding.notEquals(this.receiver.postConversionType(blockScope), this.actualReceiverType)) {
                this.bits |= 262144;
            }
        }
        if (ASTNode.checkInvocationArguments(blockScope, this.receiver, this.actualReceiverType, this.binding, this.arguments, this.argumentTypes, this.argsContainCast, this)) {
            this.bits |= 65536;
        }
        if (this.binding.isAbstract() && this.receiver.isSuper()) {
            blockScope.problemReporter().cannotDireclyInvokeAbstractMethod(this, this.binding);
        }
        if (isMethodUseDeprecated(this.binding, blockScope, true, this)) {
            blockScope.problemReporter().deprecatedMethod(this.binding, this);
        }
        if ((this.bits & 65536) == 0 || this.genericTypeArguments != null) {
            typeBinding = this.binding.returnType;
            if (typeBinding != null) {
                typeBinding = typeBinding.capture(blockScope, this.sourceStart, this.sourceEnd);
            }
        } else {
            typeBinding = this.binding.returnType;
            if (typeBinding != null) {
                typeBinding = blockScope.environment().convertToRawType(typeBinding.erasure(), true);
            }
        }
        this.resolvedType = typeBinding;
        if (this.receiver.isSuper() && compilerOptions.getSeverity(CompilerOptions.OverridingMethodWithoutSuperInvocation) != 256) {
            ReferenceContext referenceContext = blockScope.methodScope().referenceContext;
            if (referenceContext instanceof AbstractMethodDeclaration) {
                AbstractMethodDeclaration abstractMethodDeclaration = (AbstractMethodDeclaration) referenceContext;
                MethodBinding methodBinding6 = abstractMethodDeclaration.binding;
                if (methodBinding6.isOverriding() && CharOperation.equals(this.binding.selector, methodBinding6.selector) && this.binding.areParametersEqual(methodBinding6)) {
                    abstractMethodDeclaration.bits |= 16;
                }
            }
        }
        if (this.receiver.isSuper() && this.actualReceiverType.isInterface()) {
            blockScope.checkAppropriateMethodAgainstSupers(this.selector, this.binding, this.argumentTypes, this);
        }
        if (this.typeArguments != null && this.binding.original().typeVariables == Binding.NO_TYPE_VARIABLES) {
            blockScope.problemReporter().unnecessaryTypeArgumentsForMethodInvocation(this.binding, this.genericTypeArguments, this.typeArguments);
        }
        TypeBinding typeBinding9 = this.resolvedType;
        if ((typeBinding9.tagBits & 128) == 0) {
            return typeBinding9;
        }
        return null;
    }

    @Override
    public boolean sIsMoreSpecific(TypeBinding typeBinding, TypeBinding typeBinding2, Scope scope) {
        if (super.sIsMoreSpecific(typeBinding, typeBinding2, scope)) {
            return true;
        }
        return isPolyExpression() && !typeBinding.isBaseType() && typeBinding2.isBaseType();
    }

    @Override
    public void setActualReceiverType(ReferenceBinding referenceBinding) {
        if (referenceBinding == null) {
            return;
        }
        this.actualReceiverType = referenceBinding;
    }

    @Override
    public void setDepth(int i10) {
        int i11 = this.bits & (-8161);
        this.bits = i11;
        if (i10 > 0) {
            this.bits = ((i10 & 255) << 5) | i11;
        }
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
    public void setFieldIndex(int i10) {
    }

    @Override
    public boolean statementExpression() {
        return (this.bits & ASTNode.ParenthesizedMASK) == 0;
    }

    @Override
    public void traverse(ASTVisitor aSTVisitor, BlockScope blockScope) {
        if (aSTVisitor.visit(this, blockScope)) {
            this.receiver.traverse(aSTVisitor, blockScope);
            TypeReference[] typeReferenceArr = this.typeArguments;
            if (typeReferenceArr != null) {
                int length = typeReferenceArr.length;
                for (int i10 = 0; i10 < length; i10++) {
                    this.typeArguments[i10].traverse(aSTVisitor, blockScope);
                }
            }
            Expression[] expressionArr = this.arguments;
            if (expressionArr != null) {
                int length2 = expressionArr.length;
                for (int i11 = 0; i11 < length2; i11++) {
                    this.arguments[i11].traverse(aSTVisitor, blockScope);
                }
            }
        }
        aSTVisitor.endVisit(this, blockScope);
    }

    @Override
    public boolean isPolyExpression(MethodBinding methodBinding) {
        ExpressionContext expressionContext = this.expressionContext;
        if (expressionContext != ExpressionContext.ASSIGNMENT_CONTEXT && expressionContext != ExpressionContext.INVOCATION_CONTEXT) {
            return false;
        }
        TypeReference[] typeReferenceArr = this.typeArguments;
        if (typeReferenceArr != null && typeReferenceArr.length > 0) {
            return false;
        }
        if (this.constant != Constant.NotAConstant) {
            throw new UnsupportedOperationException("Unresolved MessageSend can't be queried if it is a polyexpression");
        }
        if (methodBinding != null) {
            if ((methodBinding instanceof ParameterizedGenericMethodBinding) && ((ParameterizedGenericMethodBinding) methodBinding).inferredReturnType) {
                return true;
            }
            if (methodBinding.returnType != null) {
                MethodBinding original = methodBinding.original();
                return original.returnType.mentionsAny(original.typeVariables(), -1);
            }
        }
        return false;
    }
}
