package org.eclipse.jdt.internal.compiler.lookup;

import org.eclipse.jdt.internal.compiler.ast.ASTNode;
import org.eclipse.jdt.internal.compiler.ast.Expression;
import org.eclipse.jdt.internal.compiler.ast.Invocation;
import org.eclipse.jdt.internal.compiler.ast.NullAnnotationMatching;
import org.eclipse.jdt.internal.compiler.ast.ReferenceExpression;
import org.eclipse.jdt.internal.compiler.classfmt.ClassFileConstants;
import org.eclipse.jdt.internal.compiler.impl.CompilerOptions;
import org.eclipse.jdt.internal.compiler.lookup.TypeConstants;
import org.eclipse.jdt.internal.core.JavaElement;

public class ParameterizedGenericMethodBinding extends ParameterizedMethodBinding implements Substitution {
    private static int[] $SWITCH_TABLE$org$eclipse$jdt$internal$compiler$lookup$TypeConstants$BoundCheckStatus;
    protected LookupEnvironment environment;
    public boolean inferredReturnType;
    public boolean inferredWithUncheckedConversion;
    public boolean isRaw;
    public TypeBinding targetType;
    private MethodBinding tiebreakMethod;
    public TypeBinding[] typeArguments;
    public boolean wasInferred;

    public static class LingeringTypeVariableEliminator implements Substitution {
        private final Scope scope;
        private final TypeBinding[] substitutes;
        private final TypeVariableBinding[] variables;

        public LingeringTypeVariableEliminator(TypeVariableBinding[] typeVariableBindingArr, TypeBinding[] typeBindingArr, Scope scope) {
            this.variables = typeVariableBindingArr;
            this.substitutes = typeBindingArr;
            this.scope = scope;
        }

        @Override
        public LookupEnvironment environment() {
            return this.scope.environment();
        }

        @Override
        public boolean isRawSubstitution() {
            return false;
        }

        @Override
        public TypeBinding substitute(TypeVariableBinding typeVariableBinding) {
            int i10 = typeVariableBinding.rank;
            TypeVariableBinding[] typeVariableBindingArr = this.variables;
            if (i10 >= typeVariableBindingArr.length || TypeBinding.notEquals(typeVariableBindingArr[i10], typeVariableBinding)) {
                return typeVariableBinding;
            }
            if (this.substitutes != null) {
                return Scope.substitute(new LingeringTypeVariableEliminator(this.variables, null, this.scope), this.substitutes[typeVariableBinding.rank]);
            }
            Binding binding = typeVariableBinding.declaringElement;
            return this.scope.environment().createWildcard((ReferenceBinding) (binding instanceof ReferenceBinding ? binding : null), typeVariableBinding.rank, null, null, 0, typeVariableBinding.getTypeAnnotations());
        }
    }

    public static int[] $SWITCH_TABLE$org$eclipse$jdt$internal$compiler$lookup$TypeConstants$BoundCheckStatus() {
        int[] iArr = $SWITCH_TABLE$org$eclipse$jdt$internal$compiler$lookup$TypeConstants$BoundCheckStatus;
        if (iArr != null) {
            return iArr;
        }
        int[] iArr2 = new int[TypeConstants.BoundCheckStatus.valuesCustom().length];
        try {
            iArr2[TypeConstants.BoundCheckStatus.MISMATCH.ordinal()] = 4;
        } catch (NoSuchFieldError unused) {
        }
        try {
            iArr2[TypeConstants.BoundCheckStatus.NULL_PROBLEM.ordinal()] = 2;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            iArr2[TypeConstants.BoundCheckStatus.OK.ordinal()] = 1;
        } catch (NoSuchFieldError unused3) {
        }
        try {
            iArr2[TypeConstants.BoundCheckStatus.UNCHECKED.ordinal()] = 3;
        } catch (NoSuchFieldError unused4) {
        }
        $SWITCH_TABLE$org$eclipse$jdt$internal$compiler$lookup$TypeConstants$BoundCheckStatus = iArr2;
        return iArr2;
    }

