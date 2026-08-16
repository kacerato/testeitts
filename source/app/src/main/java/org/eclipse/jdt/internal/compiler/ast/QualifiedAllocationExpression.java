package org.eclipse.jdt.internal.compiler.ast;

import java.util.Arrays;
import java.util.Comparator;
import org.eclipse.jdt.internal.compiler.ASTVisitor;
import org.eclipse.jdt.internal.compiler.ast.QualifiedAllocationExpression;
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
import org.eclipse.jdt.internal.compiler.lookup.IntersectionTypeBinding18;
import org.eclipse.jdt.internal.compiler.lookup.LocalTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.MethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.ParameterizedGenericMethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.ParameterizedTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.PolyTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.ProblemMethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.ProblemReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.RawTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.Scope;
import org.eclipse.jdt.internal.compiler.lookup.SourceTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeBindingVisitor;
import org.eclipse.jdt.internal.compiler.lookup.TypeConstants;
import org.eclipse.jdt.internal.compiler.lookup.TypeVariableBinding;

public class QualifiedAllocationExpression extends AllocationExpression {
    public TypeDeclaration anonymousType;
    public Expression enclosingInstance;

    public QualifiedAllocationExpression() {
    }

    private MethodBinding getAnonymousConstructorBinding(ReferenceBinding referenceBinding, BlockScope blockScope) {
        ReferenceBinding javaLangObject = referenceBinding.isInterface() ? blockScope.getJavaLangObject() : referenceBinding;
        blockScope.addAnonymousType(this.anonymousType, referenceBinding);
        this.anonymousType.resolve(blockScope);
        SourceTypeBinding sourceTypeBinding = this.anonymousType.binding;
        this.resolvedType = sourceTypeBinding;
        if ((sourceTypeBinding.tagBits & 131072) != 0) {
            return null;
        }
        return findConstructorBinding(blockScope, this, javaLangObject, this.argumentTypes);
    }

