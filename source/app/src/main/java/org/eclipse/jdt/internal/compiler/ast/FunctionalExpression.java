package org.eclipse.jdt.internal.compiler.ast;

import org.eclipse.jdt.internal.compiler.CompilationResult;
import org.eclipse.jdt.internal.compiler.DefaultErrorHandlingPolicies;
import org.eclipse.jdt.internal.compiler.IErrorHandlingPolicy;
import org.eclipse.jdt.internal.compiler.flow.FlowInfo;
import org.eclipse.jdt.internal.compiler.impl.Constant;
import org.eclipse.jdt.internal.compiler.impl.ReferenceContext;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.CompilationUnitScope;
import org.eclipse.jdt.internal.compiler.lookup.IntersectionTypeBinding18;
import org.eclipse.jdt.internal.compiler.lookup.LookupEnvironment;
import org.eclipse.jdt.internal.compiler.lookup.MethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.MethodScope;
import org.eclipse.jdt.internal.compiler.lookup.MethodVerifier;
import org.eclipse.jdt.internal.compiler.lookup.ParameterizedTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.RawTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.Scope;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeBindingVisitor;
import org.eclipse.jdt.internal.compiler.lookup.TypeVariableBinding;

public abstract class FunctionalExpression extends Expression {
    protected static IErrorHandlingPolicy silentErrorHandlingPolicy = DefaultErrorHandlingPolicies.ignoreAllProblems();
    protected MethodBinding actualMethodBinding;
    public MethodBinding binding;
    public CompilationResult compilationResult;
    public MethodBinding descriptor;
    public BlockScope enclosingScope;
    protected TypeBinding expectedType;
    public boolean hasDescripterProblem;
    boolean ignoreFurtherInvestigation;
    public boolean isSerializable;
    public int ordinal;
    protected ExpressionContext expressionContext = ExpressionContext.VANILLA_CONTEXT;
    public int bootstrapMethodNumber = -1;
    public boolean shouldCaptureInstance = false;
    private boolean hasReportedSamProblem = false;

    public class VisibilityInspector extends TypeBindingVisitor {
        private FunctionalExpression expression;
        private Scope scope;
        private boolean shouldChatter;
        private boolean visible = true;

        public VisibilityInspector(FunctionalExpression functionalExpression, Scope scope, boolean z10) {
            this.scope = scope;
            this.shouldChatter = z10;
            this.expression = functionalExpression;
        }

        private void checkVisibility(ReferenceBinding referenceBinding) {
            if (referenceBinding.canBeSeenBy(this.scope)) {
                return;
            }
            this.visible = false;
            if (this.shouldChatter) {
                this.scope.problemReporter().descriptorHasInvisibleType(this.expression, referenceBinding);
            }
        }

        public boolean visible(TypeBinding typeBinding) {
            TypeBindingVisitor.visit(this, typeBinding);
            return this.visible;
        }

        @Override
        public boolean visit(ReferenceBinding referenceBinding) {
            checkVisibility(referenceBinding);
            return true;
        }

        @Override
        public boolean visit(ParameterizedTypeBinding parameterizedTypeBinding) {
            checkVisibility(parameterizedTypeBinding);
            return true;
        }

        public boolean visible(TypeBinding[] typeBindingArr) {
            TypeBindingVisitor.visit(this, typeBindingArr);
            return this.visible;
        }

        @Override
        public boolean visit(RawTypeBinding rawTypeBinding) {
            checkVisibility(rawTypeBinding);
            return true;
        }
    }

    public FunctionalExpression(CompilationResult compilationResult) {
        this.compilationResult = compilationResult;
    }

    public boolean argumentsTypeElided() {
        return true;
    }

    public void cleanUp() {
    }

    public int diagnosticsSourceEnd() {
        return this.sourceEnd;
    }

    @Override
    public TypeBinding expectedType() {
        return this.expectedType;
    }

    @Override
    public ExpressionContext getExpressionContext() {
        return this.expressionContext;
    }

