package org.eclipse.jdt.internal.compiler.lookup;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.Iterator;
import org.eclipse.jdt.internal.compiler.ast.Argument;
import org.eclipse.jdt.internal.compiler.ast.ConditionalExpression;
import org.eclipse.jdt.internal.compiler.ast.Expression;
import org.eclipse.jdt.internal.compiler.ast.ExpressionContext;
import org.eclipse.jdt.internal.compiler.ast.Invocation;
import org.eclipse.jdt.internal.compiler.ast.LambdaExpression;
import org.eclipse.jdt.internal.compiler.ast.MessageSend;
import org.eclipse.jdt.internal.compiler.ast.ReferenceExpression;
import org.eclipse.jdt.internal.compiler.ast.SwitchExpression;
import org.eclipse.jdt.internal.compiler.lookup.InferenceContext18;

public class ConstraintExpressionFormula extends ConstraintFormula {
    boolean isSoft;
    Expression left;

    public ConstraintExpressionFormula(Expression expression, TypeBinding typeBinding, int i10) {
        this.left = expression;
        this.right = typeBinding;
        this.relation = i10;
    }

    private boolean canBePolyExpression(Expression expression) {
        ExpressionContext expressionContext = expression.getExpressionContext();
        if (expressionContext == ExpressionContext.VANILLA_CONTEXT) {
            this.left.setExpressionContext(ExpressionContext.ASSIGNMENT_CONTEXT);
        }
        try {
            return expression.isPolyExpression();
        } finally {
            expression.setExpressionContext(expressionContext);
        }
    }

    private int determineInferenceKind(MethodBinding methodBinding, TypeBinding[] typeBindingArr, InferenceContext18 inferenceContext18) {
        if (inferenceContext18 != null) {
            return inferenceContext18.inferenceKind;
        }
        if (methodBinding.isVarargs()) {
            TypeBinding[] typeBindingArr2 = methodBinding.parameters;
            int length = typeBindingArr2.length;
            int length2 = typeBindingArr.length;
            if (length < length2) {
                return 3;
            }
            if (length == length2) {
                int i10 = length - 1;
                TypeBinding typeBinding = typeBindingArr[i10];
                TypeBinding typeBinding2 = typeBindingArr2[i10];
                if (!typeBinding.isCompatibleWith(typeBinding2) && typeBinding2.isArrayType() && typeBinding.isCompatibleWith(typeBinding2.leafComponentType())) {
                    return 3;
                }
            }
        }
        return 1;
    }

    public static ReferenceBinding findGroundTargetType(InferenceContext18 inferenceContext18, BlockScope blockScope, LambdaExpression lambdaExpression, ParameterizedTypeBinding parameterizedTypeBinding) {
        if (lambdaExpression.argumentsTypeElided()) {
            return lambdaExpression.findGroundTargetTypeForElidedLambda(blockScope, parameterizedTypeBinding);
        }
        InferenceContext18.SuspendedInferenceRecord enterLambda = inferenceContext18.enterLambda(lambdaExpression);
        try {
            return inferenceContext18.inferFunctionalInterfaceParameterization(lambdaExpression, blockScope, parameterizedTypeBinding);
        } finally {
            inferenceContext18.resumeSuspendedInference(enterLambda, null);
        }
    }

    private static TypeBinding getRealErasure(TypeBinding typeBinding, LookupEnvironment lookupEnvironment) {
        TypeBinding erasure = typeBinding.erasure();
        TypeBinding leafComponentType = erasure.leafComponentType();
        if (leafComponentType.isGenericType()) {
            leafComponentType = lookupEnvironment.convertToRawType(leafComponentType, false);
        }
        return erasure.isArrayType() ? lookupEnvironment.createArrayType(leafComponentType, erasure.dimensions()) : leafComponentType;
    }

    public static void inferInvocationApplicability(InferenceContext18 inferenceContext18, MethodBinding methodBinding, TypeBinding[] typeBindingArr, boolean z10, int i10) {
        TypeVariableBinding[] allTypeVariables = methodBinding.getAllTypeVariables(z10);
        InferenceVariable[] createInitialBoundSet = inferenceContext18.createInitialBoundSet(allTypeVariables);
        inferenceContext18.createInitialConstraintsForParameters(methodBinding.parameters, i10 == 3, methodBinding.isVarargs() ? methodBinding.parameters[methodBinding.parameters.length - 1] : null, methodBinding);
        inferenceContext18.addThrowsContraints(allTypeVariables, createInitialBoundSet, methodBinding.thrownExceptions);
    }

