package org.eclipse.jdt.internal.compiler.ast;

import java.util.ArrayList;
import java.util.List;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.ASTVisitor;
import org.eclipse.jdt.internal.compiler.ast.NullAnnotationMatching;
import org.eclipse.jdt.internal.compiler.classfmt.ClassFileConstants;
import org.eclipse.jdt.internal.compiler.codegen.AnnotationContext;
import org.eclipse.jdt.internal.compiler.flow.FlowContext;
import org.eclipse.jdt.internal.compiler.flow.FlowInfo;
import org.eclipse.jdt.internal.compiler.impl.CompilerOptions;
import org.eclipse.jdt.internal.compiler.impl.Constant;
import org.eclipse.jdt.internal.compiler.lookup.AnnotationBinding;
import org.eclipse.jdt.internal.compiler.lookup.ArrayBinding;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.ClassScope;
import org.eclipse.jdt.internal.compiler.lookup.LocalVariableBinding;
import org.eclipse.jdt.internal.compiler.lookup.LookupEnvironment;
import org.eclipse.jdt.internal.compiler.lookup.ProblemReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.Scope;
import org.eclipse.jdt.internal.compiler.lookup.SourceTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.Substitution;
import org.eclipse.jdt.internal.compiler.lookup.TagBits;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeConstants;

public abstract class TypeReference extends Expression {
    public static final TypeReference[] NO_TYPE_ARGUMENTS = new TypeReference[0];
    public Annotation[][] annotations = null;

    public static class AnnotationCollector extends ASTVisitor {
        List annotationContexts;
        Annotation[][] annotationsOnDimensions;
        Wildcard currentWildcard;
        int dimensions;
        int info;
        int info2;
        LocalVariableBinding localVariable;
        int targetType;
        Expression typeReference;

        public AnnotationCollector(TypeParameter typeParameter, int i10, int i11, List list) {
            this.info = 0;
            this.info2 = 0;
            this.annotationContexts = list;
            this.typeReference = typeParameter.type;
            this.targetType = i10;
            this.info = i11;
        }

        /* JADX WARN: Removed duplicated region for block: B:16:0x0043  */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        private boolean internalVisit(Annotation annotation) {
            AnnotationContext annotationContext = annotation.isRuntimeTypeInvisible() ? new AnnotationContext(annotation, this.typeReference, this.targetType, 2) : annotation.isRuntimeTypeVisible() ? new AnnotationContext(annotation, this.typeReference, this.targetType, 1) : null;
            if (annotationContext != null) {
                annotationContext.wildcard = this.currentWildcard;
                int i10 = this.targetType;
                if (i10 != 0 && i10 != 1 && i10 != 22 && i10 != 23) {
                    switch (i10) {
                        case 16:
                            break;
                        case 17:
                        case 18:
                            annotationContext.info2 = this.info2;
                            annotationContext.info = this.info;
                            break;
                        default:
                            switch (i10) {
                                case 64:
                                case 65:
                                    annotationContext.variableBinding = this.localVariable;
                                    break;
                            }
                    }
                    this.annotationContexts.add(annotationContext);
                }
                annotationContext.info = this.info;
                this.annotationContexts.add(annotationContext);
            }
            return true;
        }

        @Override
        public void endVisit(Wildcard wildcard, BlockScope blockScope) {
            this.currentWildcard = null;
        }

        @Override
        public boolean visit(MarkerAnnotation markerAnnotation, BlockScope blockScope) {
            return internalVisit(markerAnnotation);
        }

        @Override
        public boolean visit(NormalAnnotation normalAnnotation, BlockScope blockScope) {
            return internalVisit(normalAnnotation);
        }

        @Override
        public boolean visit(SingleMemberAnnotation singleMemberAnnotation, BlockScope blockScope) {
            return internalVisit(singleMemberAnnotation);
        }

        @Override
        public boolean visit(Wildcard wildcard, BlockScope blockScope) {
            this.currentWildcard = wildcard;
            return true;
        }

        @Override
        public boolean visit(Argument argument, BlockScope blockScope) {
            if ((argument.bits & 536870912) == 0) {
                return true;
            }
            int i10 = this.localVariable.initializationCount;
            for (int i11 = 0; i11 < i10; i11++) {
                int[] iArr = this.localVariable.initializationPCs;
                int i12 = i11 << 1;
                if (iArr[i12] != iArr[i12 + 1]) {
                    return true;
                }
            }
            return false;
        }

