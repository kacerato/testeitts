package org.eclipse.jdt.internal.compiler.ast;

import org.eclipse.jdt.internal.compiler.flow.FlowContext;
import org.eclipse.jdt.internal.compiler.flow.FlowInfo;
import org.eclipse.jdt.internal.compiler.impl.CompilerOptions;
import org.eclipse.jdt.internal.compiler.lookup.AnnotationBinding;
import org.eclipse.jdt.internal.compiler.lookup.ArrayBinding;
import org.eclipse.jdt.internal.compiler.lookup.BinaryTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.Binding;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.CaptureBinding;
import org.eclipse.jdt.internal.compiler.lookup.InvocationSite;
import org.eclipse.jdt.internal.compiler.lookup.LookupEnvironment;
import org.eclipse.jdt.internal.compiler.lookup.MethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.ParameterizedTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.ProblemMethodBinding;
import org.eclipse.jdt.internal.compiler.lookup.RawTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.Scope;
import org.eclipse.jdt.internal.compiler.lookup.Substitution;
import org.eclipse.jdt.internal.compiler.lookup.TagBits;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeBindingVisitor;
import org.eclipse.jdt.internal.compiler.lookup.TypeVariableBinding;
import org.eclipse.jdt.internal.compiler.lookup.VariableBinding;
import org.eclipse.jdt.internal.compiler.lookup.WildcardBinding;

public class NullAnnotationMatching {
    private static int[] $SWITCH_TABLE$org$eclipse$jdt$internal$compiler$ast$NullAnnotationMatching$CheckMode;
    public static final NullAnnotationMatching NULL_ANNOTATIONS_MISMATCH;
    public static final NullAnnotationMatching NULL_ANNOTATIONS_OK;
    public static final NullAnnotationMatching NULL_ANNOTATIONS_OK_NONNULL;
    public static final NullAnnotationMatching NULL_ANNOTATIONS_UNCHECKED;
    public final int nullStatus;
    private final Severity severity;
    public final TypeBinding superTypeHint;

    public enum CheckMode {
        COMPATIBLE {
            @Override
            public boolean requiredNullableMatchesAll() {
                return true;
            }
        },
        EXACT,
        BOUND_CHECK,
        BOUND_SUPER_CHECK,
        OVERRIDE_RETURN {
            @Override
            public CheckMode toDetail() {
                return CheckMode.OVERRIDE;
            }
        },
        OVERRIDE {
            @Override
            public boolean requiredNullableMatchesAll() {
                return true;
            }

            @Override
            public CheckMode toDetail() {
                return CheckMode.OVERRIDE;
            }
        };

        public static CheckMode[] valuesCustom() {
            CheckMode[] valuesCustom = values();
            int length = valuesCustom.length;
            CheckMode[] checkModeArr = new CheckMode[length];
            System.arraycopy(valuesCustom, 0, checkModeArr, 0, length);
            return checkModeArr;
        }

        public boolean requiredNullableMatchesAll() {
            return false;
        }

        public CheckMode toDetail() {
            return EXACT;
        }

        CheckMode(CheckMode checkMode) {
            this();
        }
    }

    public enum Severity {
        OK,
        LEGACY_WARNING,
        UNCHECKED,
        MISMATCH;

        public static Severity[] valuesCustom() {
            Severity[] valuesCustom = values();
            int length = valuesCustom.length;
            Severity[] severityArr = new Severity[length];
            System.arraycopy(valuesCustom, 0, severityArr, 0, length);
            return severityArr;
        }

        public boolean isAnyMismatch() {
            return compareTo(LEGACY_WARNING) > 0;
        }

        public Severity max(Severity severity) {
            return compareTo(severity) < 0 ? severity : this;
        }
    }

    public static int[] $SWITCH_TABLE$org$eclipse$jdt$internal$compiler$ast$NullAnnotationMatching$CheckMode() {
        int[] iArr = $SWITCH_TABLE$org$eclipse$jdt$internal$compiler$ast$NullAnnotationMatching$CheckMode;
        if (iArr != null) {
            return iArr;
        }
        int[] iArr2 = new int[CheckMode.valuesCustom().length];
        try {
            iArr2[CheckMode.BOUND_CHECK.ordinal()] = 3;
        } catch (NoSuchFieldError unused) {
        }
        try {
            iArr2[CheckMode.BOUND_SUPER_CHECK.ordinal()] = 4;
        } catch (NoSuchFieldError unused2) {
        }
        try {
            iArr2[CheckMode.COMPATIBLE.ordinal()] = 1;
        } catch (NoSuchFieldError unused3) {
        }
        try {
            iArr2[CheckMode.EXACT.ordinal()] = 2;
        } catch (NoSuchFieldError unused4) {
        }
        try {
            iArr2[CheckMode.OVERRIDE.ordinal()] = 6;
        } catch (NoSuchFieldError unused5) {
        }
        try {
            iArr2[CheckMode.OVERRIDE_RETURN.ordinal()] = 5;
        } catch (NoSuchFieldError unused6) {
        }
        $SWITCH_TABLE$org$eclipse$jdt$internal$compiler$ast$NullAnnotationMatching$CheckMode = iArr2;
        return iArr2;
    }

    static {
        Severity severity = Severity.OK;
        NULL_ANNOTATIONS_OK = new NullAnnotationMatching(severity, 1, null);
        NULL_ANNOTATIONS_OK_NONNULL = new NullAnnotationMatching(severity, 4, null);
        NULL_ANNOTATIONS_UNCHECKED = new NullAnnotationMatching(Severity.UNCHECKED, 1, null);
        NULL_ANNOTATIONS_MISMATCH = new NullAnnotationMatching(Severity.MISMATCH, 1, null);
    }