    public static boolean inferPolyInvocationType(InferenceContext18 inferenceContext18, InvocationSite invocationSite, TypeBinding typeBinding, MethodBinding methodBinding) throws InferenceFailureException {
        TypeBinding[] typeBindingArr;
        if (invocationSite.genericTypeArguments() == null) {
            TypeBinding typeBinding2 = methodBinding.isConstructor() ? methodBinding.declaringClass : methodBinding.returnType;
            if (typeBinding2 == TypeBinding.VOID) {
                throw new InferenceFailureException("expression has no value");
            }
            if (inferenceContext18.usesUncheckedConversion) {
                return inferenceContext18.lambda$3(ConstraintTypeFormula.create(getRealErasure(typeBinding2, inferenceContext18.environment), typeBinding, 1));
            }
            TypeBinding substitute = inferenceContext18.substitute(typeBinding2);
            ParameterizedTypeBinding parameterizedWithWildcard = InferenceContext18.parameterizedWithWildcard(substitute);
            if (parameterizedWithWildcard != null && (typeBindingArr = parameterizedWithWildcard.arguments) != null) {
                InferenceVariable[] addTypeVariableSubstitutions = inferenceContext18.addTypeVariableSubstitutions(typeBindingArr);
                ParameterizedTypeBinding createParameterizedType = inferenceContext18.environment.createParameterizedType(parameterizedWithWildcard.genericType(), addTypeVariableSubstitutions, parameterizedWithWildcard.enclosingType(), parameterizedWithWildcard.getTypeAnnotations());
                inferenceContext18.currentBounds.captures.put(createParameterizedType, parameterizedWithWildcard);
                int length = typeBindingArr.length;
                for (int i10 = 0; i10 < length; i10++) {
                    if (typeBindingArr[i10].isWildcard()) {
                        WildcardBinding wildcardBinding = (WildcardBinding) typeBindingArr[i10];
                        int i11 = wildcardBinding.boundKind;
                        if (i11 == 1) {
                            inferenceContext18.currentBounds.addBound(new TypeBound(addTypeVariableSubstitutions[i10], wildcardBinding.bound(), 2), inferenceContext18.environment);
                        } else if (i11 == 2) {
                            inferenceContext18.currentBounds.addBound(new TypeBound(addTypeVariableSubstitutions[i10], wildcardBinding.bound(), 3), inferenceContext18.environment);
                        }
                    }
                }
                return inferenceContext18.lambda$3(ConstraintTypeFormula.create(createParameterizedType, typeBinding, 1));
            }
            if (substitute.leafComponentType() instanceof InferenceVariable) {
                InferenceVariable inferenceVariable = (InferenceVariable) substitute.leafComponentType();
                TypeBinding leafComponentType = typeBinding.leafComponentType();
                if (inferenceContext18.currentBounds.condition18_5_2_bullet_3_3_1(inferenceVariable, leafComponentType) || inferenceContext18.currentBounds.condition18_5_2_bullet_3_3_2(inferenceVariable, leafComponentType, inferenceContext18) || (leafComponentType.isPrimitiveType() && inferenceContext18.currentBounds.findWrapperTypeBound(inferenceVariable) != null)) {
                    BoundSet solve = inferenceContext18.solve(new InferenceVariable[]{inferenceVariable});
                    if (solve == null) {
                        return false;
                    }
                    TypeBinding capture = solve.getInstantiation(inferenceVariable, null).capture(inferenceContext18.scope, invocationSite.sourceStart(), invocationSite.sourceEnd());
                    if (substitute.dimensions() != 0) {
                        capture = inferenceContext18.environment.createArrayType(capture, substitute.dimensions());
                    }
                    return inferenceContext18.lambda$3(ConstraintTypeFormula.create(capture, typeBinding, 1));
                }
            }
            if (!inferenceContext18.lambda$3(ConstraintTypeFormula.create(substitute, typeBinding, 1))) {
                return false;
            }
        }
        return true;
    }