        public AnnotationCollector(LocalDeclaration localDeclaration, int i10, LocalVariableBinding localVariableBinding, List list) {
            this.info = 0;
            this.info2 = 0;
            this.annotationContexts = list;
            this.typeReference = localDeclaration.type;
            this.targetType = i10;
            this.localVariable = localVariableBinding;
        }

        @Override
        public boolean visit(Argument argument, ClassScope classScope) {
            if ((argument.bits & 536870912) == 0) {
                return true;
            }
            int i10 = this.localVariable.initializationCount;
            for (int i11 = 0; i11 < i10; i11++) {
                int[] iArr = this.localVariable.initializationPCs;
                int i12 = i11 << 1;
                if (iArr[i12] != iArr[i12 + 1]) {
                    return true;
                }
            }
            return false;
        }

        @Override
        public boolean visit(LocalDeclaration localDeclaration, BlockScope blockScope) {
            int i10 = this.localVariable.initializationCount;
            for (int i11 = 0; i11 < i10; i11++) {
                int[] iArr = this.localVariable.initializationPCs;
                int i12 = i11 << 1;
                if (iArr[i12] != iArr[i12 + 1]) {
                    return true;
                }
            }
            return false;
        }

        public AnnotationCollector(LocalDeclaration localDeclaration, int i10, int i11, List list) {
            this.info = 0;
            this.info2 = 0;
            this.annotationContexts = list;
            this.typeReference = localDeclaration.type;
            this.targetType = i10;
            this.info = i11;
        }

        public AnnotationCollector(TypeReference typeReference, int i10, List list) {
            this.info = 0;
            this.info2 = 0;
            this.annotationContexts = list;
            this.typeReference = typeReference;
            this.targetType = i10;
        }

        public AnnotationCollector(Expression expression, int i10, int i11, List list) {
            this.info2 = 0;
            this.annotationContexts = list;
            this.typeReference = expression;
            this.info = i11;
            this.targetType = i10;
        }

        public AnnotationCollector(TypeReference typeReference, int i10, int i11, int i12, List list) {
            this.annotationContexts = list;
            this.typeReference = typeReference;
            this.info = i11;
            this.targetType = i10;
            this.info2 = i12;
        }

        public AnnotationCollector(TypeReference typeReference, int i10, int i11, List list, Annotation[][] annotationArr, int i12) {
            this.info2 = 0;
            this.annotationContexts = list;
            this.typeReference = typeReference;
            this.info = i11;
            this.targetType = i10;
            this.annotationsOnDimensions = annotationArr;
            this.dimensions = i12;
        }
    }

    public enum AnnotationPosition {
        MAIN_TYPE,
        LEAF_TYPE,
        ANY;

        public static AnnotationPosition[] valuesCustom() {
            AnnotationPosition[] valuesCustom = values();
            int length = valuesCustom.length;
            AnnotationPosition[] annotationPositionArr = new AnnotationPosition[length];
            System.arraycopy(valuesCustom, 0, annotationPositionArr, 0, length);
            return annotationPositionArr;
        }
    }