    public NullAnnotationMatching(Severity severity, int i10, TypeBinding typeBinding) {
        this.severity = severity;
        this.superTypeHint = typeBinding;
        this.nullStatus = i10;
    }

    public static NullAnnotationMatching analyse(TypeBinding typeBinding, TypeBinding typeBinding2, int i10) {
        return analyse(typeBinding, typeBinding2, null, null, i10, null, CheckMode.COMPATIBLE);
    }

    public static boolean areSameTypes(TypeBinding typeBinding, TypeBinding typeBinding2, TypeBinding typeBinding3) {
        TypeBinding upperBound;
        if (typeBinding == typeBinding2) {
            return true;
        }
        if (!typeBinding.isParameterizedType() && !typeBinding.isArrayType()) {
            if (TypeBinding.notEquals(typeBinding, typeBinding2)) {
                if (typeBinding instanceof CaptureBinding) {
                    TypeBinding typeBinding4 = ((CaptureBinding) typeBinding).lowerBound;
                    return typeBinding4 != null && areSameTypes(typeBinding4, typeBinding2, typeBinding3) && (typeBinding.tagBits & TagBits.AnnotationNullMASK) == (typeBinding2.tagBits & TagBits.AnnotationNullMASK);
                }
                if (typeBinding.kind() == 4100 && typeBinding == typeBinding3) {
                    return true;
                }
                if ((typeBinding2 instanceof CaptureBinding) && (upperBound = ((CaptureBinding) typeBinding2).upperBound()) != null && areSameTypes(typeBinding, upperBound, typeBinding3) && (typeBinding.tagBits & TagBits.AnnotationNullMASK) == (typeBinding2.tagBits & TagBits.AnnotationNullMASK)) {
                    return true;
                }
                return false;
            }
            if ((typeBinding.tagBits & TagBits.AnnotationNullMASK) == (typeBinding2.tagBits & TagBits.AnnotationNullMASK)) {
                return true;
            }
        }
        return false;
    }

    public static int checkAssignment(BlockScope blockScope, FlowContext flowContext, VariableBinding variableBinding, FlowInfo flowInfo, int i10, Expression expression, TypeBinding typeBinding) {
        long j10;
        if (typeBinding == null) {
            return 1;
        }
        boolean usesNullTypeAnnotations = blockScope.environment().usesNullTypeAnnotations();
        boolean z10 = false;
        if (!usesNullTypeAnnotations) {
            j10 = variableBinding.tagBits & TagBits.AnnotationNullMASK;
        } else {
            if ((expression instanceof ConditionalExpression) && expression.isPolyExpression()) {
                ConditionalExpression conditionalExpression = (ConditionalExpression) expression;
                int i11 = conditionalExpression.ifTrueNullStatus;
                Expression expression2 = conditionalExpression.valueIfTrue;
                int checkAssignment = checkAssignment(blockScope, flowContext, variableBinding, flowInfo, i11, expression2, expression2.resolvedType);
                int i12 = conditionalExpression.ifFalseNullStatus;
                Expression expression3 = conditionalExpression.valueIfFalse;
                return checkAssignment == checkAssignment(blockScope, flowContext, variableBinding, flowInfo, i12, expression3, expression3.resolvedType) ? checkAssignment : i10;
            }
            if ((expression instanceof SwitchExpression) && expression.isPolyExpression()) {
                Expression[] expressionArr = (Expression[]) ((SwitchExpression) expression).resultExpressions.toArray(new Expression[0]);
                Expression expression4 = expressionArr[0];
                int checkAssignment2 = checkAssignment(blockScope, flowContext, variableBinding, flowInfo, expression4.nullStatus(flowInfo, flowContext), expression4, expression4.resolvedType);
                int length = expressionArr.length;
                int i13 = 1;
                boolean z11 = true;
                while (i13 < length) {
                    Expression expression5 = expressionArr[i13];
                    int i14 = i13;
                    z11 &= checkAssignment2 == checkAssignment(blockScope, flowContext, variableBinding, flowInfo, expression5.nullStatus(flowInfo, flowContext), expression5, expression5.resolvedType);
                    i13 = i14 + 1;
                }
                return z11 ? checkAssignment2 : i10;
            }
            TypeBinding typeBinding2 = variableBinding.type;
            j10 = typeBinding2.tagBits & TagBits.AnnotationNullMASK;
            NullAnnotationMatching analyse = analyse(typeBinding2, typeBinding, null, null, i10, expression, CheckMode.COMPATIBLE);
            if (analyse.isAnyMismatch()) {
                flowContext.recordNullityMismatch(blockScope, expression, typeBinding, variableBinding.type, flowInfo, i10, analyse);
                z10 = true;
            } else {
                if (analyse.wantToReport()) {
                    analyse.report(blockScope);
                }
                int i15 = analyse.nullStatus;
                if (i15 != 1) {
                    return i15;
                }
            }
        }
        if (j10 != 72057594037927936L || i10 == 4) {
            return (j10 == 36028797018963968L && i10 == 1) ? (usesNullTypeAnnotations && typeBinding.isTypeVariable() && (typeBinding.tagBits & TagBits.AnnotationNullMASK) == 0) ? 48 : 24 : i10;
        }
        if (z10) {
            return 4;
        }
        flowContext.recordNullityMismatch(blockScope, expression, typeBinding, variableBinding.type, flowInfo, i10, null);
        return 4;
    }

