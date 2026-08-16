package org.eclipse.jdt.internal.compiler.ast;

import com.tonyodev.fetch2.util.FetchDefaults;
import java.util.Collections;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedHashSet;
import java.util.Map;
import java.util.Set;
import org.eclipse.jdt.core.compiler.CategorizedProblem;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.core.compiler.IProblem;
import org.eclipse.jdt.internal.compiler.ASTVisitor;
import org.eclipse.jdt.internal.compiler.ClassFile;
import org.eclipse.jdt.internal.compiler.CompilationResult;
import org.eclipse.jdt.internal.compiler.IErrorHandlingPolicy;
import org.eclipse.jdt.internal.compiler.codegen.CodeStream;
import org.eclipse.jdt.internal.compiler.env.ICompilationUnit;
import org.eclipse.jdt.internal.compiler.flow.ExceptionHandlingFlowContext;
import org.eclipse.jdt.internal.compiler.flow.ExceptionInferenceFlowContext;
import org.eclipse.jdt.internal.compiler.flow.FlowContext;
import org.eclipse.jdt.internal.compiler.flow.FlowInfo;
import org.eclipse.jdt.internal.compiler.flow.UnconditionalFlowInfo;
import org.eclipse.jdt.internal.compiler.impl.CompilerOptions;
import org.eclipse.jdt.internal.compiler.impl.Constant;
import org.eclipse.jdt.internal.compiler.impl.ReferenceContext;
import org.eclipse.jdt.internal.compiler.lookup.AnnotationBinding;
import org.eclipse.jdt.internal.compiler.lookup.Binding;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.ClassScope;
import org.eclipse.jdt.internal.compiler.lookup.InferenceContext18;
import org.eclipse.jdt.internal.compiler.lookup.IntersectionTypeBinding18;
import org.eclipse.jdt.internal.compiler.lookup.LocalTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.LocalVariableBinding;
import org.eclipse.jdt.internal.compiler.lookup.LookupEnvironment;
import org.eclipse.jdt.internal.compiler.lookup.MethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.MethodScope;
import org.eclipse.jdt.internal.compiler.lookup.ParameterizedTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.PolyTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.ProblemMethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.Scope;
import org.eclipse.jdt.internal.compiler.lookup.SourceTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.Substitution;
import org.eclipse.jdt.internal.compiler.lookup.SyntheticArgumentBinding;
import org.eclipse.jdt.internal.compiler.lookup.SyntheticMethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.TagBits;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeConstants;
import org.eclipse.jdt.internal.compiler.lookup.WildcardBinding;
import org.eclipse.jdt.internal.compiler.parser.Parser;
import org.eclipse.jdt.internal.compiler.problem.AbortCompilation;
import org.eclipse.jdt.internal.compiler.problem.AbortCompilationUnit;
import org.eclipse.jdt.internal.compiler.problem.AbortMethod;
import org.eclipse.jdt.internal.compiler.problem.AbortType;
import org.eclipse.jdt.internal.compiler.problem.ProblemReporter;
import org.eclipse.jdt.internal.compiler.problem.ProblemSeverities;

public class LambdaExpression extends FunctionalExpression implements IPolyExpression, ReferenceContext, ProblemSeverities {
    private TypeBinding[] argumentTypes;
    public Argument[] arguments;
    public boolean argumentsTypeVar;
    public int arrowPosition;
    private boolean assistNode;
    public Statement body;
    private ReferenceBinding classType;
    private HashMap<TypeBinding, LambdaExpression> copiesPerTargetType;
    private boolean hasIgnoredMandatoryErrors;
    public boolean hasParentheses;
    public InferenceContext18 inferenceContext;
    private Map<Integer, LocalTypeBinding> localTypes;
    public LambdaExpression original;
    public SyntheticArgumentBinding[] outerLocalVariables;
    private int outerLocalVariablesSlotSize;
    private boolean requiresGenericSignature;
    protected Expression[] resultExpressions;
    boolean returnsValue;
    boolean returnsVoid;
    public MethodScope scope;
    public char[] text;
    private Set thrownExceptions;
    boolean valueCompatible;
    boolean voidCompatible;
    private static final SyntheticArgumentBinding[] NO_SYNTHETIC_ARGUMENTS = new SyntheticArgumentBinding[0];
    private static final Block NO_BODY = new Block(0);

    public enum CompatibilityResult {
        COMPATIBLE,
        INCOMPATIBLE,
        REPORTED;

        public static CompatibilityResult[] valuesCustom() {
            CompatibilityResult[] valuesCustom = values();
            int length = valuesCustom.length;
            CompatibilityResult[] compatibilityResultArr = new CompatibilityResult[length];
            System.arraycopy(valuesCustom, 0, compatibilityResultArr, 0, length);
            return compatibilityResultArr;
        }
    }

    public class CopyFailureException extends RuntimeException {
        private static final long serialVersionUID = 1;

        public CopyFailureException() {
        }
    }

    public class LocalTypeSubstitutor extends Scope.Substitutor {
        Map<Integer, LocalTypeBinding> localTypes2;

        public LocalTypeSubstitutor(Map<Integer, LocalTypeBinding> map) {
            this.localTypes2 = map;
        }

        @Override
        public TypeBinding substitute(Substitution substitution, TypeBinding typeBinding) {
            LocalTypeBinding localTypeBinding;
            if (!typeBinding.isLocalType()) {
                return super.substitute(substitution, typeBinding);
            }
            LocalTypeBinding localTypeBinding2 = (LocalTypeBinding) typeBinding;
            MethodScope enclosingLambdaScope = localTypeBinding2.scope.enclosingLambdaScope();
            if (enclosingLambdaScope == null || ((LambdaExpression) enclosingLambdaScope.referenceContext).sourceStart != LambdaExpression.this.sourceStart || (localTypeBinding = this.localTypes2.get(Integer.valueOf(localTypeBinding2.sourceStart))) == null || localTypeBinding == localTypeBinding2) {
                return typeBinding;
            }
            localTypeBinding2.transferConstantPoolNameTo(localTypeBinding);
            return localTypeBinding;
        }
    }

    public LambdaExpression(CompilationResult compilationResult, boolean z10, boolean z11) {
        super(compilationResult);
        this.voidCompatible = true;
        this.valueCompatible = false;
        this.original = this;
        this.outerLocalVariables = NO_SYNTHETIC_ARGUMENTS;
        this.outerLocalVariablesSlotSize = 0;
        this.hasIgnoredMandatoryErrors = false;
        this.resultExpressions = Expression.NO_EXPRESSIONS;
        this.argumentsTypeVar = false;
        this.assistNode = z10;
        this.requiresGenericSignature = z11;
        setArguments(ASTNode.NO_ARGUMENTS);
        setBody(NO_BODY);
    }

    private void analyzeExceptions() {
        CompilerOptions compilerOptions = this.scope.compilerOptions();
        boolean z10 = compilerOptions.analyseResourceLeaks;
        compilerOptions.analyseResourceLeaks = false;
        try {
            Statement statement = this.body;
            MethodScope methodScope = this.scope;
            ExceptionInferenceFlowContext exceptionInferenceFlowContext = new ExceptionInferenceFlowContext(null, this, Binding.NO_EXCEPTIONS, null, this.scope, FlowInfo.DEAD_END);
            statement.analyseCode(methodScope, exceptionInferenceFlowContext, UnconditionalFlowInfo.fakeInitializedFlowInfo(this.scope.outerMostMethodScope().analysisIndex, this.scope.referenceType().maxFieldCount));
            this.thrownExceptions = exceptionInferenceFlowContext.extendedExceptions == null ? Collections.emptySet() : new HashSet(exceptionInferenceFlowContext.extendedExceptions);
        } catch (Exception unused) {
        } catch (Throwable th2) {
            compilerOptions.analyseResourceLeaks = z10;
            throw th2;
        }
        compilerOptions.analyseResourceLeaks = z10;
    }