    public static final TypeReference baseTypeReference(int i10, int i11, Annotation[][] annotationArr) {
        if (i11 == 0) {
            switch (i10) {
                case 2:
                    return new SingleTypeReference(TypeBinding.CHAR.simpleName, 0L);
                case 3:
                    return new SingleTypeReference(TypeBinding.BYTE.simpleName, 0L);
                case 4:
                    return new SingleTypeReference(TypeBinding.SHORT.simpleName, 0L);
                case 5:
                    return new SingleTypeReference(TypeBinding.BOOLEAN.simpleName, 0L);
                case 6:
                    return new SingleTypeReference(TypeBinding.VOID.simpleName, 0L);
                case 7:
                default:
                    return new SingleTypeReference(TypeBinding.LONG.simpleName, 0L);
                case 8:
                    return new SingleTypeReference(TypeBinding.DOUBLE.simpleName, 0L);
                case 9:
                    return new SingleTypeReference(TypeBinding.FLOAT.simpleName, 0L);
                case 10:
                    return new SingleTypeReference(TypeBinding.INT.simpleName, 0L);
            }
        }
        switch (i10) {
            case 2:
                return new ArrayTypeReference(TypeBinding.CHAR.simpleName, i11, annotationArr, 0L);
            case 3:
                return new ArrayTypeReference(TypeBinding.BYTE.simpleName, i11, annotationArr, 0L);
            case 4:
                return new ArrayTypeReference(TypeBinding.SHORT.simpleName, i11, annotationArr, 0L);
            case 5:
                return new ArrayTypeReference(TypeBinding.BOOLEAN.simpleName, i11, annotationArr, 0L);
            case 6:
                return new ArrayTypeReference(TypeBinding.VOID.simpleName, i11, annotationArr, 0L);
            case 7:
            default:
                return new ArrayTypeReference(TypeBinding.LONG.simpleName, i11, annotationArr, 0L);
            case 8:
                return new ArrayTypeReference(TypeBinding.DOUBLE.simpleName, i11, annotationArr, 0L);
            case 9:
                return new ArrayTypeReference(TypeBinding.FLOAT.simpleName, i11, annotationArr, 0L);
            case 10:
                return new ArrayTypeReference(TypeBinding.INT.simpleName, i11, annotationArr, 0L);
        }
    }

    public static boolean containsNullAnnotation(Annotation[] annotationArr) {
        if (annotationArr != null) {
            for (Annotation annotation : annotationArr) {
                if (annotation != null && annotation.hasNullBit(96)) {
                    return true;
                }
            }
        }
        return false;
    }

    public void aboutToResolve(Scope scope) {
    }

    @Override
    public FlowInfo analyseCode(BlockScope blockScope, FlowContext flowContext, FlowInfo flowInfo) {
        return flowInfo;
    }

    public abstract TypeReference augmentTypeWithAdditionalDimensions(int i10, Annotation[][] annotationArr, boolean z10);

    public void checkBounds(Scope scope) {
    }

    public void checkIllegalNullAnnotation(Scope scope) {
        if (this.resolvedType.leafComponentType().isBaseType() && hasNullTypeAnnotation(AnnotationPosition.LEAF_TYPE)) {
            scope.problemReporter().illegalAnnotationForBaseType(this, this.annotations[0], this.resolvedType.tagBits & TagBits.AnnotationNullMASK);
        }
    }

    public void checkIllegalNullAnnotations(Scope scope, TypeReference[] typeReferenceArr) {
        if (!scope.environment().usesNullTypeAnnotations() || typeReferenceArr == null) {
            return;
        }
        for (TypeReference typeReference : typeReferenceArr) {
            if (typeReference.resolvedType != null) {
                typeReference.checkIllegalNullAnnotation(scope);
            }
        }
    }

    public void checkNullConstraints(Scope scope, Substitution substitution, TypeBinding[] typeBindingArr, int i10) {
        if (typeBindingArr != null && typeBindingArr.length > i10) {
            TypeBinding typeBinding = typeBindingArr[i10];
            if (typeBinding.hasNullTypeAnnotations() && NullAnnotationMatching.analyse(typeBinding, this.resolvedType, null, substitution, -1, null, NullAnnotationMatching.CheckMode.BOUND_CHECK).isAnyMismatch()) {
                scope.problemReporter().nullityMismatchTypeArgument(typeBinding, this.resolvedType, this);
            }
        }
        checkIllegalNullAnnotation(scope);
    }

    public int dimensions() {
        return 0;
    }

    public int extraDimensions() {
        return 0;
    }

    public Annotation findAnnotation(long j10) {
        Annotation[] annotationArr;
        Annotation[][] annotationArr2 = this.annotations;
        if (annotationArr2 == null || (annotationArr = annotationArr2[annotationArr2.length - 1]) == null) {
            return null;
        }
        int i10 = j10 == 72057594037927936L ? 32 : 64;
        for (int i11 = 0; i11 < annotationArr.length; i11++) {
            Annotation annotation = annotationArr[i11];
            if (annotation != null && annotation.hasNullBit(i10)) {
                return annotationArr[i11];
            }
        }
        return null;
    }