    public static MethodBinding checkForContradictions(MethodBinding methodBinding, Object obj, Scope scope) {
        int i10;
        int i11;
        int i12 = 0;
        if (obj instanceof InvocationSite) {
            InvocationSite invocationSite = (InvocationSite) obj;
            i11 = invocationSite.sourceStart();
            i10 = invocationSite.sourceEnd();
        } else if (obj instanceof ASTNode) {
            ASTNode aSTNode = (ASTNode) obj;
            i11 = aSTNode.sourceStart;
            i10 = aSTNode.sourceEnd;
        } else {
            i10 = 0;
            i11 = 0;
        }
        SearchContradictions searchContradictions = new SearchContradictions();
        TypeBindingVisitor.visit(searchContradictions, methodBinding.returnType);
        if (searchContradictions.typeWithContradiction != null) {
            if (scope == null) {
                return new ProblemMethodBinding(methodBinding, methodBinding.selector, methodBinding.parameters, 25);
            }
            scope.problemReporter().contradictoryNullAnnotationsInferred(methodBinding, i11, i10, obj instanceof FunctionalExpression);
            return methodBinding;
        }
        Expression[] arguments = obj instanceof Invocation ? ((Invocation) obj).arguments() : null;
        while (true) {
            TypeBinding[] typeBindingArr = methodBinding.parameters;
            if (i12 >= typeBindingArr.length) {
                return methodBinding;
            }
            TypeBindingVisitor.visit(searchContradictions, typeBindingArr[i12]);
            if (searchContradictions.typeWithContradiction != null) {
                if (scope == null) {
                    return new ProblemMethodBinding(methodBinding, methodBinding.selector, methodBinding.parameters, 25);
                }
                if (arguments == null || i12 >= arguments.length) {
                    scope.problemReporter().contradictoryNullAnnotationsInferred(methodBinding, i11, i10, obj instanceof FunctionalExpression);
                } else {
                    scope.problemReporter().contradictoryNullAnnotationsInferred(methodBinding, arguments[i12]);
                }
                return methodBinding;
            }
            i12++;
        }
    }

    private static Severity computeNullProblemSeverity(long j10, long j11, int i10, CheckMode checkMode, boolean z10) {
        if (j10 == j11) {
            return Severity.OK;
        }
        if (j10 == 0) {
            switch ($SWITCH_TABLE$org$eclipse$jdt$internal$compiler$ast$NullAnnotationMatching$CheckMode()[checkMode.ordinal()]) {
                case 1:
                case 2:
                case 3:
                case 4:
                    return Severity.OK;
                case 5:
                    if (j11 != 72057594037927936L && z10) {
                        return Severity.UNCHECKED;
                    }
                    return Severity.OK;
                case 6:
                    return Severity.UNCHECKED;
            }
        }
        if (j10 == TagBits.AnnotationNullMASK) {
            return Severity.OK;
        }
        if (j10 == 72057594037927936L) {
            switch ($SWITCH_TABLE$org$eclipse$jdt$internal$compiler$ast$NullAnnotationMatching$CheckMode()[checkMode.ordinal()]) {
                case 1:
                case 4:
                    if (i10 == 4) {
                        return Severity.OK;
                    }
                    break;
            }
            return j11 == 0 ? Severity.UNCHECKED : Severity.MISMATCH;
        }
        if (j10 == 36028797018963968L) {
            switch ($SWITCH_TABLE$org$eclipse$jdt$internal$compiler$ast$NullAnnotationMatching$CheckMode()[checkMode.ordinal()]) {
                case 1:
                case 4:
                case 5:
                    return Severity.OK;
                case 2:
                case 3:
                    return j11 == 0 ? Severity.UNCHECKED : Severity.MISMATCH;
                case 6:
                    return Severity.MISMATCH;
            }
        }
        return Severity.OK;
    }

    public static boolean hasContradictions(TypeBinding typeBinding) {
        SearchContradictions searchContradictions = new SearchContradictions();
        TypeBindingVisitor.visit(searchContradictions, typeBinding);
        return searchContradictions.typeWithContradiction != null;
    }

    private static TypeBinding mergeTypeAnnotations(TypeBinding typeBinding, TypeBinding typeBinding2, boolean z10, LookupEnvironment lookupEnvironment) {
        AnnotationBinding[] typeAnnotations;
        TypeBinding createAnnotatedType = (z10 || (typeAnnotations = typeBinding2.getTypeAnnotations()) == Binding.NO_ANNOTATIONS) ? typeBinding : lookupEnvironment.createAnnotatedType(typeBinding, typeAnnotations);
        if (!createAnnotatedType.isParameterizedType() || !typeBinding2.isParameterizedType()) {
            return createAnnotatedType;
        }
        ParameterizedTypeBinding parameterizedTypeBinding = (ParameterizedTypeBinding) typeBinding;
        TypeBinding[] typeBindingArr = parameterizedTypeBinding.arguments;
        TypeBinding[] typeBindingArr2 = ((ParameterizedTypeBinding) typeBinding2).arguments;
        TypeBinding[] typeBindingArr3 = new TypeBinding[typeBindingArr.length];
        for (int i10 = 0; i10 < typeBindingArr.length; i10++) {
            typeBindingArr3[i10] = mergeTypeAnnotations(typeBindingArr[i10], typeBindingArr2[i10], false, lookupEnvironment);
        }
        return lookupEnvironment.createParameterizedType(parameterizedTypeBinding.genericType(), typeBindingArr3, parameterizedTypeBinding.enclosingType());
    }

