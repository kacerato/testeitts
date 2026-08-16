package org.eclipse.jdt.internal.compiler.ast;

import java.util.HashMap;
import org.eclipse.jdt.core.compiler.IProblem;
import org.eclipse.jdt.internal.compiler.ASTVisitor;
import org.eclipse.jdt.internal.compiler.classfmt.ClassFileConstants;
import org.eclipse.jdt.internal.compiler.codegen.CodeStream;
import org.eclipse.jdt.internal.compiler.codegen.Opcodes;
import org.eclipse.jdt.internal.compiler.flow.FlowContext;
import org.eclipse.jdt.internal.compiler.flow.FlowInfo;
import org.eclipse.jdt.internal.compiler.impl.CompilerOptions;
import org.eclipse.jdt.internal.compiler.impl.Constant;
import org.eclipse.jdt.internal.compiler.lookup.Binding;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.ImplicitNullAnnotationVerifier;
import org.eclipse.jdt.internal.compiler.lookup.InferenceContext18;
import org.eclipse.jdt.internal.compiler.lookup.InvocationSite;
import org.eclipse.jdt.internal.compiler.lookup.LocalTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.LocalVariableBinding;
import org.eclipse.jdt.internal.compiler.lookup.MethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.MethodScope;
import org.eclipse.jdt.internal.compiler.lookup.NestedTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.ParameterizedGenericMethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.ParameterizedMethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.ParameterizedTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.PolyTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.ProblemMethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.ProblemReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.RawTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.Scope;
import org.eclipse.jdt.internal.compiler.lookup.SourceTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.SyntheticArgumentBinding;
import org.eclipse.jdt.internal.compiler.lookup.SyntheticFactoryMethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.TagBits;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeConstants;
import org.eclipse.jdt.internal.compiler.lookup.TypeVariableBinding;
import org.eclipse.jdt.internal.compiler.util.SimpleLookupTable;

public class AllocationExpression extends Expression implements IPolyExpression, Invocation {
    public boolean argsContainCast;
    public Expression[] arguments;
    public MethodBinding binding;
    public FakedTrackingVariable closeTracker;
    public FieldDeclaration enumConstant;
    public TypeBinding[] genericTypeArguments;
    private SimpleLookupTable inferenceContexts;
    public boolean inferredReturnType;
    private InferenceContext18 outerInferenceContext;
    public HashMap<TypeBinding, MethodBinding> solutionsPerTargetType;
    MethodBinding syntheticAccessor;
    public TypeReference type;
    public TypeReference[] typeArguments;
    protected TypeBinding typeExpected;
    public ExpressionContext expressionContext = ExpressionContext.VANILLA_CONTEXT;
    public TypeBinding[] argumentTypes = Binding.NO_PARAMETERS;
    public boolean argumentsHaveErrors = false;