    public AnnotationContext[] getAllAnnotationContexts(int i10) {
        ArrayList arrayList = new ArrayList();
        traverse(new AnnotationCollector(this, i10, arrayList), (BlockScope) null);
        return (AnnotationContext[]) arrayList.toArray(new AnnotationContext[arrayList.size()]);
    }

    public int getAnnotatableLevels() {
        return 1;
    }

    public Annotation[][] getAnnotationsOnDimensions(boolean z10) {
        return null;
    }

    public abstract char[] getLastToken();

    public Annotation[][] getMergedAnnotationsOnDimensions(int i10, Annotation[][] annotationArr) {
        Annotation[][] annotationsOnDimensions = getAnnotationsOnDimensions(true);
        int dimensions = dimensions();
        if (annotationsOnDimensions == null && annotationArr == null) {
            return null;
        }
        int i11 = i10 + dimensions;
        Annotation[][] annotationArr2 = new Annotation[i11];
        int i12 = 0;
        if (annotationsOnDimensions != null) {
            for (int i13 = 0; i13 < dimensions; i13++) {
                annotationArr2[i13] = annotationsOnDimensions[i13];
            }
        }
        if (annotationArr != null) {
            while (dimensions < i11) {
                annotationArr2[dimensions] = annotationArr[i12];
                dimensions++;
                i12++;
            }
        }
        return annotationArr2;
    }

    public char[][] getParameterizedTypeName() {
        return getTypeName();
    }

    public TypeReference[][] getTypeArguments() {
        return null;
    }

    public abstract TypeBinding getTypeBinding(Scope scope);

    public abstract char[][] getTypeName();

    public TypeReference[] getTypeReferences() {
        return new TypeReference[]{this};
    }

    public boolean hasNullTypeAnnotation(AnnotationPosition annotationPosition) {
        Annotation[][] annotationArr = this.annotations;
        if (annotationArr != null) {
            if (annotationPosition == AnnotationPosition.MAIN_TYPE) {
                return containsNullAnnotation(annotationArr[annotationArr.length - 1]);
            }
            for (Annotation[] annotationArr2 : annotationArr) {
                if (containsNullAnnotation(annotationArr2)) {
                    return true;
                }
            }
        }
        return false;
    }

    public TypeBinding internalResolveType(Scope scope, int i10) {
        TypeBinding closestMatch;
        this.constant = Constant.NotAConstant;
        TypeBinding typeBinding = this.resolvedType;
        if (typeBinding != null) {
            if (typeBinding.isValidBinding()) {
                return this.resolvedType;
            }
            int problemId = this.resolvedType.problemId();
            if ((problemId == 1 || problemId == 2 || problemId == 5) && (closestMatch = this.resolvedType.closestMatch()) != null) {
                return scope.environment().convertToRawType(closestMatch, false);
            }
            return null;
        }
        TypeBinding typeBinding2 = getTypeBinding(scope);
        this.resolvedType = typeBinding2;
        if (typeBinding2 == null) {
            return null;
        }
        boolean isValidBinding = typeBinding2.isValidBinding();
        if (!isValidBinding) {
            if (isTypeNameVar(scope)) {
                reportVarIsNotAllowedHere(scope);
            } else {
                reportInvalidType(scope);
            }
            int problemId2 = typeBinding2.problemId();
            if ((problemId2 != 1 && problemId2 != 2 && problemId2 != 5) || (typeBinding2 = typeBinding2.closestMatch()) == null) {
                return null;
            }
        }
        if (typeBinding2.isArrayType() && ((ArrayBinding) typeBinding2).leafComponentType == TypeBinding.VOID) {
            scope.problemReporter().cannotAllocateVoidArray(this);
            return null;
        }
        if (!(this instanceof QualifiedTypeReference) && isTypeUseDeprecated(typeBinding2, scope)) {
            reportDeprecatedType(typeBinding2, scope);
        }
        TypeBinding convertToRawType = scope.environment().convertToRawType(typeBinding2, false);
        if (convertToRawType.leafComponentType().isRawType() && (this.bits & 1073741824) == 0 && scope.compilerOptions().getSeverity(CompilerOptions.RawTypeReference) != 256) {
            scope.problemReporter().rawTypeReference(this, convertToRawType);
        }
        if (!isValidBinding) {
            resolveAnnotations(scope, 0);
            return convertToRawType;
        }
        this.resolvedType = convertToRawType;
        resolveAnnotations(scope, i10);
        return this.resolvedType;
    }

