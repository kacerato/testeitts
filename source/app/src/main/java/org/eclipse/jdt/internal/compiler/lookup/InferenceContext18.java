package org.eclipse.jdt.internal.compiler.lookup;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import org.eclipse.jdt.core.Signature;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.codeassist.complete.CompletionOnFieldName;
import org.eclipse.jdt.internal.compiler.ast.ConditionalExpression;
import org.eclipse.jdt.internal.compiler.ast.Expression;
import org.eclipse.jdt.internal.compiler.ast.FunctionalExpression;
import org.eclipse.jdt.internal.compiler.ast.Invocation;
import org.eclipse.jdt.internal.compiler.ast.LambdaExpression;
import org.eclipse.jdt.internal.compiler.ast.ReferenceExpression;
import org.eclipse.jdt.internal.compiler.ast.SwitchExpression;
import org.eclipse.jdt.internal.compiler.lookup.TypeConstants;
import org.eclipse.jdt.internal.compiler.util.Sorting;
import org.eclipse.jdt.internal.core.JavaElement;

public class InferenceContext18 {
    public static final int APPLICABILITY_INFERRED = 1;
    static final boolean ARGUMENT_CONSTRAINTS_ARE_SOFT = false;
    public static final int CHECK_LOOSE = 2;
    public static final int CHECK_STRICT = 1;
    public static final int CHECK_UNKNOWN = 0;
    public static final int CHECK_VARARG = 3;
    public static final int NOT_INFERRED = 0;
    static final boolean SHOULD_WORKAROUND_BUG_JDK_8054721 = true;
    static final boolean SHOULD_WORKAROUND_BUG_JDK_8153748 = true;
    static final boolean SIMULATE_BUG_JDK_8026527 = true;
    public static final int TYPE_INFERRED = 2;
    public static final int TYPE_INFERRED_FINAL = 3;

    public BoundSet f102480b2;

    private BoundSet f102481b3;
    public List<ConstraintFormula> constraintsWithUncheckedConversion;
    BoundSet currentBounds;
    InvocationSite currentInvocation;
    LookupEnvironment environment;
    ConstraintExpressionFormula[] finalConstraints;
    int inferenceKind;
    InferenceVariable[] inferenceVariables;
    ConstraintFormula[] initialConstraints;
    private BoundSet innerInbox;
    Expression[] invocationArguments;
    ReferenceBinding object;
    public InferenceContext18 outerContext;
    Scope scope;
    private Set<InferenceContext18> seenInnerContexts;
    public boolean usesUncheckedConversion;
    public int stepCompleted = 0;
    private boolean directlyAcceptingInnerBounds = false;
    private Runnable pushToOuterJob = null;
    int captureId = 0;

    public interface InferenceOperation {
        boolean perform() throws InferenceFailureException;
    }

    public static class SuspendedInferenceRecord {
        int inferenceKind;
        InferenceVariable[] inferenceVariables;
        Expression[] invocationArguments;
        InvocationSite site;
        boolean usesUncheckedConversion;

        public SuspendedInferenceRecord(InvocationSite invocationSite, Expression[] expressionArr, InferenceVariable[] inferenceVariableArr, int i10, boolean z10) {
            this.site = invocationSite;
            this.invocationArguments = expressionArr;
            this.inferenceVariables = inferenceVariableArr;
            this.inferenceKind = i10;
            this.usesUncheckedConversion = z10;
        }
    }

    public InferenceContext18(Scope scope, Expression[] expressionArr, InvocationSite invocationSite, InferenceContext18 inferenceContext18) {
        this.scope = scope;
        this.environment = scope.environment();
        this.object = scope.getJavaLangObject();
        this.invocationArguments = expressionArr;
        this.currentInvocation = invocationSite;
        this.outerContext = inferenceContext18;
        if (invocationSite instanceof Invocation) {
            scope.compilationUnitScope().registerInferredInvocation((Invocation) invocationSite);
        }
    }