    public static MethodBinding inferDiamondConstructor(Scope scope, InvocationSite invocationSite, TypeBinding typeBinding, TypeBinding[] typeBindingArr, boolean[] zArr) {
        ReferenceBinding genericType = ((ParameterizedTypeBinding) typeBinding).genericType();
        ReferenceBinding enclosingType = typeBinding.enclosingType();
        ParameterizedTypeBinding createParameterizedType = scope.environment().createParameterizedType(genericType, genericType.typeVariables(), enclosingType);
        MethodBinding staticFactory = scope.getStaticFactory(createParameterizedType, enclosingType, typeBindingArr, invocationSite);
        if (!(staticFactory instanceof ParameterizedGenericMethodBinding) || !staticFactory.isValidBinding()) {
            return null;
        }
        ParameterizedGenericMethodBinding parameterizedGenericMethodBinding = (ParameterizedGenericMethodBinding) staticFactory;
        zArr[0] = parameterizedGenericMethodBinding.inferredReturnType;
        SyntheticFactoryMethodBinding syntheticFactoryMethodBinding = (SyntheticFactoryMethodBinding) staticFactory.original();
        TypeVariableBinding[] typeVariables = syntheticFactoryMethodBinding.getConstructor().typeVariables();
        TypeBinding[] typeBindingArr2 = typeVariables != null ? new TypeBinding[typeVariables.length] : Binding.NO_TYPES;
        if (typeBindingArr2.length > 0) {
            System.arraycopy(parameterizedGenericMethodBinding.typeArguments, syntheticFactoryMethodBinding.typeVariables().length - typeBindingArr2.length, typeBindingArr2, 0, typeBindingArr2.length);
        }
        return createParameterizedType.isInterface() ? new ParameterizedMethodBinding((ParameterizedTypeBinding) staticFactory.returnType, syntheticFactoryMethodBinding.getConstructor()) : syntheticFactoryMethodBinding.applyTypeArgumentsOnConstructor(((ParameterizedTypeBinding) staticFactory.returnType).arguments, typeBindingArr2, parameterizedGenericMethodBinding.inferredWithUncheckedConversion, invocationSite.invocationTargetType());
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x003f  */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public FlowInfo analyseCode(BlockScope blockScope, FlowContext flowContext, FlowInfo flowInfo) {
        boolean z10;
        int length;
        int i10;
        checkCapturedLocalInitializationIfNecessary((ReferenceBinding) this.binding.declaringClass.erasure(), blockScope, flowInfo);
        if (this.arguments != null) {
            boolean z11 = blockScope.compilerOptions().analyseResourceLeaks;
            if (z11) {
                TypeBinding typeBinding = this.resolvedType;
                if ((typeBinding instanceof ReferenceBinding) && ((ReferenceBinding) typeBinding).hasTypeBit(4)) {
                    z10 = true;
                    length = this.arguments.length;
                    for (i10 = 0; i10 < length; i10++) {
                        flowInfo = this.arguments[i10].analyseCode(blockScope, flowContext, flowInfo).unconditionalInits();
                        if (z11 && !z10) {
                            flowInfo = FakedTrackingVariable.markPassedToOutside(blockScope, this.arguments[i10], flowInfo, flowContext, false);
                        }
                        this.arguments[i10].checkNPEbyUnboxing(blockScope, flowContext, flowInfo);
                    }
                    analyseArguments(blockScope, flowContext, flowInfo, this.binding, this.arguments);
                }
            }
            z10 = false;
            length = this.arguments.length;
            while (i10 < length) {
            }
            analyseArguments(blockScope, flowContext, flowInfo, this.binding, this.arguments);
        }
        ReferenceBinding[] referenceBindingArr = this.binding.thrownExceptions;
        if (referenceBindingArr.length != 0) {
            if ((this.bits & 65536) != 0 && this.genericTypeArguments == null) {
                referenceBindingArr = blockScope.environment().convertToRawTypes(this.binding.thrownExceptions, true, true);
            }
            flowContext.checkExceptionHandlers(referenceBindingArr, this, flowInfo.unconditionalCopy(), blockScope);
        }
        if (blockScope.compilerOptions().analyseResourceLeaks && FakedTrackingVariable.isAnyCloseable(this.resolvedType)) {
            FakedTrackingVariable.analyseCloseableAllocation(blockScope, flowInfo, this);
        }
        ReferenceBinding referenceBinding = this.binding.declaringClass;
        MethodScope methodScope = blockScope.methodScope();
        if ((referenceBinding.isMemberType() && !referenceBinding.isStatic()) || (referenceBinding.isLocalType() && !methodScope.isStatic && methodScope.isLambdaScope())) {
            blockScope.tagAsAccessingEnclosingInstanceStateOf(this.binding.declaringClass.enclosingType(), false);
        }
        manageEnclosingInstanceAccessIfNecessary(blockScope, flowInfo);
        manageSyntheticAccessIfNecessary(blockScope, flowInfo);
        flowContext.recordAbruptExit();
        return flowInfo;
    }

    @Override
    public Expression[] arguments() {
        return this.arguments;
    }

    @Override
    public MethodBinding binding() {
        return this.binding;
    }

    public void checkCapturedLocalInitializationIfNecessary(ReferenceBinding referenceBinding, BlockScope blockScope, FlowInfo flowInfo) {
        SyntheticArgumentBinding[] syntheticOuterLocalVariables;
        if ((referenceBinding.tagBits & TagBits.AnonymousTypeMask) != TagBits.LocalTypeMask || blockScope.isDefinedInType(referenceBinding) || (syntheticOuterLocalVariables = ((NestedTypeBinding) referenceBinding).syntheticOuterLocalVariables()) == null) {
            return;
        }
        for (SyntheticArgumentBinding syntheticArgumentBinding : syntheticOuterLocalVariables) {
            LocalVariableBinding localVariableBinding = syntheticArgumentBinding.actualOuterLocalVariable;
            if (localVariableBinding != null && localVariableBinding.declaration != null && !flowInfo.isDefinitelyAssigned(localVariableBinding)) {
                blockScope.problemReporter().uninitializedLocalVariable(localVariableBinding, this, blockScope);
            }
        }
    }

    public void checkIllegalNullAnnotation(BlockScope blockScope, TypeBinding typeBinding) {
        Annotation findAnnotation;
        if (typeBinding != null) {
            long j10 = typeBinding.tagBits & TagBits.AnnotationNullMASK;
            if (j10 == 0 || (findAnnotation = this.type.findAnnotation(j10)) == null) {
                return;
            }
            blockScope.problemReporter().nullAnnotationUnsupportedLocation(findAnnotation);
        }
    }

    public void checkTypeArgumentRedundancy(ParameterizedTypeBinding parameterizedTypeBinding, BlockScope blockScope) {
        TypeBinding[] typeBindingArr;
        ParameterizedTypeBinding parameterizedTypeBinding2;
        TypeBinding[] typeBindingArr2;
        int i10;
        if (blockScope.problemReporter().computeSeverity(IProblem.RedundantSpecificationOfTypeArguments) == 256 || blockScope.compilerOptions().sourceLevel < ClassFileConstants.JDK1_7 || (typeBindingArr = parameterizedTypeBinding.arguments) == null || this.genericTypeArguments != null || this.type == null) {
            return;
        }
        if (this.argumentTypes == Binding.NO_PARAMETERS) {
            TypeBinding typeBinding = this.typeExpected;
            if ((typeBinding instanceof ParameterizedTypeBinding) && (typeBindingArr2 = (parameterizedTypeBinding2 = (ParameterizedTypeBinding) typeBinding).arguments) != null && typeBindingArr.length == typeBindingArr2.length) {
                while (true) {
                    TypeBinding[] typeBindingArr3 = parameterizedTypeBinding.arguments;
                    i10 = (i10 < typeBindingArr3.length && !TypeBinding.notEquals(typeBindingArr3[i10], parameterizedTypeBinding2.arguments[i10])) ? i10 + 1 : 0;
                }
                if (i10 == parameterizedTypeBinding.arguments.length) {
                    blockScope.problemReporter().redundantSpecificationOfTypeArguments(this.type, parameterizedTypeBinding.arguments);
                    return;
                }
            }
        }
        TypeReference typeReference = this.type;
        int i11 = typeReference.bits;
        try {
            typeReference.bits = 524288 | i11;
            TypeBinding[] inferElidedTypes = inferElidedTypes(parameterizedTypeBinding, blockScope);
            if (inferElidedTypes == null) {
                return;
            }
            for (int i12 = 0; i12 < inferElidedTypes.length; i12++) {
                if (TypeBinding.notEquals(inferElidedTypes[i12], parameterizedTypeBinding.arguments[i12])) {
                    return;
                }
            }
            blockScope.problemReporter().redundantSpecificationOfTypeArguments(this.type, parameterizedTypeBinding.arguments);
        } finally {
            this.type.bits = i11;
        }
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

    public Expression enclosingInstance() {
        return null;
    }

    @Override
    public InferenceContext18 freshInferenceContext(Scope scope) {
        return new InferenceContext18(scope, this.arguments, this, this.outerInferenceContext);
    }

    @Override
    public void generateCode(BlockScope blockScope, CodeStream codeStream, boolean z10) {
        cleanUpInferenceContexts();
        if (!z10) {
            blockScope.problemReporter().unusedObjectAllocation(this);
        }
        int i10 = codeStream.position;
        MethodBinding original = this.binding.original();
        ReferenceBinding referenceBinding = original.declaringClass;
        codeStream.new_(this.type, referenceBinding);
        boolean z11 = (this.implicitConversion & 1024) != 0;
        if (z10 || z11) {
            codeStream.dup();
        }
        TypeReference typeReference = this.type;
        if (typeReference != null) {
            codeStream.recordPositionsFrom(i10, typeReference.sourceStart);
        } else {
            codeStream.ldc(String.valueOf(this.enumConstant.name));
            codeStream.generateInlinedValue(this.enumConstant.binding.f102483id);
        }
        if (referenceBinding.isNestedType()) {
            codeStream.generateSyntheticEnclosingInstanceValues(blockScope, referenceBinding, enclosingInstance(), this);
        }
        generateArguments(this.binding, this.arguments, blockScope, codeStream);
        if (referenceBinding.isNestedType()) {
            codeStream.generateSyntheticOuterArgumentValues(blockScope, referenceBinding, this);
        }
        MethodBinding methodBinding = this.syntheticAccessor;
        if (methodBinding == null) {
            codeStream.invoke(Opcodes.OPC_invokespecial, original, null, this.typeArguments);
        } else {
            int length = methodBinding.parameters.length - original.parameters.length;
            for (int i11 = 0; i11 < length; i11++) {
                codeStream.aconst_null();
            }
            codeStream.invoke(Opcodes.OPC_invokespecial, this.syntheticAccessor, null, this.typeArguments);
        }
        if (z10) {
            codeStream.generateImplicitConversion(this.implicitConversion);
        } else if (z11) {
            codeStream.generateImplicitConversion(this.implicitConversion);
            int i12 = postConversionType(blockScope).f102482id;
            if (i12 == 7 || i12 == 8) {
                codeStream.pop2();
            } else {
                codeStream.pop();
            }
        }
        codeStream.recordPositionsFrom(i10, this.sourceStart);
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

    public MethodBinding inferConstructorOfElidedParameterizedType(Scope scope) {
        TypeBinding typeBinding = this.typeExpected;
        if (typeBinding != null && this.binding != null) {
            HashMap<TypeBinding, MethodBinding> hashMap = this.solutionsPerTargetType;
            MethodBinding methodBinding = hashMap != null ? hashMap.get(typeBinding) : null;
            if (methodBinding != null) {
                return methodBinding;
            }
        }
        boolean[] zArr = new boolean[1];
        MethodBinding inferDiamondConstructor = inferDiamondConstructor(scope, this, this.resolvedType, this.argumentTypes, zArr);
        if (inferDiamondConstructor != null) {
            this.inferredReturnType = zArr[0];
            if ((inferDiamondConstructor instanceof ParameterizedGenericMethodBinding) && scope.compilerOptions().sourceLevel >= ClassFileConstants.JDK1_8 && this.expressionContext == ExpressionContext.INVOCATION_CONTEXT && this.typeExpected == null) {
                inferDiamondConstructor = ParameterizedGenericMethodBinding.computeCompatibleMethod18(inferDiamondConstructor.shallowOriginal(), this.argumentTypes, scope, this);
            }
            TypeBinding typeBinding2 = this.typeExpected;
            if (typeBinding2 != null && typeBinding2.isProperType(true)) {
                registerResult(this.typeExpected, inferDiamondConstructor);
            }
        }
        return inferDiamondConstructor;
    }

    public TypeBinding[] inferElidedTypes(Scope scope) {
        return inferElidedTypes((ParameterizedTypeBinding) this.resolvedType, scope);
    }

    @Override
    public TypeBinding invocationTargetType() {
        return this.typeExpected;
    }

    @Override
    public boolean isBoxingCompatibleWith(TypeBinding typeBinding, Scope scope) {
        if (isPolyExpression()) {
            return false;
        }
        return isCompatibleWith(scope.boxing(typeBinding), scope);
    }

    @Override
    public boolean isCompatibleWith(TypeBinding typeBinding, Scope scope) {
        MethodBinding methodBinding;
        if (!this.argumentsHaveErrors && (methodBinding = this.binding) != null && methodBinding.isValidBinding() && typeBinding != null && scope != null) {
            TypeBinding typeBinding2 = this.resolvedType;
            if (isPolyExpression()) {
                TypeBinding typeBinding3 = this.typeExpected;
                try {
                    HashMap<TypeBinding, MethodBinding> hashMap = this.solutionsPerTargetType;
                    MethodBinding methodBinding2 = hashMap != null ? hashMap.get(typeBinding) : null;
                    if (methodBinding2 == null) {
                        this.typeExpected = typeBinding;
                        methodBinding2 = inferConstructorOfElidedParameterizedType(scope);
                        if (methodBinding2 == null || !methodBinding2.isValidBinding()) {
                            this.typeExpected = typeBinding3;
                            return false;
                        }
                    }
                    ReferenceBinding referenceBinding = methodBinding2.declaringClass;
                    this.typeExpected = typeBinding3;
                    typeBinding2 = referenceBinding;
                } catch (Throwable th2) {
                    this.typeExpected = typeBinding3;
                    throw th2;
                }
            }
            if (typeBinding2 != null && typeBinding2.isCompatibleWith(typeBinding, scope)) {
                return true;
            }
        }
        return false;
    }

    @Override
    public boolean isPolyExpression() {
        return isPolyExpression(this.binding);
    }

    @Override
    public boolean isSuperAccess() {
        return false;
    }

    @Override
    public boolean isTypeAccess() {
        return true;
    }

    public void manageEnclosingInstanceAccessIfNecessary(BlockScope blockScope, FlowInfo flowInfo) {
        if ((flowInfo.tagBits & 1) != 0) {
            return;
        }
        ReferenceBinding referenceBinding = (ReferenceBinding) this.binding.declaringClass.erasure();
        if (referenceBinding.isNestedType()) {
            if (blockScope.enclosingSourceType().isLocalType() || blockScope.isLambdaSubscope()) {
                if (referenceBinding.isLocalType()) {
                    ((LocalTypeBinding) referenceBinding).addInnerEmulationDependent(blockScope, false);
                } else {
                    blockScope.propagateInnerEmulation(referenceBinding, false);
                }
            }
        }
    }

    public void manageSyntheticAccessIfNecessary(BlockScope blockScope, FlowInfo flowInfo) {
        if ((flowInfo.tagBits & 1) != 0) {
            return;
        }
        MethodBinding original = this.binding.original();
        if (!original.isPrivate() || blockScope.enclosingSourceType().isNestmateOf(this.binding.declaringClass)) {
            return;
        }
        SourceTypeBinding enclosingSourceType = blockScope.enclosingSourceType();
        ReferenceBinding referenceBinding = original.declaringClass;
        if (TypeBinding.notEquals(enclosingSourceType, referenceBinding)) {
            if ((referenceBinding.tagBits & 16) != 0 && blockScope.compilerOptions().complianceLevel >= ClassFileConstants.JDK1_4) {
                original.tagBits |= 512;
            } else {
                this.syntheticAccessor = ((SourceTypeBinding) referenceBinding).addSyntheticMethod(original, isSuperAccess());
                blockScope.problemReporter().needToEmulateMethodAccess(original, this);
            }
        }
    }

    @Override
    public int nameSourceEnd() {
        FieldDeclaration fieldDeclaration = this.enumConstant;
        return fieldDeclaration != null ? fieldDeclaration.sourceEnd : this.type.sourceEnd;
    }

    @Override
    public int nameSourceStart() {
        FieldDeclaration fieldDeclaration = this.enumConstant;
        return fieldDeclaration != null ? fieldDeclaration.sourceStart : this.type.sourceStart;
    }

    @Override
    public StringBuffer printExpression(int i10, StringBuffer stringBuffer) {
        if (this.type != null) {
            stringBuffer.append("new ");
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
        TypeReference typeReference = this.type;
        if (typeReference != null) {
            typeReference.printExpression(0, stringBuffer);
        }
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
    public void registerInferenceContext(ParameterizedGenericMethodBinding parameterizedGenericMethodBinding, InferenceContext18 inferenceContext18) {
        if (this.inferenceContexts == null) {
            this.inferenceContexts = new SimpleLookupTable();
        }
        this.inferenceContexts.put(parameterizedGenericMethodBinding, inferenceContext18);
    }

    @Override
    public void registerResult(TypeBinding typeBinding, MethodBinding methodBinding) {
        if (methodBinding == null || !methodBinding.isConstructor()) {
            return;
        }
        if (this.solutionsPerTargetType == null) {
            this.solutionsPerTargetType = new HashMap<>();
        }
        this.solutionsPerTargetType.put(typeBinding, methodBinding);
    }

    @Override
    public TypeBinding resolveType(BlockScope blockScope) {
        MethodBinding methodBinding;
        TypeReference typeReference = this.type;
        int i10 = 0;
        boolean z10 = (typeReference == null || (typeReference.bits & 524288) == 0) ? false : true;
        CompilerOptions compilerOptions = blockScope.compilerOptions();
        long j10 = compilerOptions.sourceLevel;
        Constant constant = this.constant;
        Constant constant2 = Constant.NotAConstant;
        if (constant != constant2) {
            this.constant = constant2;
            TypeReference typeReference2 = this.type;
            if (typeReference2 == null) {
                this.resolvedType = blockScope.enclosingReceiverType();
            } else {
                this.resolvedType = typeReference2.resolveType(blockScope, true);
            }
            if (this.type != null) {
                checkIllegalNullAnnotation(blockScope, this.resolvedType);
                if (this.type instanceof ParameterizedQualifiedTypeReference) {
                    ReferenceBinding referenceBinding = (ReferenceBinding) this.resolvedType;
                    if (referenceBinding == null) {
                        return referenceBinding;
                    }
                    while (true) {
                        if ((referenceBinding.modifiers & 8) != 0 || referenceBinding.isRawType()) {
                            break;
                        }
                        referenceBinding = referenceBinding.enclosingType();
                        if (referenceBinding == null) {
                            ParameterizedQualifiedTypeReference parameterizedQualifiedTypeReference = (ParameterizedQualifiedTypeReference) this.type;
                            int length = parameterizedQualifiedTypeReference.typeArguments.length - 2;
                            while (true) {
                                if (length < 0) {
                                    break;
                                }
                                if (parameterizedQualifiedTypeReference.typeArguments[length] != null) {
                                    blockScope.problemReporter().illegalQualifiedParameterizedTypeAllocation(this.type, this.resolvedType);
                                    break;
                                }
                                length--;
                            }
                        }
                    }
                }
            }
            TypeReference[] typeReferenceArr = this.typeArguments;
            if (typeReferenceArr != null) {
                int length2 = typeReferenceArr.length;
                this.argumentsHaveErrors = j10 < ClassFileConstants.JDK1_5;
                this.genericTypeArguments = new TypeBinding[length2];
                for (int i11 = 0; i11 < length2; i11++) {
                    TypeReference typeReference3 = this.typeArguments[i11];
                    TypeBinding[] typeBindingArr = this.genericTypeArguments;
                    TypeBinding resolveType = typeReference3.resolveType(blockScope, true);
                    typeBindingArr[i11] = resolveType;
                    if (resolveType == null) {
                        this.argumentsHaveErrors = true;
                    }
                    if (this.argumentsHaveErrors && (typeReference3 instanceof Wildcard)) {
                        blockScope.problemReporter().illegalUsageOfWildcard(typeReference3);
                    }
                }
                if (z10) {
                    blockScope.problemReporter().diamondNotWithExplicitTypeArguments(this.typeArguments);
                    return null;
                }
                if (this.argumentsHaveErrors) {
                    Expression[] expressionArr = this.arguments;
                    if (expressionArr != null) {
                        int length3 = expressionArr.length;
                        while (i10 < length3) {
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
                int length4 = expressionArr2.length;
                this.argumentTypes = new TypeBinding[length4];
                for (int i12 = 0; i12 < length4; i12++) {
                    Expression expression = this.arguments[i12];
                    if (expression instanceof CastExpression) {
                        expression.bits |= 32;
                        this.argsContainCast = true;
                    }
                    expression.setExpressionContext(ExpressionContext.INVOCATION_CONTEXT);
                    if (this.arguments[i12].resolvedType != null) {
                        blockScope.problemReporter().genericInferenceError("Argument was unexpectedly found resolved", this);
                    }
                    TypeBinding[] typeBindingArr2 = this.argumentTypes;
                    TypeBinding resolveType2 = expression.resolveType(blockScope);
                    typeBindingArr2[i12] = resolveType2;
                    if (resolveType2 == null) {
                        this.argumentsHaveErrors = true;
                    }
                }
                if (this.argumentsHaveErrors) {
                    if (z10) {
                        return null;
                    }
                    if (this.resolvedType instanceof ReferenceBinding) {
                        TypeBinding[] typeBindingArr3 = new TypeBinding[length4];
                        while (true) {
                            length4--;
                            if (length4 < 0) {
                                break;
                            }
                            TypeBinding typeBinding = this.argumentTypes[length4];
                            if (typeBinding == null) {
                                typeBinding = TypeBinding.NULL;
                            }
                            typeBindingArr3[length4] = typeBinding;
                        }
                        MethodBinding findMethod = blockScope.findMethod((ReferenceBinding) this.resolvedType, TypeConstants.INIT, typeBindingArr3, this, false);
                        this.binding = findMethod;
                        if (findMethod != null && !findMethod.isValidBinding() && (methodBinding = ((ProblemMethodBinding) this.binding).closestMatch) != null) {
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
                    return this.resolvedType;
                }
            }
            TypeBinding typeBinding2 = this.resolvedType;
            if (typeBinding2 == null || !typeBinding2.isValidBinding()) {
                return null;
            }
            if (this.type != null && !this.resolvedType.canBeInstantiated()) {
                blockScope.problemReporter().cannotInstantiate(this.type, this.resolvedType);
                return this.resolvedType;
            }
        }
        if (z10) {
            MethodBinding inferConstructorOfElidedParameterizedType = inferConstructorOfElidedParameterizedType(blockScope);
            this.binding = inferConstructorOfElidedParameterizedType;
            if (inferConstructorOfElidedParameterizedType == null || !inferConstructorOfElidedParameterizedType.isValidBinding()) {
                blockScope.problemReporter().cannotInferElidedTypes(this);
                this.resolvedType = null;
                return null;
            }
            if (this.typeExpected == null && compilerOptions.sourceLevel >= ClassFileConstants.JDK1_8 && this.expressionContext.definesTargetType()) {
                return new PolyTypeBinding(this);
            }
            TypeReference typeReference4 = this.type;
            MethodBinding methodBinding2 = this.binding;
            ReferenceBinding referenceBinding2 = methodBinding2.declaringClass;
            typeReference4.resolvedType = referenceBinding2;
            this.resolvedType = referenceBinding2;
            if (methodBinding2.isVarargs()) {
                TypeBinding[] typeBindingArr4 = this.binding.parameters;
                TypeBinding leafComponentType = typeBindingArr4[typeBindingArr4.length - 1].leafComponentType();
                if (!leafComponentType.erasure().canBeSeenBy(blockScope)) {
                    blockScope.problemReporter().invalidType(this, new ProblemReferenceBinding(new char[][]{leafComponentType.readableName()}, (ReferenceBinding) leafComponentType, 2));
                    this.resolvedType = null;
                    return null;
                }
            }
            this.binding = ASTNode.resolvePolyExpressionArguments(this, this.binding, this.argumentTypes, blockScope);
        } else {
            this.binding = findConstructorBinding(blockScope, this, (ReferenceBinding) this.resolvedType, this.argumentTypes);
        }
        if (!this.binding.isValidBinding()) {
            MethodBinding methodBinding3 = this.binding;
            if (methodBinding3.declaringClass == null) {
                methodBinding3.declaringClass = (ReferenceBinding) this.resolvedType;
            }
            TypeReference typeReference5 = this.type;
            if (typeReference5 != null && !typeReference5.resolvedType.isValidBinding()) {
                return null;
            }
            blockScope.problemReporter().invalidConstructor(this, this.binding);
            return this.resolvedType;
        }
        if ((this.binding.tagBits & 128) != 0) {
            blockScope.problemReporter().missingTypeInConstructor(this, this.binding);
        }
        if (isMethodUseDeprecated(this.binding, blockScope, true, this)) {
            blockScope.problemReporter().deprecatedMethod(this.binding, this);
        }
        if (ASTNode.checkInvocationArguments(blockScope, null, this.resolvedType, this.binding, this.arguments, this.argumentTypes, this.argsContainCast, this)) {
            this.bits |= 65536;
        }
        if (this.typeArguments != null && this.binding.original().typeVariables == Binding.NO_TYPE_VARIABLES) {
            blockScope.problemReporter().unnecessaryTypeArgumentsForMethodInvocation(this.binding, this.genericTypeArguments, this.typeArguments);
        }
        if (!z10 && this.resolvedType.isParameterizedTypeWithActualArguments()) {
            checkTypeArgumentRedundancy((ParameterizedTypeBinding) this.resolvedType, blockScope);
        }
        if (compilerOptions.isAnnotationBasedNullAnalysisEnabled) {
            ImplicitNullAnnotationVerifier.ensureNullnessIsKnown(this.binding, blockScope);
            if (compilerOptions.sourceLevel >= ClassFileConstants.JDK1_8) {
                MethodBinding methodBinding4 = this.binding;
                if ((methodBinding4 instanceof ParameterizedGenericMethodBinding) && this.typeArguments != null) {
                    TypeVariableBinding[] typeVariables = methodBinding4.original().typeVariables();
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
        if (compilerOptions.sourceLevel >= ClassFileConstants.JDK1_8 && this.binding.getTypeAnnotations() != Binding.NO_ANNOTATIONS) {
            this.resolvedType = blockScope.environment().createAnnotatedType(this.resolvedType, this.binding.getTypeAnnotations());
        }
        return this.resolvedType;
    }

    @Override
    public void setActualReceiverType(ReferenceBinding referenceBinding) {
    }

    @Override
    public void setDepth(int i10) {
    }

    @Override
    public void setExpectedType(TypeBinding typeBinding) {
        this.typeExpected = typeBinding;
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
            TypeReference[] typeReferenceArr = this.typeArguments;
            if (typeReferenceArr != null) {
                int length = typeReferenceArr.length;
                for (int i10 = 0; i10 < length; i10++) {
                    this.typeArguments[i10].traverse(aSTVisitor, blockScope);
                }
            }
            TypeReference typeReference = this.type;
            if (typeReference != null) {
                typeReference.traverse(aSTVisitor, blockScope);
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

    public TypeBinding[] inferElidedTypes(ParameterizedTypeBinding parameterizedTypeBinding, Scope scope) {
        ReferenceBinding genericType = parameterizedTypeBinding.genericType();
        ReferenceBinding enclosingType = parameterizedTypeBinding.enclosingType();
        MethodBinding staticFactory = scope.getStaticFactory(scope.environment().createParameterizedType(genericType, genericType.typeVariables(), enclosingType), enclosingType, this.argumentTypes, this);
        if (!(staticFactory instanceof ParameterizedGenericMethodBinding) || !staticFactory.isValidBinding()) {
            return null;
        }
        this.inferredReturnType = ((ParameterizedGenericMethodBinding) staticFactory).inferredReturnType;
        return ((ParameterizedTypeBinding) staticFactory.returnType).arguments;
    }

    @Override
    public boolean isPolyExpression(MethodBinding methodBinding) {
        TypeReference typeReference;
        ExpressionContext expressionContext = this.expressionContext;
        return ((expressionContext != ExpressionContext.ASSIGNMENT_CONTEXT && expressionContext != ExpressionContext.INVOCATION_CONTEXT) || (typeReference = this.type) == null || (typeReference.bits & 524288) == 0) ? false : true;
    }
}