    public ParameterizedGenericMethodBinding(MethodBinding methodBinding, RawTypeBinding rawTypeBinding, LookupEnvironment lookupEnvironment) {
        TypeBinding[] substitute;
        ReferenceBinding[] substitute2;
        TypeBinding substitute3;
        TypeVariableBinding[] typeVariableBindingArr = methodBinding.typeVariables;
        int length = typeVariableBindingArr.length;
        TypeBinding[] typeBindingArr = new TypeBinding[length];
        for (int i10 = 0; i10 < length; i10++) {
            typeBindingArr[i10] = lookupEnvironment.convertToRawType(typeVariableBindingArr[i10].erasure(), false);
        }
        boolean z10 = true;
        this.isRaw = true;
        this.tagBits = methodBinding.tagBits;
        this.environment = lookupEnvironment;
        this.modifiers = methodBinding.modifiers;
        this.selector = methodBinding.selector;
        this.declaringClass = rawTypeBinding == null ? methodBinding.declaringClass : rawTypeBinding;
        this.typeVariables = Binding.NO_TYPE_VARIABLES;
        this.typeArguments = typeBindingArr;
        this.originalMethod = methodBinding;
        if (rawTypeBinding != null && !methodBinding.isStatic()) {
            z10 = false;
        }
        if (z10) {
            substitute = methodBinding.parameters;
        } else {
            substitute = Scope.substitute(rawTypeBinding, methodBinding.parameters);
        }
        this.parameters = Scope.substitute(this, substitute);
        if (z10) {
            substitute2 = methodBinding.thrownExceptions;
        } else {
            substitute2 = Scope.substitute((Substitution) rawTypeBinding, methodBinding.thrownExceptions);
        }
        ReferenceBinding[] substitute4 = Scope.substitute((Substitution) this, substitute2);
        this.thrownExceptions = substitute4;
        if (substitute4 == null) {
            this.thrownExceptions = Binding.NO_EXCEPTIONS;
        }
        if (z10) {
            substitute3 = methodBinding.returnType;
        } else {
            substitute3 = Scope.substitute(rawTypeBinding, methodBinding.returnType);
        }
        this.returnType = Scope.substitute(this, substitute3);
        this.wasInferred = false;
        this.parameterNonNullness = methodBinding.parameterNonNullness;
        this.defaultNullness = methodBinding.defaultNullness;
    }