    private boolean needsInference(ReferenceExpression referenceExpression, MethodBinding methodBinding) {
        TypeBinding typeBinding;
        if (referenceExpression.typeArguments != null) {
            return false;
        }
        if (!methodBinding.isConstructor()) {
            typeBinding = methodBinding.returnType;
        } else {
            if (methodBinding.declaringClass.typeVariables() != Binding.NO_TYPE_VARIABLES && referenceExpression.receiverType.isRawType()) {
                return true;
            }
            typeBinding = methodBinding.declaringClass;
        }
        return methodBinding.typeVariables() != Binding.NO_TYPE_VARIABLES && typeBinding.mentionsAny(methodBinding.typeVariables(), -1);
    }

    private Object reduceReferenceExpressionCompatibility(ReferenceExpression referenceExpression, InferenceContext18 inferenceContext18) {
        MethodBinding singleAbstractMethod;
        InferenceContext18 inferenceContext;
        int i10;
        TypeBinding typeBinding = this.right;
        if (typeBinding.isProperType(true)) {
            throw new IllegalStateException("Should not reach here with T being a proper type");
        }
        if (typeBinding.isFunctionalInterface(inferenceContext18.scope) && (singleAbstractMethod = typeBinding.getSingleAbstractMethod(inferenceContext18.scope, true)) != null) {
            ReferenceExpression resolveExpressionExpecting = referenceExpression.resolveExpressionExpecting(typeBinding, inferenceContext18.scope, inferenceContext18);
            InferenceContext18 inferenceContext182 = null;
            MethodBinding methodBinding = resolveExpressionExpecting != null ? resolveExpressionExpecting.binding : null;
            if (methodBinding == null) {
                return ReductionResult.FALSE;
            }
            if (resolveExpressionExpecting.isExactMethodReference()) {
                ArrayList arrayList = new ArrayList();
                TypeBinding[] typeBindingArr = singleAbstractMethod.parameters;
                int length = typeBindingArr.length;
                TypeBinding[] typeBindingArr2 = methodBinding.parameters;
                if (length == typeBindingArr2.length + 1) {
                    arrayList.add(ConstraintTypeFormula.create(typeBindingArr[0], resolveExpressionExpecting.lhs.resolvedType, 1));
                    i10 = 1;
                } else {
                    i10 = 0;
                }
                for (int i11 = i10; i11 < length; i11++) {
                    arrayList.add(ConstraintTypeFormula.create(typeBindingArr[i11], typeBindingArr2[i11 - i10], 1));
                }
                TypeBinding typeBinding2 = singleAbstractMethod.returnType;
                VoidTypeBinding voidTypeBinding = TypeBinding.VOID;
                if (typeBinding2 != voidTypeBinding) {
                    TypeBinding typeBinding3 = (!methodBinding.isConstructor() || resolveExpressionExpecting.isArrayConstructorReference()) ? methodBinding.returnType : methodBinding.declaringClass;
                    if (typeBinding3 == voidTypeBinding) {
                        return ReductionResult.FALSE;
                    }
                    arrayList.add(ConstraintTypeFormula.create(typeBinding3.capture(inferenceContext18.scope, resolveExpressionExpecting.sourceStart, resolveExpressionExpecting.sourceEnd), typeBinding2, 1));
                }
                return arrayList.toArray(new ConstraintFormula[arrayList.size()]);
            }
            int length2 = singleAbstractMethod.parameters.length;
            for (int i12 = 0; i12 < length2; i12++) {
                if (!singleAbstractMethod.parameters[i12].isProperType(true)) {
                    return ReductionResult.FALSE;
                }
            }
            if (!methodBinding.isValidBinding()) {
                return ReductionResult.FALSE;
            }
            TypeBinding typeBinding4 = singleAbstractMethod.isConstructor() ? singleAbstractMethod.declaringClass : singleAbstractMethod.returnType;
            if (typeBinding4.f102482id == 6) {
                return ReductionResult.TRUE;
            }
            MethodBinding shallowOriginal = methodBinding.shallowOriginal();
            if (!needsInference(resolveExpressionExpecting, shallowOriginal)) {
                TypeBinding capture = methodBinding.isConstructor() ? methodBinding.declaringClass : methodBinding.returnType.capture(inferenceContext18.scope, resolveExpressionExpecting.sourceStart(), resolveExpressionExpecting.sourceEnd());
                return capture.f102482id == 6 ? ReductionResult.FALSE : ConstraintTypeFormula.create(capture, typeBinding4, 1, this.isSoft);
            }
            TypeBinding[] typeBindingArr3 = typeBinding.isParameterizedType() ? ((ParameterizedTypeBinding) typeBinding).getSingleAbstractMethod(inferenceContext18.scope, true, resolveExpressionExpecting.sourceStart, resolveExpressionExpecting.sourceEnd).parameters : singleAbstractMethod.parameters;
            InferenceContext18.SuspendedInferenceRecord enterPolyInvocation = inferenceContext18.enterPolyInvocation(resolveExpressionExpecting, resolveExpressionExpecting.createPseudoExpressions(typeBindingArr3));
            try {
                try {
                    inferenceContext = resolveExpressionExpecting.getInferenceContext(methodBinding);
                } catch (Throwable th2) {
                    th = th2;
                }
            } catch (InferenceFailureException unused) {
            }
            try {
                inferInvocationApplicability(inferenceContext18, shallowOriginal, typeBindingArr3, shallowOriginal.isConstructor(), determineInferenceKind(methodBinding, typeBindingArr3, inferenceContext));
                if (inferenceContext18.computeB3(resolveExpressionExpecting, typeBinding4, shallowOriginal)) {
                    inferenceContext18.resumeSuspendedInference(enterPolyInvocation, inferenceContext);
                    return null;
                }
                ConstraintTypeFormula constraintTypeFormula = ReductionResult.FALSE;
                inferenceContext18.resumeSuspendedInference(enterPolyInvocation, inferenceContext);
                return constraintTypeFormula;
            } catch (InferenceFailureException unused2) {
                inferenceContext182 = inferenceContext;
                ConstraintTypeFormula constraintTypeFormula2 = ReductionResult.FALSE;
                inferenceContext18.resumeSuspendedInference(enterPolyInvocation, inferenceContext182);
                return constraintTypeFormula2;
            } catch (Throwable th3) {
                th = th3;
                inferenceContext182 = inferenceContext;
                inferenceContext18.resumeSuspendedInference(enterPolyInvocation, inferenceContext182);
                throw th;
            }
        }
        return ReductionResult.FALSE;
    }