    public static TypeBinding moreDangerousType(TypeBinding typeBinding, TypeBinding typeBinding2) {
        if (typeBinding == null) {
            return null;
        }
        long validNullTagBits = validNullTagBits(typeBinding.tagBits);
        long validNullTagBits2 = validNullTagBits(typeBinding2.tagBits);
        return validNullTagBits != validNullTagBits2 ? validNullTagBits == 36028797018963968L ? typeBinding : (validNullTagBits2 != 36028797018963968L && validNullTagBits == 0) ? typeBinding : typeBinding2 : (typeBinding == typeBinding2 || !analyse(typeBinding, typeBinding2, -1).isAnyMismatch()) ? typeBinding : typeBinding2;
    }

    public static int nullStatusFromExpressionType(TypeBinding typeBinding) {
        if (typeBinding.isFreeTypeVariable()) {
            return 48;
        }
        long j10 = typeBinding.tagBits & TagBits.AnnotationNullMASK;
        if (j10 == 0) {
            return 1;
        }
        return j10 == 72057594037927936L ? 4 : 48;
    }

    public static NullAnnotationMatching okNonNullStatus(final Expression expression) {
        final MethodBinding methodBinding;
        if ((expression instanceof MessageSend) && (methodBinding = ((MessageSend) expression).binding) != null && methodBinding.isValidBinding()) {
            MethodBinding original = methodBinding.original();
            ReferenceBinding referenceBinding = original.declaringClass;
            if (referenceBinding instanceof BinaryTypeBinding) {
                BinaryTypeBinding binaryTypeBinding = (BinaryTypeBinding) referenceBinding;
                if (binaryTypeBinding.externalAnnotationStatus.isPotentiallyUnannotatedLib() && original.returnType.isTypeVariable() && (original.returnType.tagBits & TagBits.AnnotationNullMASK) == 0) {
                    final int i10 = binaryTypeBinding.externalAnnotationStatus == BinaryTypeBinding.ExternalAnnotationStatus.NO_EEA_FILE ? 0 : 1024;
                    return new NullAnnotationMatching(Severity.LEGACY_WARNING, 1, null) {
                        @Override
                        public void report(Scope scope) {
                            scope.problemReporter().nonNullTypeVariableInUnannotatedBinary(scope.environment(), methodBinding, expression, i10);
                        }
                    };
                }
            }
        }
        return NULL_ANNOTATIONS_OK_NONNULL;
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x0043  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x0056 A[RETURN] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static long providedNullTagBits(TypeBinding typeBinding) {
        boolean z10;
        TypeBinding typeBinding2;
        TypeBinding typeBinding3;
        long j10 = typeBinding.tagBits & TagBits.AnnotationNullMASK;
        if (j10 != 0) {
            return validNullTagBits(j10);
        }
        if (typeBinding.isWildcard()) {
            return TagBits.AnnotationNullMASK;
        }
        if (typeBinding.isTypeVariable()) {
            TypeVariableBinding typeVariableBinding = (TypeVariableBinding) typeBinding;
            if (typeVariableBinding.isCapture() && (typeBinding3 = ((CaptureBinding) typeVariableBinding).lowerBound) != null) {
                long j11 = typeBinding3.tagBits & TagBits.AnnotationNullMASK;
                if (j11 == 36028797018963968L) {
                    return 36028797018963968L;
                }
                if (j11 != 0) {
                    z10 = true;
                    typeBinding2 = typeVariableBinding.firstBound;
                    if (typeBinding2 != null) {
                        long j12 = typeBinding2.tagBits & TagBits.AnnotationNullMASK;
                        if (j12 == 72057594037927936L) {
                            return 72057594037927936L;
                        }
                        z10 |= j12 != 0;
                    }
                    if (!z10) {
                        return TagBits.AnnotationNullMASK;
                    }
                }
            }
            z10 = false;
            typeBinding2 = typeVariableBinding.firstBound;
            if (typeBinding2 != null) {
            }
            if (!z10) {
            }
        }
        return 0L;
    }

    public static long requiredNullTagBits(TypeBinding typeBinding, CheckMode checkMode) {
        TypeBinding typeBinding2;
        long j10 = typeBinding.tagBits & TagBits.AnnotationNullMASK;
        if (j10 != 0) {
            return validNullTagBits(j10);
        }
        if (typeBinding.isWildcard()) {
            return TagBits.AnnotationNullMASK;
        }
        if (typeBinding.isTypeVariable()) {
            if (typeBinding.isCapture() && (typeBinding2 = ((CaptureBinding) typeBinding).lowerBound) != null && (typeBinding2.tagBits & TagBits.AnnotationNullMASK) == 36028797018963968L) {
                return 36028797018963968L;
            }
            int i10 = $SWITCH_TABLE$org$eclipse$jdt$internal$compiler$ast$NullAnnotationMatching$CheckMode()[checkMode.ordinal()];
            if (i10 != 3 && i10 != 4 && i10 != 5 && i10 != 6) {
                return 72057594037927936L;
            }
        }
        return 0L;
    }

    public static TypeBinding strongerType(TypeBinding typeBinding, TypeBinding typeBinding2, LookupEnvironment lookupEnvironment) {
        return (typeBinding.tagBits & 72057594037927936L) != 0 ? mergeTypeAnnotations(typeBinding, typeBinding2, true, lookupEnvironment) : mergeTypeAnnotations(typeBinding2, typeBinding, true, lookupEnvironment);
    }

    public static long validNullTagBits(long j10) {
        long j11 = j10 & TagBits.AnnotationNullMASK;
        if (j11 == TagBits.AnnotationNullMASK) {
            return 0L;
        }
        return j11;
    }

    public static TypeBinding[] weakerTypes(TypeBinding[] typeBindingArr, TypeBinding[] typeBindingArr2, LookupEnvironment lookupEnvironment) {
        int length = typeBindingArr.length;
        TypeBinding[] typeBindingArr3 = new TypeBinding[length];
        for (int i10 = 0; i10 < length; i10++) {
            TypeBinding typeBinding = typeBindingArr[i10];
            long j10 = typeBinding.tagBits;
            TypeBinding typeBinding2 = typeBindingArr2[i10];
            long j11 = typeBinding2.tagBits;
            if ((j10 & 36028797018963968L) != 0) {
                typeBindingArr3[i10] = mergeTypeAnnotations(typeBinding, typeBinding2, true, lookupEnvironment);
            } else if ((j11 & 36028797018963968L) != 0) {
                typeBindingArr3[i10] = mergeTypeAnnotations(typeBinding2, typeBinding, true, lookupEnvironment);
            } else if ((j10 & 72057594037927936L) == 0) {
                typeBindingArr3[i10] = mergeTypeAnnotations(typeBinding, typeBinding2, true, lookupEnvironment);
            } else {
                typeBindingArr3[i10] = mergeTypeAnnotations(typeBinding2, typeBinding, true, lookupEnvironment);
            }
        }
        return typeBindingArr3;
    }

    public boolean isAnyMismatch() {
        return this.severity.isAnyMismatch();
    }

    public boolean isDefiniteMismatch() {
        return this.severity == Severity.MISMATCH;
    }

    public boolean isPotentiallyNullMismatch() {
        int i10;
        return (isDefiniteMismatch() || (i10 = this.nullStatus) == -1 || (i10 & 16) == 0) ? false : true;
    }

    public boolean isUnchecked() {
        return this.severity == Severity.UNCHECKED;
    }

    public void report(Scope scope) {
    }

    public String superTypeHintName(CompilerOptions compilerOptions, boolean z10) {
        return String.valueOf(this.superTypeHint.nullAnnotatedReadableName(compilerOptions, z10));
    }

    public String toString() {
        if (this == NULL_ANNOTATIONS_OK) {
            return "OK";
        }
        if (this == NULL_ANNOTATIONS_MISMATCH) {
            return "MISMATCH";
        }
        if (this == NULL_ANNOTATIONS_OK_NONNULL) {
            return "OK NonNull";
        }
        if (this == NULL_ANNOTATIONS_UNCHECKED) {
            return "UNCHECKED";
        }
        StringBuilder sb2 = new StringBuilder();
        sb2.append("Analysis result: severity=" + ((Object) this.severity));
        sb2.append(" nullStatus=" + this.nullStatus);
        return sb2.toString();
    }

    public boolean wantToReport() {
        return this.severity == Severity.LEGACY_WARNING;
    }

    public static class SearchContradictions extends TypeBindingVisitor {
        ReferenceBinding typeWithContradiction;

        @Override
        public boolean visit(ReferenceBinding referenceBinding) {
            if ((referenceBinding.tagBits & TagBits.AnnotationNullMASK) != TagBits.AnnotationNullMASK) {
                return true;
            }
            this.typeWithContradiction = referenceBinding;
            return false;
        }

        @Override
        public boolean visit(TypeVariableBinding typeVariableBinding) {
            if (!visit((ReferenceBinding) typeVariableBinding)) {
                return false;
            }
            long j10 = typeVariableBinding.tagBits & TagBits.AnnotationNullMASK;
            TypeBinding typeBinding = typeVariableBinding.firstBound;
            if (typeBinding != null) {
                j10 = typeBinding.tagBits & TagBits.AnnotationNullMASK;
            }
            for (TypeBinding typeBinding2 : typeVariableBinding.otherUpperBounds()) {
                j10 |= typeBinding2.tagBits & TagBits.AnnotationNullMASK;
            }
            if (j10 != TagBits.AnnotationNullMASK) {
                return true;
            }
            this.typeWithContradiction = typeVariableBinding;
            return false;
        }

        @Override
        public boolean visit(RawTypeBinding rawTypeBinding) {
            return visit((ReferenceBinding) rawTypeBinding);
        }

        /* JADX WARN: Removed duplicated region for block: B:12:0x0026 A[RETURN] */
        /* JADX WARN: Removed duplicated region for block: B:9:0x0022  */
        @Override
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public boolean visit(WildcardBinding wildcardBinding) {
            long j10;
            long j11;
            long j12 = wildcardBinding.tagBits & TagBits.AnnotationNullMASK;
            int i10 = wildcardBinding.boundKind;
            if (i10 != 1) {
                if (i10 == 2) {
                    j10 = wildcardBinding.bound.tagBits;
                    j11 = 36028797018963968L;
                }
                if (j12 == TagBits.AnnotationNullMASK) {
                    return true;
                }
                this.typeWithContradiction = wildcardBinding;
                return false;
            }
            j10 = wildcardBinding.bound.tagBits;
            j11 = 72057594037927936L;
            j12 |= j10 & j11;
            if (j12 == TagBits.AnnotationNullMASK) {
            }
        }

        @Override
        public boolean visit(ParameterizedTypeBinding parameterizedTypeBinding) {
            if (visit((ReferenceBinding) parameterizedTypeBinding)) {
                return super.visit(parameterizedTypeBinding);
            }
            return false;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:118:0x01f3 A[Catch: all -> 0x0099, TRY_ENTER, TryCatch #3 {all -> 0x0099, blocks: (B:40:0x0079, B:215:0x0088, B:45:0x012d, B:47:0x0135, B:49:0x013c, B:51:0x014a, B:53:0x0150, B:56:0x015a, B:61:0x016e, B:64:0x01d1, B:68:0x01d6, B:83:0x0188, B:85:0x0196, B:87:0x019a, B:93:0x01a6, B:95:0x01b3, B:98:0x01bb, B:99:0x01c2, B:103:0x01ca, B:106:0x0182, B:109:0x01dd, B:112:0x01e5, B:114:0x01ed, B:118:0x01f3, B:120:0x01f9, B:122:0x01ff, B:125:0x020a, B:129:0x0215, B:187:0x0220), top: B:39:0x0079 }] */
    /* JADX WARN: Removed duplicated region for block: B:234:0x00e6  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x0135 A[Catch: all -> 0x0099, TryCatch #3 {all -> 0x0099, blocks: (B:40:0x0079, B:215:0x0088, B:45:0x012d, B:47:0x0135, B:49:0x013c, B:51:0x014a, B:53:0x0150, B:56:0x015a, B:61:0x016e, B:64:0x01d1, B:68:0x01d6, B:83:0x0188, B:85:0x0196, B:87:0x019a, B:93:0x01a6, B:95:0x01b3, B:98:0x01bb, B:99:0x01c2, B:103:0x01ca, B:106:0x0182, B:109:0x01dd, B:112:0x01e5, B:114:0x01ed, B:118:0x01f3, B:120:0x01f9, B:122:0x01ff, B:125:0x020a, B:129:0x0215, B:187:0x0220), top: B:39:0x0079 }] */
    /* JADX WARN: Removed duplicated region for block: B:74:0x034a  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x034e A[Catch: all -> 0x0259, TRY_ENTER, TRY_LEAVE, TryCatch #2 {all -> 0x0259, blocks: (B:72:0x0344, B:76:0x034e, B:133:0x0277, B:136:0x027d, B:138:0x0283, B:139:0x0289, B:141:0x028d, B:143:0x0293, B:147:0x029d, B:150:0x02a4, B:152:0x02aa, B:154:0x02ae, B:156:0x02bb, B:159:0x02c8, B:162:0x02ce, B:165:0x02d6, B:166:0x02db, B:170:0x0303, B:177:0x0315, B:181:0x0323, B:182:0x0329, B:197:0x024a, B:199:0x0256, B:200:0x025f, B:202:0x0269, B:204:0x0273), top: B:196:0x024a }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static NullAnnotationMatching analyse(TypeBinding typeBinding, TypeBinding typeBinding2, TypeBinding typeBinding3, Substitution substitution, int i10, Expression expression, CheckMode checkMode) {
        TypeBinding typeBinding4;
        TypeBinding typeBinding5;
        TypeBinding typeBinding6;
        ReferenceBinding[] superInterfaces;
        int i11;
        ReferenceBinding[] referenceBindingArr;
        TypeBinding typeBinding7;
        int i12;
        TypeBinding typeBinding8;
        TypeBinding typeBinding9;
        TypeBinding typeBinding10 = typeBinding;
        int i13 = i10;
        if (!typeBinding.enterRecursiveFunction()) {
            return NULL_ANNOTATIONS_OK;
        }
        try {
            Severity severity = Severity.OK;
            NullAnnotationMatching nullAnnotationMatching = NULL_ANNOTATIONS_OK;
            if (areSameTypes(typeBinding, typeBinding2, typeBinding3)) {
                if ((typeBinding10.tagBits & 72057594037927936L) == 0) {
                    typeBinding.exitRecursiveFunction();
                    return nullAnnotationMatching;
                }
                NullAnnotationMatching okNonNullStatus = okNonNullStatus(expression);
                typeBinding.exitRecursiveFunction();
                return okNonNullStatus;
            }
            if ((typeBinding10 instanceof TypeVariableBinding) && substitution != null && (checkMode == CheckMode.EXACT || checkMode == CheckMode.COMPATIBLE || checkMode == CheckMode.BOUND_SUPER_CHECK)) {
                typeBinding.exitRecursiveFunction();
                typeBinding10 = Scope.substitute(substitution, typeBinding10);
                if (!typeBinding10.enterRecursiveFunction()) {
                    typeBinding10.exitRecursiveFunction();
                    return nullAnnotationMatching;
                }
                if (areSameTypes(typeBinding10, typeBinding2, typeBinding3)) {
                    if ((typeBinding10.tagBits & 72057594037927936L) == 0) {
                        typeBinding10.exitRecursiveFunction();
                        return nullAnnotationMatching;
                    }
                    NullAnnotationMatching okNonNullStatus2 = okNonNullStatus(expression);
                    typeBinding10.exitRecursiveFunction();
                    return okNonNullStatus2;
                }
            }
            TypeBinding typeBinding11 = typeBinding10;
            try {
                if (checkMode == CheckMode.BOUND_CHECK) {
                    try {
                        if ((typeBinding11 instanceof TypeVariableBinding) && (!(substitution instanceof ParameterizedTypeBinding) || (((ParameterizedTypeBinding) substitution).tagBits & TagBits.PassedBoundCheck) == 0)) {
                            ReferenceBinding superclass = typeBinding11.superclass();
                            try {
                                if (superclass == null || (!superclass.hasNullTypeAnnotations() && substitution == null)) {
                                    typeBinding6 = null;
                                    typeBinding5 = typeBinding11;
                                    superInterfaces = typeBinding5.superInterfaces();
                                    if (superInterfaces != null) {
                                        int i14 = 0;
                                        while (i14 < superInterfaces.length) {
                                            if (!superInterfaces[i14].hasNullTypeAnnotations() && substitution == null) {
                                                i11 = i14;
                                                referenceBindingArr = superInterfaces;
                                                i14 = i11 + 1;
                                                superInterfaces = referenceBindingArr;
                                            }
                                            i11 = i14;
                                            referenceBindingArr = superInterfaces;
                                            severity = severity.max(analyse(superInterfaces[i14], typeBinding2, null, substitution, i10, expression, CheckMode.BOUND_SUPER_CHECK).severity);
                                            if (severity == Severity.MISMATCH) {
                                                NullAnnotationMatching nullAnnotationMatching2 = new NullAnnotationMatching(severity, i13, typeBinding6);
                                                typeBinding5.exitRecursiveFunction();
                                                return nullAnnotationMatching2;
                                            }
                                            i14 = i11 + 1;
                                            superInterfaces = referenceBindingArr;
                                        }
                                    }
                                    typeBinding7 = typeBinding5;
                                    int i15 = 2;
                                    int i16 = -1;
                                    if (typeBinding7 instanceof ArrayBinding) {
                                        long[] jArr = ((ArrayBinding) typeBinding7).nullTagBitsPerDimension;
                                        if (jArr != null) {
                                            int dimensions = typeBinding7.dimensions();
                                            if (typeBinding7.dimensions() == typeBinding2.dimensions()) {
                                                long[] jArr2 = ((ArrayBinding) typeBinding2).nullTagBitsPerDimension;
                                                if (jArr2 == null) {
                                                    jArr2 = new long[dimensions + 1];
                                                }
                                                int i17 = i13;
                                                int i18 = 0;
                                                while (i18 <= dimensions) {
                                                    long validNullTagBits = validNullTagBits(jArr[i18]);
                                                    long validNullTagBits2 = validNullTagBits(jArr2[i18]);
                                                    if (i18 != 0 || validNullTagBits != 36028797018963968L || i13 == i16 || !checkMode.requiredNullableMatchesAll()) {
                                                        if (i18 > 0) {
                                                            i17 = i16;
                                                        }
                                                        Severity computeNullProblemSeverity = computeNullProblemSeverity(validNullTagBits, validNullTagBits2, i17, i18 == 0 ? checkMode : checkMode.toDetail(), false);
                                                        if (i18 > 0 && computeNullProblemSeverity == Severity.UNCHECKED && (expression instanceof ArrayAllocationExpression) && validNullTagBits2 == 0 && validNullTagBits != 0) {
                                                            Expression expression2 = ((ArrayAllocationExpression) expression).dimensions[i18 - 1];
                                                            if ((expression2 instanceof IntLiteral) && expression2.constant.intValue() == 0) {
                                                                Severity severity2 = Severity.OK;
                                                                typeBinding4 = typeBinding7;
                                                                typeBinding9 = null;
                                                                i13 = -1;
                                                                break;
                                                            }
                                                        }
                                                        Severity max = severity.max(computeNullProblemSeverity);
                                                        if (max == Severity.MISMATCH) {
                                                            NullAnnotationMatching nullAnnotationMatching3 = NULL_ANNOTATIONS_MISMATCH;
                                                            typeBinding7.exitRecursiveFunction();
                                                            return nullAnnotationMatching3;
                                                        }
                                                        severity = max;
                                                    } else if (i13 == i15) {
                                                        break;
                                                    }
                                                    if (severity == Severity.OK) {
                                                        i13 = -1;
                                                    }
                                                    i18++;
                                                    i16 = -1;
                                                    i15 = 2;
                                                    typeBinding6 = null;
                                                }
                                                typeBinding9 = typeBinding6;
                                                typeBinding4 = typeBinding7;
                                            } else if (typeBinding2.f102482id == 12 && dimensions > 0 && jArr[0] == 72057594037927936L) {
                                                NullAnnotationMatching nullAnnotationMatching4 = NULL_ANNOTATIONS_MISMATCH;
                                                typeBinding7.exitRecursiveFunction();
                                                return nullAnnotationMatching4;
                                            }
                                        }
                                        typeBinding4 = typeBinding7;
                                        typeBinding9 = null;
                                    } else {
                                        if (!typeBinding7.hasNullTypeAnnotations()) {
                                            if (!typeBinding2.hasNullTypeAnnotations()) {
                                                if (typeBinding7.isTypeVariable()) {
                                                }
                                                typeBinding4 = typeBinding7;
                                                typeBinding9 = null;
                                            }
                                        }
                                        long requiredNullTagBits = requiredNullTagBits(typeBinding7, checkMode);
                                        if (requiredNullTagBits == 36028797018963968L && i13 != -1 && checkMode.requiredNullableMatchesAll()) {
                                            typeBinding4 = typeBinding7;
                                            typeBinding8 = null;
                                            i12 = 2;
                                            if (severity != Severity.MISMATCH || i13 == i12) {
                                                typeBinding9 = typeBinding8;
                                            } else {
                                                TypeBinding findSuperTypeOriginatingFrom = typeBinding2.findSuperTypeOriginatingFrom(typeBinding4);
                                                TypeBinding findSuperTypeOriginatingFrom2 = typeBinding3 != null ? typeBinding3.findSuperTypeOriginatingFrom(typeBinding4) : typeBinding8;
                                                if (severity == Severity.UNCHECKED && typeBinding4.isTypeVariable() && typeBinding2.isTypeVariable() && (findSuperTypeOriginatingFrom == typeBinding4 || findSuperTypeOriginatingFrom2 == typeBinding4)) {
                                                    severity = Severity.OK;
                                                }
                                                TypeBinding typeBinding12 = findSuperTypeOriginatingFrom != typeBinding2 ? findSuperTypeOriginatingFrom : typeBinding8;
                                                if (typeBinding4.isParameterizedType() && (findSuperTypeOriginatingFrom instanceof ParameterizedTypeBinding)) {
                                                    TypeBinding[] typeBindingArr = ((ParameterizedTypeBinding) typeBinding4).arguments;
                                                    TypeBinding[] typeBindingArr2 = ((ParameterizedTypeBinding) findSuperTypeOriginatingFrom).arguments;
                                                    TypeBinding[] typeBindingArr3 = findSuperTypeOriginatingFrom2 instanceof ParameterizedTypeBinding ? ((ParameterizedTypeBinding) findSuperTypeOriginatingFrom2).arguments : typeBinding8;
                                                    if (typeBindingArr != null && typeBindingArr2 != null && typeBindingArr.length == typeBindingArr2.length) {
                                                        int i19 = 0;
                                                        while (i19 < typeBindingArr.length) {
                                                            int i20 = i19;
                                                            TypeBinding[] typeBindingArr4 = typeBindingArr2;
                                                            TypeBinding typeBinding13 = typeBinding8;
                                                            TypeBinding[] typeBindingArr5 = typeBindingArr;
                                                            severity = severity.max(analyse(typeBindingArr[i19], typeBindingArr2[i19], typeBindingArr3 != null ? typeBindingArr3[i19] : typeBinding8, substitution, -1, expression, checkMode.toDetail()).severity);
                                                            if (severity == Severity.MISMATCH) {
                                                                NullAnnotationMatching nullAnnotationMatching5 = new NullAnnotationMatching(severity, i13, typeBinding12);
                                                                typeBinding4.exitRecursiveFunction();
                                                                return nullAnnotationMatching5;
                                                            }
                                                            i19 = i20 + 1;
                                                            typeBinding8 = typeBinding13;
                                                            typeBindingArr2 = typeBindingArr4;
                                                            typeBindingArr = typeBindingArr5;
                                                        }
                                                    }
                                                }
                                                TypeBinding typeBinding14 = typeBinding8;
                                                ReferenceBinding enclosingType = typeBinding4.enclosingType();
                                                ReferenceBinding enclosingType2 = typeBinding2.enclosingType();
                                                if (enclosingType != null && enclosingType2 != null) {
                                                    if (typeBinding3 != null) {
                                                        typeBinding14 = typeBinding3.enclosingType();
                                                    }
                                                    severity = severity.max(analyse(enclosingType, enclosingType2, typeBinding14, substitution, -1, expression, checkMode).severity);
                                                }
                                                typeBinding9 = typeBinding12;
                                            }
                                        }
                                        long providedNullTagBits = providedNullTagBits(typeBinding2);
                                        i12 = 2;
                                        Severity computeNullProblemSeverity2 = computeNullProblemSeverity(requiredNullTagBits, providedNullTagBits, i10, checkMode, typeBinding7.isTypeVariable());
                                        if (computeNullProblemSeverity2.isAnyMismatch() && typeBinding7.isWildcard() && requiredNullTagBits != 0) {
                                            typeBinding4 = typeBinding7;
                                            try {
                                                typeBinding8 = null;
                                                if (((WildcardBinding) typeBinding4).determineNullBitsFromDeclaration(null, null) == 0) {
                                                    computeNullProblemSeverity2 = Severity.OK;
                                                }
                                            } catch (Throwable th2) {
                                                th = th2;
                                                typeBinding4.exitRecursiveFunction();
                                                throw th;
                                            }
                                        } else {
                                            typeBinding8 = null;
                                            typeBinding4 = typeBinding7;
                                        }
                                        severity = severity.max(computeNullProblemSeverity2);
                                        if (!severity.isAnyMismatch() && (providedNullTagBits & TagBits.AnnotationNullMASK) == 72057594037927936L) {
                                            nullAnnotationMatching = okNonNullStatus(expression);
                                        }
                                        if (severity != Severity.MISMATCH) {
                                        }
                                        typeBinding9 = typeBinding8;
                                    }
                                    if (!severity.isAnyMismatch()) {
                                        typeBinding4.exitRecursiveFunction();
                                        return nullAnnotationMatching;
                                    }
                                    NullAnnotationMatching nullAnnotationMatching6 = new NullAnnotationMatching(severity, i13, typeBinding9);
                                    typeBinding4.exitRecursiveFunction();
                                    return nullAnnotationMatching6;
                                }
                                severity = severity.max(analyse(superclass, typeBinding2, null, substitution, i10, expression, CheckMode.BOUND_SUPER_CHECK).severity);
                                if (severity == Severity.MISMATCH) {
                                    NullAnnotationMatching nullAnnotationMatching7 = new NullAnnotationMatching(severity, i13, null);
                                    typeBinding5.exitRecursiveFunction();
                                    return nullAnnotationMatching7;
                                }
                                superInterfaces = typeBinding5.superInterfaces();
                                if (superInterfaces != null) {
                                }
                                typeBinding7 = typeBinding5;
                                int i152 = 2;
                                int i162 = -1;
                                if (typeBinding7 instanceof ArrayBinding) {
                                }
                                if (!severity.isAnyMismatch()) {
                                }
                            } catch (Throwable th3) {
                                th = th3;
                                typeBinding4 = typeBinding5;
                                typeBinding4.exitRecursiveFunction();
                                throw th;
                            }
                            typeBinding6 = null;
                            typeBinding5 = typeBinding11;
                        }
                    } catch (Throwable th4) {
                        th = th4;
                        typeBinding5 = typeBinding11;
                    }
                }
                typeBinding6 = null;
                typeBinding5 = typeBinding11;
                typeBinding7 = typeBinding5;
                int i1522 = 2;
                int i1622 = -1;
                if (typeBinding7 instanceof ArrayBinding) {
                }
                if (!severity.isAnyMismatch()) {
                }
            } catch (Throwable th5) {
                th = th5;
                typeBinding4 = typeBinding11;
            }
        } catch (Throwable th6) {
            th = th6;
            typeBinding4 = typeBinding10;
        }
    }
}