    /* JADX WARN: Removed duplicated region for block: B:108:0x0220  */
    /* JADX WARN: Removed duplicated region for block: B:116:0x0291  */
    /* JADX WARN: Removed duplicated region for block: B:141:0x0357  */
    /* JADX WARN: Removed duplicated region for block: B:144:0x0364  */
    /* JADX WARN: Removed duplicated region for block: B:197:0x044e  */
    /* JADX WARN: Removed duplicated region for block: B:207:0x035d  */
    /* JADX WARN: Removed duplicated region for block: B:216:0x032d  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x0102  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0164  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x0194  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private TypeBinding resolveTypeForQualifiedAllocationExpression(BlockScope blockScope) {
        TypeBinding typeBinding;
        TypeBinding typeBinding2;
        TypeBinding typeBinding3;
        MethodBinding findConstructorBinding;
        TypeBinding typeBinding4;
        MethodBinding methodBinding;
        MethodBinding methodBinding2;
        TypeBinding typeBinding5;
        TypeBinding typeBinding6;
        TypeBinding resolveType;
        TypeBinding typeBinding7;
        boolean z10;
        TypeBinding typeBinding8;
        TypeReference[] typeReferenceArr;
        Expression[] expressionArr;
        MethodBinding methodBinding3;
        boolean z11;
        TypeReference typeReference = this.type;
        boolean z12 = (typeReference == null || (typeReference.bits & 524288) == 0) ? false : true;
        long j10 = blockScope.compilerOptions().sourceLevel;
        Constant constant = this.constant;
        Constant constant2 = Constant.NotAConstant;
        if (constant != constant2) {
            this.constant = constant2;
            Expression expression = this.enclosingInstance;
            if (expression != null) {
                if (expression instanceof CastExpression) {
                    expression.bits |= 32;
                    z11 = true;
                } else {
                    z11 = false;
                }
                typeBinding3 = expression.resolveType(blockScope);
                if (typeBinding3 != null) {
                    if (typeBinding3.isBaseType() || typeBinding3.isArrayType()) {
                        blockScope.problemReporter().illegalPrimitiveOrArrayTypeForEnclosingInstance(typeBinding3, this.enclosingInstance);
                    } else if (this.type instanceof QualifiedTypeReference) {
                        blockScope.problemReporter().illegalUsageOfQualifiedTypeReference((QualifiedTypeReference) this.type);
                    } else {
                        ReferenceBinding referenceBinding = (ReferenceBinding) typeBinding3;
                        if (referenceBinding.canBeSeenBy(blockScope)) {
                            TypeBinding resolveTypeEnclosing = ((SingleTypeReference) this.type).resolveTypeEnclosing(blockScope, referenceBinding);
                            this.resolvedType = resolveTypeEnclosing;
                            checkIllegalNullAnnotation(blockScope, resolveTypeEnclosing);
                            if (resolveTypeEnclosing != null && z11) {
                                CastExpression.checkNeedForEnclosingInstanceCast(blockScope, this.enclosingInstance, typeBinding3, resolveTypeEnclosing);
                            }
                            typeBinding7 = resolveTypeEnclosing;
                        } else {
                            typeBinding3 = new ProblemReferenceBinding(referenceBinding.compoundName, referenceBinding, 2);
                            blockScope.problemReporter().invalidType(this.enclosingInstance, typeBinding3);
                        }
                    }
                }
                typeBinding8 = null;
                z10 = true;
                if (typeBinding8 != null || !typeBinding8.isValidBinding()) {
                    z10 = true;
                }
                typeReferenceArr = this.typeArguments;
                if (typeReferenceArr != null) {
                    int length = typeReferenceArr.length;
                    this.argumentsHaveErrors = j10 < ClassFileConstants.JDK1_5;
                    this.genericTypeArguments = new TypeBinding[length];
                    for (int i10 = 0; i10 < length; i10++) {
                        TypeReference typeReference2 = this.typeArguments[i10];
                        TypeBinding[] typeBindingArr = this.genericTypeArguments;
                        TypeBinding resolveType2 = typeReference2.resolveType(blockScope, true);
                        typeBindingArr[i10] = resolveType2;
                        if (resolveType2 == null) {
                            this.argumentsHaveErrors = true;
                        }
                        if (this.argumentsHaveErrors && (typeReference2 instanceof Wildcard)) {
                            blockScope.problemReporter().illegalUsageOfWildcard(typeReference2);
                        }
                    }
                    if (z12) {
                        blockScope.problemReporter().diamondNotWithExplicitTypeArguments(this.typeArguments);
                        return null;
                    }
                    if (this.argumentsHaveErrors) {
                        Expression[] expressionArr2 = this.arguments;
                        if (expressionArr2 != null) {
                            int length2 = expressionArr2.length;
                            for (int i11 = 0; i11 < length2; i11++) {
                                this.arguments[i11].resolveType(blockScope);
                            }
                        }
                        return null;
                    }
                }
                this.argumentTypes = Binding.NO_PARAMETERS;
                expressionArr = this.arguments;
                if (expressionArr != null) {
                    int length3 = expressionArr.length;
                    this.argumentTypes = new TypeBinding[length3];
                    for (int i12 = 0; i12 < length3; i12++) {
                        Expression expression2 = this.arguments[i12];
                        if (expression2 instanceof CastExpression) {
                            expression2.bits |= 32;
                            this.argsContainCast = true;
                        }
                        expression2.setExpressionContext(ExpressionContext.INVOCATION_CONTEXT);
                        TypeBinding[] typeBindingArr2 = this.argumentTypes;
                        TypeBinding resolveType3 = expression2.resolveType(blockScope);
                        typeBindingArr2[i12] = resolveType3;
                        if (resolveType3 == null) {
                            this.argumentsHaveErrors = true;
                            z10 = true;
                        }
                    }
                }
                if (!z10) {
                    if (z12) {
                        return null;
                    }
                    if (typeBinding8 instanceof ReferenceBinding) {
                        ReferenceBinding referenceBinding2 = (ReferenceBinding) typeBinding8;
                        if (typeBinding8.isValidBinding()) {
                            Expression[] expressionArr3 = this.arguments;
                            int length4 = expressionArr3 == null ? 0 : expressionArr3.length;
                            TypeBinding[] typeBindingArr3 = new TypeBinding[length4];
                            while (true) {
                                length4--;
                                if (length4 < 0) {
                                    break;
                                }
                                TypeBinding typeBinding9 = this.argumentTypes[length4];
                                if (typeBinding9 == null) {
                                    typeBinding9 = TypeBinding.NULL;
                                }
                                typeBindingArr3[length4] = typeBinding9;
                            }
                            MethodBinding findMethod = blockScope.findMethod(referenceBinding2, TypeConstants.INIT, typeBindingArr3, this, false);
                            this.binding = findMethod;
                            if (findMethod != null && !findMethod.isValidBinding() && (methodBinding3 = ((ProblemMethodBinding) this.binding).closestMatch) != null) {
                                if (methodBinding3.original().typeVariables != Binding.NO_TYPE_VARIABLES) {
                                    methodBinding3 = blockScope.environment().createParameterizedGenericMethod(methodBinding3.original(), (RawTypeBinding) null);
                                }
                                this.binding = methodBinding3;
                                MethodBinding original = methodBinding3.original();
                                if (original.isOrEnclosedByPrivateType() && !blockScope.isDefinedInMethod(original)) {
                                    original.modifiers |= 134217728;
                                }
                            }
                        }
                        TypeDeclaration typeDeclaration = this.anonymousType;
                        if (typeDeclaration != null) {
                            blockScope.addAnonymousType(typeDeclaration, referenceBinding2);
                            this.anonymousType.resolve(blockScope);
                            SourceTypeBinding sourceTypeBinding = this.anonymousType.binding;
                            this.resolvedType = sourceTypeBinding;
                            return sourceTypeBinding;
                        }
                    }
                    this.resolvedType = typeBinding8;
                    return typeBinding8;
                }
                if (this.anonymousType == null) {
                    boolean canBeInstantiated = typeBinding8.canBeInstantiated();
                    typeBinding6 = typeBinding8;
                    if (!canBeInstantiated) {
                        blockScope.problemReporter().cannotInstantiate(this.type, typeBinding8);
                        this.resolvedType = typeBinding8;
                        return typeBinding8;
                    }
                } else {
                    if (z12 && j10 < ClassFileConstants.JDK9) {
                        blockScope.problemReporter().diamondNotWithAnoymousClasses(this.type);
                        return null;
                    }
                    ReferenceBinding referenceBinding3 = (ReferenceBinding) typeBinding8;
                    if (referenceBinding3.isTypeVariable()) {
                        blockScope.problemReporter().invalidType(this, new ProblemReferenceBinding(new char[][]{referenceBinding3.sourceName()}, referenceBinding3, 9));
                        return null;
                    }
                    if (this.type != null && referenceBinding3.isEnum()) {
                        blockScope.problemReporter().cannotInstantiate(this.type, referenceBinding3);
                        this.resolvedType = referenceBinding3;
                        return referenceBinding3;
                    }
                    this.resolvedType = typeBinding8;
                    typeBinding6 = typeBinding8;
                }
            } else {
                TypeReference typeReference3 = this.type;
                if (typeReference3 == null) {
                    resolveType = blockScope.enclosingSourceType();
                } else {
                    resolveType = typeReference3.resolveType(blockScope, true);
                    checkIllegalNullAnnotation(blockScope, resolveType);
                    if (resolveType != null && resolveType.isValidBinding() && (this.type instanceof ParameterizedQualifiedTypeReference)) {
                        ReferenceBinding referenceBinding4 = (ReferenceBinding) resolveType;
                        while (true) {
                            if ((referenceBinding4.modifiers & 8) != 0 || referenceBinding4.isRawType()) {
                                break;
                            }
                            referenceBinding4 = referenceBinding4.enclosingType();
                            if (referenceBinding4 == null) {
                                ParameterizedQualifiedTypeReference parameterizedQualifiedTypeReference = (ParameterizedQualifiedTypeReference) this.type;
                                int length5 = parameterizedQualifiedTypeReference.typeArguments.length - 2;
                                while (true) {
                                    if (length5 < 0) {
                                        break;
                                    }
                                    if (parameterizedQualifiedTypeReference.typeArguments[length5] != null) {
                                        blockScope.problemReporter().illegalQualifiedParameterizedTypeAllocation(this.type, resolveType);
                                        break;
                                    }
                                    length5--;
                                }
                            }
                        }
                    }
                }
                typeBinding7 = resolveType;
                typeBinding3 = null;
            }
            z10 = false;
            typeBinding8 = typeBinding7;
            if (typeBinding8 != null) {
            }
            z10 = true;
            typeReferenceArr = this.typeArguments;
            if (typeReferenceArr != null) {
            }
            this.argumentTypes = Binding.NO_PARAMETERS;
            expressionArr = this.arguments;
            if (expressionArr != null) {
            }
            if (!z10) {
            }
        } else {
            Expression expression3 = this.enclosingInstance;
            if (expression3 == null) {
                typeBinding = null;
                typeBinding2 = null;
                if (!z12) {
                    findConstructorBinding = inferConstructorOfElidedParameterizedType(blockScope);
                    this.binding = findConstructorBinding;
                    if (findConstructorBinding == null || !findConstructorBinding.isValidBinding()) {
                        blockScope.problemReporter().cannotInferElidedTypes(this);
                        this.resolvedType = null;
                        return null;
                    }
                    if (this.typeExpected == null && j10 >= ClassFileConstants.JDK1_8 && this.expressionContext.definesTargetType()) {
                        return new PolyTypeBinding(this);
                    }
                    TypeReference typeReference4 = this.type;
                    MethodBinding methodBinding4 = this.binding;
                    ReferenceBinding referenceBinding5 = methodBinding4.declaringClass;
                    typeReference4.resolvedType = referenceBinding5;
                    this.resolvedType = referenceBinding5;
                    if (this.anonymousType != null) {
                        findConstructorBinding = getAnonymousConstructorBinding(referenceBinding5, blockScope);
                        if (findConstructorBinding == null) {
                            return null;
                        }
                        this.resolvedType = this.anonymousType.binding;
                        if (!validate((ParameterizedTypeBinding) referenceBinding5, blockScope)) {
                            return this.resolvedType;
                        }
                    } else if (methodBinding4.isVarargs()) {
                        TypeBinding[] typeBindingArr4 = this.binding.parameters;
                        TypeBinding leafComponentType = typeBindingArr4[typeBindingArr4.length - 1].leafComponentType();
                        if (!leafComponentType.erasure().canBeSeenBy(blockScope)) {
                            blockScope.problemReporter().invalidType(this, new ProblemReferenceBinding(new char[][]{leafComponentType.readableName()}, (ReferenceBinding) leafComponentType, 2));
                            this.resolvedType = null;
                            return null;
                        }
                    }
                    this.binding = ASTNode.resolvePolyExpressionArguments(this, this.binding, this.argumentTypes, blockScope);
                    typeBinding4 = referenceBinding5;
                } else if (this.anonymousType != null) {
                    findConstructorBinding = getAnonymousConstructorBinding((ReferenceBinding) typeBinding, blockScope);
                    if (findConstructorBinding == null) {
                        return null;
                    }
                    this.resolvedType = this.anonymousType.binding;
                    typeBinding4 = typeBinding;
                } else {
                    findConstructorBinding = findConstructorBinding(blockScope, this, (ReferenceBinding) typeBinding, this.argumentTypes);
                    this.binding = findConstructorBinding;
                    typeBinding4 = typeBinding;
                }
                TypeBinding typeBinding10 = typeBinding4;
                methodBinding = findConstructorBinding;
                ReferenceBinding referenceBinding6 = (ReferenceBinding) typeBinding10;
                ReferenceBinding javaLangObject = !referenceBinding6.isInterface() ? blockScope.getJavaLangObject() : referenceBinding6;
                if (methodBinding.isValidBinding()) {
                    if (methodBinding.declaringClass == null) {
                        methodBinding.declaringClass = javaLangObject;
                    }
                    TypeReference typeReference5 = this.type;
                    if (typeReference5 != null && !typeReference5.resolvedType.isValidBinding()) {
                        return null;
                    }
                    blockScope.problemReporter().invalidConstructor(this, methodBinding);
                    return this.resolvedType;
                }
                if (isMethodUseDeprecated(methodBinding, blockScope, true, this)) {
                    blockScope.problemReporter().deprecatedMethod(methodBinding, this);
                }
                if (ASTNode.checkInvocationArguments(blockScope, null, javaLangObject, methodBinding, this.arguments, this.argumentTypes, this.argsContainCast, this)) {
                    this.bits |= 65536;
                }
                if (this.typeArguments == null || methodBinding.original().typeVariables != Binding.NO_TYPE_VARIABLES) {
                    methodBinding2 = methodBinding;
                } else {
                    methodBinding2 = methodBinding;
                    blockScope.problemReporter().unnecessaryTypeArgumentsForMethodInvocation(methodBinding2, this.genericTypeArguments, this.typeArguments);
                }
                if ((methodBinding2.tagBits & 128) != 0) {
                    blockScope.problemReporter().missingTypeInConstructor(this, methodBinding2);
                }
                if (this.enclosingInstance != null) {
                    ReferenceBinding enclosingType = methodBinding2.declaringClass.enclosingType();
                    if (enclosingType == null) {
                        blockScope.problemReporter().unnecessaryEnclosingInstanceSpecification(this.enclosingInstance, referenceBinding6);
                        return this.resolvedType;
                    }
                    if (!typeBinding2.isCompatibleWith(enclosingType) && !blockScope.isBoxingCompatibleWith(typeBinding2, enclosingType)) {
                        blockScope.problemReporter().typeMismatchError(typeBinding2, enclosingType, this.enclosingInstance, (ASTNode) null);
                        return this.resolvedType;
                    }
                    this.enclosingInstance.computeConversion(blockScope, enclosingType, typeBinding2);
                }
                if (z12 || !typeBinding10.isParameterizedTypeWithActualArguments() || (this.anonymousType != null && j10 < ClassFileConstants.JDK9)) {
                    typeBinding5 = typeBinding10;
                } else {
                    typeBinding5 = typeBinding10;
                    checkTypeArgumentRedundancy((ParameterizedTypeBinding) typeBinding5, blockScope);
                }
                if (this.anonymousType == null) {
                    this.resolvedType = typeBinding5;
                    return typeBinding5;
                }
                if (blockScope.environment().globalOptions.isAnnotationBasedNullAnalysisEnabled) {
                    ImplicitNullAnnotationVerifier.ensureNullnessIsKnown(methodBinding2, blockScope);
                }
                this.binding = this.anonymousType.createDefaultConstructorWithBinding(methodBinding2, (65536 & this.bits) != 0 && this.genericTypeArguments == null);
                return this.resolvedType;
            }
            typeBinding3 = expression3.resolvedType;
            TypeBinding typeBinding11 = this.type.resolvedType;
            this.resolvedType = typeBinding11;
            typeBinding6 = typeBinding11;
        }
        typeBinding2 = typeBinding3;
        typeBinding = typeBinding6;
        if (!z12) {
        }
        TypeBinding typeBinding102 = typeBinding4;
        methodBinding = findConstructorBinding;
        ReferenceBinding referenceBinding62 = (ReferenceBinding) typeBinding102;
        if (!referenceBinding62.isInterface()) {
        }
        if (methodBinding.isValidBinding()) {
        }
    }

    private boolean validate(ParameterizedTypeBinding parameterizedTypeBinding, Scope scope) {
        return new C1ValidityInspector(scope, parameterizedTypeBinding).isValid();
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x007a  */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public FlowInfo analyseCode(BlockScope blockScope, FlowContext flowContext, FlowInfo flowInfo) {
        ReferenceBinding referenceBinding;
        ReferenceBinding superclass;
        boolean z10;
        int length;
        int i10;
        Expression expression = this.enclosingInstance;
        if (expression != null) {
            flowInfo = expression.analyseCode(blockScope, flowContext, flowInfo);
        } else {
            MethodBinding methodBinding = this.binding;
            if (methodBinding != null && (referenceBinding = methodBinding.declaringClass) != null && (superclass = referenceBinding.superclass()) != null && superclass.isMemberType() && !superclass.isStatic()) {
                blockScope.tagAsAccessingEnclosingInstanceStateOf(superclass.enclosingType(), false);
            }
        }
        checkCapturedLocalInitializationIfNecessary((ReferenceBinding) (this.anonymousType == null ? this.binding.declaringClass.erasure() : this.binding.declaringClass.superclass().erasure()), blockScope, flowInfo);
        if (this.arguments != null) {
            boolean z11 = blockScope.compilerOptions().analyseResourceLeaks;
            if (z11) {
                TypeBinding typeBinding = this.resolvedType;
                if ((typeBinding instanceof ReferenceBinding) && ((ReferenceBinding) typeBinding).hasTypeBit(4)) {
                    z10 = true;
                    length = this.arguments.length;
                    for (i10 = 0; i10 < length; i10++) {
                        flowInfo = this.arguments[i10].analyseCode(blockScope, flowContext, flowInfo);
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
        TypeDeclaration typeDeclaration = this.anonymousType;
        if (typeDeclaration != null) {
            flowInfo = typeDeclaration.analyseCode(blockScope, flowContext, flowInfo);
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
        manageEnclosingInstanceAccessIfNecessary(blockScope, flowInfo);
        manageSyntheticAccessIfNecessary(blockScope, flowInfo);
        flowContext.recordAbruptExit();
        return flowInfo;
    }

    @Override
    public Expression enclosingInstance() {
        return this.enclosingInstance;
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
        TypeDeclaration typeDeclaration = this.anonymousType;
        if (typeDeclaration != null) {
            typeDeclaration.generateCode(blockScope, codeStream);
        }
    }

    @Override
    public boolean isSuperAccess() {
        return this.anonymousType != null;
    }

    @Override
    public void manageEnclosingInstanceAccessIfNecessary(BlockScope blockScope, FlowInfo flowInfo) {
        if ((flowInfo.tagBits & 1) == 0) {
            ReferenceBinding referenceBinding = (ReferenceBinding) this.binding.declaringClass.erasure();
            if (referenceBinding.isNestedType()) {
                if (blockScope.enclosingSourceType().isLocalType() || blockScope.isLambdaSubscope()) {
                    if (referenceBinding.isLocalType()) {
                        ((LocalTypeBinding) referenceBinding).addInnerEmulationDependent(blockScope, this.enclosingInstance != null);
                    } else {
                        blockScope.propagateInnerEmulation(referenceBinding, this.enclosingInstance != null);
                    }
                }
            }
        }
    }

    @Override
    public StringBuffer printExpression(int i10, StringBuffer stringBuffer) {
        Expression expression = this.enclosingInstance;
        if (expression != null) {
            expression.printExpression(0, stringBuffer).append('.');
        }
        super.printExpression(0, stringBuffer);
        TypeDeclaration typeDeclaration = this.anonymousType;
        if (typeDeclaration != null) {
            typeDeclaration.print(i10, stringBuffer);
        }
        return stringBuffer;
    }

    @Override
    public TypeBinding resolveType(BlockScope blockScope) {
        if (this.anonymousType == null && this.enclosingInstance == null) {
            return super.resolveType(blockScope);
        }
        TypeBinding resolveTypeForQualifiedAllocationExpression = resolveTypeForQualifiedAllocationExpression(blockScope);
        if (resolveTypeForQualifiedAllocationExpression != null && !resolveTypeForQualifiedAllocationExpression.isPolyType() && this.binding != null) {
            CompilerOptions compilerOptions = blockScope.compilerOptions();
            if (compilerOptions.isAnnotationBasedNullAnalysisEnabled) {
                ImplicitNullAnnotationVerifier.ensureNullnessIsKnown(this.binding, blockScope);
                if (compilerOptions.sourceLevel >= ClassFileConstants.JDK1_8) {
                    MethodBinding methodBinding = this.binding;
                    if ((methodBinding instanceof ParameterizedGenericMethodBinding) && this.typeArguments != null) {
                        TypeVariableBinding[] typeVariables = methodBinding.original().typeVariables();
                        int i10 = 0;
                        while (true) {
                            TypeReference[] typeReferenceArr = this.typeArguments;
                            if (i10 >= typeReferenceArr.length) {
                                break;
                            }
                            typeReferenceArr[i10].checkNullConstraints(blockScope, (ParameterizedGenericMethodBinding) this.binding, typeVariables, i10);
                            i10++;
                        }
                    }
                }
            }
            if (compilerOptions.sourceLevel >= ClassFileConstants.JDK1_8 && this.binding.getTypeAnnotations() != Binding.NO_ANNOTATIONS) {
                this.resolvedType = blockScope.environment().createAnnotatedType(this.resolvedType, this.binding.getTypeAnnotations());
            }
        }
        return resolveTypeForQualifiedAllocationExpression;
    }

    @Override
    public void traverse(ASTVisitor aSTVisitor, BlockScope blockScope) {
        if (aSTVisitor.visit(this, blockScope)) {
            Expression expression = this.enclosingInstance;
            if (expression != null) {
                expression.traverse(aSTVisitor, blockScope);
            }
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
            TypeDeclaration typeDeclaration = this.anonymousType;
            if (typeDeclaration != null) {
                typeDeclaration.traverse(aSTVisitor, blockScope);
            }
        }
        aSTVisitor.endVisit(this, blockScope);
    }

    public QualifiedAllocationExpression(TypeDeclaration typeDeclaration) {
        this.anonymousType = typeDeclaration;
        typeDeclaration.allocation = this;
    }

    public class C1ValidityInspector extends TypeBindingVisitor {
        private boolean noErrors = true;
        private final ParameterizedTypeBinding val$allocationType;
        private final Scope val$scope;

        public C1ValidityInspector(Scope scope, ParameterizedTypeBinding parameterizedTypeBinding) {
            this.val$scope = scope;
            this.val$allocationType = parameterizedTypeBinding;
        }

        public static int lambda$0(ReferenceBinding referenceBinding, ReferenceBinding referenceBinding2) {
            return referenceBinding.f102482id - referenceBinding2.f102482id;
        }

        public boolean isValid() {
            TypeBindingVisitor.visit(this, this.val$allocationType);
            return this.noErrors;
        }

        @Override
        public boolean visit(IntersectionTypeBinding18 intersectionTypeBinding18) {
            Arrays.sort(intersectionTypeBinding18.intersectingTypes, new Comparator() {
                @Override
                public final int compare(Object obj, Object obj2) {
                    int lambda$0;
                    lambda$0 = QualifiedAllocationExpression.C1ValidityInspector.lambda$0((ReferenceBinding) obj, (ReferenceBinding) obj2);
                    return lambda$0;
                }
            });
            this.val$scope.problemReporter().anonymousDiamondWithNonDenotableTypeArguments(QualifiedAllocationExpression.this.type, this.val$allocationType);
            this.noErrors = false;
            return false;
        }

        @Override
        public boolean visit(TypeVariableBinding typeVariableBinding) {
            if (!typeVariableBinding.isCapture()) {
                return true;
            }
            this.val$scope.problemReporter().anonymousDiamondWithNonDenotableTypeArguments(QualifiedAllocationExpression.this.type, this.val$allocationType);
            this.noErrors = false;
            return false;
        }

        @Override
        public boolean visit(ReferenceBinding referenceBinding) {
            if (referenceBinding.canBeSeenBy(this.val$scope)) {
                return true;
            }
            this.val$scope.problemReporter().invalidType(QualifiedAllocationExpression.this.anonymousType, new ProblemReferenceBinding(referenceBinding.compoundName, referenceBinding, 2));
            this.noErrors = false;
            return false;
        }
    }
}