    public static MethodBinding computeCompatibleMethod(MethodBinding methodBinding, TypeBinding[] typeBindingArr, Scope scope, InvocationSite invocationSite) {
        InferenceContext inferenceContext;
        TypeBinding[] typeBindingArr2;
        ParameterizedGenericMethodBinding parameterizedGenericMethodBinding;
        TypeBinding invocationTargetType;
        LookupEnvironment environment = scope.environment();
        if (environment.globalOptions.isAnnotationBasedNullAnalysisEnabled) {
            ImplicitNullAnnotationVerifier.ensureNullnessIsKnown(methodBinding, scope);
        }
        TypeVariableBinding[] typeVariableBindingArr = methodBinding.typeVariables;
        TypeBinding[] genericTypeArguments = invocationSite.genericTypeArguments();
        if (genericTypeArguments == null) {
            TypeBinding[] typeBindingArr3 = methodBinding.parameters;
            CompilerOptions compilerOptions = scope.compilerOptions();
            if (compilerOptions.sourceLevel >= ClassFileConstants.JDK1_8) {
                return computeCompatibleMethod18(methodBinding, typeBindingArr, scope, invocationSite);
            }
            inferenceContext = new InferenceContext(methodBinding);
            ParameterizedGenericMethodBinding inferFromArgumentTypes = inferFromArgumentTypes(scope, methodBinding, typeBindingArr, typeBindingArr3, inferenceContext);
            if (inferFromArgumentTypes == null) {
                return null;
            }
            if (inferenceContext.hasUnresolvedTypeArgument()) {
                if (inferenceContext.isUnchecked) {
                    TypeBinding[] typeBindingArr4 = inferenceContext.substitutes;
                    int length = typeBindingArr4.length;
                    typeBindingArr2 = new TypeBinding[length];
                    System.arraycopy(typeBindingArr4, 0, typeBindingArr2, 0, length);
                } else {
                    typeBindingArr2 = null;
                }
                if (inferFromArgumentTypes.returnType != TypeBinding.VOID) {
                    TypeBinding invocationTargetType2 = invocationSite.invocationTargetType();
                    if (invocationTargetType2 != null) {
                        inferenceContext.hasExplicitExpectedType = true;
                    } else {
                        invocationTargetType2 = scope.getJavaLangObject();
                    }
                    inferenceContext.expectedType = invocationTargetType2;
                }
                parameterizedGenericMethodBinding = inferFromArgumentTypes.inferFromExpectedType(scope, inferenceContext);
                if (parameterizedGenericMethodBinding == null) {
                    return null;
                }
            } else {
                if (compilerOptions.sourceLevel == ClassFileConstants.JDK1_7 && inferFromArgumentTypes.returnType != TypeBinding.VOID && (invocationTargetType = invocationSite.invocationTargetType()) != null && !methodBinding.returnType.mentionsAny(methodBinding.parameters, -1)) {
                    TypeBinding uncapture = inferFromArgumentTypes.returnType.uncapture(scope);
                    if (!inferFromArgumentTypes.returnType.isCompatibleWith(invocationTargetType) && invocationTargetType.isCompatibleWith(uncapture)) {
                        InferenceContext inferenceContext2 = new InferenceContext(methodBinding);
                        methodBinding.returnType.collectSubstitutes(scope, invocationTargetType, inferenceContext2, 1);
                        parameterizedGenericMethodBinding = inferFromArgumentTypes(scope, methodBinding, typeBindingArr, typeBindingArr3, inferenceContext2);
                        if (parameterizedGenericMethodBinding != null && parameterizedGenericMethodBinding.returnType.isCompatibleWith(invocationTargetType) && scope.parameterCompatibilityLevel((MethodBinding) parameterizedGenericMethodBinding, typeBindingArr, false) > -1) {
                            inferenceContext = inferenceContext2;
                            typeBindingArr2 = null;
                        }
                    }
                }
                typeBindingArr2 = null;
                parameterizedGenericMethodBinding = inferFromArgumentTypes;
            }
        } else {
            if (genericTypeArguments.length != typeVariableBindingArr.length) {
                return new ProblemMethodBinding(methodBinding, methodBinding.selector, genericTypeArguments, 11);
            }
            parameterizedGenericMethodBinding = environment.createParameterizedGenericMethod(methodBinding, genericTypeArguments);
            inferenceContext = null;
            typeBindingArr2 = null;
        }
        Substitution lingeringTypeVariableEliminator = inferenceContext != null ? new LingeringTypeVariableEliminator(typeVariableBindingArr, inferenceContext.substitutes, scope) : parameterizedGenericMethodBinding;
        int length2 = typeVariableBindingArr.length;
        for (int i10 = 0; i10 < length2; i10++) {
            TypeVariableBinding typeVariableBinding = typeVariableBindingArr[i10];
            TypeBinding typeBinding = parameterizedGenericMethodBinding.typeArguments[i10];
            TypeBinding substitute = typeBinding instanceof TypeVariableBinding ? typeBinding : Scope.substitute(new LingeringTypeVariableEliminator(typeVariableBindingArr, null, scope), typeBinding);
            if (typeBindingArr2 == null || typeBindingArr2[i10] != null) {
                int i11 = $SWITCH_TABLE$org$eclipse$jdt$internal$compiler$lookup$TypeConstants$BoundCheckStatus()[typeVariableBinding.boundCheck(lingeringTypeVariableEliminator, substitute, scope, null).ordinal()];
                if (i11 == 3) {
                    parameterizedGenericMethodBinding.tagBits |= 256;
                } else if (i11 == 4) {
                    int length3 = typeBindingArr.length;
                    TypeBinding[] typeBindingArr5 = new TypeBinding[length3 + 2];
                    System.arraycopy(typeBindingArr, 0, typeBindingArr5, 0, length3);
                    typeBindingArr5[length3] = typeBinding;
                    typeBindingArr5[length3 + 1] = typeVariableBinding;
                    return new ProblemMethodBinding(parameterizedGenericMethodBinding, methodBinding.selector, typeBindingArr5, 10);
                }
            }
        }
        return parameterizedGenericMethodBinding;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:100:0x010a A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:75:0x0130 A[Catch: all -> 0x012c, TRY_ENTER, TryCatch #2 {all -> 0x012c, blocks: (B:101:0x010a, B:75:0x0130, B:77:0x0134, B:78:0x0137, B:98:0x0157), top: B:100:0x010a }] */
    /* JADX WARN: Removed duplicated region for block: B:90:0x015f A[Catch: all -> 0x0056, InferenceFailureException -> 0x0059, TRY_ENTER, TryCatch #0 {InferenceFailureException -> 0x0059, blocks: (B:28:0x003e, B:30:0x0042, B:32:0x004b, B:36:0x005f, B:39:0x0068, B:43:0x0070, B:46:0x007f, B:48:0x0085, B:53:0x0098, B:55:0x009e, B:57:0x00a6, B:63:0x00d4, B:65:0x00da, B:69:0x00f6, B:72:0x0100, B:104:0x0114, B:106:0x0118, B:107:0x011f, B:109:0x0123, B:81:0x013f, B:83:0x0143, B:84:0x014a, B:86:0x014e, B:90:0x015f, B:92:0x0163, B:93:0x016a, B:95:0x016e, B:114:0x0179, B:116:0x017d, B:118:0x0181, B:119:0x0188, B:120:0x018e, B:124:0x00b9), top: B:27:0x003e, outer: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:98:0x0157 A[Catch: all -> 0x012c, TRY_ENTER, TRY_LEAVE, TryCatch #2 {all -> 0x012c, blocks: (B:101:0x010a, B:75:0x0130, B:77:0x0134, B:78:0x0137, B:98:0x0157), top: B:100:0x010a }] */
    /* JADX WARN: Type inference failed for: r13v0 */
    /* JADX WARN: Type inference failed for: r13v1, types: [boolean, int] */
    /* JADX WARN: Type inference failed for: r13v3 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static MethodBinding computeCompatibleMethod18(MethodBinding methodBinding, TypeBinding[] typeBindingArr, Scope scope, InvocationSite invocationSite) {
        BoundSet boundSet;
        boolean z10;
        boolean z11;
        BoundSet boundSet2;
        TypeBinding[] solutions;
        InferenceContext18 inferenceContext18;
        ParameterizedGenericMethodBinding polyParameterizedGenericMethodBinding;
        MethodBinding methodBinding2 = methodBinding;
        TypeVariableBinding[] typeVariableBindingArr = methodBinding2.typeVariables;
        if (invocationSite.checkingPotentialCompatibility()) {
            return scope.environment().createParameterizedGenericMethod(methodBinding2, typeVariableBindingArr);
        }
        InferenceContext18 freshInferenceContext = invocationSite.freshInferenceContext(scope);
        if (freshInferenceContext == 0) {
            return methodBinding2;
        }
        TypeBinding[] typeBindingArr2 = methodBinding2.parameters;
        CompilerOptions compilerOptions = scope.compilerOptions();
        int length = typeBindingArr.length;
        TypeBinding[] typeBindingArr3 = new TypeBinding[length];
        int length2 = typeBindingArr.length;
        int length3 = typeBindingArr2.length;
        ?? r13 = 1;
        boolean z12 = true;
        int i10 = 0;
        boolean z13 = false;
        while (i10 < length2) {
            TypeBinding typeBinding = i10 < length3 ? typeBindingArr2[i10] : typeBindingArr2[length3 - 1];
            LocalTypeBinding localTypeBinding = typeBindingArr[i10];
            z12 &= localTypeBinding.isProperType(r13);
            if (localTypeBinding.isPrimitiveType() != typeBinding.isPrimitiveType()) {
                typeBindingArr3[i10] = scope.environment().computeBoxingType(localTypeBinding);
                z13 = true;
            } else {
                typeBindingArr3[i10] = localTypeBinding;
            }
            i10++;
            methodBinding2 = methodBinding;
            r13 = 1;
        }
        LookupEnvironment environment = scope.environment();
        InferenceContext18 inferenceContext182 = environment.currentInferenceContext;
        if (inferenceContext182 == null) {
            environment.currentInferenceContext = freshInferenceContext;
        }
        try {
            try {
                boolean z14 = ((invocationSite instanceof Expression) && ((Expression) invocationSite).isTrulyExpression() && ((Expression) invocationSite).isPolyExpression(methodBinding2)) ? r13 : false;
                boolean z15 = (z14 && methodBinding.isConstructor()) ? r13 : false;
                if (length == typeBindingArr2.length) {
                    freshInferenceContext.inferenceKind = z13 ? 2 : r13;
                    freshInferenceContext.inferInvocationApplicability(methodBinding2, typeBindingArr3, z15);
                    boundSet = freshInferenceContext.solve((boolean) r13);
                } else {
                    boundSet = null;
                }
                InferenceContext18 inferenceContext183 = freshInferenceContext;
                if (boundSet == null) {
                    inferenceContext183 = freshInferenceContext;
                    if (methodBinding.isVarargs()) {
                        InferenceContext18 freshInferenceContext2 = invocationSite.freshInferenceContext(scope);
                        freshInferenceContext2.inferenceKind = 3;
                        freshInferenceContext2.inferInvocationApplicability(methodBinding2, typeBindingArr3, z15);
                        boundSet = freshInferenceContext2.solve((boolean) r13);
                        inferenceContext183 = freshInferenceContext2;
                    }
                }
                InferenceContext18 inferenceContext184 = inferenceContext183;
                if (boundSet == null) {
                    environment.currentInferenceContext = inferenceContext182;
                    return null;
                }
                if (!inferenceContext184.isResolved(boundSet)) {
                    environment.currentInferenceContext = inferenceContext182;
                    return null;
                }
                inferenceContext184.stepCompleted = r13;
                TypeBinding invocationTargetType = invocationSite.invocationTargetType();
                if (invocationTargetType == 0 && invocationSite.getExpressionContext().definesTargetType() && z14) {
                    boundSet2 = boundSet;
                    z11 = false;
                    z10 = false;
                    if (boundSet2 != null || (solutions = inferenceContext184.getSolutions(typeVariableBindingArr, invocationSite, boundSet2)) == null) {
                        environment.currentInferenceContext = inferenceContext182;
                        return null;
                    }
                    ParameterizedGenericMethodBinding createParameterizedGenericMethod = scope.environment().createParameterizedGenericMethod(methodBinding, solutions, inferenceContext184.usesUncheckedConversion, z11, invocationTargetType);
                    if (!(invocationSite instanceof Invocation) || !z12 || (invocationTargetType != 0 && !invocationTargetType.isProperType(r13))) {
                        inferenceContext18 = inferenceContext184;
                        if (z11) {
                            try {
                                MethodBinding returnProblemMethodIfNeeded = inferenceContext18.getReturnProblemMethodIfNeeded(invocationTargetType, createParameterizedGenericMethod);
                                if (returnProblemMethodIfNeeded instanceof ProblemMethodBinding) {
                                    if (z12) {
                                        if (invocationSite instanceof Invocation) {
                                            ((Invocation) invocationSite).registerInferenceContext(createParameterizedGenericMethod, inferenceContext18);
                                        } else if (invocationSite instanceof ReferenceExpression) {
                                            ((ReferenceExpression) invocationSite).registerInferenceContext(createParameterizedGenericMethod, inferenceContext18);
                                        }
                                    }
                                    environment.currentInferenceContext = inferenceContext182;
                                    return returnProblemMethodIfNeeded;
                                }
                            } catch (Throwable th2) {
                                if (z12) {
                                    if (invocationSite instanceof Invocation) {
                                        ((Invocation) invocationSite).registerInferenceContext(createParameterizedGenericMethod, inferenceContext18);
                                    } else if (invocationSite instanceof ReferenceExpression) {
                                        ((ReferenceExpression) invocationSite).registerInferenceContext(createParameterizedGenericMethod, inferenceContext18);
                                    }
                                }
                                throw th2;
                            }
                        }
                        if (z10) {
                            polyParameterizedGenericMethodBinding = new PolyParameterizedGenericMethodBinding(createParameterizedGenericMethod);
                        } else {
                            if (compilerOptions.isAnnotationBasedNullAnalysisEnabled) {
                                NullAnnotationMatching.checkForContradictions(createParameterizedGenericMethod, invocationSite, scope);
                            }
                            MethodBinding boundCheck18 = createParameterizedGenericMethod.boundCheck18(scope, typeBindingArr3, invocationSite);
                            polyParameterizedGenericMethodBinding = createParameterizedGenericMethod;
                            if (boundCheck18 != null) {
                                if (z12) {
                                    if (invocationSite instanceof Invocation) {
                                        ((Invocation) invocationSite).registerInferenceContext(createParameterizedGenericMethod, inferenceContext18);
                                    } else if (invocationSite instanceof ReferenceExpression) {
                                        ((ReferenceExpression) invocationSite).registerInferenceContext(createParameterizedGenericMethod, inferenceContext18);
                                    }
                                }
                                environment.currentInferenceContext = inferenceContext182;
                                return boundCheck18;
                            }
                        }
                        if (z12) {
                            if (invocationSite instanceof Invocation) {
                                ((Invocation) invocationSite).registerInferenceContext(polyParameterizedGenericMethodBinding, inferenceContext18);
                            } else if (invocationSite instanceof ReferenceExpression) {
                                ((ReferenceExpression) invocationSite).registerInferenceContext(polyParameterizedGenericMethodBinding, inferenceContext18);
                            }
                        }
                        environment.currentInferenceContext = inferenceContext182;
                        return polyParameterizedGenericMethodBinding;
                    }
                    InferenceContext18 inferenceContext185 = inferenceContext184;
                    inferenceContext185.forwardResults(boundSet2, (Invocation) invocationSite, createParameterizedGenericMethod, invocationTargetType);
                    inferenceContext18 = inferenceContext185;
                    if (z11) {
                    }
                    if (z10) {
                    }
                    if (z12) {
                    }
                    environment.currentInferenceContext = inferenceContext182;
                    return polyParameterizedGenericMethodBinding;
                }
                BoundSet inferInvocationType = inferenceContext184.inferInvocationType(invocationTargetType, invocationSite, methodBinding2);
                boolean z16 = inferenceContext184.stepCompleted == 3 ? r13 : false;
                boolean z17 = inferInvocationType == null ? r13 : false;
                z10 = z16;
                z11 = z17;
                boundSet2 = z17 ? boundSet : inferInvocationType;
                if (boundSet2 != null) {
                }
                environment.currentInferenceContext = inferenceContext182;
                return null;
            } catch (InferenceFailureException e10) {
                scope.problemReporter().genericInferenceError(e10.getMessage(), invocationSite);
                environment.currentInferenceContext = inferenceContext182;
                return null;
            }
        } catch (Throwable th3) {
            environment.currentInferenceContext = inferenceContext182;
            throw th3;
        }
    }

    private static ParameterizedGenericMethodBinding inferFromArgumentTypes(Scope scope, MethodBinding methodBinding, TypeBinding[] typeBindingArr, TypeBinding[] typeBindingArr2, InferenceContext inferenceContext) {
        int dimensions;
        if (methodBinding.isVarargs()) {
            int length = typeBindingArr2.length;
            int i10 = length - 1;
            int length2 = typeBindingArr.length;
            for (int i11 = 0; i11 < i10; i11++) {
                typeBindingArr2[i11].collectSubstitutes(scope, typeBindingArr[i11], inferenceContext, 1);
                if (inferenceContext.status == 1) {
                    return null;
                }
            }
            if (i10 < length2) {
                TypeBinding typeBinding = typeBindingArr2[i10];
                TypeBinding typeBinding2 = typeBindingArr[i10];
                if (length != length2 || (typeBinding2 != TypeBinding.NULL && ((dimensions = typeBinding2.dimensions()) == 0 || (dimensions == 1 && typeBinding2.leafComponentType().isBaseType())))) {
                    typeBinding = ((ArrayBinding) typeBinding).elementsType();
                }
                while (i10 < length2) {
                    typeBinding.collectSubstitutes(scope, typeBindingArr[i10], inferenceContext, 1);
                    if (inferenceContext.status == 1) {
                        return null;
                    }
                    i10++;
                }
            }
        } else {
            int length3 = typeBindingArr2.length;
            for (int i12 = 0; i12 < length3; i12++) {
                typeBindingArr2[i12].collectSubstitutes(scope, typeBindingArr[i12], inferenceContext, 1);
                if (inferenceContext.status == 1) {
                    return null;
                }
            }
        }
        TypeVariableBinding[] typeVariableBindingArr = methodBinding.typeVariables;
        if (!resolveSubstituteConstraints(scope, typeVariableBindingArr, inferenceContext, false)) {
            return null;
        }
        TypeBinding[] typeBindingArr3 = inferenceContext.substitutes;
        int length4 = typeVariableBindingArr.length;
        TypeBinding[] typeBindingArr4 = typeBindingArr3;
        for (int i13 = 0; i13 < length4; i13++) {
            TypeBinding typeBinding3 = typeBindingArr3[i13];
            if (typeBinding3 == null) {
                if (typeBindingArr4 == typeBindingArr3) {
                    typeBindingArr4 = new TypeBinding[length4];
                    System.arraycopy(typeBindingArr3, 0, typeBindingArr4, 0, i13);
                }
                typeBindingArr4[i13] = typeVariableBindingArr[i13];
            } else if (typeBindingArr4 != typeBindingArr3) {
                typeBindingArr4[i13] = typeBinding3;
            }
        }
        return scope.environment().createParameterizedGenericMethod(methodBinding, typeBindingArr4);
    }

    private ParameterizedGenericMethodBinding inferFromExpectedType(Scope scope, InferenceContext inferenceContext) {
        TypeVariableBinding[] typeVariableBindingArr = this.originalMethod.typeVariables;
        int length = typeVariableBindingArr.length;
        TypeBinding typeBinding = inferenceContext.expectedType;
        if (typeBinding != null) {
            this.returnType.collectSubstitutes(scope, typeBinding, inferenceContext, 2);
            if (inferenceContext.status == 1) {
                return null;
            }
        }
        for (int i10 = 0; i10 < length; i10++) {
            TypeVariableBinding typeVariableBinding = typeVariableBindingArr[i10];
            TypeBinding typeBinding2 = this.typeArguments[i10];
            boolean notEquals = TypeBinding.notEquals(typeBinding2, typeVariableBinding);
            if (TypeBinding.equalsEquals(typeVariableBinding.firstBound, typeVariableBinding.superclass)) {
                TypeBinding substitute = Scope.substitute(this, typeVariableBinding.superclass);
                typeBinding2.collectSubstitutes(scope, substitute, inferenceContext, 2);
                if (inferenceContext.status == 1) {
                    return null;
                }
                if (notEquals) {
                    substitute.collectSubstitutes(scope, typeBinding2, inferenceContext, 1);
                    if (inferenceContext.status == 1) {
                        return null;
                    }
                }
            }
            int length2 = typeVariableBinding.superInterfaces.length;
            for (int i11 = 0; i11 < length2; i11++) {
                TypeBinding substitute2 = Scope.substitute(this, typeVariableBinding.superInterfaces[i11]);
                typeBinding2.collectSubstitutes(scope, substitute2, inferenceContext, 2);
                if (inferenceContext.status == 1) {
                    return null;
                }
                if (notEquals) {
                    substitute2.collectSubstitutes(scope, typeBinding2, inferenceContext, 1);
                    if (inferenceContext.status == 1) {
                        return null;
                    }
                }
            }
        }
        if (!resolveSubstituteConstraints(scope, typeVariableBindingArr, inferenceContext, true)) {
            return null;
        }
        for (int i12 = 0; i12 < length; i12++) {
            TypeBinding[] typeBindingArr = inferenceContext.substitutes;
            TypeBinding typeBinding3 = typeBindingArr[i12];
            if (typeBinding3 != null) {
                this.typeArguments[i12] = typeBinding3;
            } else {
                TypeBinding[] typeBindingArr2 = this.typeArguments;
                TypeBinding upperBound = typeVariableBindingArr[i12].upperBound();
                typeBindingArr[i12] = upperBound;
                typeBindingArr2[i12] = upperBound;
            }
        }
        this.typeArguments = Scope.substitute(this, this.typeArguments);
        TypeBinding typeBinding4 = this.returnType;
        TypeBinding substitute3 = Scope.substitute(this, typeBinding4);
        this.returnType = substitute3;
        this.inferredReturnType = inferenceContext.hasExplicitExpectedType && TypeBinding.notEquals(substitute3, typeBinding4);
        this.parameters = Scope.substitute(this, this.parameters);
        ReferenceBinding[] substitute4 = Scope.substitute((Substitution) this, this.thrownExceptions);
        this.thrownExceptions = substitute4;
        if (substitute4 == null) {
            this.thrownExceptions = Binding.NO_EXCEPTIONS;
        }
        long j10 = this.tagBits;
        if ((j10 & 128) == 0) {
            if ((this.returnType.tagBits & 128) != 0) {
                this.tagBits = j10 | 128;
            } else {
                int length3 = this.parameters.length;
                int i13 = 0;
                while (true) {
                    if (i13 >= length3) {
                        int length4 = this.thrownExceptions.length;
                        int i14 = 0;
                        while (true) {
                            if (i14 >= length4) {
                                break;
                            }
                            if ((this.thrownExceptions[i14].tagBits & 128) != 0) {
                                this.tagBits |= 128;
                                break;
                            }
                            i14++;
                        }
                    } else {
                        if ((this.parameters[i13].tagBits & 128) != 0) {
                            this.tagBits |= 128;
                            break;
                        }
                        i13++;
                    }
                }
            }
        }
        return this;
    }

    private static boolean resolveSubstituteConstraints(Scope scope, TypeVariableBinding[] typeVariableBindingArr, InferenceContext inferenceContext, boolean z10) {
        TypeBinding[] substitutes;
        TypeBinding typeBinding;
        TypeBinding[] substitutes2;
        TypeBinding[] substitutes3;
        TypeBinding[] typeBindingArr = inferenceContext.substitutes;
        int length = typeVariableBindingArr.length;
        for (int i10 = 0; i10 < length; i10++) {
            TypeVariableBinding typeVariableBinding = typeVariableBindingArr[i10];
            if (typeBindingArr[i10] == null && (substitutes3 = inferenceContext.getSubstitutes(typeVariableBinding, 0)) != null) {
                int length2 = substitutes3.length;
                int i11 = 0;
                while (true) {
                    if (i11 < length2) {
                        TypeBinding typeBinding2 = substitutes3[i11];
                        if (typeBinding2 == null) {
                            i11++;
                        } else if (TypeBinding.equalsEquals(typeBinding2, typeVariableBinding)) {
                            while (true) {
                                i11++;
                                if (i11 >= length2) {
                                    typeBindingArr[i10] = typeVariableBinding;
                                    break;
                                }
                                TypeBinding typeBinding3 = substitutes3[i11];
                                if (TypeBinding.notEquals(typeBinding3, typeVariableBinding) && typeBinding3 != null) {
                                    typeBindingArr[i10] = typeBinding3;
                                    break;
                                }
                            }
                        } else {
                            typeBindingArr[i10] = typeBinding2;
                        }
                    }
                }
            }
        }
        if (inferenceContext.hasUnresolvedTypeArgument()) {
            for (int i12 = 0; i12 < length; i12++) {
                TypeVariableBinding typeVariableBinding2 = typeVariableBindingArr[i12];
                if (typeBindingArr[i12] == null && (substitutes2 = inferenceContext.getSubstitutes(typeVariableBinding2, 2)) != null) {
                    TypeBinding lowerUpperBound = scope.lowerUpperBound(substitutes2);
                    if (lowerUpperBound == null) {
                        return false;
                    }
                    if (lowerUpperBound != TypeBinding.VOID) {
                        typeBindingArr[i12] = lowerUpperBound;
                    }
                }
            }
        }
        if (z10 && inferenceContext.hasUnresolvedTypeArgument()) {
            for (int i13 = 0; i13 < length; i13++) {
                TypeVariableBinding typeVariableBinding3 = typeVariableBindingArr[i13];
                if (typeBindingArr[i13] == null && (substitutes = inferenceContext.getSubstitutes(typeVariableBinding3, 1)) != null) {
                    TypeBinding[] greaterLowerBound = Scope.greaterLowerBound(substitutes, scope, scope.environment());
                    if (greaterLowerBound == null) {
                        typeBinding = null;
                    } else if (greaterLowerBound.length == 1) {
                        typeBinding = greaterLowerBound[0];
                    } else {
                        TypeBinding[] typeBindingArr2 = new TypeBinding[greaterLowerBound.length - 1];
                        System.arraycopy(greaterLowerBound, 1, typeBindingArr2, 0, greaterLowerBound.length - 1);
                        typeBinding = scope.environment().createWildcard(null, 0, greaterLowerBound[0], typeBindingArr2, 1);
                    }
                    if (typeBinding != null) {
                        typeBindingArr[i13] = typeBinding;
                    }
                }
            }
        }
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public MethodBinding boundCheck18(Scope scope, TypeBinding[] typeBindingArr, InvocationSite invocationSite) {
        TypeVariableBinding[] typeVariableBindingArr = this.originalMethod.typeVariables;
        int length = typeVariableBindingArr.length;
        int i10 = 0;
        while (true) {
            if (i10 >= length) {
                return null;
            }
            TypeVariableBinding typeVariableBinding = typeVariableBindingArr[i10];
            TypeBinding typeBinding = this.typeArguments[i10];
            int i11 = $SWITCH_TABLE$org$eclipse$jdt$internal$compiler$lookup$TypeConstants$BoundCheckStatus()[typeVariableBinding.boundCheck(this, typeBinding, scope, invocationSite instanceof ASTNode ? (ASTNode) invocationSite : null).ordinal()];
            if (i11 == 3) {
                this.tagBits |= 256;
            } else if (i11 == 4) {
                int length2 = typeBindingArr.length;
                TypeBinding[] typeBindingArr2 = new TypeBinding[length2 + 2];
                System.arraycopy(typeBindingArr, 0, typeBindingArr2, 0, length2);
                typeBindingArr2[length2] = typeBinding;
                typeBindingArr2[length2 + 1] = typeVariableBinding;
                return new ProblemMethodBinding(this, this.originalMethod.selector, typeBindingArr2, 10);
            }
            i10++;
        }
    }

    @Override
    public char[] computeUniqueKey(boolean z10) {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(this.originalMethod.computeUniqueKey(false));
        stringBuffer.append(JavaElement.JEM_PACKAGEDECLARATION);
        stringBuffer.append('<');
        if (!this.isRaw) {
            int length = this.typeArguments.length;
            for (int i10 = 0; i10 < length; i10++) {
                stringBuffer.append(this.typeArguments[i10].computeUniqueKey(false));
            }
        }
        stringBuffer.append('>');
        int length2 = stringBuffer.length();
        char[] cArr = new char[length2];
        stringBuffer.getChars(0, length2, cArr, 0);
        return cArr;
    }

    @Override
    public LookupEnvironment environment() {
        return this.environment;
    }

    @Override
    public MethodBinding genericMethod() {
        return this.isRaw ? this : this.originalMethod;
    }

    public TypeBinding getErasure18_5_2(TypeBinding typeBinding, LookupEnvironment lookupEnvironment, boolean z10) {
        if (z10) {
            typeBinding = Scope.substitute(this, typeBinding);
        }
        return lookupEnvironment.convertToRawType(typeBinding.erasure(), true);
    }

    @Override
    public boolean hasSubstitutedParameters() {
        return this.wasInferred ? this.originalMethod.hasSubstitutedParameters() : super.hasSubstitutedParameters();
    }

    @Override
    public boolean hasSubstitutedReturnType() {
        return this.inferredReturnType ? this.originalMethod.hasSubstitutedReturnType() : super.hasSubstitutedReturnType();
    }

    @Override
    public boolean isParameterizedGeneric() {
        return true;
    }

    @Override
    public boolean isRawSubstitution() {
        return this.isRaw;
    }

    @Override
    public TypeBinding substitute(TypeVariableBinding typeVariableBinding) {
        TypeVariableBinding[] typeVariableBindingArr = this.originalMethod.typeVariables;
        int length = typeVariableBindingArr.length;
        int i10 = typeVariableBinding.rank;
        return (i10 >= length || !TypeBinding.equalsEquals(typeVariableBindingArr[i10], typeVariableBinding)) ? typeVariableBinding : typeVariableBinding.combineTypeAnnotations(this.typeArguments[typeVariableBinding.rank]);
    }

    @Override
    public MethodBinding tiebreakMethod() {
        if (this.tiebreakMethod == null) {
            this.tiebreakMethod = this.originalMethod.asRawMethod(this.environment);
        }
        return this.tiebreakMethod;
    }

    public ParameterizedGenericMethodBinding(MethodBinding methodBinding, TypeBinding[] typeBindingArr, LookupEnvironment lookupEnvironment, boolean z10, boolean z11, TypeBinding typeBinding) {
        this.environment = lookupEnvironment;
        this.inferredWithUncheckedConversion = z10;
        this.targetType = typeBinding;
        this.modifiers = methodBinding.modifiers;
        this.selector = methodBinding.selector;
        this.declaringClass = methodBinding.declaringClass;
        if (z10 && methodBinding.isConstructor() && this.declaringClass.isParameterizedType()) {
            this.declaringClass = (ReferenceBinding) lookupEnvironment.convertToRawType(this.declaringClass.erasure(), false);
        }
        this.typeVariables = Binding.NO_TYPE_VARIABLES;
        this.typeArguments = typeBindingArr;
        this.isRaw = false;
        this.tagBits = methodBinding.tagBits;
        this.originalMethod = methodBinding;
        this.parameters = Scope.substitute(this, methodBinding.parameters);
        if (z10) {
            this.returnType = getErasure18_5_2(methodBinding.returnType, lookupEnvironment, z11);
            this.thrownExceptions = new ReferenceBinding[methodBinding.thrownExceptions.length];
            int i10 = 0;
            while (true) {
                ReferenceBinding[] referenceBindingArr = methodBinding.thrownExceptions;
                if (i10 >= referenceBindingArr.length) {
                    break;
                }
                this.thrownExceptions[i10] = (ReferenceBinding) getErasure18_5_2(referenceBindingArr[i10], lookupEnvironment, false);
                i10++;
            }
        } else {
            this.returnType = Scope.substitute(this, methodBinding.returnType);
            this.thrownExceptions = Scope.substitute((Substitution) this, methodBinding.thrownExceptions);
        }
        if (this.thrownExceptions == null) {
            this.thrownExceptions = Binding.NO_EXCEPTIONS;
        }
        long j10 = this.tagBits;
        if ((j10 & 128) == 0) {
            if ((this.returnType.tagBits & 128) != 0) {
                this.tagBits = j10 | 128;
            } else {
                int length = this.parameters.length;
                int i11 = 0;
                while (true) {
                    if (i11 >= length) {
                        int length2 = this.thrownExceptions.length;
                        int i12 = 0;
                        while (true) {
                            if (i12 >= length2) {
                                break;
                            }
                            if ((this.thrownExceptions[i12].tagBits & 128) != 0) {
                                this.tagBits |= 128;
                                break;
                            }
                            i12++;
                        }
                    } else {
                        if ((this.parameters[i11].tagBits & 128) != 0) {
                            this.tagBits |= 128;
                            break;
                        }
                        i11++;
                    }
                }
            }
        }
        this.wasInferred = true;
        this.parameterNonNullness = methodBinding.parameterNonNullness;
        this.defaultNullness = methodBinding.defaultNullness;
        int length3 = this.parameters.length;
        for (int i13 = 0; i13 < length3; i13++) {
            if (this.parameters[i13] == TypeBinding.NULL && (methodBinding.parameters[i13].tagBits & TagBits.AnnotationNullMASK) == 72057594037927936L) {
                if (this.parameterNonNullness == null) {
                    this.parameterNonNullness = new Boolean[length3];
                }
                this.parameterNonNullness[i13] = Boolean.TRUE;
            }
        }
    }
}