    private void analyzeShape() {
        Statement statement = this.body;
        if ((statement instanceof Expression) && ((Expression) statement).isTrulyExpression()) {
            this.voidCompatible = this.assistNode ? true : ((Expression) this.body).statementExpression();
            this.valueCompatible = true;
            return;
        }
        if (this.assistNode) {
            this.voidCompatible = true;
            this.valueCompatible = true;
        }
        this.body.traverse(new ASTVisitor() {
            @Override
            public boolean visit(LambdaExpression lambdaExpression, BlockScope blockScope) {
                return false;
            }

            @Override
            public boolean visit(TypeDeclaration typeDeclaration, BlockScope blockScope) {
                return false;
            }

            @Override
            public boolean visit(TypeDeclaration typeDeclaration, ClassScope classScope) {
                return false;
            }

            @Override
            public boolean visit(ReturnStatement returnStatement, BlockScope blockScope) {
                if (returnStatement.expression != null) {
                    LambdaExpression lambdaExpression = LambdaExpression.this;
                    lambdaExpression.valueCompatible = true;
                    lambdaExpression.voidCompatible = false;
                    lambdaExpression.returnsValue = true;
                } else {
                    LambdaExpression lambdaExpression2 = LambdaExpression.this;
                    lambdaExpression2.voidCompatible = true;
                    lambdaExpression2.valueCompatible = false;
                    lambdaExpression2.returnsVoid = true;
                }
                return false;
            }
        }, null);
        if (this.returnsValue || this.returnsVoid) {
            return;
        }
        this.valueCompatible = this.body.doesNotCompleteNormally();
    }

    private LambdaExpression cachedResolvedCopy(TypeBinding typeBinding, boolean z10, boolean z11, InferenceContext18 inferenceContext18) {
        MethodBinding singleAbstractMethod;
        LambdaExpression lambdaExpression;
        ReferenceBinding findGroundTargetType = findGroundTargetType(this.enclosingScope, typeBinding, typeBinding, argumentsTypeElided());
        if (findGroundTargetType == null || (singleAbstractMethod = findGroundTargetType.getSingleAbstractMethod(this.enclosingScope, true)) == null || !singleAbstractMethod.isValidBinding() || singleAbstractMethod.parameters.length != this.arguments.length) {
            return null;
        }
        HashMap<TypeBinding, LambdaExpression> hashMap = this.copiesPerTargetType;
        if (hashMap != null) {
            lambdaExpression = hashMap.get(findGroundTargetType);
            if (lambdaExpression == null && z10 && this.copiesPerTargetType.values().size() > 0) {
                lambdaExpression = this.copiesPerTargetType.values().iterator().next();
            }
        } else {
            lambdaExpression = null;
        }
        IErrorHandlingPolicy switchErrorHandlingPolicy = this.enclosingScope.problemReporter().switchErrorHandlingPolicy(FunctionalExpression.silentErrorHandlingPolicy);
        if (lambdaExpression == null) {
            try {
                lambdaExpression = copy();
                if (lambdaExpression == null) {
                    throw new CopyFailureException();
                }
                lambdaExpression.setExpressionContext(this.expressionContext);
                lambdaExpression.setExpectedType(findGroundTargetType);
                lambdaExpression.inferenceContext = inferenceContext18;
                TypeBinding resolveType = lambdaExpression.resolveType(this.enclosingScope, true);
                if (resolveType != null && resolveType.isValidBinding()) {
                    if (this.copiesPerTargetType == null) {
                        this.copiesPerTargetType = new HashMap<>();
                    }
                    this.copiesPerTargetType.put(findGroundTargetType, lambdaExpression);
                }
                return null;
            } finally {
                this.enclosingScope.problemReporter().switchErrorHandlingPolicy(switchErrorHandlingPolicy);
            }
        }
        if (z11 && lambdaExpression.thrownExceptions == null && !lambdaExpression.hasIgnoredMandatoryErrors && !enclosingScopesHaveErrors()) {
            lambdaExpression.analyzeExceptions();
        }
        this.enclosingScope.problemReporter().switchErrorHandlingPolicy(switchErrorHandlingPolicy);
        return lambdaExpression;
    }

    private boolean enclosingScopesHaveErrors() {
        for (Scope scope = this.enclosingScope; scope != null; scope = scope.parent) {
            ReferenceContext referenceContext = scope.referenceContext();
            if (referenceContext != null && referenceContext.hasErrors()) {
                return true;
            }
        }
        return false;
    }

    private ReferenceBinding findGroundTargetType(BlockScope blockScope, TypeBinding typeBinding, TypeBinding typeBinding2, boolean z10) {
        if (typeBinding2 instanceof IntersectionTypeBinding18) {
            typeBinding2 = ((IntersectionTypeBinding18) typeBinding2).getSAMType(blockScope);
        }
        if (!(typeBinding2 instanceof ReferenceBinding) || !typeBinding2.isValidBinding()) {
            return null;
        }
        ParameterizedTypeBinding parameterizedWithWildcard = InferenceContext18.parameterizedWithWildcard(typeBinding2);
        if (parameterizedWithWildcard == null) {
            if (typeBinding instanceof ReferenceBinding) {
                return (ReferenceBinding) typeBinding;
            }
            return null;
        }
        if (z10) {
            return findGroundTargetTypeForElidedLambda(blockScope, parameterizedWithWildcard);
        }
        InferenceContext18 inferenceContext18 = new InferenceContext18(blockScope);
        try {
            return inferenceContext18.inferFunctionalInterfaceParameterization(this, blockScope, parameterizedWithWildcard);
        } finally {
            inferenceContext18.cleanUp();
        }
    }

    private boolean isOnlyWildcardMismatch(TypeBinding typeBinding, TypeBinding typeBinding2) {
        if (!typeBinding.isParameterizedType() || !typeBinding2.isParameterizedType()) {
            return false;
        }
        TypeBinding[] typeArguments = ((ParameterizedTypeBinding) typeBinding).typeArguments();
        TypeBinding[] typeArguments2 = ((ParameterizedTypeBinding) typeBinding2).typeArguments();
        if (typeArguments2.length != typeArguments.length) {
            return false;
        }
        boolean z10 = false;
        for (int i10 = 0; i10 < typeArguments2.length; i10++) {
            if (TypeBinding.notEquals(typeArguments[i10], typeArguments2[i10])) {
                if (!typeArguments[i10].isWildcard() || !typeArguments2[i10].isUnboundWildcard()) {
                    return false;
                }
                WildcardBinding wildcardBinding = (WildcardBinding) typeArguments[i10];
                TypeBinding allBounds = wildcardBinding.allBounds();
                if (allBounds != null && wildcardBinding.boundKind == 1 && allBounds.f102482id == 1) {
                    z10 = true;
                }
            }
        }
        return z10;
    }

    private void mergeParameterNullAnnotations(BlockScope blockScope) {
        LookupEnvironment environment = blockScope.environment();
        TypeBinding[] typeBindingArr = this.binding.parameters;
        TypeBinding[] typeBindingArr2 = this.descriptor.parameters;
        int min = Math.min(typeBindingArr.length, typeBindingArr2.length);
        for (int i10 = 0; i10 < min; i10++) {
            TypeBinding typeBinding = typeBindingArr[i10];
            long j10 = typeBinding.tagBits & TagBits.AnnotationNullMASK;
            long j11 = TagBits.AnnotationNullMASK & typeBindingArr2[i10].tagBits;
            if (j10 == 0) {
                if (j11 != 0 && !typeBinding.isBaseType()) {
                    for (AnnotationBinding annotationBinding : typeBindingArr2[i10].getTypeAnnotations()) {
                        if (annotationBinding != null && annotationBinding.getAnnotationType().hasNullBit(96)) {
                            typeBindingArr[i10] = environment.createAnnotatedType(typeBindingArr[i10], new AnnotationBinding[]{annotationBinding});
                        }
                    }
                }
            } else if (j10 != j11 && j10 == 72057594037927936L) {
                blockScope.problemReporter().illegalRedefinitionToNonNullParameter(this.arguments[i10], this.descriptor.declaringClass, j11 == 36028797018963968L ? environment.getNullableAnnotationName() : null);
            }
        }
    }