    public MethodBinding getMethodBinding() {
        return null;
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [org.eclipse.jdt.internal.compiler.ast.FunctionalExpression$1BridgeCollector] */
    public MethodBinding[] getRequiredBridges() {
        TypeBinding typeBinding = this.expectedType;
        return new Object(typeBinding instanceof IntersectionTypeBinding18 ? (ReferenceBinding) ((IntersectionTypeBinding18) typeBinding).getSAMType(this.enclosingScope) : (ReferenceBinding) typeBinding, this.descriptor) {
            MethodBinding[] bridges;
            LookupEnvironment environment;
            MethodBinding method;
            Scope scope;
            char[] selector;

            {
                this.method = r3;
                this.selector = r3.selector;
                this.environment = FunctionalExpression.this.enclosingScope.environment();
                this.scope = FunctionalExpression.this.enclosingScope;
                collectBridges(new ReferenceBinding[]{r2});
            }

            public void add(MethodBinding methodBinding) {
                MethodBinding[] methodBindingArr = this.bridges;
                if (methodBindingArr == null) {
                    this.bridges = new MethodBinding[]{methodBinding};
                    return;
                }
                int length = methodBindingArr.length;
                for (int i10 = 0; i10 < length; i10++) {
                    if (this.bridges[i10].areParameterErasuresEqual(methodBinding) && TypeBinding.equalsEquals(this.bridges[i10].returnType.erasure(), methodBinding.returnType.erasure())) {
                        return;
                    }
                }
                MethodBinding[] methodBindingArr2 = this.bridges;
                MethodBinding[] methodBindingArr3 = new MethodBinding[length + 1];
                this.bridges = methodBindingArr3;
                System.arraycopy(methodBindingArr2, 0, methodBindingArr3, 0, length);
                this.bridges[length] = methodBinding;
            }

            public void collectBridges(ReferenceBinding[] referenceBindingArr) {
                MethodBinding computeSubstituteMethod;
                int length = referenceBindingArr == null ? 0 : referenceBindingArr.length;
                for (int i10 = 0; i10 < length; i10++) {
                    ReferenceBinding referenceBinding = referenceBindingArr[i10];
                    if (referenceBinding != null) {
                        MethodBinding[] methods = referenceBinding.getMethods(this.selector);
                        int length2 = methods == null ? 0 : methods.length;
                        for (int i11 = 0; i11 < length2; i11++) {
                            MethodBinding methodBinding = methods[i11];
                            if (methodBinding != null && this.method != methodBinding && !methodBinding.isStatic() && !methodBinding.redeclaresPublicObjectMethod(this.scope) && (computeSubstituteMethod = MethodVerifier.computeSubstituteMethod(methodBinding, this.method, this.environment)) != null && MethodVerifier.isSubstituteParameterSubsignature(this.method, computeSubstituteMethod, this.environment) && MethodVerifier.areReturnTypesCompatible(this.method, computeSubstituteMethod, this.environment)) {
                                MethodBinding original = computeSubstituteMethod.original();
                                MethodBinding original2 = this.method.original();
                                if (!original2.areParameterErasuresEqual(original) || TypeBinding.notEquals(original2.returnType.erasure(), original.returnType.erasure())) {
                                    add(original);
                                }
                            }
                        }
                        collectBridges(referenceBinding.superInterfaces());
                    }
                }
            }

            public MethodBinding[] getBridges() {
                return this.bridges;
            }
        }.getBridges();
    }

    @Override
    public TypeBinding invocationTargetType() {
        MethodBinding singleAbstractMethod;
        TypeBinding typeBinding = this.expectedType;
        if (typeBinding == null || (singleAbstractMethod = typeBinding.getSingleAbstractMethod(this.enclosingScope, true)) == null || singleAbstractMethod.problemId() == 17) {
            return null;
        }
        return singleAbstractMethod.isConstructor() ? singleAbstractMethod.declaringClass : singleAbstractMethod.returnType;
    }

    @Override
    public boolean isBoxingCompatibleWith(TypeBinding typeBinding, Scope scope) {
        return false;
    }

    @Override
    public boolean isFunctionalType() {
        return true;
    }

    @Override
    public boolean isPertinentToApplicability(TypeBinding typeBinding, MethodBinding methodBinding) {
        if (!(typeBinding instanceof TypeVariableBinding)) {
            return true;
        }
        TypeVariableBinding typeVariableBinding = (TypeVariableBinding) typeBinding;
        if (methodBinding == null) {
            return !(typeVariableBinding.declaringElement instanceof MethodBinding);
        }
        if (typeVariableBinding.declaringElement == methodBinding) {
            return false;
        }
        return (methodBinding.isConstructor() && typeVariableBinding.declaringElement == methodBinding.declaringClass) ? false : true;
    }

    @Override
    public boolean isPolyExpression() {
        return true;
    }

    public boolean kosherDescriptor(Scope scope, MethodBinding methodBinding, boolean z10) {
        VisibilityInspector visibilityInspector = new VisibilityInspector(this, scope, z10);
        boolean visible = visibilityInspector.visible(methodBinding.returnType);
        if (!visibilityInspector.visible(methodBinding.parameters)) {
            visible = false;
        }
        if (!visibilityInspector.visible(methodBinding.thrownExceptions)) {
            visible = false;
        }
        boolean z11 = visibilityInspector.visible(this.expectedType) ? visible : false;
        this.hasDescripterProblem |= !z11;
        return z11;
    }

    public int nullStatus(FlowInfo flowInfo) {
        return 4;
    }

    public int recordFunctionalType(Scope scope) {
        while (scope != null) {
            int i10 = scope.kind;
            if (i10 == 2) {
                ReferenceContext referenceContext = ((MethodScope) scope).referenceContext;
                if (referenceContext instanceof LambdaExpression) {
                    LambdaExpression lambdaExpression = (LambdaExpression) referenceContext;
                    if (lambdaExpression != lambdaExpression.original) {
                        return 0;
                    }
                } else {
                    continue;
                }
            } else if (i10 == 4) {
                return ((CompilationUnitScope) scope).referenceContext.record(this);
            }
            scope = scope.parent;
        }
        return 0;
    }

    public TypeBinding reportSamProblem(BlockScope blockScope, MethodBinding methodBinding) {
        if (this.hasReportedSamProblem) {
            return null;
        }
        int problemId = methodBinding.problemId();
        if (problemId == 17) {
            blockScope.problemReporter().targetTypeIsNotAFunctionalInterface(this);
            this.hasReportedSamProblem = true;
        } else if (problemId == 18) {
            blockScope.problemReporter().illFormedParameterizationOfFunctionalInterface(this);
            this.hasReportedSamProblem = true;
        }
        return null;
    }

    public boolean requiresBridges() {
        return getRequiredBridges() != null;
    }

    @Override
    public TypeBinding resolveType(BlockScope blockScope) {
        return resolveType(blockScope, false);
    }

    public void setCompilationResult(CompilationResult compilationResult) {
        this.compilationResult = compilationResult;
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
    public boolean isPolyExpression(MethodBinding methodBinding) {
        return true;
    }

    public TypeBinding resolveType(BlockScope blockScope, boolean z10) {
        this.constant = Constant.NotAConstant;
        this.enclosingScope = blockScope;
        TypeBinding typeBinding = this.expectedType;
        MethodBinding singleAbstractMethod = typeBinding == null ? null : typeBinding.getSingleAbstractMethod(blockScope, argumentsTypeElided());
        if (singleAbstractMethod == null) {
            blockScope.problemReporter().targetTypeIsNotAFunctionalInterface(this);
            return null;
        }
        if (!singleAbstractMethod.isValidBinding() && singleAbstractMethod.problemId() != 25) {
            return reportSamProblem(blockScope, singleAbstractMethod);
        }
        this.descriptor = singleAbstractMethod;
        if (!z10 && !kosherDescriptor(blockScope, singleAbstractMethod, true)) {
            this.resolvedType = null;
            return null;
        }
        TypeBinding typeBinding2 = this.expectedType;
        if (typeBinding2 instanceof IntersectionTypeBinding18) {
            ReferenceBinding[] referenceBindingArr = ((IntersectionTypeBinding18) typeBinding2).intersectingTypes;
            int length = referenceBindingArr.length;
            int i10 = 0;
            while (true) {
                if (i10 >= length) {
                    break;
                }
                if (referenceBindingArr[i10].findSuperTypeOriginatingFrom(37, false) != null) {
                    this.isSerializable = true;
                    break;
                }
                i10++;
            }
        } else if (typeBinding2.findSuperTypeOriginatingFrom(37, false) != null) {
            this.isSerializable = true;
        }
        if (blockScope.environment().globalOptions.isAnnotationBasedNullAnalysisEnabled) {
            NullAnnotationMatching.checkForContradictions(singleAbstractMethod, this, blockScope);
        }
        TypeBinding typeBinding3 = this.expectedType;
        this.resolvedType = typeBinding3;
        return typeBinding3;
    }

    public FunctionalExpression() {
    }
}