    private boolean addConstraintsToC(Expression[] expressionArr, Set<ConstraintFormula> set, MethodBinding methodBinding, int i10, InvocationSite invocationSite) throws InferenceFailureException {
        TypeBinding[] typeBindingArr;
        if (expressionArr != null) {
            int length = expressionArr.length;
            int length2 = methodBinding.parameters.length;
            if (methodBinding.isVarargs()) {
                if (length < length2 - 1) {
                    return false;
                }
            } else if (length != length2) {
                return false;
            }
            if (i10 == 1 || i10 == 2) {
                typeBindingArr = methodBinding.parameters;
            } else {
                if (i10 != 3) {
                    throw new IllegalStateException("Unexpected checkKind " + this.inferenceKind);
                }
                typeBindingArr = varArgTypes(methodBinding.parameters, length);
            }
            TypeBinding[] typeBindingArr2 = typeBindingArr;
            for (int i11 = 0; i11 < length; i11++) {
                TypeBinding typeBinding = typeBindingArr2[Math.min(i11, length2 - 1)];
                InferenceSubstitution inferenceSubstitution = new InferenceSubstitution(this.environment, this.inferenceVariables, invocationSite);
                if (!addConstraintsToC_OneExpr(expressionArr[i11], set, typeBinding, inferenceSubstitution.substitute(inferenceSubstitution, typeBinding), methodBinding)) {
                    return false;
                }
            }
        }
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private boolean addConstraintsToC_OneExpr(Expression expression, Set<ConstraintFormula> set, TypeBinding typeBinding, TypeBinding typeBinding2, MethodBinding methodBinding) throws InferenceFailureException {
        Invocation invocation;
        MethodBinding binding;
        MethodBinding singleAbstractMethod;
        LambdaExpression resolveExpressionExpecting;
        boolean isProperType = typeBinding2.isProperType(true);
        TypeBinding substitute = Scope.substitute(getResultSubstitution(this.f102481b3), typeBinding2);
        if (!expression.isPertinentToApplicability(typeBinding, methodBinding)) {
            set.add(new ConstraintExpressionFormula(expression, substitute, 1, false));
        }
        if (expression instanceof FunctionalExpression) {
            set.add(new ConstraintExceptionFormula((FunctionalExpression) expression, substitute));
            if (expression instanceof LambdaExpression) {
                LambdaExpression lambdaExpression = (LambdaExpression) expression;
                BlockScope blockScope = lambdaExpression.enclosingScope;
                if (substitute.isFunctionalInterface(blockScope)) {
                    ReferenceBinding referenceBinding = (ReferenceBinding) substitute;
                    ParameterizedTypeBinding parameterizedWithWildcard = parameterizedWithWildcard(referenceBinding);
                    if (parameterizedWithWildcard != null) {
                        referenceBinding = ConstraintExpressionFormula.findGroundTargetType(this, blockScope, lambdaExpression, parameterizedWithWildcard);
                    }
                    if (referenceBinding != null && (singleAbstractMethod = referenceBinding.getSingleAbstractMethod(blockScope, true)) != null && (resolveExpressionExpecting = lambdaExpression.resolveExpressionExpecting((TypeBinding) referenceBinding, this.scope, this)) != null) {
                        TypeBinding typeBinding3 = singleAbstractMethod.returnType;
                        Expression[] resultExpressions = resolveExpressionExpecting.resultExpressions();
                        int length = resultExpressions == null ? 0 : resultExpressions.length;
                        for (int i10 = 0; i10 < length; i10++) {
                            if (!addConstraintsToC_OneExpr(resultExpressions[i10], set, typeBinding3.original(), typeBinding3, methodBinding)) {
                                return false;
                            }
                        }
                    }
                }
            }
        } else {
            if ((expression instanceof Invocation) && expression.isPolyExpression()) {
                if (isProperType || (binding = (invocation = (Invocation) expression).binding()) == null) {
                    return true;
                }
                Expression[] arguments = invocation.arguments();
                TypeBinding[] typeBindingArr = arguments == null ? Binding.NO_PARAMETERS : new TypeBinding[arguments.length];
                for (int i11 = 0; i11 < typeBindingArr.length; i11++) {
                    typeBindingArr[i11] = arguments[i11].resolvedType;
                }
                InferenceContext18 inferenceContext = binding instanceof ParameterizedGenericMethodBinding ? invocation.getInferenceContext((ParameterizedGenericMethodBinding) binding) : null;
                if (inferenceContext == null) {
                    return addConstraintsToC(arguments, set, binding.genericMethod(), getInferenceKind(binding, typeBindingArr), invocation);
                }
                MethodBinding shallowOriginal = binding.shallowOriginal();
                inferenceContext.outerContext = this;
                if (inferenceContext.stepCompleted < 1) {
                    inferenceContext.inferInvocationApplicability(shallowOriginal, typeBindingArr, shallowOriginal.isConstructor());
                }
                if (!inferenceContext.computeB3(invocation, substitute, shallowOriginal)) {
                    return false;
                }
                if (!inferenceContext.addConstraintsToC(arguments, set, binding.genericMethod(), inferenceContext.inferenceKind, invocation)) {
                    return false;
                }
                this.currentBounds.addBounds(inferenceContext.currentBounds, this.environment);
                return true;
            }
            if (expression instanceof ConditionalExpression) {
                ConditionalExpression conditionalExpression = (ConditionalExpression) expression;
                return addConstraintsToC_OneExpr(conditionalExpression.valueIfTrue, set, typeBinding, substitute, methodBinding) && addConstraintsToC_OneExpr(conditionalExpression.valueIfFalse, set, typeBinding, substitute, methodBinding);
            }
            if (expression instanceof SwitchExpression) {
                Iterator<Expression> it = ((SwitchExpression) expression).resultExpressions.iterator();
                while (it.hasNext()) {
                    if (!addConstraintsToC_OneExpr(it.next(), set, typeBinding, substitute, methodBinding)) {
                        return false;
                    }
                }
                return true;
            }
        }
        return true;
    }

    private void addDependencies(BoundSet boundSet, Set<InferenceVariable> set, InferenceVariable inferenceVariable) {
        if (boundSet.isInstantiated(inferenceVariable) || !set.add(inferenceVariable)) {
            return;
        }
        int i10 = 0;
        while (true) {
            InferenceVariable[] inferenceVariableArr = this.inferenceVariables;
            if (i10 >= inferenceVariableArr.length) {
                return;
            }
            InferenceVariable inferenceVariable2 = inferenceVariableArr[i10];
            if (!TypeBinding.equalsEquals(inferenceVariable2, inferenceVariable) && boundSet.dependsOnResolutionOf(inferenceVariable, inferenceVariable2)) {
                addDependencies(boundSet, set, inferenceVariable2);
            }
            i10++;
        }
    }

    private void addInferenceVariables(InferenceVariable[] inferenceVariableArr) {
        InferenceVariable[] inferenceVariableArr2 = this.inferenceVariables;
        if (inferenceVariableArr2 == null || inferenceVariableArr2.length == 0) {
            this.inferenceVariables = inferenceVariableArr;
            return;
        }
        int length = inferenceVariableArr.length;
        int length2 = inferenceVariableArr2.length;
        InferenceVariable[] inferenceVariableArr3 = new InferenceVariable[length + length2];
        this.inferenceVariables = inferenceVariableArr3;
        System.arraycopy(inferenceVariableArr2, 0, inferenceVariableArr3, 0, length2);
        System.arraycopy(inferenceVariableArr, 0, this.inferenceVariables, length2, length);
    }

    private InferenceVariable[] addInitialTypeVariableSubstitutions(TypeBinding[] typeBindingArr) {
        int length = typeBindingArr.length;
        if (length == 0) {
            if (this.inferenceVariables == null) {
                this.inferenceVariables = Binding.NO_INFERENCE_VARIABLES;
            }
            return Binding.NO_INFERENCE_VARIABLES;
        }
        InferenceVariable[] inferenceVariableArr = new InferenceVariable[length];
        for (int i10 = 0; i10 < length; i10++) {
            inferenceVariableArr[i10] = InferenceVariable.get(typeBindingArr[i10], i10, this.currentInvocation, this.scope, this.object, true);
        }
        addInferenceVariables(inferenceVariableArr);
        return inferenceVariableArr;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private ReductionResult addJDK_8153748ConstraintsFromExpression(Expression expression, TypeBinding typeBinding, MethodBinding methodBinding, InferenceSubstitution inferenceSubstitution) throws InferenceFailureException {
        if (expression instanceof FunctionalExpression) {
            return addJDK_8153748ConstraintsFromFunctionalExpr((FunctionalExpression) expression, typeBinding, methodBinding);
        }
        if ((expression instanceof Invocation) && expression.isPolyExpression(methodBinding)) {
            Invocation invocation = (Invocation) expression;
            Expression[] arguments = invocation.arguments();
            MethodBinding binding = invocation.binding();
            if (binding == null || !binding.isValidBinding()) {
                return null;
            }
            return addJDK_8153748ConstraintsFromInvocation(arguments, binding.shallowOriginal(), enrichSubstitution(inferenceSubstitution, invocation, binding));
        }
        if (expression instanceof ConditionalExpression) {
            ConditionalExpression conditionalExpression = (ConditionalExpression) expression;
            ReductionResult addJDK_8153748ConstraintsFromExpression = addJDK_8153748ConstraintsFromExpression(conditionalExpression.valueIfTrue, typeBinding, methodBinding, inferenceSubstitution);
            ConstraintTypeFormula constraintTypeFormula = ReductionResult.FALSE;
            return addJDK_8153748ConstraintsFromExpression == constraintTypeFormula ? constraintTypeFormula : addJDK_8153748ConstraintsFromExpression(conditionalExpression.valueIfFalse, typeBinding, methodBinding, inferenceSubstitution);
        }
        if (!(expression instanceof SwitchExpression)) {
            return null;
        }
        ReductionResult reductionResult = ReductionResult.FALSE;
        Iterator<Expression> it = ((SwitchExpression) expression).resultExpressions.iterator();
        while (it.hasNext() && (reductionResult = addJDK_8153748ConstraintsFromExpression(it.next(), typeBinding, methodBinding, inferenceSubstitution)) != ReductionResult.FALSE) {
        }
        return reductionResult;
    }

    private ReductionResult addJDK_8153748ConstraintsFromFunctionalExpr(FunctionalExpression functionalExpression, TypeBinding typeBinding, MethodBinding methodBinding) throws InferenceFailureException {
        if (functionalExpression.isPertinentToApplicability(typeBinding, methodBinding)) {
            return null;
        }
        final ConstraintExpressionFormula constraintExpressionFormula = new ConstraintExpressionFormula(functionalExpression, typeBinding, 1, false);
        if (!collectingInnerBounds(new InferenceOperation() {
            @Override
            public final boolean perform() {
                boolean lambda$1;
                lambda$1 = InferenceContext18.this.lambda$1(constraintExpressionFormula);
                return lambda$1;
            }
        })) {
            return null;
        }
        if (!collectingInnerBounds(new InferenceOperation() {
            @Override
            public final boolean perform() {
                boolean lambda$2;
                lambda$2 = InferenceContext18.this.lambda$2(constraintExpressionFormula);
                return lambda$2;
            }
        })) {
            return ReductionResult.FALSE;
        }
        final ConstraintExceptionFormula constraintExceptionFormula = new ConstraintExceptionFormula(functionalExpression, typeBinding);
        return !collectingInnerBounds(new InferenceOperation() {
            @Override
            public final boolean perform() {
                boolean lambda$3;
                lambda$3 = InferenceContext18.this.lambda$3(constraintExceptionFormula);
                return lambda$3;
            }
        }) ? ReductionResult.FALSE : ReductionResult.TRUE;
    }

    private ReductionResult addJDK_8153748ConstraintsFromInvocation(Expression[] expressionArr, MethodBinding methodBinding, InferenceSubstitution inferenceSubstitution) throws InferenceFailureException {
        int i10 = 0;
        if (expressionArr != null) {
            int i11 = 0;
            while (i10 < expressionArr.length) {
                ReductionResult addJDK_8153748ConstraintsFromExpression = addJDK_8153748ConstraintsFromExpression(expressionArr[i10], inferenceSubstitution.substitute(inferenceSubstitution, getParameter(methodBinding.parameters, i10, methodBinding.isVarargs())), methodBinding, inferenceSubstitution);
                ConstraintTypeFormula constraintTypeFormula = ReductionResult.FALSE;
                if (addJDK_8153748ConstraintsFromExpression == constraintTypeFormula) {
                    return constraintTypeFormula;
                }
                if (addJDK_8153748ConstraintsFromExpression == ReductionResult.TRUE) {
                    i11 = 1;
                }
                i10++;
            }
            i10 = i11;
        }
        if (i10 != 0) {
            return ReductionResult.TRUE;
        }
        return null;
    }

    private boolean canInfluenceAnyOf(InferenceVariable inferenceVariable, Set<InferenceVariable> set, List<Set<InferenceVariable>> list) {
        for (Set<InferenceVariable> set2 : list) {
            if (set2.contains(inferenceVariable)) {
                Iterator<InferenceVariable> it = set.iterator();
                while (it.hasNext()) {
                    if (set2.contains(it.next())) {
                        return true;
                    }
                }
                return false;
            }
        }
        return false;
    }

    private boolean checkExpression(Expression expression, TypeBinding[] typeBindingArr, TypeBinding typeBinding, TypeBinding[] typeBindingArr2, TypeBinding typeBinding2) throws InferenceFailureException {
        TypeBinding typeBinding3;
        int i10;
        TypeBinding typeBinding4;
        if (expression instanceof LambdaExpression) {
            LambdaExpression lambdaExpression = (LambdaExpression) expression;
            if (!lambdaExpression.argumentsTypeElided()) {
                for (int i11 = 0; i11 < typeBindingArr.length; i11++) {
                    if (!lambda$3(ConstraintTypeFormula.create(typeBindingArr[i11], typeBindingArr2[i11], 4))) {
                        return false;
                    }
                }
                if (typeBinding2.f102482id == 6) {
                    return true;
                }
                Expression[] resultExpressions = lambdaExpression.resultExpressions();
                if (resultExpressions != Expression.NO_EXPRESSIONS) {
                    if (typeBinding.isFunctionalInterface(this.scope) && typeBinding2.isFunctionalInterface(this.scope) && !typeBinding.isCompatibleWith(typeBinding2) && !typeBinding2.isCompatibleWith(typeBinding)) {
                        for (Expression expression2 : resultExpressions) {
                            if (!checkExpression(expression2, typeBindingArr, typeBinding, typeBindingArr2, typeBinding2)) {
                                return false;
                            }
                        }
                        return true;
                    }
                    if (typeBinding.isPrimitiveType() && !typeBinding2.isPrimitiveType()) {
                        for (0; i10 < resultExpressions.length; i10 + 1) {
                            i10 = (!resultExpressions[i10].isPolyExpression() && ((typeBinding4 = resultExpressions[i10].resolvedType) == null || typeBinding4.isPrimitiveType())) ? i10 + 1 : 0;
                        }
                        return true;
                    }
                    if (typeBinding2.isPrimitiveType() && !typeBinding.isPrimitiveType()) {
                        for (int i12 = 0; i12 < resultExpressions.length; i12++) {
                            if ((!resultExpressions[i12].isPolyExpression() && (typeBinding3 = resultExpressions[i12].resolvedType) != null && !typeBinding3.isPrimitiveType()) || resultExpressions[i12].isPolyExpression()) {
                            }
                        }
                        return true;
                    }
                }
                return lambda$3(ConstraintTypeFormula.create(typeBinding, typeBinding2, 2));
            }
        }
        if (expression instanceof ReferenceExpression) {
            ReferenceExpression referenceExpression = (ReferenceExpression) expression;
            if (referenceExpression.isExactMethodReference()) {
                for (int i13 = 0; i13 < typeBindingArr.length; i13++) {
                    if (!lambda$3(ConstraintTypeFormula.create(typeBindingArr[i13], typeBindingArr2[i13], 4))) {
                        return false;
                    }
                }
                if (typeBinding2.f102482id == 6) {
                    return true;
                }
                MethodBinding exactMethod = referenceExpression.getExactMethod();
                TypeBinding typeBinding5 = exactMethod.isConstructor() ? exactMethod.declaringClass : exactMethod.returnType;
                if (typeBinding.isPrimitiveType() && !typeBinding2.isPrimitiveType() && typeBinding5.isPrimitiveType()) {
                    return true;
                }
                if (!typeBinding2.isPrimitiveType() || typeBinding.isPrimitiveType() || typeBinding5.isPrimitiveType()) {
                    return lambda$3(ConstraintTypeFormula.create(typeBinding, typeBinding2, 2));
                }
                return true;
            }
        }
        if (expression instanceof ConditionalExpression) {
            ConditionalExpression conditionalExpression = (ConditionalExpression) expression;
            return checkExpression(conditionalExpression.valueIfTrue, typeBindingArr, typeBinding, typeBindingArr2, typeBinding2) && checkExpression(conditionalExpression.valueIfFalse, typeBindingArr, typeBinding, typeBindingArr2, typeBinding2);
        }
        if (expression instanceof SwitchExpression) {
            Iterator<Expression> it = ((SwitchExpression) expression).resultExpressions.iterator();
            while (it.hasNext()) {
                if (!checkExpression(it.next(), typeBindingArr, typeBinding, typeBindingArr2, typeBinding2)) {
                }
            }
            return true;
        }
        return false;
    }

    private boolean collectInnerContext(InferenceContext18 inferenceContext18) {
        if (inferenceContext18 == null) {
            return false;
        }
        if (this.seenInnerContexts == null) {
            this.seenInnerContexts = new HashSet();
        }
        return this.seenInnerContexts.add(inferenceContext18);
    }

    private boolean collectingInnerBounds(InferenceOperation inferenceOperation) throws InferenceFailureException {
        boolean perform = inferenceOperation.perform();
        if (perform) {
            mergeInnerBounds();
        } else {
            this.innerInbox = null;
        }
        return perform;
    }

    private boolean dependsOn(Collection<InferenceVariable> collection, Collection<InferenceVariable> collection2) {
        for (InferenceVariable inferenceVariable : collection) {
            Iterator<InferenceVariable> it = collection2.iterator();
            while (it.hasNext()) {
                if (this.currentBounds.dependsOnResolutionOf(inferenceVariable, it.next())) {
                    return true;
                }
            }
        }
        return false;
    }

    private boolean doesExpressionContain(Expression expression, Expression expression2) {
        int i10 = expression2.sourceStart;
        int i11 = expression.sourceStart;
        return i10 > i11 ? expression2.sourceEnd <= expression.sourceEnd : i10 == i11 && expression2.sourceEnd < expression.sourceEnd;
    }

    private Set<ConstraintFormula> findBottomSet(Set<ConstraintFormula> set, Set<InferenceVariable> set2, List<Set<InferenceVariable>> list) {
        HashSet hashSet = new HashSet();
        for (ConstraintFormula constraintFormula : set) {
            Iterator<InferenceVariable> it = constraintFormula.inputVariables(this).iterator();
            while (true) {
                if (!it.hasNext()) {
                    hashSet.add(constraintFormula);
                    break;
                }
                if (canInfluenceAnyOf(it.next(), set2, list)) {
                    break;
                }
            }
        }
        return hashSet;
    }

    private CaptureBinding18 freshCapture(InferenceVariable inferenceVariable) {
        int i10 = this.captureId;
        this.captureId = i10 + 1;
        char[] concat = CharOperation.concat(Signature.SIG_BOOLEAN.toCharArray(), JavaElement.JEM_IMPORTDECLARATION, String.valueOf(i10).toCharArray(), '-', inferenceVariable.sourceName);
        InvocationSite invocationSite = this.currentInvocation;
        int sourceStart = invocationSite != null ? invocationSite.sourceStart() : 0;
        InvocationSite invocationSite2 = this.currentInvocation;
        return new CaptureBinding18(this.scope.enclosingSourceType(), concat, inferenceVariable.typeParameter.shortReadableName(), sourceStart, invocationSite2 != null ? invocationSite2.sourceEnd() : 0, i10, this.environment);
    }

    public static TypeBinding getParameter(TypeBinding[] typeBindingArr, int i10, boolean z10) {
        if (z10) {
            if (i10 >= typeBindingArr.length - 1) {
                return ((ArrayBinding) typeBindingArr[typeBindingArr.length - 1]).elementsType();
            }
        } else if (i10 >= typeBindingArr.length) {
            return null;
        }
        return typeBindingArr[i10];
    }

    private Substitution getResultSubstitution(final BoundSet boundSet) {
        return new Substitution() {
            @Override
            public LookupEnvironment environment() {
                return InferenceContext18.this.environment;
            }

            @Override
            public boolean isRawSubstitution() {
                return false;
            }

            @Override
            public TypeBinding substitute(TypeVariableBinding typeVariableBinding) {
                TypeBinding instantiation;
                return (!(typeVariableBinding instanceof InferenceVariable) || (instantiation = boundSet.getInstantiation((InferenceVariable) typeVariableBinding, InferenceContext18.this.environment)) == null) ? typeVariableBinding : instantiation;
            }
        };
    }

    private Set<InferenceVariable> getSmallestVariableSet(BoundSet boundSet, InferenceVariable[] inferenceVariableArr) {
        HashSet<InferenceVariable> hashSet = new HashSet();
        HashMap hashMap = new HashMap();
        for (InferenceVariable inferenceVariable : inferenceVariableArr) {
            HashSet hashSet2 = new HashSet();
            addDependencies(boundSet, hashSet2, inferenceVariable);
            hashMap.put(inferenceVariable, hashSet2);
            hashSet.addAll(hashSet2);
        }
        int i10 = Integer.MAX_VALUE;
        Set<InferenceVariable> set = null;
        for (InferenceVariable inferenceVariable2 : hashSet) {
            if (!boundSet.isInstantiated(inferenceVariable2)) {
                Set<InferenceVariable> set2 = (Set) hashMap.get(inferenceVariable2);
                if (set2 == null) {
                    set2 = new HashSet<>();
                    addDependencies(boundSet, set2, inferenceVariable2);
                }
                int size = set2.size();
                if (size == 1) {
                    return set2;
                }
                if (size < i10) {
                    i10 = size;
                    set = set2;
                }
            }
        }
        return set;
    }

    private boolean isReachable(Map<ConstraintFormula, Set<ConstraintFormula>> map, ConstraintFormula constraintFormula, ConstraintFormula constraintFormula2, Set<ConstraintFormula> set, Set<ConstraintFormula> set2) {
        Set<ConstraintFormula> set3;
        if (constraintFormula == constraintFormula2) {
            set2.add(constraintFormula);
            return true;
        }
        if (set.add(constraintFormula) && (set3 = map.get(constraintFormula)) != null) {
            Iterator<ConstraintFormula> it = set3.iterator();
            while (it.hasNext()) {
                if (isReachable(map, it.next(), constraintFormula2, set, set2)) {
                    set2.add(constraintFormula);
                    return true;
                }
            }
        }
        return false;
    }

    public static boolean isSameSite(InvocationSite invocationSite, InvocationSite invocationSite2) {
        if (invocationSite == invocationSite2) {
            return true;
        }
        return invocationSite != null && invocationSite2 != null && invocationSite.sourceStart() == invocationSite2.sourceStart() && invocationSite.sourceEnd() == invocationSite2.sourceEnd();
    }

    private boolean isTypeVariableOfCandidate(TypeBinding typeBinding, MethodBinding methodBinding) {
        if (!(typeBinding instanceof TypeVariableBinding)) {
            return false;
        }
        Binding binding = ((TypeVariableBinding) typeBinding).declaringElement;
        if (binding == methodBinding) {
            return true;
        }
        return methodBinding.isConstructor() && binding == methodBinding.declaringClass;
    }

    public void lambda$0(InferenceContext18 inferenceContext18, BoundSet boundSet, boolean z10) {
        if (inferenceContext18.directlyAcceptingInnerBounds) {
            inferenceContext18.currentBounds.addBounds(boundSet, this.environment);
            return;
        }
        BoundSet boundSet2 = inferenceContext18.innerInbox;
        if (boundSet2 != null) {
            boundSet2.addBounds(boundSet, this.environment);
            return;
        }
        if (!z10) {
            boundSet = boundSet.copy();
        }
        inferenceContext18.innerInbox = boundSet;
    }

    public boolean lambda$1(ConstraintFormula constraintFormula) throws InferenceFailureException {
        return constraintFormula.inputVariables(this).isEmpty();
    }

    private void mergeInnerBounds() {
        BoundSet boundSet = this.innerInbox;
        if (boundSet != null) {
            this.currentBounds.addBounds(boundSet, this.environment);
            this.innerInbox = null;
        }
    }

    public static void missingImplementation(String str) {
        throw new UnsupportedOperationException(str);
    }

    private Boolean moreSpecificMain(TypeBinding typeBinding, TypeBinding typeBinding2, Expression expression) throws InferenceFailureException {
        if (typeBinding.isProperType(true) && typeBinding2.isProperType(true)) {
            return expression.sIsMoreSpecific(typeBinding, typeBinding2, this.scope) ? Boolean.TRUE : Boolean.FALSE;
        }
        if (!typeBinding2.isFunctionalInterface(this.scope)) {
            return null;
        }
        TypeBinding original = typeBinding2.original();
        if (!typeBinding.isFunctionalInterface(this.scope) || siSuperI(typeBinding, original) || siSubI(typeBinding, original)) {
            return null;
        }
        if (typeBinding instanceof IntersectionTypeBinding18) {
            ReferenceBinding[] referenceBindingArr = ((IntersectionTypeBinding18) typeBinding).intersectingTypes;
            for (ReferenceBinding referenceBinding : referenceBindingArr) {
                if (!siSuperI(referenceBinding, original)) {
                    for (ReferenceBinding referenceBinding2 : referenceBindingArr) {
                        if (siSubI(referenceBinding2, original)) {
                            return null;
                        }
                    }
                }
            }
            return null;
        }
        MethodBinding singleAbstractMethod = typeBinding.capture(this.scope, expression.sourceStart, expression.sourceEnd).getSingleAbstractMethod(this.scope, false);
        TypeBinding[] typeBindingArr = singleAbstractMethod.parameters;
        TypeBinding typeBinding3 = singleAbstractMethod.isConstructor() ? singleAbstractMethod.declaringClass : singleAbstractMethod.returnType;
        MethodBinding singleAbstractMethod2 = typeBinding2.getSingleAbstractMethod(this.scope, true);
        return Boolean.valueOf(checkExpression(expression, typeBindingArr, typeBinding3, singleAbstractMethod2.parameters, singleAbstractMethod2.isConstructor() ? singleAbstractMethod2.declaringClass : singleAbstractMethod2.returnType));
    }

    public static ParameterizedTypeBinding parameterizedWithWildcard(TypeBinding typeBinding) {
        ParameterizedTypeBinding parameterizedTypeBinding;
        TypeBinding[] typeBindingArr;
        if (typeBinding != null && typeBinding.kind() == 260 && (typeBindingArr = (parameterizedTypeBinding = (ParameterizedTypeBinding) typeBinding).arguments) != null) {
            for (TypeBinding typeBinding2 : typeBindingArr) {
                if (typeBinding2.isWildcard()) {
                    return parameterizedTypeBinding;
                }
            }
        }
        return null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private ConstraintFormula pickFromCycle(Set<ConstraintFormula> set) {
        ConstraintExpressionFormula constraintExpressionFormula;
        HashMap hashMap = new HashMap();
        HashSet<ConstraintFormula> hashSet = new HashSet();
        for (ConstraintFormula constraintFormula : set) {
            Collection<InferenceVariable> inputVariables = constraintFormula.inputVariables(this);
            for (ConstraintFormula constraintFormula2 : set) {
                if (constraintFormula2 != constraintFormula && dependsOn(inputVariables, constraintFormula2.outputVariables(this))) {
                    Collection collection = (Set) hashMap.get(constraintFormula);
                    if (collection == null) {
                        collection = new HashSet();
                        hashMap.put(constraintFormula, collection);
                    }
                    collection.add(constraintFormula2);
                    HashSet hashSet2 = new HashSet();
                    if (isReachable(hashMap, constraintFormula2, constraintFormula, new HashSet<>(), hashSet2)) {
                        hashSet.addAll(hashSet2);
                    }
                }
            }
        }
        HashSet hashSet3 = new HashSet(set);
        hashSet3.removeAll(hashSet);
        HashSet hashSet4 = new HashSet();
        for (ConstraintFormula constraintFormula3 : hashSet) {
            Collection<InferenceVariable> inputVariables2 = constraintFormula3.inputVariables(this);
            Iterator<E> it = hashSet3.iterator();
            while (true) {
                if (!it.hasNext()) {
                    hashSet4.add(constraintFormula3);
                    break;
                }
                if (dependsOn(inputVariables2, ((ConstraintFormula) it.next()).outputVariables(this))) {
                    break;
                }
            }
        }
        Set<ConstraintFormula> set2 = hashSet4.isEmpty() ? set : hashSet4;
        HashSet hashSet5 = new HashSet();
        for (ConstraintFormula constraintFormula4 : set2) {
            if (constraintFormula4 instanceof ConstraintExpressionFormula) {
                hashSet5.add(constraintFormula4);
            }
        }
        if (!hashSet5.isEmpty()) {
            Map<ConstraintExpressionFormula, ConstraintExpressionFormula> hashMap2 = new HashMap<>();
            for (ConstraintFormula constraintFormula5 : hashSet5) {
                ConstraintExpressionFormula constraintExpressionFormula2 = (ConstraintExpressionFormula) constraintFormula5;
                Expression expression = constraintExpressionFormula2.left;
                for (ConstraintFormula constraintFormula6 : hashSet5) {
                    if (constraintFormula5 != constraintFormula6) {
                        ConstraintExpressionFormula constraintExpressionFormula3 = (ConstraintExpressionFormula) constraintFormula6;
                        if (doesExpressionContain(expression, constraintExpressionFormula3.left) && ((constraintExpressionFormula = (ConstraintExpressionFormula) hashMap2.get(constraintFormula6)) == null || doesExpressionContain(constraintExpressionFormula.left, expression))) {
                            hashMap2.put(constraintExpressionFormula3, constraintExpressionFormula2);
                        }
                    }
                }
            }
            Map<ConstraintExpressionFormula, Set<ConstraintExpressionFormula>> hashMap3 = new HashMap<>();
            Iterator it2 = hashMap2.entrySet().iterator();
            while (it2.hasNext()) {
                Map.Entry entry = (Map.Entry) it2.next();
                ConstraintExpressionFormula constraintExpressionFormula4 = (ConstraintExpressionFormula) entry.getValue();
                Set<ConstraintExpressionFormula> set3 = (Set) hashMap3.get(constraintExpressionFormula4);
                if (set3 == null) {
                    set3 = new HashSet<>();
                    hashMap3.put(constraintExpressionFormula4, set3);
                }
                set3.add((ConstraintExpressionFormula) entry.getKey());
            }
            int i10 = -1;
            ConstraintExpressionFormula constraintExpressionFormula5 = null;
            for (K k10 : hashMap3.o()) {
                int rankNode = rankNode(k10, hashMap2, hashMap3);
                if (rankNode > i10) {
                    constraintExpressionFormula5 = k10;
                    i10 = rankNode;
                }
            }
            if (constraintExpressionFormula5 != null) {
                return constraintExpressionFormula5;
            }
            set2 = hashSet5;
        }
        if (set2.isEmpty()) {
            throw new IllegalStateException("cannot pick constraint from cyclic set");
        }
        return set2.iterator().next();
    }

    private void pushBoundsToOuter() {
        final InferenceContext18 inferenceContext18 = this.outerContext;
        if (inferenceContext18 == null || inferenceContext18.stepCompleted < 1) {
            return;
        }
        final boolean z10 = inferenceContext18.currentInvocation instanceof Invocation;
        final BoundSet boundSet = this.currentBounds;
        if (z10) {
            boundSet = boundSet.copy();
        }
        Runnable runnable = new Runnable() {
            @Override
            public final void run() {
                InferenceContext18.this.lambda$0(inferenceContext18, boundSet, z10);
            }
        };
        if (z10) {
            this.pushToOuterJob = runnable;
        } else {
            runnable.run();
        }
    }

    private int rankNode(ConstraintExpressionFormula constraintExpressionFormula, Map<ConstraintExpressionFormula, ConstraintExpressionFormula> map, Map<ConstraintExpressionFormula, Set<ConstraintExpressionFormula>> map2) {
        if (map.get(constraintExpressionFormula) != null) {
            return -1;
        }
        Set<ConstraintExpressionFormula> set = map2.get(constraintExpressionFormula);
        int i10 = 1;
        if (set == null) {
            return 1;
        }
        Iterator<ConstraintExpressionFormula> it = set.iterator();
        while (it.hasNext()) {
            int rankNode = rankNode(it.next(), map, map2);
            if (rankNode > 0) {
                i10 += rankNode;
            }
        }
        return i10;
    }

    private boolean reduce() throws InferenceFailureException {
        int i10 = 0;
        while (true) {
            ConstraintFormula[] constraintFormulaArr = this.initialConstraints;
            if (constraintFormulaArr == null || i10 >= constraintFormulaArr.length) {
                break;
            }
            ConstraintFormula constraintFormula = constraintFormulaArr[i10];
            if (constraintFormula != null) {
                constraintFormulaArr[i10] = null;
                if (!this.currentBounds.reduceOneConstraint(this, constraintFormula)) {
                    return false;
                }
            }
            i10++;
        }
        this.initialConstraints = null;
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x0066, code lost:
    
        return r13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x0041, code lost:
    
        if (r0.incorporate(r18) == false) goto L49;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v15, types: [int] */
    /* JADX WARN: Type inference failed for: r1v23 */
    /* JADX WARN: Type inference failed for: r1v24 */
    /* JADX WARN: Type inference failed for: r1v25 */
    /* JADX WARN: Type inference failed for: r1v5 */
    /* JADX WARN: Type inference failed for: r1v6 */
    /* JADX WARN: Type inference failed for: r1v7 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private BoundSet resolve(InferenceVariable[] inferenceVariableArr) throws InferenceFailureException {
        TypeBinding lowerUpperBound;
        boolean z10 = false;
        this.captureId = 0;
        BoundSet boundSet = this.currentBounds;
        if (this.inferenceVariables == null) {
            return boundSet;
        }
        loop0: while (true) {
            BoundSet boundSet2 = boundSet;
            while (true) {
                Set<InferenceVariable> smallestVariableSet = getSmallestVariableSet(boundSet2, inferenceVariableArr);
                if (smallestVariableSet == null) {
                    return boundSet2;
                }
                int numUninstantiatedVariables = boundSet2.numUninstantiatedVariables(this.inferenceVariables);
                final int size = smallestVariableSet.size();
                if (size > 0) {
                    final InferenceVariable[] inferenceVariableArr2 = (InferenceVariable[]) smallestVariableSet.toArray(new InferenceVariable[size]);
                    BoundSet boundSet3 = null;
                    boolean z11 = true;
                    if (!boundSet2.hasCaptureBound(smallestVariableSet)) {
                        boundSet = boundSet2.copy();
                        int i10 = z10 ? 1 : 0;
                        while (true) {
                            if (i10 >= inferenceVariableArr2.length) {
                                break;
                            }
                            InferenceVariable inferenceVariable = inferenceVariableArr2[i10];
                            TypeBinding[] lowerBounds = boundSet.lowerBounds(inferenceVariable, true);
                            TypeBinding[] typeBindingArr = Binding.NO_TYPES;
                            if (lowerBounds != typeBindingArr) {
                                TypeBinding lowerUpperBound2 = this.scope.lowerUpperBound(lowerBounds);
                                if (lowerUpperBound2 == TypeBinding.VOID || lowerUpperBound2 == null) {
                                    break loop0;
                                }
                                boundSet.addBound(new TypeBound(inferenceVariable, lowerUpperBound2, 4), this.environment);
                            } else {
                                TypeBinding[] upperBounds = boundSet.upperBounds(inferenceVariable, true);
                                if (boundSet.inThrows.contains(inferenceVariable.prototype()) && boundSet.hasOnlyTrivialExceptionBounds(inferenceVariable, upperBounds)) {
                                    boundSet.addBound(new TypeBound(inferenceVariable, this.scope.getType(TypeConstants.JAVA_LANG_RUNTIMEEXCEPTION, 3), 4), this.environment);
                                } else {
                                    TypeBinding typeBinding = this.object;
                                    if (upperBounds != typeBindingArr) {
                                        if (upperBounds.length != 1) {
                                            ReferenceBinding[] greaterLowerBound = Scope.greaterLowerBound((ReferenceBinding[]) upperBounds);
                                            if (greaterLowerBound == null) {
                                                return null;
                                            }
                                            if (greaterLowerBound.length != 1) {
                                                IntersectionTypeBinding18 intersectionTypeBinding18 = (IntersectionTypeBinding18) this.environment.createIntersectionType18(greaterLowerBound);
                                                boolean isConsistentIntersection = ReferenceBinding.isConsistentIntersection(intersectionTypeBinding18.intersectingTypes);
                                                typeBinding = intersectionTypeBinding18;
                                                if (!isConsistentIntersection) {
                                                    break;
                                                }
                                            } else {
                                                typeBinding = greaterLowerBound[z10 ? 1 : 0];
                                            }
                                        } else {
                                            typeBinding = upperBounds[z10 ? 1 : 0];
                                        }
                                    }
                                    boundSet.addBound(new TypeBound(inferenceVariable, typeBinding, 4), this.environment);
                                }
                            }
                            i10++;
                            boundSet3 = null;
                        }
                    }
                    Sorting.sortInferenceVariables(inferenceVariableArr2);
                    final CaptureBinding18[] captureBinding18Arr = new CaptureBinding18[size];
                    int i11 = z10 ? 1 : 0;
                    while (i11 < size) {
                        captureBinding18Arr[i11] = freshCapture(inferenceVariableArr2[i11]);
                        i11++;
                        z10 = false;
                        z11 = true;
                    }
                    final BoundSet boundSet4 = boundSet2;
                    Substitution substitution = new Substitution() {
                        @Override
                        public LookupEnvironment environment() {
                            return InferenceContext18.this.environment;
                        }

                        @Override
                        public boolean isRawSubstitution() {
                            return false;
                        }

                        @Override
                        public TypeBinding substitute(TypeVariableBinding typeVariableBinding) {
                            for (int i12 = 0; i12 < size; i12++) {
                                if (TypeBinding.equalsEquals(inferenceVariableArr2[i12], typeVariableBinding)) {
                                    return captureBinding18Arr[i12];
                                }
                            }
                            if (typeVariableBinding instanceof InferenceVariable) {
                                TypeBinding instantiation = boundSet4.getInstantiation((InferenceVariable) typeVariableBinding, null);
                                if (instantiation != null) {
                                    return instantiation;
                                }
                            }
                            return typeVariableBinding;
                        }
                    };
                    ?? r12 = z10;
                    while (r12 < size) {
                        InferenceVariable inferenceVariable2 = inferenceVariableArr2[r12];
                        CaptureBinding18 captureBinding18 = captureBinding18Arr[r12];
                        TypeBinding[] lowerBounds2 = boundSet2.lowerBounds(inferenceVariable2, z11);
                        TypeBinding[] typeBindingArr2 = Binding.NO_TYPES;
                        if (lowerBounds2 != typeBindingArr2 && (lowerUpperBound = this.scope.lowerUpperBound(lowerBounds2)) != TypeBinding.VOID && lowerUpperBound != null) {
                            captureBinding18.lowerBound = lowerUpperBound;
                        }
                        TypeBinding[] upperBounds2 = boundSet2.upperBounds(inferenceVariable2, z10);
                        if (upperBounds2 != typeBindingArr2) {
                            for (int i12 = z10 ? 1 : 0; i12 < upperBounds2.length; i12++) {
                                upperBounds2[i12] = Scope.substitute(substitution, upperBounds2[i12]);
                            }
                            if (!setUpperBounds(captureBinding18, upperBounds2)) {
                                r12++;
                            }
                        }
                        if (boundSet2 == this.currentBounds) {
                            boundSet2 = boundSet2.copy();
                        }
                        BoundSet boundSet5 = boundSet2;
                        HashSet hashSet = new HashSet();
                        r12 = r12;
                        for (ParameterizedTypeBinding parameterizedTypeBinding : boundSet5.captures.o()) {
                            int length = parameterizedTypeBinding.arguments.length;
                            int i13 = 0;
                            boolean z12 = r12;
                            while (true) {
                                if (i13 >= length) {
                                    break;
                                }
                                boolean z13 = z12;
                                if (TypeBinding.equalsEquals(parameterizedTypeBinding.arguments[i13], inferenceVariable2)) {
                                    hashSet.add(parameterizedTypeBinding);
                                    z12 = z13;
                                    break;
                                }
                                i13++;
                                z12 = z13;
                            }
                            z10 = false;
                            z11 = true;
                            r12 = z12;
                        }
                        Iterator it = hashSet.iterator();
                        while (it.hasNext()) {
                            boundSet5.captures.remove(it.next());
                        }
                        boundSet5.addBound(new TypeBound(inferenceVariable2, captureBinding18, 4), this.environment);
                        boundSet2 = boundSet5;
                        r12++;
                    }
                    if (!boundSet2.incorporate(this) || boundSet2.numUninstantiatedVariables(this.inferenceVariables) == numUninstantiatedVariables) {
                        return null;
                    }
                }
            }
        }
    }

    private boolean setUpperBounds(CaptureBinding18 captureBinding18, TypeBinding[] typeBindingArr) {
        if (typeBindingArr.length == 1) {
            return captureBinding18.setUpperBounds(typeBindingArr, this.object);
        }
        TypeBinding[] greaterLowerBound = Scope.greaterLowerBound(typeBindingArr, this.scope, this.environment);
        if (greaterLowerBound == null) {
            return false;
        }
        if (captureBinding18.lowerBound != null) {
            for (TypeBinding typeBinding : greaterLowerBound) {
                if (!captureBinding18.lowerBound.isCompatibleWith(typeBinding)) {
                    return false;
                }
            }
        }
        sortTypes(greaterLowerBound);
        return captureBinding18.setUpperBounds(greaterLowerBound, this.object);
    }

    private boolean siSubI(TypeBinding typeBinding, TypeBinding typeBinding2) {
        if (TypeBinding.equalsEquals(typeBinding, typeBinding2) || TypeBinding.equalsEquals(typeBinding.original(), typeBinding2)) {
            return true;
        }
        ReferenceBinding[] superInterfaces = typeBinding.superInterfaces();
        if (superInterfaces == null) {
            return false;
        }
        for (ReferenceBinding referenceBinding : superInterfaces) {
            if (siSubI(referenceBinding, typeBinding2)) {
                return true;
            }
        }
        return false;
    }

    private boolean siSuperI(TypeBinding typeBinding, TypeBinding typeBinding2) {
        if (TypeBinding.equalsEquals(typeBinding, typeBinding2) || TypeBinding.equalsEquals(typeBinding.original(), typeBinding2)) {
            return true;
        }
        ReferenceBinding[] superInterfaces = typeBinding2.superInterfaces();
        if (superInterfaces == null) {
            return false;
        }
        for (ReferenceBinding referenceBinding : superInterfaces) {
            if (siSuperI(typeBinding, referenceBinding.original())) {
                return true;
            }
        }
        return false;
    }

    public static void sortTypes(TypeBinding[] typeBindingArr) {
        Arrays.sort(typeBindingArr, new Comparator<TypeBinding>() {
            @Override
            public int compare(TypeBinding typeBinding, TypeBinding typeBinding2) {
                int i10 = typeBinding.f102482id;
                int i11 = typeBinding2.f102482id;
                if (i10 < i11) {
                    return -1;
                }
                return i10 == i11 ? 0 : 1;
            }
        });
    }

    private TypeBinding[] varArgTypes(TypeBinding[] typeBindingArr, int i10) {
        TypeBinding[] typeBindingArr2 = new TypeBinding[i10];
        int length = typeBindingArr.length - 1;
        System.arraycopy(typeBindingArr, 0, typeBindingArr2, 0, length);
        TypeBinding elementsType = ((ArrayBinding) typeBindingArr[length]).elementsType();
        while (length < i10) {
            typeBindingArr2[length] = elementsType;
            length++;
        }
        return typeBindingArr2;
    }

    public void addThrowsContraints(TypeBinding[] typeBindingArr, InferenceVariable[] inferenceVariableArr, ReferenceBinding[] referenceBindingArr) {
        for (int i10 = 0; i10 < typeBindingArr.length; i10++) {
            TypeBinding typeBinding = typeBindingArr[i10];
            int i11 = 0;
            while (true) {
                if (i11 < referenceBindingArr.length) {
                    if (TypeBinding.equalsEquals(typeBinding, referenceBindingArr[i11])) {
                        this.currentBounds.inThrows.add(inferenceVariableArr[i10].prototype());
                        break;
                    }
                    i11++;
                }
            }
        }
    }

    public InferenceVariable[] addTypeVariableSubstitutions(TypeBinding[] typeBindingArr) {
        int i10;
        int length = typeBindingArr.length;
        InferenceVariable[] inferenceVariableArr = new InferenceVariable[length];
        InferenceVariable[] inferenceVariableArr2 = new InferenceVariable[length];
        int i11 = 0;
        for (int i12 = 0; i12 < typeBindingArr.length; i12++) {
            TypeBinding typeBinding = typeBindingArr[i12];
            if (typeBinding instanceof InferenceVariable) {
                inferenceVariableArr[i12] = (InferenceVariable) typeBinding;
            } else {
                InferenceVariable inferenceVariable = InferenceVariable.get(typeBinding, i12, this.currentInvocation, this.scope, this.object, false);
                inferenceVariableArr[i12] = inferenceVariable;
                inferenceVariableArr2[i11] = inferenceVariable;
                i11++;
            }
        }
        if (i11 > 0) {
            InferenceVariable[] inferenceVariableArr3 = this.inferenceVariables;
            if (inferenceVariableArr3 != null) {
                i10 = inferenceVariableArr3.length;
                InferenceVariable[] inferenceVariableArr4 = new InferenceVariable[i10 + i11];
                this.inferenceVariables = inferenceVariableArr4;
                System.arraycopy(inferenceVariableArr3, 0, inferenceVariableArr4, 0, i10);
            } else {
                this.inferenceVariables = new InferenceVariable[i11];
                i10 = 0;
            }
            System.arraycopy(inferenceVariableArr2, 0, this.inferenceVariables, i10, i11);
        }
        return inferenceVariableArr;
    }

    public Set<InferenceVariable> allOutputVariables(Set<ConstraintFormula> set) {
        HashSet hashSet = new HashSet();
        Iterator<ConstraintFormula> it = set.iterator();
        while (it.hasNext()) {
            hashSet.addAll(it.next().outputVariables(this));
        }
        return hashSet;
    }

    public void cleanUp() {
        this.f102480b2 = null;
        this.currentBounds = null;
    }

    public boolean computeB3(InvocationSite invocationSite, TypeBinding typeBinding, MethodBinding methodBinding) throws InferenceFailureException {
        boolean inferPolyInvocationType = ConstraintExpressionFormula.inferPolyInvocationType(this, invocationSite, typeBinding, methodBinding);
        if (inferPolyInvocationType) {
            mergeInnerBounds();
            if (this.f102481b3 == null) {
                this.f102481b3 = this.currentBounds.copy();
            }
        }
        return inferPolyInvocationType;
    }

    public TypeBinding[] createBoundsForFunctionalInterfaceParameterizationInference(ParameterizedTypeBinding parameterizedTypeBinding) {
        TypeBound typeBound;
        if (this.currentBounds == null) {
            this.currentBounds = new BoundSet();
        }
        TypeBinding[] typeBindingArr = parameterizedTypeBinding.arguments;
        if (typeBindingArr == null) {
            return null;
        }
        InferenceVariable[] addInitialTypeVariableSubstitutions = addInitialTypeVariableSubstitutions(typeBindingArr);
        for (int i10 = 0; i10 < typeBindingArr.length; i10++) {
            if (typeBindingArr[i10].kind() == 516) {
                WildcardBinding wildcardBinding = (WildcardBinding) typeBindingArr[i10];
                int i11 = wildcardBinding.boundKind;
                if (i11 == 0) {
                    typeBound = new TypeBound(addInitialTypeVariableSubstitutions[i10], this.object, 2);
                } else if (i11 == 1) {
                    typeBound = new TypeBound(addInitialTypeVariableSubstitutions[i10], wildcardBinding.allBounds(), 2);
                } else if (i11 == 2) {
                    typeBound = new TypeBound(addInitialTypeVariableSubstitutions[i10], wildcardBinding.bound, 3);
                }
            } else {
                typeBound = new TypeBound(addInitialTypeVariableSubstitutions[i10], typeBindingArr[i10], 4);
            }
            this.currentBounds.addBound(typeBound, this.environment);
        }
        return substitute(parameterizedTypeBinding).getSingleAbstractMethod(this.scope, true).parameters;
    }

    public InferenceVariable[] createInitialBoundSet(TypeVariableBinding[] typeVariableBindingArr) {
        if (this.currentBounds == null) {
            this.currentBounds = new BoundSet();
        }
        if (typeVariableBindingArr == null) {
            return Binding.NO_INFERENCE_VARIABLES;
        }
        InferenceVariable[] addInitialTypeVariableSubstitutions = addInitialTypeVariableSubstitutions(typeVariableBindingArr);
        this.currentBounds.addBoundsFromTypeParameters(this, typeVariableBindingArr, addInitialTypeVariableSubstitutions);
        return addInitialTypeVariableSubstitutions;
    }

    public void createInitialConstraintsForParameters(TypeBinding[] typeBindingArr, boolean z10, TypeBinding typeBinding, MethodBinding methodBinding) {
        int length;
        boolean z11;
        int i10;
        Expression[] expressionArr = this.invocationArguments;
        if (expressionArr == null) {
            return;
        }
        int i11 = 1;
        int length2 = z10 ? typeBindingArr.length - 1 : Math.min(typeBindingArr.length, expressionArr.length);
        int length3 = z10 ? this.invocationArguments.length : length2;
        ConstraintFormula[] constraintFormulaArr = this.initialConstraints;
        if (constraintFormulaArr == null) {
            this.initialConstraints = new ConstraintFormula[length3];
            z11 = true;
            length = 0;
        } else {
            length = constraintFormulaArr.length;
            length3 += length;
            ConstraintFormula[] constraintFormulaArr2 = new ConstraintFormula[length3];
            this.initialConstraints = constraintFormulaArr2;
            System.arraycopy(constraintFormulaArr, 0, constraintFormulaArr2, 0, length);
            z11 = false;
        }
        int i12 = 0;
        while (i12 < length2) {
            TypeBinding substitute = substitute(typeBindingArr[i12]);
            if (this.invocationArguments[i12].isPertinentToApplicability(typeBindingArr[i12], methodBinding)) {
                this.initialConstraints[length] = new ConstraintExpressionFormula(this.invocationArguments[i12], substitute, i11, false);
                length++;
            } else if (!isTypeVariableOfCandidate(typeBindingArr[i12], methodBinding)) {
                this.initialConstraints[length] = new ConstraintExpressionFormula(this.invocationArguments[i12], substitute, 8);
                length++;
            }
            i12++;
            i11 = 1;
        }
        if (z10 && (typeBinding instanceof ArrayBinding)) {
            TypeBinding elementsType = ((ArrayBinding) typeBinding).elementsType();
            TypeBinding substitute2 = substitute(elementsType);
            while (true) {
                Expression[] expressionArr2 = this.invocationArguments;
                if (length2 >= expressionArr2.length) {
                    break;
                }
                if (expressionArr2[length2].isPertinentToApplicability(elementsType, methodBinding)) {
                    i10 = length + 1;
                    this.initialConstraints[length] = new ConstraintExpressionFormula(this.invocationArguments[length2], substitute2, i11, false);
                } else if (isTypeVariableOfCandidate(elementsType, methodBinding)) {
                    length2++;
                } else {
                    i10 = length + 1;
                    this.initialConstraints[length] = new ConstraintExpressionFormula(this.invocationArguments[length2], substitute2, 8);
                }
                length = i10;
                length2++;
            }
        }
        if (length == 0) {
            this.initialConstraints = ConstraintFormula.NO_CONSTRAINTS;
        } else if (length < length3) {
            ConstraintFormula[] constraintFormulaArr3 = this.initialConstraints;
            ConstraintFormula[] constraintFormulaArr4 = new ConstraintFormula[length];
            this.initialConstraints = constraintFormulaArr4;
            System.arraycopy(constraintFormulaArr3, 0, constraintFormulaArr4, 0, length);
        }
        if (z11) {
            ConstraintFormula[] constraintFormulaArr5 = this.initialConstraints;
            int length4 = constraintFormulaArr5.length;
            ConstraintExpressionFormula[] constraintExpressionFormulaArr = new ConstraintExpressionFormula[length4];
            this.finalConstraints = constraintExpressionFormulaArr;
            System.arraycopy(constraintFormulaArr5, 0, constraintExpressionFormulaArr, 0, length4);
        }
    }

    public InferenceSubstitution enrichSubstitution(InferenceSubstitution inferenceSubstitution, Invocation invocation, MethodBinding methodBinding) {
        InferenceContext18 inferenceContext;
        return (!(methodBinding instanceof ParameterizedGenericMethodBinding) || (inferenceContext = invocation.getInferenceContext((ParameterizedMethodBinding) methodBinding)) == null) ? inferenceSubstitution : inferenceSubstitution.addContext(inferenceContext);
    }

    public SuspendedInferenceRecord enterLambda(LambdaExpression lambdaExpression) {
        SuspendedInferenceRecord suspendedInferenceRecord = new SuspendedInferenceRecord(this.currentInvocation, this.invocationArguments, this.inferenceVariables, this.inferenceKind, this.usesUncheckedConversion);
        this.inferenceVariables = null;
        this.invocationArguments = null;
        this.usesUncheckedConversion = false;
        return suspendedInferenceRecord;
    }

    public SuspendedInferenceRecord enterPolyInvocation(InvocationSite invocationSite, Expression[] expressionArr) {
        SuspendedInferenceRecord suspendedInferenceRecord = new SuspendedInferenceRecord(this.currentInvocation, this.invocationArguments, this.inferenceVariables, this.inferenceKind, this.usesUncheckedConversion);
        this.inferenceVariables = null;
        this.invocationArguments = expressionArr;
        this.currentInvocation = invocationSite;
        this.usesUncheckedConversion = false;
        return suspendedInferenceRecord;
    }

    public void flushBoundOutbox() {
        Runnable runnable = this.pushToOuterJob;
        if (runnable != null) {
            runnable.run();
            this.pushToOuterJob = null;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void forwardResults(BoundSet boundSet, Invocation invocation, ParameterizedMethodBinding parameterizedMethodBinding, TypeBinding typeBinding) {
        Invocation invocation2;
        MethodBinding binding;
        ParameterizedMethodBinding parameterizedMethodBinding2;
        boolean isVarargs;
        ParameterizedMethodBinding parameterizedMethodBinding3 = parameterizedMethodBinding;
        if (typeBinding != null) {
            invocation.registerResult(typeBinding, parameterizedMethodBinding3);
        }
        Expression[] arguments = invocation.arguments();
        int length = arguments == null ? 0 : arguments.length;
        for (int i10 = 0; i10 < length; i10++) {
            Expression[] polyExpressions = arguments[i10].getPolyExpressions();
            int length2 = polyExpressions.length;
            int i11 = 0;
            while (i11 < length2) {
                CompletionOnFieldName completionOnFieldName = polyExpressions[i11];
                if ((completionOnFieldName instanceof Invocation) && (binding = (invocation2 = (Invocation) completionOnFieldName).binding()) != null && binding.isValidBinding()) {
                    if (binding instanceof ParameterizedGenericMethodBinding) {
                        MethodBinding shallowOriginal = binding.shallowOriginal();
                        TypeBinding[] solutions = getSolutions(shallowOriginal.typeVariables(), invocation2, boundSet);
                        if (solutions != null) {
                            parameterizedMethodBinding2 = this.environment.createParameterizedGenericMethod(shallowOriginal, solutions);
                            if (parameterizedMethodBinding2 != null && parameterizedMethodBinding2.isValidBinding()) {
                                isVarargs = parameterizedMethodBinding.isVarargs();
                                TypeBinding[] typeBindingArr = parameterizedMethodBinding3.parameters;
                                if (isVarargs && typeBindingArr.length == arguments.length && i10 == length - 1 && parameterizedMethodBinding2.returnType.capture(this.scope, completionOnFieldName.sourceStart, completionOnFieldName.sourceEnd).isCompatibleWith(typeBindingArr[typeBindingArr.length - 1], this.scope)) {
                                    isVarargs = false;
                                }
                                forwardResults(boundSet, invocation2, parameterizedMethodBinding2, getParameter(typeBindingArr, i10, isVarargs));
                            }
                        }
                    } else if (binding.isConstructor() && (binding instanceof ParameterizedMethodBinding)) {
                        MethodBinding shallowOriginal2 = binding.shallowOriginal();
                        ReferenceBinding referenceBinding = shallowOriginal2.declaringClass;
                        TypeBinding[] solutions2 = getSolutions(referenceBinding.typeVariables(), invocation2, boundSet);
                        if (solutions2 != null) {
                            MethodBinding[] methods = this.environment.createParameterizedType(referenceBinding, solutions2, binding.declaringClass.enclosingType()).methods();
                            int length3 = methods.length;
                            int i12 = 0;
                            while (true) {
                                if (i12 >= length3) {
                                    parameterizedMethodBinding2 = null;
                                    break;
                                }
                                MethodBinding methodBinding = methods[i12];
                                MethodBinding[] methodBindingArr = methods;
                                if (methodBinding.original() == shallowOriginal2) {
                                    parameterizedMethodBinding2 = (ParameterizedMethodBinding) methodBinding;
                                    break;
                                } else {
                                    i12++;
                                    parameterizedMethodBinding3 = parameterizedMethodBinding;
                                    methods = methodBindingArr;
                                }
                            }
                            if (parameterizedMethodBinding2 != null) {
                                isVarargs = parameterizedMethodBinding.isVarargs();
                                TypeBinding[] typeBindingArr2 = parameterizedMethodBinding3.parameters;
                                if (isVarargs) {
                                    isVarargs = false;
                                }
                                forwardResults(boundSet, invocation2, parameterizedMethodBinding2, getParameter(typeBindingArr2, i10, isVarargs));
                            }
                        }
                    }
                }
                i11++;
                parameterizedMethodBinding3 = parameterizedMethodBinding;
            }
        }
    }

    public TypeBinding[] getFunctionInterfaceArgumentSolutions(TypeBinding[] typeBindingArr) {
        TypeBinding[] typeBindingArr2 = new TypeBinding[typeBindingArr.length];
        int i10 = 0;
        while (true) {
            InferenceVariable[] inferenceVariableArr = this.inferenceVariables;
            if (i10 >= inferenceVariableArr.length) {
                return typeBindingArr2;
            }
            TypeBinding instantiation = this.currentBounds.getInstantiation(inferenceVariableArr[i10], this.environment);
            if (instantiation != null) {
                typeBindingArr2[i10] = instantiation;
            } else {
                typeBindingArr2[i10] = typeBindingArr[i10];
            }
            i10++;
        }
    }

    public int getInferenceKind(MethodBinding methodBinding, TypeBinding[] typeBindingArr) {
        int parameterCompatibilityLevel = this.scope.parameterCompatibilityLevel(methodBinding, typeBindingArr);
        if (parameterCompatibilityLevel != 1) {
            return parameterCompatibilityLevel != 2 ? 1 : 3;
        }
        return 2;
    }

    public MethodBinding getReturnProblemMethodIfNeeded(TypeBinding typeBinding, MethodBinding methodBinding) {
        if (typeBinding != null && !(methodBinding.original() instanceof SyntheticFactoryMethodBinding)) {
            TypeBinding typeBinding2 = methodBinding.returnType;
            if ((typeBinding2 instanceof ReferenceBinding) || (typeBinding2 instanceof ArrayBinding)) {
                if (!typeBinding.isProperType(true)) {
                    return null;
                }
                if (this.environment.convertToRawType(methodBinding.returnType.erasure(), false).isCompatibleWith(typeBinding)) {
                    return methodBinding;
                }
            }
        }
        ProblemMethodBinding problemMethodBinding = new ProblemMethodBinding(methodBinding, methodBinding.selector, methodBinding.parameters, 23);
        if (typeBinding == null) {
            typeBinding = methodBinding.returnType;
        }
        problemMethodBinding.returnType = typeBinding;
        problemMethodBinding.inferenceContext = this;
        return problemMethodBinding;
    }

    public TypeBinding[] getSolutions(TypeVariableBinding[] typeVariableBindingArr, InvocationSite invocationSite, BoundSet boundSet) {
        TypeBinding equivalentOuterVariable;
        TypeBinding[] typeBindingArr = new TypeBinding[typeVariableBindingArr.length];
        InferenceContext18 inferenceContext18 = this.outerContext;
        InferenceVariable[] inferenceVariableArr = (inferenceContext18 == null || inferenceContext18.stepCompleted >= 2) ? null : inferenceContext18.inferenceVariables;
        for (int i10 = 0; i10 < typeVariableBindingArr.length; i10++) {
            int i11 = 0;
            while (true) {
                InferenceVariable[] inferenceVariableArr2 = this.inferenceVariables;
                if (i11 >= inferenceVariableArr2.length) {
                    break;
                }
                InferenceVariable inferenceVariable = inferenceVariableArr2[i11];
                if (!isSameSite(inferenceVariable.site, invocationSite) || !TypeBinding.equalsEquals(inferenceVariable.typeParameter, typeVariableBindingArr[i10])) {
                    i11++;
                } else if (inferenceVariableArr == null || (equivalentOuterVariable = boundSet.getEquivalentOuterVariable(inferenceVariable, inferenceVariableArr)) == null) {
                    typeBindingArr[i10] = boundSet.getInstantiation(inferenceVariable, this.environment);
                } else {
                    typeBindingArr[i10] = equivalentOuterVariable;
                }
            }
            if (typeBindingArr[i10] == null) {
                return null;
            }
        }
        return typeBindingArr;
    }

    public ReferenceBinding inferFunctionalInterfaceParameterization(LambdaExpression lambdaExpression, BlockScope blockScope, ParameterizedTypeBinding parameterizedTypeBinding) {
        TypeBinding[] createBoundsForFunctionalInterfaceParameterizationInference = createBoundsForFunctionalInterfaceParameterizationInference(parameterizedTypeBinding);
        if (createBoundsForFunctionalInterfaceParameterizationInference == null || createBoundsForFunctionalInterfaceParameterizationInference.length != lambdaExpression.arguments().length || !reduceWithEqualityConstraints(lambdaExpression.argumentTypes(), createBoundsForFunctionalInterfaceParameterizationInference)) {
            return parameterizedTypeBinding;
        }
        ReferenceBinding genericType = parameterizedTypeBinding.genericType();
        TypeBinding[] functionInterfaceArgumentSolutions = getFunctionInterfaceArgumentSolutions(parameterizedTypeBinding.arguments);
        ParameterizedTypeBinding createParameterizedType = blockScope.environment().createParameterizedType(genericType, functionInterfaceArgumentSolutions, parameterizedTypeBinding.enclosingType());
        TypeVariableBinding[] typeVariables = createParameterizedType.genericType().typeVariables();
        ParameterizedTypeBinding capture = createParameterizedType.capture((Scope) blockScope, lambdaExpression.sourceStart, lambdaExpression.sourceEnd);
        for (int i10 = 0; i10 < typeVariables.length; i10++) {
            if (typeVariables[i10].boundCheck(capture, functionInterfaceArgumentSolutions[i10], blockScope, lambdaExpression) == TypeConstants.BoundCheckStatus.MISMATCH) {
                return null;
            }
        }
        return createParameterizedType;
    }

    public void inferInvocationApplicability(MethodBinding methodBinding, TypeBinding[] typeBindingArr, boolean z10) {
        ConstraintExpressionFormula.inferInvocationApplicability(this, methodBinding, typeBindingArr, z10, this.inferenceKind);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:22:0x0083 A[DONT_GENERATE] */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0086 A[Catch: all -> 0x0045, TRY_ENTER, TryCatch #0 {all -> 0x0045, blocks: (B:76:0x0022, B:78:0x0026, B:80:0x002a, B:82:0x0033, B:84:0x003c, B:13:0x0053, B:15:0x0060, B:20:0x006b, B:24:0x0086, B:25:0x008e, B:62:0x0094, B:64:0x009a, B:67:0x00a1, B:69:0x00a6, B:72:0x00ab, B:27:0x00b2, B:29:0x00c0, B:30:0x00c7, B:31:0x00d3, B:35:0x00d9, B:37:0x00f0, B:39:0x00f6, B:40:0x00fc, B:41:0x0100, B:43:0x0107, B:45:0x010f, B:50:0x0118, B:33:0x0123, B:12:0x0048), top: B:75:0x0022 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public BoundSet inferInvocationType(TypeBinding typeBinding, InvocationSite invocationSite, MethodBinding methodBinding) throws InferenceFailureException {
        Set<ConstraintFormula> hashSet;
        TypeBinding typeBinding2;
        if (typeBinding == null && (typeBinding2 = methodBinding.returnType) != null) {
            substitute(typeBinding2);
        }
        this.currentBounds = this.f102480b2.copy();
        int i10 = (typeBinding == null || typeBinding.isProperType(true)) ? 3 : 2;
        if (typeBinding != null) {
            try {
                if (typeBinding != TypeBinding.VOID && (invocationSite instanceof Expression) && ((Expression) invocationSite).isTrulyExpression() && ((Expression) invocationSite).isPolyExpression(methodBinding)) {
                    if (!computeB3(invocationSite, typeBinding, methodBinding)) {
                        return null;
                    }
                    if (addJDK_8153748ConstraintsFromInvocation(this.invocationArguments, methodBinding, new InferenceSubstitution(this)) == null && !this.currentBounds.incorporate(this)) {
                        return null;
                    }
                    pushBoundsToOuter();
                    this.directlyAcceptingInnerBounds = true;
                    hashSet = new HashSet<>();
                    if (addConstraintsToC(this.invocationArguments, hashSet, methodBinding, this.inferenceKind, invocationSite)) {
                        return null;
                    }
                    List<Set<InferenceVariable>> computeConnectedComponents = this.currentBounds.computeConnectedComponents(this.inferenceVariables);
                    while (!hashSet.isEmpty()) {
                        Set<ConstraintFormula> findBottomSet = findBottomSet(hashSet, allOutputVariables(hashSet), computeConnectedComponents);
                        if (findBottomSet.isEmpty()) {
                            findBottomSet.add(pickFromCycle(hashSet));
                        }
                        hashSet.removeAll(findBottomSet);
                        HashSet hashSet2 = new HashSet();
                        Iterator<ConstraintFormula> it = findBottomSet.iterator();
                        while (it.hasNext()) {
                            hashSet2.addAll(it.next().inputVariables(this));
                        }
                        InferenceVariable[] inferenceVariableArr = (InferenceVariable[]) hashSet2.toArray(new InferenceVariable[hashSet2.size()]);
                        if (!this.currentBounds.incorporate(this)) {
                            return null;
                        }
                        BoundSet resolve = resolve(inferenceVariableArr);
                        if (resolve == null) {
                            resolve = resolve(this.inferenceVariables);
                        }
                        for (ConstraintFormula constraintFormula : findBottomSet) {
                            if (resolve != null && !constraintFormula.applySubstitution(resolve, inferenceVariableArr)) {
                                return null;
                            }
                            if (!this.currentBounds.reduceOneConstraint(this, constraintFormula)) {
                                return null;
                            }
                        }
                    }
                    BoundSet solve = solve();
                    if (solve != null && isResolved(solve)) {
                        reportUncheckedConversions(solve);
                        if (i10 == 3) {
                            this.currentBounds = solve;
                        }
                        return solve;
                    }
                    this.currentBounds = this.f102480b2;
                    return null;
                }
            } finally {
                this.stepCompleted = i10;
            }
        }
        mergeInnerBounds();
        this.f102481b3 = this.currentBounds.copy();
        if (addJDK_8153748ConstraintsFromInvocation(this.invocationArguments, methodBinding, new InferenceSubstitution(this)) == null) {
        }
        pushBoundsToOuter();
        this.directlyAcceptingInnerBounds = true;
        hashSet = new HashSet<>();
        if (addConstraintsToC(this.invocationArguments, hashSet, methodBinding, this.inferenceKind, invocationSite)) {
        }
    }

    public void integrateInnerInferenceB2(InferenceContext18 inferenceContext18) {
        this.currentBounds.addBounds(inferenceContext18.f102480b2, this.environment);
        this.inferenceVariables = inferenceContext18.inferenceVariables;
        this.inferenceKind = inferenceContext18.inferenceKind;
        if (!isSameSite(inferenceContext18.currentInvocation, this.currentInvocation)) {
            inferenceContext18.outerContext = this;
        }
        this.usesUncheckedConversion = inferenceContext18.usesUncheckedConversion;
    }

    public boolean isMoreSpecificThan(MethodBinding methodBinding, MethodBinding methodBinding2, boolean z10, boolean z11) {
        if (z10 != z11) {
            return z11;
        }
        Expression[] expressionArr = this.invocationArguments;
        int length = expressionArr == null ? 0 : expressionArr.length;
        TypeVariableBinding[] typeVariables = methodBinding2.typeVariables();
        TypeBinding[] typeBindingArr = methodBinding.parameters;
        int length2 = methodBinding2.parameters.length;
        TypeBinding[] typeBindingArr2 = new TypeBinding[length2];
        createInitialBoundSet(typeVariables);
        for (int i10 = 0; i10 < length2; i10++) {
            typeBindingArr2[i10] = substitute(methodBinding2.parameters[i10]);
        }
        for (int i11 = 0; i11 < length; i11++) {
            try {
                TypeBinding parameter = getParameter(typeBindingArr, i11, z10);
                TypeBinding parameter2 = getParameter(typeBindingArr2, i11, z10);
                Boolean moreSpecificMain = moreSpecificMain(parameter, parameter2, this.invocationArguments[i11]);
                if (moreSpecificMain == Boolean.FALSE) {
                    return false;
                }
                if (moreSpecificMain == null && !lambda$3(ConstraintTypeFormula.create(parameter, parameter2, 2))) {
                    return false;
                }
            } catch (InferenceFailureException unused) {
                return false;
            }
        }
        if (length2 != length + 1 || lambda$3(ConstraintTypeFormula.create(getParameter(typeBindingArr, length, true), getParameter(typeBindingArr2, length, true), 2))) {
            return solve() != null;
        }
        return false;
    }

    public boolean isResolved(BoundSet boundSet) {
        if (this.inferenceVariables == null) {
            return true;
        }
        int i10 = 0;
        while (true) {
            InferenceVariable[] inferenceVariableArr = this.inferenceVariables;
            if (i10 >= inferenceVariableArr.length) {
                return true;
            }
            if (!boundSet.isInstantiated(inferenceVariableArr[i10])) {
                return false;
            }
            i10++;
        }
    }

    public boolean isVarArgs() {
        return this.inferenceKind == 3;
    }

    public void recordUncheckedConversion(ConstraintTypeFormula constraintTypeFormula) {
        if (this.constraintsWithUncheckedConversion == null) {
            this.constraintsWithUncheckedConversion = new ArrayList();
        }
        this.constraintsWithUncheckedConversion.add(constraintTypeFormula);
        this.usesUncheckedConversion = true;
    }

    public boolean lambda$3(ConstraintFormula constraintFormula) throws InferenceFailureException {
        return this.currentBounds.reduceOneConstraint(this, constraintFormula);
    }

    public boolean reduceWithEqualityConstraints(TypeBinding[] typeBindingArr, TypeBinding[] typeBindingArr2) {
        if (typeBindingArr == null) {
            return true;
        }
        for (int i10 = 0; i10 < typeBindingArr.length; i10++) {
            try {
                if (!lambda$3(ConstraintTypeFormula.create(typeBindingArr[i10], typeBindingArr2[i10], 4))) {
                    return false;
                }
            } catch (InferenceFailureException unused) {
                return false;
            }
        }
        return true;
    }

    public void reportUncheckedConversions(BoundSet boundSet) {
        List<ConstraintFormula> list = this.constraintsWithUncheckedConversion;
        if (list != null) {
            int size = list.size();
            Substitution resultSubstitution = getResultSubstitution(boundSet);
            for (int i10 = 0; i10 < size; i10++) {
                ConstraintTypeFormula constraintTypeFormula = (ConstraintTypeFormula) this.constraintsWithUncheckedConversion.get(i10);
                TypeBinding typeBinding = constraintTypeFormula.right;
                TypeBinding typeBinding2 = constraintTypeFormula.left;
                if (!typeBinding.isProperType(true)) {
                    Scope.substitute(resultSubstitution, typeBinding);
                }
                if (!typeBinding2.isProperType(true)) {
                    Scope.substitute(resultSubstitution, typeBinding2);
                }
            }
        }
    }

    public void resumeSuspendedInference(SuspendedInferenceRecord suspendedInferenceRecord, InferenceContext18 inferenceContext18) {
        boolean collectInnerContext = collectInnerContext(inferenceContext18);
        InferenceVariable[] inferenceVariableArr = this.inferenceVariables;
        if (inferenceVariableArr == null) {
            this.inferenceVariables = suspendedInferenceRecord.inferenceVariables;
        } else if (collectInnerContext) {
            int length = inferenceVariableArr.length;
            int length2 = suspendedInferenceRecord.inferenceVariables.length;
            InferenceVariable[] inferenceVariableArr2 = new InferenceVariable[length + length2];
            this.inferenceVariables = inferenceVariableArr2;
            System.arraycopy(inferenceVariableArr, 0, inferenceVariableArr2, length2, length);
            System.arraycopy(suspendedInferenceRecord.inferenceVariables, 0, this.inferenceVariables, 0, length2);
        } else {
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            linkedHashSet.addAll(Arrays.asList(suspendedInferenceRecord.inferenceVariables));
            linkedHashSet.addAll(Arrays.asList(this.inferenceVariables));
            this.inferenceVariables = (InferenceVariable[]) linkedHashSet.toArray(new InferenceVariable[linkedHashSet.size()]);
        }
        this.currentInvocation = suspendedInferenceRecord.site;
        this.invocationArguments = suspendedInferenceRecord.invocationArguments;
        this.inferenceKind = suspendedInferenceRecord.inferenceKind;
        this.usesUncheckedConversion = suspendedInferenceRecord.usesUncheckedConversion;
    }

    public BoundSet solve(boolean z10) throws InferenceFailureException {
        ConstraintExpressionFormula[] constraintExpressionFormulaArr;
        if (!reduce() || !this.currentBounds.incorporate(this)) {
            return null;
        }
        if (z10) {
            this.f102480b2 = this.currentBounds.copy();
        }
        BoundSet resolve = resolve(this.inferenceVariables);
        if (z10 && resolve != null && (constraintExpressionFormulaArr = this.finalConstraints) != null) {
            for (ConstraintExpressionFormula constraintExpressionFormula : constraintExpressionFormulaArr) {
                if (!constraintExpressionFormula.left.isPolyExpression()) {
                    constraintExpressionFormula.applySubstitution(resolve, this.inferenceVariables);
                    if (!this.currentBounds.reduceOneConstraint(this, constraintExpressionFormula)) {
                        return null;
                    }
                }
            }
        }
        return resolve;
    }

    public TypeBinding substitute(TypeBinding typeBinding) {
        InferenceSubstitution inferenceSubstitution = new InferenceSubstitution(this);
        return inferenceSubstitution.substitute(inferenceSubstitution, typeBinding);
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer("Inference Context");
        int i10 = this.stepCompleted;
        if (i10 == 0) {
            stringBuffer.append(" (initial)");
        } else if (i10 == 1) {
            stringBuffer.append(" (applicability inferred)");
        } else if (i10 == 2) {
            stringBuffer.append(" (type inferred)");
        } else if (i10 == 3) {
            stringBuffer.append(" (type inferred final)");
        }
        int i11 = this.inferenceKind;
        if (i11 == 1) {
            stringBuffer.append(" (strict)");
        } else if (i11 == 2) {
            stringBuffer.append(" (loose)");
        } else if (i11 == 3) {
            stringBuffer.append(" (vararg)");
        }
        BoundSet boundSet = this.currentBounds;
        if (boundSet != null && isResolved(boundSet)) {
            stringBuffer.append(" (resolved)");
        }
        stringBuffer.append('\n');
        int i12 = 0;
        if (this.inferenceVariables != null) {
            stringBuffer.append("Inference Variables:\n");
            for (int i13 = 0; i13 < this.inferenceVariables.length; i13++) {
                stringBuffer.append('\t');
                stringBuffer.append(this.inferenceVariables[i13].sourceName);
                stringBuffer.append("\t:\t");
                BoundSet boundSet2 = this.currentBounds;
                if (boundSet2 == null || !boundSet2.isInstantiated(this.inferenceVariables[i13])) {
                    stringBuffer.append("NOT INSTANTIATED");
                } else {
                    stringBuffer.append(this.currentBounds.getInstantiation(this.inferenceVariables[i13], this.environment).readableName());
                }
                stringBuffer.append('\n');
            }
        }
        if (this.initialConstraints != null) {
            stringBuffer.append("Initial Constraints:\n");
            while (true) {
                ConstraintFormula[] constraintFormulaArr = this.initialConstraints;
                if (i12 >= constraintFormulaArr.length) {
                    break;
                }
                if (constraintFormulaArr[i12] != null) {
                    stringBuffer.append('\t');
                    stringBuffer.append(this.initialConstraints[i12].toString());
                    stringBuffer.append('\n');
                }
                i12++;
            }
        }
        BoundSet boundSet3 = this.currentBounds;
        if (boundSet3 != null) {
            stringBuffer.append(boundSet3.toString());
        }
        return stringBuffer.toString();
    }

    public boolean usesUncheckedConversion() {
        return this.constraintsWithUncheckedConversion != null;
    }

    public BoundSet solve() throws InferenceFailureException {
        return solve(false);
    }

    public BoundSet solve(InferenceVariable[] inferenceVariableArr) throws InferenceFailureException {
        if (reduce() && this.currentBounds.incorporate(this)) {
            return resolve(inferenceVariableArr);
        }
        return null;
    }

    public InferenceContext18(Scope scope) {
        this.scope = scope;
        this.environment = scope.environment();
        this.object = scope.getJavaLangObject();
    }
}