    public boolean isBaseTypeReference() {
        return false;
    }

    public boolean isParameterizedTypeReference() {
        return false;
    }

    public boolean isTypeNameVar(Scope scope) {
        CompilerOptions compilerOptions = scope != null ? scope.compilerOptions() : null;
        if (compilerOptions != null && compilerOptions.sourceLevel < ClassFileConstants.JDK10) {
            return false;
        }
        char[][] typeName = getTypeName();
        return typeName.length == 1 && CharOperation.equals(typeName[0], TypeConstants.VAR);
    }

    @Override
    public boolean isTypeReference() {
        return true;
    }

    public boolean isUnionType() {
        return false;
    }

    public boolean isVarargs() {
        return (this.bits & 16384) != 0;
    }

    public boolean isWildcard() {
        return false;
    }

    public void reportDeprecatedType(TypeBinding typeBinding, Scope scope, int i10) {
        scope.problemReporter().deprecatedType(typeBinding, this, i10);
    }

    public void reportInvalidType(Scope scope) {
        scope.problemReporter().invalidType(this, this.resolvedType);
    }

    public void reportVarIsNotAllowedHere(Scope scope) {
        scope.problemReporter().varIsNotAllowedHere(this);
    }

    public void resolveAnnotations(Scope scope, int i10) {
        BlockScope typeAnnotationsResolutionScope;
        long[] jArr;
        TypeBinding typeBinding;
        Annotation[][] annotationsOnDimensions = getAnnotationsOnDimensions();
        if ((this.annotations != null || annotationsOnDimensions != null) && (typeAnnotationsResolutionScope = Scope.typeAnnotationsResolutionScope(scope)) != null) {
            int dimensions = dimensions();
            if (this.annotations != null) {
                TypeBinding resolveAnnotations = ASTNode.resolveAnnotations(typeAnnotationsResolutionScope, this.annotations, this.resolvedType.leafComponentType());
                if (dimensions > 0) {
                    resolveAnnotations = scope.environment().createArrayType(resolveAnnotations, dimensions);
                }
                this.resolvedType = resolveAnnotations;
            }
            if (annotationsOnDimensions != null) {
                TypeBinding resolveAnnotations2 = ASTNode.resolveAnnotations(typeAnnotationsResolutionScope, annotationsOnDimensions, this.resolvedType);
                this.resolvedType = resolveAnnotations2;
                if ((resolveAnnotations2 instanceof ArrayBinding) && (jArr = ((ArrayBinding) resolveAnnotations2).nullTagBitsPerDimension) != null) {
                    for (int i11 = 0; i11 < dimensions; i11++) {
                        if ((jArr[i11] & TagBits.AnnotationNullMASK) == TagBits.AnnotationNullMASK) {
                            scope.problemReporter().contradictoryNullAnnotations(annotationsOnDimensions[i11]);
                            jArr[i11] = 0;
                        }
                    }
                }
            }
        }
        if (!scope.compilerOptions().isAnnotationBasedNullAnalysisEnabled || (typeBinding = this.resolvedType) == null || (TagBits.AnnotationNullMASK & typeBinding.tagBits) != 0 || typeBinding.isTypeVariable() || this.resolvedType.isWildcard() || i10 == 0 || !scope.hasDefaultNullnessFor(i10, this.sourceStart)) {
            return;
        }
        if (i10 == 256 && this.resolvedType.f102482id == 1) {
            scope.problemReporter().implicitObjectBoundNoNullDefault(this);
        } else {
            LookupEnvironment environment = scope.environment();
            this.resolvedType = environment.createAnnotatedType(this.resolvedType, new AnnotationBinding[]{environment.getNonNullAnnotation()});
        }
    }

    public TypeBinding resolveSuperType(ClassScope classScope) {
        TypeBinding resolveType = resolveType(classScope);
        if (resolveType == null) {
            return null;
        }
        if (!resolveType.isTypeVariable()) {
            return resolveType;
        }
        if (this.resolvedType.isValidBinding()) {
            this.resolvedType = new ProblemReferenceBinding(getTypeName(), (ReferenceBinding) this.resolvedType, 9);
            reportInvalidType(classScope);
        }
        return null;
    }