    @Override
    public Collection<InferenceVariable> inputVariables(InferenceContext18 inferenceContext18) {
        Expression expression = this.left;
        int i10 = 0;
        if (expression instanceof LambdaExpression) {
            TypeBinding typeBinding = this.right;
            if (typeBinding instanceof InferenceVariable) {
                return Collections.singletonList((InferenceVariable) typeBinding);
            }
            if (typeBinding.isFunctionalInterface(inferenceContext18.scope)) {
                LambdaExpression lambdaExpression = (LambdaExpression) this.left;
                ReferenceBinding referenceBinding = (ReferenceBinding) this.right;
                ParameterizedTypeBinding parameterizedWithWildcard = InferenceContext18.parameterizedWithWildcard(referenceBinding);
                if (parameterizedWithWildcard != null) {
                    referenceBinding = findGroundTargetType(inferenceContext18, lambdaExpression.enclosingScope, lambdaExpression, parameterizedWithWildcard);
                }
                if (referenceBinding == null) {
                    return ConstraintFormula.EMPTY_VARIABLE_LIST;
                }
                MethodBinding singleAbstractMethod = referenceBinding.getSingleAbstractMethod(inferenceContext18.scope, true);
                HashSet hashSet = new HashSet();
                if (lambdaExpression.argumentsTypeElided()) {
                    int length = singleAbstractMethod.parameters.length;
                    for (int i11 = 0; i11 < length; i11++) {
                        singleAbstractMethod.parameters[i11].collectInferenceVariables(hashSet);
                    }
                }
                TypeBinding typeBinding2 = singleAbstractMethod.returnType;
                if (typeBinding2 != TypeBinding.VOID) {
                    LambdaExpression resolveExpressionExpecting = lambdaExpression.resolveExpressionExpecting(this.right, inferenceContext18.scope, inferenceContext18);
                    Expression[] resultExpressions = resolveExpressionExpecting != null ? resolveExpressionExpecting.resultExpressions() : null;
                    int length2 = resultExpressions == null ? 0 : resultExpressions.length;
                    while (i10 < length2) {
                        hashSet.addAll(new ConstraintExpressionFormula(resultExpressions[i10], typeBinding2, 1).inputVariables(inferenceContext18));
                        i10++;
                    }
                }
                return hashSet;
            }
        } else if (expression instanceof ReferenceExpression) {
            TypeBinding typeBinding3 = this.right;
            if (typeBinding3 instanceof InferenceVariable) {
                return Collections.singletonList((InferenceVariable) typeBinding3);
            }
            if (typeBinding3.isFunctionalInterface(inferenceContext18.scope) && !this.left.isExactMethodReference()) {
                MethodBinding singleAbstractMethod2 = this.right.getSingleAbstractMethod(inferenceContext18.scope, true);
                HashSet hashSet2 = new HashSet();
                int length3 = singleAbstractMethod2.parameters.length;
                while (i10 < length3) {
                    singleAbstractMethod2.parameters[i10].collectInferenceVariables(hashSet2);
                    i10++;
                }
                return hashSet2;
            }
        } else {
            if ((expression instanceof ConditionalExpression) && expression.isPolyExpression()) {
                ConditionalExpression conditionalExpression = (ConditionalExpression) this.left;
                HashSet hashSet3 = new HashSet();
                hashSet3.addAll(new ConstraintExpressionFormula(conditionalExpression.valueIfTrue, this.right, 1).inputVariables(inferenceContext18));
                hashSet3.addAll(new ConstraintExpressionFormula(conditionalExpression.valueIfFalse, this.right, 1).inputVariables(inferenceContext18));
                return hashSet3;
            }
            Expression expression2 = this.left;
            if ((expression2 instanceof SwitchExpression) && expression2.isPolyExpression()) {
                SwitchExpression switchExpression = (SwitchExpression) this.left;
                HashSet hashSet4 = new HashSet();
                Iterator<Expression> it = switchExpression.resultExpressions.iterator();
                while (it.hasNext()) {
                    hashSet4.addAll(new ConstraintExpressionFormula(it.next(), this.right, 1).inputVariables(inferenceContext18));
                }
                return hashSet4;
            }
        }
        return ConstraintFormula.EMPTY_VARIABLE_LIST;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override
    public Object reduce(InferenceContext18 inferenceContext18) throws InferenceFailureException {
        MethodBinding singleAbstractMethod;
        TypeBinding typeBinding;
        InferenceContext18 inferenceContext182;
        r1 = false;
        boolean z10 = false;
        int i10 = 0;
        if (this.relation == 8) {
            return this.left.isPotentiallyCompatibleWith(this.right, inferenceContext18.scope) ? ReductionResult.TRUE : ReductionResult.FALSE;
        }
        if (this.right.isProperType(true)) {
            if (!this.left.isCompatibleWith(this.right, inferenceContext18.scope) && !this.left.isBoxingCompatibleWith(this.right, inferenceContext18.scope)) {
                return ReductionResult.FALSE;
            }
            TypeBinding typeBinding2 = this.left.resolvedType;
            if (typeBinding2 != null && typeBinding2.needsUncheckedConversion(this.right)) {
                inferenceContext18.usesUncheckedConversion = true;
            }
            return ReductionResult.TRUE;
        }
        InferenceContext18 inferenceContext183 = null;
        if (!canBePolyExpression(this.left)) {
            TypeBinding typeBinding3 = this.left.resolvedType;
            if (typeBinding3 != null && typeBinding3.isValidBinding()) {
                return ConstraintTypeFormula.create(typeBinding3, this.right, 1, this.isSoft);
            }
            Expression expression = this.left;
            if ((expression instanceof MessageSend) && (((MessageSend) expression).actualReceiverType instanceof InferenceVariable)) {
                return null;
            }
            return ReductionResult.FALSE;
        }
        Expression expression2 = this.left;
        if (!(expression2 instanceof Invocation)) {
            if (expression2 instanceof ConditionalExpression) {
                ConditionalExpression conditionalExpression = (ConditionalExpression) expression2;
                return new ConstraintFormula[]{new ConstraintExpressionFormula(conditionalExpression.valueIfTrue, this.right, this.relation, this.isSoft), new ConstraintExpressionFormula(conditionalExpression.valueIfFalse, this.right, this.relation, this.isSoft)};
            }
            if (expression2 instanceof SwitchExpression) {
                SwitchExpression switchExpression = (SwitchExpression) expression2;
                ConstraintFormula[] constraintFormulaArr = new ConstraintFormula[switchExpression.resultExpressions.size()];
                Iterator<Expression> it = switchExpression.resultExpressions.iterator();
                while (it.hasNext()) {
                    constraintFormulaArr[i10] = new ConstraintExpressionFormula(it.next(), this.right, this.relation, this.isSoft);
                    i10++;
                }
                return constraintFormulaArr;
            }
            if (!(expression2 instanceof LambdaExpression)) {
                return expression2 instanceof ReferenceExpression ? reduceReferenceExpressionCompatibility((ReferenceExpression) expression2, inferenceContext18) : ReductionResult.FALSE;
            }
            LambdaExpression lambdaExpression = (LambdaExpression) expression2;
            BlockScope blockScope = lambdaExpression.enclosingScope;
            TypeBinding typeBinding4 = this.right;
            if (typeBinding4 instanceof InferenceVariable) {
                return ReductionResult.TRUE;
            }
            if (!typeBinding4.isFunctionalInterface(blockScope)) {
                return ReductionResult.FALSE;
            }
            TypeBinding typeBinding5 = (ReferenceBinding) this.right;
            ParameterizedTypeBinding parameterizedWithWildcard = InferenceContext18.parameterizedWithWildcard(typeBinding5);
            if (parameterizedWithWildcard != null) {
                typeBinding5 = findGroundTargetType(inferenceContext18, blockScope, lambdaExpression, parameterizedWithWildcard);
            }
            if (typeBinding5 != null && (singleAbstractMethod = typeBinding5.getSingleAbstractMethod(blockScope, true)) != null) {
                TypeBinding[] typeBindingArr = singleAbstractMethod.parameters;
                if (typeBindingArr.length != lambdaExpression.arguments().length) {
                    return ReductionResult.FALSE;
                }
                if (lambdaExpression.argumentsTypeElided()) {
                    for (TypeBinding typeBinding6 : typeBindingArr) {
                        if (!typeBinding6.isProperType(true)) {
                            return ReductionResult.FALSE;
                        }
                    }
                }
                LambdaExpression resolveExpressionExpecting = lambdaExpression.resolveExpressionExpecting(typeBinding5, inferenceContext18.scope, inferenceContext18);
                if (resolveExpressionExpecting == null) {
                    return ReductionResult.FALSE;
                }
                if (singleAbstractMethod.returnType == TypeBinding.VOID) {
                    if (!resolveExpressionExpecting.isVoidCompatible()) {
                        return ReductionResult.FALSE;
                    }
                } else if (!resolveExpressionExpecting.isValueCompatible()) {
                    return ReductionResult.FALSE;
                }
                ArrayList arrayList = new ArrayList();
                if (!resolveExpressionExpecting.argumentsTypeElided()) {
                    Argument[] arguments = resolveExpressionExpecting.arguments();
                    for (int i11 = 0; i11 < typeBindingArr.length; i11++) {
                        arrayList.add(ConstraintTypeFormula.create(typeBindingArr[i11], arguments[i11].type.resolvedType, 4));
                    }
                    TypeBinding typeBinding7 = resolveExpressionExpecting.resolvedType;
                    if (typeBinding7 != null) {
                        arrayList.add(ConstraintTypeFormula.create(typeBinding7, this.right, 2));
                    }
                }
                TypeBinding typeBinding8 = singleAbstractMethod.returnType;
                if (typeBinding8 != TypeBinding.VOID) {
                    Expression[] resultExpressions = resolveExpressionExpecting.resultExpressions();
                    int length = resultExpressions == null ? 0 : resultExpressions.length;
                    for (int i12 = 0; i12 < length; i12++) {
                        Expression expression3 = resultExpressions[i12];
                        if (!typeBinding8.isProperType(true) || (typeBinding = expression3.resolvedType) == null) {
                            arrayList.add(new ConstraintExpressionFormula(expression3, typeBinding8, 1, this.isSoft));
                        } else if (!expression3.isConstantValueOfTypeAssignableToType(typeBinding, typeBinding8) && !typeBinding.isCompatibleWith(typeBinding8) && !expression3.isBoxingCompatible(typeBinding, typeBinding8, expression3, blockScope)) {
                            return ReductionResult.FALSE;
                        }
                    }
                }
                return arrayList.size() == 0 ? ReductionResult.TRUE : arrayList.toArray(new ConstraintFormula[arrayList.size()]);
            }
            return ReductionResult.FALSE;
        }
        Invocation invocation = (Invocation) expression2;
        MethodBinding binding = invocation.binding();
        if (binding == 0) {
            return null;
        }
        MethodBinding shallowOriginal = binding.shallowOriginal();
        InferenceContext18.SuspendedInferenceRecord enterPolyInvocation = inferenceContext18.enterPolyInvocation(invocation, invocation.arguments());
        try {
            Expression[] arguments2 = invocation.arguments();
            TypeBinding[] typeBindingArr2 = arguments2 == null ? Binding.NO_PARAMETERS : new TypeBinding[arguments2.length];
            for (int i13 = 0; i13 < typeBindingArr2.length; i13++) {
                typeBindingArr2[i13] = arguments2[i13].resolvedType;
            }
            try {
                if (binding instanceof ParameterizedGenericMethodBinding) {
                    inferenceContext182 = invocation.getInferenceContext((ParameterizedGenericMethodBinding) binding);
                    if (inferenceContext182 == null) {
                        TypeBinding typeBinding9 = this.left.resolvedType;
                        if (typeBinding9 != null && typeBinding9.isValidBinding()) {
                            ConstraintTypeFormula create = ConstraintTypeFormula.create(typeBinding9, this.right, 1, this.isSoft);
                            inferenceContext18.resumeSuspendedInference(enterPolyInvocation, inferenceContext182);
                            return create;
                        }
                        ConstraintTypeFormula constraintTypeFormula = ReductionResult.FALSE;
                        inferenceContext18.resumeSuspendedInference(enterPolyInvocation, inferenceContext182);
                        return constraintTypeFormula;
                    }
                    if (inferenceContext182.stepCompleted < 1) {
                        ConstraintTypeFormula constraintTypeFormula2 = ReductionResult.FALSE;
                        inferenceContext18.resumeSuspendedInference(enterPolyInvocation, inferenceContext182);
                        return constraintTypeFormula2;
                    }
                    inferenceContext18.integrateInnerInferenceB2(inferenceContext182);
                } else {
                    inferenceContext18.inferenceKind = inferenceContext18.getInferenceKind(binding, typeBindingArr2);
                    if (shallowOriginal.isConstructor() && this.left.isPolyExpression(shallowOriginal)) {
                        z10 = true;
                    }
                    inferInvocationApplicability(inferenceContext18, shallowOriginal, typeBindingArr2, z10, inferenceContext18.inferenceKind);
                    inferenceContext182 = null;
                }
                if (inferenceContext18.computeB3(invocation, this.right, shallowOriginal)) {
                    inferenceContext18.resumeSuspendedInference(enterPolyInvocation, inferenceContext182);
                    return null;
                }
                ConstraintTypeFormula constraintTypeFormula3 = ReductionResult.FALSE;
                inferenceContext18.resumeSuspendedInference(enterPolyInvocation, inferenceContext182);
                return constraintTypeFormula3;
            } catch (Throwable th2) {
                inferenceContext183 = binding;
                th = th2;
                inferenceContext18.resumeSuspendedInference(enterPolyInvocation, inferenceContext183);
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append('\u27e8');
        this.left.printExpression(4, stringBuffer);
        stringBuffer.append(ReductionResult.relationToString(this.relation));
        appendTypeName(stringBuffer, this.right);
        stringBuffer.append('\u27e9');
        return stringBuffer.toString();
    }

    public ConstraintExpressionFormula(Expression expression, TypeBinding typeBinding, int i10, boolean z10) {
        this(expression, typeBinding, i10);
        this.isSoft = z10;
    }
}