    private void updateLocalTypes() {
        Map<Integer, LocalTypeBinding> map;
        if (this.descriptor == null || (map = this.localTypes) == null) {
            return;
        }
        LocalTypeSubstitutor localTypeSubstitutor = new LocalTypeSubstitutor(map);
        Substitution.NullSubstitution nullSubstitution = new Substitution.NullSubstitution(this.scope.environment());
        updateLocalTypesInMethod(this.binding, localTypeSubstitutor, nullSubstitution);
        updateLocalTypesInMethod(this.descriptor, localTypeSubstitutor, nullSubstitution);
        this.resolvedType = localTypeSubstitutor.substitute(nullSubstitution, this.resolvedType);
        this.expectedType = localTypeSubstitutor.substitute(nullSubstitution, this.expectedType);
    }

    @Override
    public void abort(int i10, CategorizedProblem categorizedProblem) {
        if (i10 == 2) {
            throw new AbortCompilation(this.compilationResult, categorizedProblem);
        }
        if (i10 == 4) {
            throw new AbortCompilationUnit(this.compilationResult, categorizedProblem);
        }
        if (i10 == 8) {
            throw new AbortType(this.compilationResult, categorizedProblem);
        }
        throw new AbortMethod(this.compilationResult, categorizedProblem);
    }

    public void addLocalType(LocalTypeBinding localTypeBinding) {
        if (this.localTypes == null) {
            this.localTypes = new HashMap();
        }
        this.localTypes.put(Integer.valueOf(localTypeBinding.sourceStart), localTypeBinding);
    }

    public void addSyntheticArgument(LocalVariableBinding localVariableBinding) {
        if (this.original != this || this.binding == null) {
            return;
        }
        int length = this.outerLocalVariables.length;
        int i10 = 0;
        for (int i11 = 0; i11 < length; i11++) {
            if (this.outerLocalVariables[i11].actualOuterLocalVariable == localVariableBinding) {
                return;
            }
        }
        SyntheticArgumentBinding[] syntheticArgumentBindingArr = this.outerLocalVariables;
        SyntheticArgumentBinding[] syntheticArgumentBindingArr2 = new SyntheticArgumentBinding[length + 1];
        this.outerLocalVariables = syntheticArgumentBindingArr2;
        System.arraycopy(syntheticArgumentBindingArr, 0, syntheticArgumentBindingArr2, 0, length);
        SyntheticArgumentBinding[] syntheticArgumentBindingArr3 = this.outerLocalVariables;
        SyntheticArgumentBinding syntheticArgumentBinding = new SyntheticArgumentBinding(localVariableBinding);
        syntheticArgumentBindingArr3[length] = syntheticArgumentBinding;
        syntheticArgumentBinding.resolvedPosition = this.outerLocalVariablesSlotSize;
        syntheticArgumentBinding.declaringScope = this.scope;
        int length2 = this.binding.parameters.length;
        TypeBinding[] typeBindingArr = new TypeBinding[length2 + 1];
        typeBindingArr[length] = localVariableBinding.type;
        int i12 = 0;
        while (i10 < length2) {
            if (i10 == length) {
                i12++;
            }
            typeBindingArr[i12] = this.binding.parameters[i10];
            i10++;
            i12++;
        }
        this.binding.parameters = typeBindingArr;
        int i13 = syntheticArgumentBinding.type.f102482id;
        if (i13 == 7 || i13 == 8) {
            this.outerLocalVariablesSlotSize += 2;
        } else {
            this.outerLocalVariablesSlotSize++;
        }
    }

    @Override
    public FlowInfo analyseCode(BlockScope blockScope, FlowContext flowContext, FlowInfo flowInfo) {
        if (this.ignoreFurtherInvestigation) {
            return flowInfo;
        }
        FlowInfo copy = flowInfo.copy();
        ExceptionHandlingFlowContext exceptionHandlingFlowContext = new ExceptionHandlingFlowContext(flowContext, this, this.binding.thrownExceptions, flowContext.getInitializationContext(), this.scope, FlowInfo.DEAD_END);
        AbstractMethodDeclaration.analyseArguments(blockScope.environment(), copy, this.arguments, argumentsTypeElided() ? this.descriptor : this.binding);
        Argument[] argumentArr = this.arguments;
        if (argumentArr != null) {
            int length = argumentArr.length;
            for (int i10 = 0; i10 < length; i10++) {
                this.bits |= this.arguments[i10].bits & 1048576;
            }
        }
        FlowInfo analyseCode = this.body.analyseCode(this.scope, exceptionHandlingFlowContext, copy);
        if (this.body instanceof Block) {
            TypeBinding expectedResultType = expectedResultType();
            if (expectedResultType == TypeBinding.VOID) {
                if ((analyseCode.tagBits & 1) == 0 || ((Block) this.body).statements == null) {
                    this.bits |= 64;
                }
            } else if (analyseCode != FlowInfo.DEAD_END) {
                this.scope.problemReporter().shouldReturn(expectedResultType, this);
            }
        } else if (blockScope.compilerOptions().isAnnotationBasedNullAnalysisEnabled && analyseCode.reachMode() == 0) {
            Expression expression = (Expression) this.body;
            checkAgainstNullAnnotation(flowContext, expression, flowInfo, expression.nullStatus(analyseCode, flowContext));
        }
        return flowInfo;
    }

    public TypeBinding[] argumentTypes() {
        return this.argumentTypes;
    }

    public Argument[] arguments() {
        return this.arguments;
    }

    @Override
    public boolean argumentsTypeElided() {
        Argument[] argumentArr = this.arguments;
        return (argumentArr.length > 0 && argumentArr[0].hasElidedType()) || this.argumentsTypeVar;
    }

    public int arrowPosition() {
        return this.arrowPosition;
    }

    public Statement body() {
        return this.body;
    }

    public void checkAgainstNullAnnotation(FlowContext flowContext, Expression expression, FlowInfo flowInfo, int i10) {
        if (i10 != 4) {
            TypeBinding typeBinding = this.descriptor.returnType;
            if ((typeBinding.tagBits & 72057594037927936L) != 0) {
                flowContext.recordNullityMismatch(this.scope, expression, expression.resolvedType, typeBinding, flowInfo, i10, null);
            }
        }
    }

    @Override
    public CompilationResult compilationResult() {
        return this.compilationResult;
    }

    public LambdaExpression copy() {
        Parser parser = new Parser(this.enclosingScope.problemReporter(), false);
        ICompilationUnit compilationUnit = this.compilationResult.getCompilationUnit();
        LambdaExpression lambdaExpression = (LambdaExpression) parser.parseLambdaExpression(compilationUnit != null ? compilationUnit.getContents() : this.text, compilationUnit != null ? this.sourceStart : 0, (this.sourceEnd - this.sourceStart) + 1, this.enclosingScope.referenceCompilationUnit(), false);
        if (lambdaExpression != null) {
            lambdaExpression.original = this;
            lambdaExpression.assistNode = this.assistNode;
            lambdaExpression.enclosingScope = this.enclosingScope;
        }
        return lambdaExpression;
    }

    @Override
    public int diagnosticsSourceEnd() {
        return this.body instanceof Block ? this.arrowPosition : this.sourceEnd;
    }

    public TypeBinding expectedResultType() {
        MethodBinding methodBinding = this.descriptor;
        if (methodBinding == null || !methodBinding.isValidBinding()) {
            return null;
        }
        return this.descriptor.returnType;
    }

    public ReferenceBinding findGroundTargetTypeForElidedLambda(BlockScope blockScope, ParameterizedTypeBinding parameterizedTypeBinding) {
        TypeBinding[] nonWildcardParameterization = parameterizedTypeBinding.getNonWildcardParameterization(blockScope);
        if (nonWildcardParameterization == null) {
            return null;
        }
        return blockScope.environment().createParameterizedType(parameterizedTypeBinding.genericType(), nonWildcardParameterization, parameterizedTypeBinding.enclosingType());
    }