    @Override
    public final TypeBinding resolveType(BlockScope blockScope) {
        return resolveType(blockScope, true);
    }

    public TypeBinding resolveTypeArgument(BlockScope blockScope, ReferenceBinding referenceBinding, int i10) {
        return resolveType(blockScope, true, 64);
    }

    public void setAnnotationsOnDimensions(Annotation[][] annotationArr) {
    }

    @Override
    public abstract void traverse(ASTVisitor aSTVisitor, BlockScope blockScope);

    @Override
    public abstract void traverse(ASTVisitor aSTVisitor, ClassScope classScope);

    public Annotation[][] getAnnotationsOnDimensions() {
        return getAnnotationsOnDimensions(false);
    }

    public void reportDeprecatedType(TypeBinding typeBinding, Scope scope) {
        scope.problemReporter().deprecatedType(typeBinding, this, Integer.MAX_VALUE);
    }

    public TypeBinding resolveType(BlockScope blockScope, boolean z10) {
        return resolveType(blockScope, z10, 0);
    }

    public TypeBinding resolveTypeArgument(ClassScope classScope, ReferenceBinding referenceBinding, int i10) {
        SourceTypeBinding sourceTypeBinding = classScope.referenceContext.binding;
        try {
            if (sourceTypeBinding.isHierarchyBeingConnected()) {
                long j10 = sourceTypeBinding.tagBits;
                r13 = (j10 & TagBits.PauseHierarchyCheck) == 0;
                sourceTypeBinding.tagBits = j10 | TagBits.PauseHierarchyCheck;
            }
            TypeBinding resolveType = resolveType(classScope, 64);
            if (r13) {
                sourceTypeBinding.tagBits = (-524289) & sourceTypeBinding.tagBits;
            }
            return resolveType;
        } catch (Throwable th2) {
            if (r13) {
                sourceTypeBinding.tagBits = (-524289) & sourceTypeBinding.tagBits;
            }
            throw th2;
        }
    }

    public TypeBinding resolveType(BlockScope blockScope, boolean z10, int i10) {
        return internalResolveType(blockScope, i10);
    }

    @Override
    public TypeBinding resolveType(ClassScope classScope) {
        return resolveType(classScope, 0);
    }

    public void getAllAnnotationContexts(int i10, int i11, List list) {
        traverse(new AnnotationCollector(this, i10, i11, list), (BlockScope) null);
    }

    public TypeBinding resolveType(ClassScope classScope, int i10) {
        return internalResolveType(classScope, i10);
    }

    public void getAllAnnotationContexts(int i10, int i11, List list, Annotation[] annotationArr) {
        AnnotationCollector annotationCollector = new AnnotationCollector(this, i10, i11, list);
        int length = annotationArr == null ? 0 : annotationArr.length;
        for (int i12 = 0; i12 < length; i12++) {
            annotationArr[i12].traverse(annotationCollector, (BlockScope) null);
        }
        traverse(annotationCollector, (BlockScope) null);
    }

    public void getAllAnnotationContexts(int i10, int i11, List list, Annotation[][] annotationArr, int i12) {
        AnnotationCollector annotationCollector = new AnnotationCollector(this, i10, i11, list, annotationArr, i12);
        traverse(annotationCollector, (BlockScope) null);
        if (annotationArr != null) {
            for (Annotation[] annotationArr2 : annotationArr) {
                if (annotationArr2 != null) {
                    for (Annotation annotation : annotationArr2) {
                        annotation.traverse(annotationCollector, (BlockScope) null);
                    }
                }
            }
        }
    }

    public void getAllAnnotationContexts(int i10, int i11, int i12, List list) {
        traverse(new AnnotationCollector(this, i10, i11, i12, list), (BlockScope) null);
    }

    public static final TypeReference baseTypeReference(int i10, int i11) {
        return baseTypeReference(i10, i11, null);
    }

    public void getAllAnnotationContexts(int i10, List list) {
        traverse(new AnnotationCollector(this, i10, list), (BlockScope) null);
    }
}