    @Override
    public void generateCode(BlockScope blockScope, CodeStream codeStream, boolean z10) {
        if (this.shouldCaptureInstance) {
            this.binding.modifiers &= -9;
        } else {
            this.binding.modifiers |= 8;
        }
        SourceTypeBinding enclosingSourceType = blockScope.enclosingSourceType();
        boolean z11 = this.binding instanceof SyntheticMethodBinding;
        this.binding = enclosingSourceType.addSyntheticMethod(this);
        int i10 = codeStream.position;
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append('(');
        if (this.shouldCaptureInstance) {
            codeStream.aload_0();
            stringBuffer.append(enclosingSourceType.signature());
        }
        SyntheticArgumentBinding[] syntheticArgumentBindingArr = this.outerLocalVariables;
        int length = syntheticArgumentBindingArr == null ? 0 : syntheticArgumentBindingArr.length;
        for (int i11 = 0; i11 < length; i11++) {
            SyntheticArgumentBinding syntheticArgumentBinding = this.outerLocalVariables[i11];
            if (this.shouldCaptureInstance && !z11) {
                syntheticArgumentBinding.resolvedPosition++;
            }
            stringBuffer.append(syntheticArgumentBinding.type.signature());
            LocalVariableBinding localVariableBinding = syntheticArgumentBinding.actualOuterLocalVariable;
            codeStream.generateOuterAccess(blockScope.getEmulationPath(localVariableBinding), this, localVariableBinding, blockScope);
        }
        stringBuffer.append(')');
        TypeBinding typeBinding = this.expectedType;
        if (typeBinding instanceof IntersectionTypeBinding18) {
            stringBuffer.append(((IntersectionTypeBinding18) typeBinding).getSAMType(blockScope).signature());
        } else {
            stringBuffer.append(typeBinding.signature());
        }
        codeStream.invokeDynamic(codeStream.classFile.recordBootstrapMethod(this), (this.shouldCaptureInstance ? 1 : 0) + this.outerLocalVariablesSlotSize, 1, this.descriptor.selector, stringBuffer.toString().toCharArray());
        if (!z10) {
            codeStream.pop();
        }
        codeStream.recordPositionsFrom(i10, this.sourceStart);
    }

    @Override
    public CompilationUnitDeclaration getCompilationUnitDeclaration() {
        BlockScope blockScope = this.enclosingScope;
        if (blockScope == null) {
            return null;
        }
        return blockScope.compilationUnitScope().referenceContext;
    }

    public TypeBinding[] getMarkerInterfaces() {
        if (!(this.expectedType instanceof IntersectionTypeBinding18)) {
            return null;
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        IntersectionTypeBinding18 intersectionTypeBinding18 = (IntersectionTypeBinding18) this.expectedType;
        ReferenceBinding[] referenceBindingArr = intersectionTypeBinding18.intersectingTypes;
        TypeBinding sAMType = intersectionTypeBinding18.getSAMType(this.enclosingScope);
        for (ReferenceBinding referenceBinding : referenceBindingArr) {
            if (referenceBinding.isInterface() && !TypeBinding.equalsEquals(sAMType, referenceBinding) && referenceBinding.f102482id != 37) {
                linkedHashSet.add(referenceBinding);
            }
        }
        if (linkedHashSet.size() > 0) {
            return (TypeBinding[]) linkedHashSet.toArray(new TypeBinding[linkedHashSet.size()]);
        }
        return null;
    }

    @Override
    public MethodBinding getMethodBinding() {
        TypeBinding[] typeBindingArr;
        if (this.actualMethodBinding == null) {
            MethodBinding methodBinding = this.binding;
            if (methodBinding != null) {
                if (methodBinding instanceof SyntheticMethodBinding) {
                    SyntheticArgumentBinding[] syntheticArgumentBindingArr = this.outerLocalVariables;
                    if (syntheticArgumentBindingArr.length > 0) {
                        TypeBinding[] typeBindingArr2 = methodBinding.parameters;
                        int length = typeBindingArr2.length - syntheticArgumentBindingArr.length;
                        typeBindingArr = new TypeBinding[length];
                        System.arraycopy(typeBindingArr2, syntheticArgumentBindingArr.length, typeBindingArr, 0, length);
                        TypeBinding[] typeBindingArr3 = typeBindingArr;
                        MethodBinding methodBinding2 = this.binding;
                        MethodBinding methodBinding3 = new MethodBinding(methodBinding2.modifiers, methodBinding2.selector, methodBinding2.returnType, typeBindingArr3, methodBinding2.thrownExceptions, methodBinding2.declaringClass);
                        this.actualMethodBinding = methodBinding3;
                        methodBinding3.tagBits = this.binding.tagBits;
                    }
                }
                typeBindingArr = methodBinding.parameters;
                TypeBinding[] typeBindingArr32 = typeBindingArr;
                MethodBinding methodBinding22 = this.binding;
                MethodBinding methodBinding32 = new MethodBinding(methodBinding22.modifiers, methodBinding22.selector, methodBinding22.returnType, typeBindingArr32, methodBinding22.thrownExceptions, methodBinding22.declaringClass);
                this.actualMethodBinding = methodBinding32;
                methodBinding32.tagBits = this.binding.tagBits;
            } else {
                this.actualMethodBinding = new ProblemMethodBinding(CharOperation.NO_CHAR, null, 17);
            }
        }
        return this.actualMethodBinding;
    }

    public MethodScope getScope() {
        return this.scope;
    }

    public SyntheticArgumentBinding getSyntheticArgument(LocalVariableBinding localVariableBinding) {
        SyntheticArgumentBinding[] syntheticArgumentBindingArr = this.outerLocalVariables;
        int length = syntheticArgumentBindingArr == null ? 0 : syntheticArgumentBindingArr.length;
        for (int i10 = 0; i10 < length; i10++) {
            SyntheticArgumentBinding syntheticArgumentBinding = this.outerLocalVariables[i10];
            if (syntheticArgumentBinding.actualOuterLocalVariable == localVariableBinding) {
                return syntheticArgumentBinding;
            }
        }
        return null;
    }

    public Set<TypeBinding> getThrownExceptions() {
        Set<TypeBinding> set = this.thrownExceptions;
        return set == null ? Collections.emptySet() : set;
    }

    public ReferenceBinding getTypeBinding() {
        if (this.classType != null || this.resolvedType == null) {
            return null;
        }
        ReferenceBinding referenceBinding = new ReferenceBinding() {
            @Override
            public char[] computeUniqueKey() {
                return LambdaExpression.this.descriptor.declaringClass.computeUniqueKey();
            }

            @Override
            public MethodBinding[] methods() {
                return new MethodBinding[]{LambdaExpression.this.getMethodBinding()};
            }

            @Override
            public char[] sourceName() {
                return TypeConstants.LAMBDA_TYPE;
            }

            @Override
            public ReferenceBinding[] superInterfaces() {
                return new ReferenceBinding[]{(ReferenceBinding) LambdaExpression.this.resolvedType};
            }

            @Override
            public ReferenceBinding superclass() {
                return LambdaExpression.this.scope.getJavaLangObject();
            }

            public String toString() {
                StringBuffer stringBuffer = new StringBuffer("()->{} implements ");
                stringBuffer.append(LambdaExpression.this.descriptor.declaringClass.sourceName());
                stringBuffer.append('.');
                stringBuffer.append(LambdaExpression.this.descriptor.toString());
                return stringBuffer.toString();
            }
        };
        this.classType = referenceBinding;
        return referenceBinding;
    }

    @Override
    public boolean hasErrors() {
        return this.ignoreFurtherInvestigation;
    }

    public CompatibilityResult internalIsCompatibleWith(TypeBinding typeBinding, Scope scope, boolean z10) {
        if (!super.isPertinentToApplicability(typeBinding, null)) {
            return CompatibilityResult.COMPATIBLE;
        }
        try {
            LambdaExpression cachedResolvedCopy = cachedResolvedCopy(typeBinding, argumentsTypeElided(), false, null);
            if (cachedResolvedCopy == null) {
                return CompatibilityResult.INCOMPATIBLE;
            }
            ReferenceBinding findGroundTargetType = findGroundTargetType(this.enclosingScope, typeBinding, typeBinding, argumentsTypeElided());
            MethodBinding singleAbstractMethod = findGroundTargetType.getSingleAbstractMethod(this.enclosingScope, true);
            if (singleAbstractMethod == null || singleAbstractMethod.problemId() == 17) {
                return CompatibilityResult.INCOMPATIBLE;
            }
            if (singleAbstractMethod.returnType.f102482id == 6) {
                if (!cachedResolvedCopy.voidCompatible) {
                    return CompatibilityResult.INCOMPATIBLE;
                }
            } else if (!cachedResolvedCopy.valueCompatible) {
                if (!z10) {
                    return CompatibilityResult.INCOMPATIBLE;
                }
                scope.problemReporter().missingValueFromLambda(this, singleAbstractMethod.returnType);
                return CompatibilityResult.REPORTED;
            }
            if (!z10 && isPertinentToApplicability(findGroundTargetType, null)) {
                if (!kosherDescriptor(this.enclosingScope, singleAbstractMethod, false)) {
                    return CompatibilityResult.INCOMPATIBLE;
                }
                Expression[] expressionArr = cachedResolvedCopy.resultExpressions;
                int length = expressionArr.length;
                for (int i10 = 0; i10 < length; i10++) {
                    if (singleAbstractMethod.returnType.isProperType(true) && this.enclosingScope.parameterCompatibilityLevel(expressionArr[i10].resolvedType, singleAbstractMethod.returnType) == -1) {
                        Expression expression = expressionArr[i10];
                        if (!expression.isConstantValueOfTypeAssignableToType(expression.resolvedType, singleAbstractMethod.returnType) && (singleAbstractMethod.returnType.f102482id != 6 || (this.body instanceof Block))) {
                            return CompatibilityResult.INCOMPATIBLE;
                        }
                    }
                }
                return CompatibilityResult.COMPATIBLE;
            }
            return CompatibilityResult.COMPATIBLE;
        } catch (CopyFailureException unused) {
            if (!this.assistNode && isPertinentToApplicability(typeBinding, null)) {
                return CompatibilityResult.INCOMPATIBLE;
            }
            return CompatibilityResult.COMPATIBLE;
        }
    }

    @Override
    public boolean isCompatibleWith(TypeBinding typeBinding, Scope scope) {
        return internalIsCompatibleWith(typeBinding, scope, false) == CompatibilityResult.COMPATIBLE;
    }

    @Override
    public boolean isPertinentToApplicability(final TypeBinding typeBinding, final MethodBinding methodBinding) {
        if (typeBinding == null) {
            return true;
        }
        if (argumentsTypeElided() || !super.isPertinentToApplicability(typeBinding, methodBinding)) {
            return false;
        }
        Statement statement = this.body;
        if (!(statement instanceof Expression) || !((Expression) statement).isTrulyExpression()) {
            Expression[] expressionArr = this.resultExpressions;
            if (expressionArr != Expression.NO_EXPRESSIONS) {
                for (Expression expression : expressionArr) {
                    if (!expression.isPertinentToApplicability(typeBinding, methodBinding)) {
                        return false;
                    }
                }
            } else {
                try {
                    this.body.traverse(new ASTVisitor() {
                        @Override
                        public boolean visit(LambdaExpression lambdaExpression, BlockScope blockScope) {
                            return false;
                        }

                        @Override
                        public boolean visit(TypeDeclaration typeDeclaration, BlockScope blockScope) {
                            return false;
                        }

                        @Override
                        public boolean visit(TypeDeclaration typeDeclaration, ClassScope classScope) {
                            return false;
                        }

                        @Override
                        public boolean visit(ReturnStatement returnStatement, BlockScope blockScope) {
                            Expression expression2 = returnStatement.expression;
                            if (expression2 == null || expression2.isPertinentToApplicability(typeBinding, methodBinding)) {
                                return false;
                            }
                            final LambdaExpression lambdaExpression = LambdaExpression.this;
                            throw new RuntimeException() {
                                private static final long serialVersionUID = 1;
                            };
                        }
                    }, this.scope);
                } catch (C1NotPertientToApplicability unused) {
                    return false;
                }
            }
        } else if (!((Expression) this.body).isPertinentToApplicability(typeBinding, methodBinding)) {
            return false;
        }
        return true;
    }

    @Override
    public boolean isPotentiallyCompatibleWith(TypeBinding typeBinding, Scope scope) {
        if (!super.isPertinentToApplicability(typeBinding, null)) {
            return true;
        }
        MethodBinding singleAbstractMethod = typeBinding.getSingleAbstractMethod(scope, true);
        if (singleAbstractMethod == null || !singleAbstractMethod.isValidBinding() || singleAbstractMethod.parameters.length != this.arguments.length) {
            return false;
        }
        analyzeShape();
        if (singleAbstractMethod.returnType.f102482id == 6) {
            if (!this.voidCompatible) {
                return false;
            }
        } else if (!this.valueCompatible) {
            return false;
        }
        return true;
    }

    public boolean isValueCompatible() {
        return this.valueCompatible;
    }

    public boolean isVoidCompatible() {
        return this.voidCompatible;
    }

    @Override
    public boolean kosherDescriptor(Scope scope, MethodBinding methodBinding, boolean z10) {
        if (methodBinding.typeVariables == Binding.NO_TYPE_VARIABLES) {
            return super.kosherDescriptor(scope, methodBinding, z10);
        }
        if (!z10) {
            return false;
        }
        scope.problemReporter().lambdaExpressionCannotImplementGenericMethod(this, methodBinding);
        return false;
    }

    public FunctionalExpression original() {
        return this.original;
    }

    @Override
    public StringBuffer printExpression(int i10, StringBuffer stringBuffer) {
        return printExpression(i10, stringBuffer, false);
    }

    public boolean reportShapeError(TypeBinding typeBinding, Scope scope) {
        return internalIsCompatibleWith(typeBinding, scope, true) == CompatibilityResult.REPORTED;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:118:0x02c1  */
    /* JADX WARN: Removed duplicated region for block: B:135:0x02fb  */
    /* JADX WARN: Removed duplicated region for block: B:142:0x0320  */
    /* JADX WARN: Removed duplicated region for block: B:152:0x0343  */
    /* JADX WARN: Removed duplicated region for block: B:158:0x02c3  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0381  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0389  */
    /* JADX WARN: Type inference failed for: r8v1 */
    /* JADX WARN: Type inference failed for: r8v2, types: [org.eclipse.jdt.internal.compiler.lookup.TypeBinding, org.eclipse.jdt.internal.compiler.lookup.TypeBinding[], org.eclipse.jdt.internal.compiler.ast.ASTNode] */
    /* JADX WARN: Type inference failed for: r8v23 */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public TypeBinding resolveType(BlockScope blockScope, boolean z10) {
        boolean z11;
        long j10;
        ReferenceBinding referenceBinding;
        TypeBinding typeBinding;
        TypeBinding typeBinding2;
        TypeBinding typeBinding3;
        boolean argumentsTypeElided = argumentsTypeElided();
        Argument[] argumentArr = this.arguments;
        int length = argumentArr == null ? 0 : argumentArr.length;
        Constant constant = this.constant;
        Constant constant2 = Constant.NotAConstant;
        boolean z12 = true;
        if (constant != constant2) {
            this.constant = constant2;
            this.enclosingScope = blockScope;
            if (this.original == this) {
                this.ordinal = recordFunctionalType(blockScope);
            }
            if (!argumentsTypeElided) {
                for (int i10 = 0; i10 < length; i10++) {
                    this.argumentTypes[i10] = this.arguments[i10].type.resolveType(blockScope, true);
                }
            }
            if (this.expectedType == null && this.expressionContext == ExpressionContext.INVOCATION_CONTEXT) {
                return new PolyTypeBinding(this);
            }
        }
        MethodScope methodScope = blockScope.methodScope();
        MethodScope methodScope2 = new MethodScope(blockScope, this, methodScope.isStatic, methodScope.lastVisibleFieldID);
        this.scope = methodScope2;
        methodScope2.isConstructorCall = methodScope.isConstructorCall;
        super.resolveType(blockScope, z10);
        MethodBinding methodBinding = this.descriptor;
        boolean z13 = methodBinding != null;
        ?? r82 = 0;
        if (!z10 && (!z13 || methodBinding.typeVariables != Binding.NO_TYPE_VARIABLES)) {
            this.resolvedType = null;
            return null;
        }
        MethodBinding methodBinding2 = new MethodBinding(33558530, CharOperation.concat(TypeConstants.ANONYMOUS_METHOD, Integer.toString(this.ordinal).toCharArray()), z13 ? this.descriptor.returnType : TypeBinding.VOID, Binding.NO_PARAMETERS, z13 ? this.descriptor.thrownExceptions : Binding.NO_EXCEPTIONS, blockScope.enclosingSourceType());
        this.binding = methodBinding2;
        methodBinding2.typeVariables = Binding.NO_TYPE_VARIABLES;
        if (!z13 || this.descriptor.parameters.length == length) {
            z11 = false;
        } else {
            this.scope.problemReporter().lambdaSignatureMismatched(this);
            if (argumentsTypeElided || this.original != this) {
                this.resolvedType = null;
                return null;
            }
            this.resolvedType = null;
            z11 = true;
        }
        TypeBinding[] typeBindingArr = new TypeBinding[length];
        int i11 = 0;
        while (true) {
            j10 = 128;
            if (i11 >= length) {
                break;
            }
            Argument argument = this.arguments[i11];
            if (argument.isVarArgs()) {
                if (i11 == length - 1) {
                    this.binding.modifiers |= 128;
                } else {
                    this.scope.problemReporter().illegalVarargInLambda(argument);
                    z11 = true;
                }
            }
            if (z13) {
                TypeBinding[] typeBindingArr2 = this.descriptor.parameters;
                if (i11 < typeBindingArr2.length) {
                    typeBinding3 = typeBindingArr2[i11];
                    if (!argumentsTypeElided) {
                        typeBinding3 = this.argumentTypes[i11];
                    }
                    if (typeBinding3 != null) {
                        if (typeBinding3 == TypeBinding.VOID) {
                            this.scope.problemReporter().argumentTypeCannotBeVoid(this, argument);
                        } else {
                            if (!typeBinding3.isValidBinding()) {
                                this.binding.tagBits |= 512;
                            }
                            if ((typeBinding3.tagBits & 128) != 0) {
                                this.binding.tagBits |= 128;
                            }
                            i11++;
                            z12 = true;
                            r82 = 0;
                        }
                    }
                    z11 = true;
                    i11++;
                    z12 = true;
                    r82 = 0;
                }
            }
            typeBinding3 = null;
            if (!argumentsTypeElided) {
            }
            if (typeBinding3 != null) {
            }
            z11 = true;
            i11++;
            z12 = true;
            r82 = 0;
        }
        if (!argumentsTypeElided && !z11) {
            TypeBinding typeBinding4 = this.expectedType;
            ReferenceBinding referenceBinding2 = typeBinding4 instanceof IntersectionTypeBinding18 ? (ReferenceBinding) ((IntersectionTypeBinding18) typeBinding4).getSAMType(blockScope) : typeBinding4 instanceof ReferenceBinding ? (ReferenceBinding) typeBinding4 : r82;
            ReferenceBinding findGroundTargetType = referenceBinding2 != null ? findGroundTargetType(blockScope, this.expectedType, referenceBinding2, argumentsTypeElided) : r82;
            if (findGroundTargetType == null) {
                ProblemMethodBinding problemMethodBinding = new ProblemMethodBinding(TypeConstants.ANONYMOUS_METHOD, r82, 18);
                this.binding = problemMethodBinding;
                reportSamProblem(blockScope, problemMethodBinding);
                this.resolvedType = r82;
                return r82;
            }
            MethodBinding singleAbstractMethod = findGroundTargetType.getSingleAbstractMethod(blockScope, z12);
            this.descriptor = singleAbstractMethod;
            if (!singleAbstractMethod.isValidBinding()) {
                reportSamProblem(blockScope, this.descriptor);
            } else {
                if (findGroundTargetType != referenceBinding2 && !findGroundTargetType.isCompatibleWith(referenceBinding2, this.scope)) {
                    blockScope.problemReporter().typeMismatchError(findGroundTargetType, this.expectedType, this, (ASTNode) r82);
                    return r82;
                }
                this.resolvedType = findGroundTargetType;
            }
        }
        boolean z14 = (this.requiresGenericSignature || blockScope.compilerOptions().generateGenericSignatureForLambdaExpressions) ? z12 ? 1 : 0 : false;
        TypeBinding[] typeBindingArr3 = new TypeBinding[length];
        int i12 = 0;
        boolean z15 = false;
        AnnotationBinding[][] annotationBindingArr = r82;
        while (i12 < length) {
            Argument argument2 = this.arguments[i12];
            if (z13) {
                TypeBinding[] typeBindingArr4 = this.descriptor.parameters;
                if (i12 < typeBindingArr4.length) {
                    typeBinding = typeBindingArr4[i12];
                    typeBinding2 = !argumentsTypeElided ? typeBinding : this.argumentTypes[i12];
                    typeBindingArr3[i12] = typeBinding;
                    if (typeBinding2 != null && typeBinding2 != TypeBinding.VOID) {
                        if (z13 && typeBinding != null && typeBinding2.isValidBinding() && TypeBinding.notEquals(typeBinding2, typeBinding) && typeBinding.isProperType(true) && !isOnlyWildcardMismatch(typeBinding, typeBinding2)) {
                            this.scope.problemReporter().lambdaParameterTypeMismatched(argument2, argument2.type, typeBinding);
                            z15 = true;
                        }
                        if (z14) {
                            TypeBinding leafComponentType = typeBinding2.leafComponentType();
                            if ((leafComponentType instanceof ReferenceBinding) && (((ReferenceBinding) leafComponentType).modifiers & 1073741824) != 0) {
                                this.binding.modifiers |= 1073741824;
                            }
                        }
                        typeBindingArr[i12] = argument2.bind(this.scope, typeBinding2, false);
                        if (argument2.annotations == null) {
                            this.binding.tagBits |= 1024;
                            annotationBindingArr = annotationBindingArr;
                            if (annotationBindingArr == null) {
                                AnnotationBinding[][] annotationBindingArr2 = new AnnotationBinding[length];
                                for (int i13 = 0; i13 < i12; i13++) {
                                    annotationBindingArr2[i13] = Binding.NO_ANNOTATIONS;
                                }
                                annotationBindingArr = annotationBindingArr2;
                            }
                            annotationBindingArr[i12] = argument2.binding.getAnnotations();
                        } else if (annotationBindingArr != null) {
                            annotationBindingArr[i12] = Binding.NO_ANNOTATIONS;
                        }
                    }
                    i12++;
                    z12 = true;
                    j10 = 128;
                    annotationBindingArr = annotationBindingArr;
                }
            }
            typeBinding = null;
            if (!argumentsTypeElided) {
            }
            typeBindingArr3[i12] = typeBinding;
            if (typeBinding2 != null) {
                if (z13) {
                    this.scope.problemReporter().lambdaParameterTypeMismatched(argument2, argument2.type, typeBinding);
                    z15 = true;
                }
                if (z14) {
                }
                typeBindingArr[i12] = argument2.bind(this.scope, typeBinding2, false);
                if (argument2.annotations == null) {
                }
            }
            i12++;
            z12 = true;
            j10 = 128;
            annotationBindingArr = annotationBindingArr;
        }
        if (this.argumentsTypeVar) {
            for (int i14 = 0; i14 < length; i14++) {
                this.arguments[i14].type.resolvedType = typeBindingArr3[i14];
            }
        }
        if (!z11) {
            MethodBinding methodBinding3 = this.binding;
            methodBinding3.parameters = typeBindingArr;
            if (annotationBindingArr != null) {
                methodBinding3.setParameterAnnotations(annotationBindingArr);
            }
        }
        if (!argumentsTypeElided && !z11 && this.binding.isVarargs()) {
            TypeBinding[] typeBindingArr5 = this.binding.parameters;
            if (!typeBindingArr5[typeBindingArr5.length - (z12 ? 1 : 0)].isReifiable()) {
                ProblemReporter problemReporter = this.scope.problemReporter();
                Argument[] argumentArr2 = this.arguments;
                problemReporter.possibleHeapPollutionFromVararg(argumentArr2[argumentArr2.length - (z12 ? 1 : 0)]);
            }
        }
        ReferenceBinding[] referenceBindingArr = this.binding.thrownExceptions;
        int length2 = referenceBindingArr.length;
        int i15 = 0;
        while (i15 < length2) {
            ReferenceBinding referenceBinding3 = referenceBindingArr[i15];
            if ((referenceBinding3.tagBits & j10) != 0) {
                referenceBinding = referenceBinding3;
                this.binding.tagBits |= j10;
            } else {
                referenceBinding = referenceBinding3;
            }
            if (z14) {
                this.binding.modifiers |= referenceBinding.modifiers & 1073741824;
            }
            i15++;
            z12 = true;
        }
        MethodBinding methodBinding4 = this.binding;
        TypeBinding typeBinding5 = methodBinding4.returnType;
        if (typeBinding5 != null) {
            if ((typeBinding5.tagBits & j10) != 0) {
                methodBinding4.tagBits |= j10;
            }
            if (z14) {
                TypeBinding leafComponentType2 = typeBinding5.leafComponentType();
                if ((leafComponentType2 instanceof ReferenceBinding) && (((ReferenceBinding) leafComponentType2).modifiers & 1073741824) != 0) {
                    this.binding.modifiers |= 1073741824;
                }
            }
        }
        if (z13 && !z11 && blockScope.compilerOptions().isAnnotationBasedNullAnalysisEnabled) {
            if (!argumentsTypeElided) {
                AbstractMethodDeclaration.createArgumentBindings(this.arguments, this.binding, this.scope);
                mergeParameterNullAnnotations(blockScope);
            }
            this.binding.tagBits |= this.descriptor.tagBits & TagBits.AnnotationNullMASK;
        }
        this.binding.modifiers &= -33554433;
        Statement statement = this.body;
        if ((statement instanceof Expression) && ((Expression) statement).isTrulyExpression()) {
            Expression expression = (Expression) this.body;
            new ReturnStatement(expression, expression.sourceStart, expression.sourceEnd, z12).resolve(this.scope);
            if (expression.resolvedType == TypeBinding.VOID && !expression.statementExpression()) {
                this.scope.problemReporter().invalidExpressionAsStatement(expression);
            }
        } else {
            this.body.resolve(this.scope);
            if (!this.returnsVoid && !this.returnsValue) {
                this.valueCompatible = this.body.doesNotCompleteNormally();
            }
        }
        if ((this.binding.tagBits & j10) != 0) {
            this.scope.problemReporter().missingTypeInLambda(this, this.binding);
        }
        if (this.shouldCaptureInstance) {
            MethodScope methodScope3 = this.scope;
            if (methodScope3.isConstructorCall) {
                methodScope3.problemReporter().fieldsOrThisBeforeConstructorInvocation(this);
            }
        }
        updateLocalTypes();
        if (z11 || z15) {
            return null;
        }
        return this.resolvedType;
    }

    public Expression[] resultExpressions() {
        return this.resultExpressions;
    }

    public void returnsExpression(Expression expression, TypeBinding typeBinding) {
        if (this.original == this) {
            return;
        }
        Statement statement = this.body;
        if ((statement instanceof Expression) && ((Expression) statement).isTrulyExpression()) {
            this.valueCompatible = typeBinding == null || typeBinding.f102482id != 6;
            this.voidCompatible = this.assistNode ? true : ((Expression) this.body).statementExpression();
            this.resultExpressions = new Expression[]{expression};
        } else {
            if (expression == null) {
                this.returnsVoid = true;
                this.valueCompatible = false;
                this.voidCompatible = !this.returnsValue;
                return;
            }
            this.returnsValue = true;
            this.voidCompatible = false;
            this.valueCompatible = !this.returnsVoid;
            Expression[] expressionArr = this.resultExpressions;
            int length = expressionArr.length;
            Expression[] expressionArr2 = new Expression[length + 1];
            System.arraycopy(expressionArr, 0, expressionArr2, 0, length);
            expressionArr2[length] = expression;
            this.resultExpressions = expressionArr2;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:61:0x00b0, code lost:
    
        return true;
     */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean sIsMoreSpecific(TypeBinding typeBinding, TypeBinding typeBinding2, Scope scope) {
        TypeBinding capture;
        MethodBinding singleAbstractMethod;
        if (super.sIsMoreSpecific(typeBinding, typeBinding2, scope)) {
            return true;
        }
        if (argumentsTypeElided() || typeBinding2.findSuperTypeOriginatingFrom(typeBinding) != null || (singleAbstractMethod = (capture = typeBinding.capture(this.enclosingScope, this.sourceStart, this.sourceEnd)).getSingleAbstractMethod(this.enclosingScope, true)) == null || !singleAbstractMethod.isValidBinding()) {
            return false;
        }
        MethodBinding singleAbstractMethod2 = typeBinding2.getSingleAbstractMethod(this.enclosingScope, true);
        if (singleAbstractMethod2 == null || !singleAbstractMethod2.isValidBinding()) {
            return true;
        }
        MethodBinding computeSubstitutedMethod = singleAbstractMethod2.computeSubstitutedMethod(singleAbstractMethod, scope.environment());
        if (computeSubstitutedMethod == null) {
            return false;
        }
        MethodBinding singleAbstractMethod3 = typeBinding.getSingleAbstractMethod(this.enclosingScope, true);
        TypeBinding[] typeBindingArr = computeSubstitutedMethod.parameters;
        TypeBinding[] typeBindingArr2 = singleAbstractMethod2.computeSubstitutedMethod(singleAbstractMethod3, scope.environment()).parameters;
        TypeBinding[] typeBindingArr3 = singleAbstractMethod2.parameters;
        for (int i10 = 0; i10 < typeBindingArr.length; i10++) {
            if (!typeBindingArr3[i10].isCompatibleWith(typeBindingArr[i10]) || TypeBinding.notEquals(typeBindingArr3[i10], typeBindingArr2[i10])) {
                return false;
            }
        }
        TypeBinding typeBinding3 = computeSubstitutedMethod.returnType;
        TypeBinding typeBinding4 = singleAbstractMethod2.returnType;
        if (typeBinding4.f102482id == 6) {
            return true;
        }
        if (typeBinding3.f102482id == 6) {
            return false;
        }
        if (typeBinding3.isCompatibleWith(typeBinding4, scope)) {
            return true;
        }
        try {
            Expression[] expressionArr = cachedResolvedCopy(capture, true, false, null).resultExpressions;
            int length = expressionArr == null ? 0 : expressionArr.length;
            if (length > 0) {
                if (typeBinding3.isBaseType() && !typeBinding4.isBaseType()) {
                    int i11 = 0;
                    while (i11 < length && !expressionArr[i11].isPolyExpression() && expressionArr[i11].resolvedType.isBaseType()) {
                        i11++;
                    }
                }
                if (!typeBinding3.isBaseType() && typeBinding4.isBaseType()) {
                    int i12 = 0;
                    while (i12 < length && !expressionArr[i12].resolvedType.isBaseType()) {
                        i12++;
                    }
                    if (i12 == length) {
                        return true;
                    }
                }
                if (typeBinding3.isFunctionalInterface(this.enclosingScope) && typeBinding4.isFunctionalInterface(this.enclosingScope)) {
                    int i13 = 0;
                    while (i13 < length && expressionArr[i13].sIsMoreSpecific(typeBinding3, typeBinding4, scope)) {
                        i13++;
                    }
                    if (i13 == length) {
                        return true;
                    }
                }
            }
            return false;
        } catch (CopyFailureException e10) {
            if (this.assistNode) {
                return false;
            }
            throw e10;
        }
    }

    public void setArguments(Argument[] argumentArr) {
        this.arguments = argumentArr != null ? argumentArr : ASTNode.NO_ARGUMENTS;
        this.argumentTypes = new TypeBinding[argumentArr != null ? argumentArr.length : 0];
    }

    public void setArrowPosition(int i10) {
        this.arrowPosition = i10;
    }

    public void setBody(Statement statement) {
        if (statement == null) {
            statement = NO_BODY;
        }
        this.body = statement;
    }

    @Override
    public void tagAsHavingErrors() {
        ReferenceContext referenceContext;
        this.ignoreFurtherInvestigation = true;
        for (Scope scope = this.enclosingScope.parent; scope != null; scope = scope.parent) {
            int i10 = scope.kind;
            if ((i10 == 2 || i10 == 3) && (referenceContext = scope.referenceContext()) != this) {
                referenceContext.tagAsHavingErrors();
                return;
            }
        }
    }

    @Override
    public void tagAsHavingIgnoredMandatoryErrors(int i10) {
        switch (i10) {
            case 99:
            case IProblem.ReturnTypeMismatch:
            case IProblem.UnhandledExceptionInDefaultConstructor:
            case IProblem.UnhandledException:
            case IProblem.UnhandledExceptionOnAutoClose:
            case IProblem.VoidMethodReturnsValue:
            case IProblem.ShouldReturnValueHintMissingDefault:
            case IProblem.TargetTypeNotAFunctionalInterface:
            case IProblem.ShouldReturnValue:
                return;
            default:
                switch (i10) {
                    case IProblem.illFormedParameterizationOfFunctionalInterface:
                    case IProblem.lambdaSignatureMismatched:
                    case IProblem.lambdaParameterTypeMismatched:
                    case IProblem.IncompatibleLambdaParameterType:
                    case IProblem.NoGenericLambda:
                        return;
                    default:
                        this.hasIgnoredMandatoryErrors = true;
                        MethodScope methodScope = this.scope;
                        for (MethodScope enclosingLambdaScope = methodScope == null ? null : methodScope.enclosingLambdaScope(); enclosingLambdaScope != null; enclosingLambdaScope = enclosingLambdaScope.enclosingLambdaScope()) {
                            ((LambdaExpression) enclosingLambdaScope.referenceContext).hasIgnoredMandatoryErrors = true;
                        }
                        return;
                }
        }
    }

    @Override
    public void traverse(ASTVisitor aSTVisitor, BlockScope blockScope) {
        if (aSTVisitor.visit(this, blockScope)) {
            Argument[] argumentArr = this.arguments;
            if (argumentArr != null) {
                int length = argumentArr.length;
                for (int i10 = 0; i10 < length; i10++) {
                    this.arguments[i10].traverse(aSTVisitor, this.scope);
                }
            }
            Statement statement = this.body;
            if (statement != null) {
                statement.traverse(aSTVisitor, this.scope);
            }
        }
        aSTVisitor.endVisit(this, blockScope);
    }

    public boolean updateLocalTypesInMethod(MethodBinding methodBinding) {
        Map<Integer, LocalTypeBinding> map = this.localTypes;
        if (map == null) {
            return false;
        }
        updateLocalTypesInMethod(methodBinding, new LocalTypeSubstitutor(map), new Substitution.NullSubstitution(this.scope.environment()));
        return true;
    }

    public void validateNullAnnotations() {
        MethodBinding methodBinding = this.binding;
        if (methodBinding != null) {
            int length = methodBinding.parameters.length;
            for (int i10 = 0; i10 < length; i10++) {
                MethodScope methodScope = this.scope;
                long j10 = this.binding.returnType.tagBits;
                Argument argument = this.arguments[i10];
                if (!methodScope.validateNullAnnotation(j10, argument.type, argument.annotations)) {
                    MethodBinding methodBinding2 = this.binding;
                    methodBinding2.returnType = methodBinding2.returnType.withoutToplevelNullAnnotation();
                }
            }
        }
    }

    public StringBuffer printExpression(int i10, StringBuffer stringBuffer, boolean z10) {
        int i11 = (this.bits & ASTNode.ParenthesizedMASK) >> 21;
        String str = "";
        for (int i12 = 0; i12 < i11; i12++) {
            stringBuffer.append('(');
            str = String.valueOf(str) + ')';
        }
        stringBuffer.append('(');
        if (this.arguments != null) {
            for (int i13 = 0; i13 < this.arguments.length; i13++) {
                if (i13 > 0) {
                    stringBuffer.append(", ");
                }
                this.arguments[i13].print(0, stringBuffer);
            }
        }
        stringBuffer.append(") -> ");
        if (z10) {
            stringBuffer.append(FetchDefaults.EMPTY_JSON_OBJECT_STRING);
        } else {
            Statement statement = this.body;
            if (statement != null) {
                if (!(statement instanceof Block)) {
                    i10 = 0;
                }
                statement.print(i10, stringBuffer);
            } else {
                stringBuffer.append("<@incubator>");
            }
        }
        stringBuffer.append(str);
        return stringBuffer;
    }

    @Override
    public LambdaExpression resolveExpressionExpecting(TypeBinding typeBinding, Scope scope, InferenceContext18 inferenceContext18) {
        try {
            return cachedResolvedCopy(typeBinding, false, true, inferenceContext18);
        } catch (CopyFailureException unused) {
            return null;
        }
    }

    private void updateLocalTypesInMethod(MethodBinding methodBinding, Scope.Substitutor substitutor, Substitution substitution) {
        methodBinding.declaringClass = (ReferenceBinding) substitutor.substitute(substitution, methodBinding.declaringClass);
        methodBinding.returnType = substitutor.substitute(substitution, methodBinding.returnType);
        int i10 = 0;
        while (true) {
            TypeBinding[] typeBindingArr = methodBinding.parameters;
            if (i10 >= typeBindingArr.length) {
                return;
            }
            typeBindingArr[i10] = substitutor.substitute(substitution, typeBindingArr[i10]);
            i10++;
        }
    }

    public LambdaExpression(CompilationResult compilationResult, boolean z10) {
        this(compilationResult, z10, false);
    }

    public void generateCode(ClassScope classScope, ClassFile classFile) {
        boolean z10;
        classFile.codeStream.wideMode = false;
        int i10 = 0;
        do {
            try {
                i10 = classFile.contentsOffset;
                generateCode(classFile);
                z10 = false;
            } catch (AbortMethod e10) {
                CompilationResult compilationResult = e10.compilationResult;
                z10 = true;
                if (compilationResult == CodeStream.RESTART_IN_WIDE_MODE) {
                    classFile.contentsOffset = i10;
                    classFile.methodCount--;
                    classFile.codeStream.resetInWideMode();
                } else if (compilationResult == CodeStream.RESTART_CODE_GEN_FOR_UNUSED_LOCALS_MODE) {
                    classFile.contentsOffset = i10;
                    classFile.methodCount--;
                    classFile.codeStream.resetForCodeGenUnusedLocals();
                } else {
                    throw new AbortType(this.compilationResult, e10.problem);
                }
            }
        } while (z10);
    }

    public void generateCode(ClassFile classFile) {
        classFile.generateMethodInfoHeader(this.binding);
        int i10 = classFile.contentsOffset;
        int generateMethodInfoAttributes = classFile.generateMethodInfoAttributes(this.binding);
        int i11 = classFile.contentsOffset;
        classFile.generateCodeAttributeHeader();
        CodeStream codeStream = classFile.codeStream;
        codeStream.reset(this, classFile);
        this.scope.computeLocalVariablePositions(this.outerLocalVariablesSlotSize + (!this.binding.isStatic() ? 1 : 0), codeStream);
        SyntheticArgumentBinding[] syntheticArgumentBindingArr = this.outerLocalVariables;
        if (syntheticArgumentBindingArr != null) {
            int length = syntheticArgumentBindingArr.length;
            for (int i12 = 0; i12 < length; i12++) {
                SyntheticArgumentBinding syntheticArgumentBinding = this.outerLocalVariables[i12];
                codeStream.addVisibleLocalVariable(syntheticArgumentBinding);
                codeStream.record(syntheticArgumentBinding);
                syntheticArgumentBinding.recordInitializationStartPC(0);
            }
        }
        Argument[] argumentArr = this.arguments;
        if (argumentArr != null) {
            int length2 = argumentArr.length;
            for (int i13 = 0; i13 < length2; i13++) {
                LocalVariableBinding localVariableBinding = this.arguments[i13].binding;
                codeStream.addVisibleLocalVariable(localVariableBinding);
                localVariableBinding.recordInitializationStartPC(0);
            }
        }
        Statement statement = this.body;
        if (statement instanceof Block) {
            statement.generateCode(this.scope, codeStream);
            if ((this.bits & 64) != 0) {
                codeStream.return_();
            }
        } else {
            Expression expression = (Expression) statement;
            expression.generateCode(this.scope, codeStream, true);
            if (this.binding.returnType == TypeBinding.VOID) {
                codeStream.return_();
            } else {
                codeStream.generateReturnBytecode(expression);
            }
        }
        codeStream.exitUserScope(this.scope);
        codeStream.recordPositionsFrom(0, this.sourceEnd);
        try {
            classFile.completeCodeAttribute(i11);
            classFile.completeMethodInfo(this.binding, i10, generateMethodInfoAttributes + 1);
        } catch (NegativeArraySizeException unused) {
            throw new AbortMethod(this.scope.referenceCompilationUnit().compilationResult, null);
        }
    }
}
