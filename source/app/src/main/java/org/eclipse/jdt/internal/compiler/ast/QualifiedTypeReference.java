package org.eclipse.jdt.internal.compiler.ast;

import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.ASTVisitor;
import org.eclipse.jdt.internal.compiler.lookup.Binding;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.ClassScope;
import org.eclipse.jdt.internal.compiler.lookup.IQualifiedTypeResolutionListener;
import org.eclipse.jdt.internal.compiler.lookup.LookupEnvironment;
import org.eclipse.jdt.internal.compiler.lookup.PackageBinding;
import org.eclipse.jdt.internal.compiler.lookup.ParameterizedTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.ProblemReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.Scope;
import org.eclipse.jdt.internal.compiler.lookup.SplitPackageBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeVariableBinding;
import org.eclipse.jdt.internal.compiler.problem.AbortCompilation;
import w2.C15883c;

public class QualifiedTypeReference extends TypeReference {
    public long[] sourcePositions;
    public char[][] tokens;

    public QualifiedTypeReference(char[][] cArr, long[] jArr) {
        this.tokens = cArr;
        this.sourcePositions = jArr;
        this.sourceStart = (int) (jArr[0] >>> 32);
        this.sourceEnd = (int) (jArr[jArr.length - 1] & 4294967295L);
    }

    public static void rejectAnnotationsOnStaticMemberQualififer(Scope scope, ReferenceBinding referenceBinding, Annotation[] annotationArr) {
        if (!referenceBinding.isMemberType() || !referenceBinding.isStatic() || annotationArr == null || annotationArr.length <= 0) {
            return;
        }
        scope.problemReporter().illegalTypeAnnotationsInStaticMemberAccess(annotationArr[0], annotationArr[annotationArr.length - 1]);
    }

    @Override
    public TypeReference augmentTypeWithAdditionalDimensions(int i10, Annotation[][] annotationArr, boolean z10) {
        ArrayQualifiedTypeReference arrayQualifiedTypeReference = new ArrayQualifiedTypeReference(this.tokens, dimensions() + i10, getMergedAnnotationsOnDimensions(i10, annotationArr), this.sourcePositions);
        arrayQualifiedTypeReference.annotations = this.annotations;
        arrayQualifiedTypeReference.bits |= this.bits & 1048576;
        if (!z10) {
            arrayQualifiedTypeReference.extendedDimensions = i10;
        }
        return arrayQualifiedTypeReference;
    }

    public TypeBinding findNextTypeBinding(int i10, Scope scope, PackageBinding packageBinding) {
        LookupEnvironment environment = scope.environment();
        try {
            try {
                environment.missingClassFileLocation = this;
                TypeBinding typeBinding = this.resolvedType;
                if (typeBinding == null) {
                    this.resolvedType = scope.getType(this.tokens[i10], packageBinding);
                } else {
                    ReferenceBinding memberType = scope.getMemberType(this.tokens[i10], (ReferenceBinding) typeBinding);
                    this.resolvedType = memberType;
                    if (!memberType.isValidBinding()) {
                        this.resolvedType = new ProblemReferenceBinding(CharOperation.subarray(this.tokens, 0, i10 + 1), (ReferenceBinding) this.resolvedType.closestMatch(), this.resolvedType.problemId());
                    }
                }
                TypeBinding typeBinding2 = this.resolvedType;
                environment.missingClassFileLocation = null;
                return typeBinding2;
            } catch (AbortCompilation e10) {
                e10.updateContext(this, scope.referenceCompilationUnit().compilationResult);
                throw e10;
            }
        } catch (Throwable th2) {
            environment.missingClassFileLocation = null;
            throw th2;
        }
    }

    @Override
    public int getAnnotatableLevels() {
        return this.tokens.length;
    }

    @Override
    public char[] getLastToken() {
        return this.tokens[r0.length - 1];
    }

    @Override
    public TypeBinding getTypeBinding(Scope scope) {
        TypeBinding typeBinding = this.resolvedType;
        if (typeBinding != null) {
            return typeBinding;
        }
        Binding binding = scope.getPackage(this.tokens);
        TypeBinding typeBinding2 = this.resolvedType;
        if (typeBinding2 != null) {
            return typeBinding2;
        }
        if (binding != null && !binding.isValidBinding()) {
            if (!(binding instanceof ProblemReferenceBinding) || binding.problemId() != 1) {
                return (ReferenceBinding) binding;
            }
            return new ProblemReferenceBinding(((ProblemReferenceBinding) binding).compoundName, scope.getTypeOrPackage(this.tokens) instanceof PackageBinding ? null : scope.environment().createMissingType(null, this.tokens), 1);
        }
        PackageBinding packageBinding = binding == null ? null : (PackageBinding) binding;
        int length = packageBinding == null ? 0 : packageBinding.compoundName.length;
        if (packageBinding != null) {
            PackageBinding visibleFor = packageBinding.getVisibleFor(scope.module(), false);
            if ((visibleFor instanceof SplitPackageBinding) && !scope.compilerOptions().enableJdtDebugCompileMode) {
                scope.problemReporter().conflictingPackagesFromModules((SplitPackageBinding) visibleFor, scope.module(), this.sourceStart, (int) this.sourcePositions[length - 1]);
                this.resolvedType = new ProblemReferenceBinding(this.tokens, null, 3);
                return null;
            }
        }
        rejectAnnotationsOnPackageQualifiers(scope, packageBinding);
        boolean z10 = scope.kind == 3;
        int length2 = this.tokens.length;
        int i10 = length2 - 1;
        ParameterizedTypeBinding parameterizedTypeBinding = null;
        while (length < length2) {
            findNextTypeBinding(length, scope, packageBinding);
            if (!this.resolvedType.isValidBinding()) {
                return this.resolvedType;
            }
            if (length == 0 && this.resolvedType.isTypeVariable() && ((TypeVariableBinding) this.resolvedType).firstBound == null) {
                scope.problemReporter().illegalAccessFromTypeVariable((TypeVariableBinding) this.resolvedType, this);
                return null;
            }
            if (length <= i10 && isTypeUseDeprecated(this.resolvedType, scope)) {
                reportDeprecatedType(this.resolvedType, scope, length);
            }
            if (z10 && ((ClassScope) scope).detectHierarchyCycle(this.resolvedType, this)) {
                return null;
            }
            ReferenceBinding referenceBinding = (ReferenceBinding) this.resolvedType;
            if (parameterizedTypeBinding != null) {
                Annotation[][] annotationArr = this.annotations;
                if (annotationArr != null) {
                    rejectAnnotationsOnStaticMemberQualififer(scope, referenceBinding, annotationArr[length - 1]);
                }
                ReferenceBinding enclosingType = referenceBinding.enclosingType();
                if (enclosingType != null && TypeBinding.notEquals(enclosingType.erasure(), parameterizedTypeBinding.erasure())) {
                    parameterizedTypeBinding = enclosingType;
                }
                if (referenceBinding.isGenericType()) {
                    parameterizedTypeBinding = scope.environment().createRawType(referenceBinding, parameterizedTypeBinding);
                } else if (referenceBinding.hasEnclosingInstanceContext()) {
                    if (parameterizedTypeBinding.isRawType()) {
                        parameterizedTypeBinding = scope.environment().createRawType((ReferenceBinding) referenceBinding.erasure(), parameterizedTypeBinding);
                    } else if (parameterizedTypeBinding.isParameterizedType() && TypeBinding.equalsEquals(parameterizedTypeBinding.erasure(), referenceBinding.enclosingType().erasure())) {
                        parameterizedTypeBinding = scope.environment().createParameterizedType((ReferenceBinding) referenceBinding.erasure(), null, parameterizedTypeBinding);
                    }
                }
                recordResolution(scope.environment(), parameterizedTypeBinding);
                length++;
            } else if (referenceBinding.isGenericType()) {
                referenceBinding = (ReferenceBinding) scope.environment().convertToRawType(referenceBinding, false);
            }
            parameterizedTypeBinding = referenceBinding;
            recordResolution(scope.environment(), parameterizedTypeBinding);
            length++;
        }
        this.resolvedType = parameterizedTypeBinding;
        return parameterizedTypeBinding;
    }

    @Override
    public char[][] getTypeName() {
        return this.tokens;
    }

    @Override
    public StringBuffer printExpression(int i10, StringBuffer stringBuffer) {
        Annotation[] annotationArr;
        for (int i11 = 0; i11 < this.tokens.length; i11++) {
            if (i11 > 0) {
                stringBuffer.append('.');
            }
            Annotation[][] annotationArr2 = this.annotations;
            if (annotationArr2 != null && (annotationArr = annotationArr2[i11]) != null) {
                ASTNode.printAnnotations(annotationArr, stringBuffer);
                stringBuffer.append(C15883c.f126249O);
            }
            stringBuffer.append(this.tokens[i11]);
        }
        return stringBuffer;
    }

    public void recordResolution(LookupEnvironment lookupEnvironment, TypeBinding typeBinding) {
        if (typeBinding == null || !typeBinding.isValidBinding()) {
            return;
        }
        synchronized (lookupEnvironment.root) {
            int i10 = 0;
            while (true) {
                try {
                    IQualifiedTypeResolutionListener[] iQualifiedTypeResolutionListenerArr = lookupEnvironment.root.resolutionListeners;
                    if (i10 < iQualifiedTypeResolutionListenerArr.length) {
                        iQualifiedTypeResolutionListenerArr[i10].recordResolution(this, typeBinding);
                        i10++;
                    }
                } finally {
                }
            }
        }
    }

    public void rejectAnnotationsOnPackageQualifiers(Scope scope, PackageBinding packageBinding) {
        if (packageBinding == null || this.annotations == null) {
            return;
        }
        int length = packageBinding.compoundName.length;
        for (int i10 = 0; i10 < length; i10++) {
            Annotation[] annotationArr = this.annotations[i10];
            if (annotationArr != null && annotationArr.length > 0) {
                if (i10 == 0) {
                    for (Annotation annotation : annotationArr) {
                        scope.problemReporter().typeAnnotationAtQualifiedName(annotation);
                    }
                } else {
                    scope.problemReporter().misplacedTypeAnnotations(annotationArr[0], annotationArr[annotationArr.length - 1]);
                    this.annotations[i10] = null;
                }
            }
        }
    }

    @Override
    public void traverse(ASTVisitor aSTVisitor, BlockScope blockScope) {
        Annotation[][] annotationArr;
        if (aSTVisitor.visit(this, blockScope) && (annotationArr = this.annotations) != null) {
            int length = annotationArr.length;
            for (int i10 = 0; i10 < length; i10++) {
                Annotation[] annotationArr2 = this.annotations[i10];
                int length2 = annotationArr2 == null ? 0 : annotationArr2.length;
                for (int i11 = 0; i11 < length2; i11++) {
                    this.annotations[i10][i11].traverse(aSTVisitor, blockScope);
                }
            }
        }
        aSTVisitor.endVisit(this, blockScope);
    }

    @Override
    public void traverse(ASTVisitor aSTVisitor, ClassScope classScope) {
        Annotation[][] annotationArr;
        if (aSTVisitor.visit(this, classScope) && (annotationArr = this.annotations) != null) {
            int length = annotationArr.length;
            for (int i10 = 0; i10 < length; i10++) {
                Annotation[] annotationArr2 = this.annotations[i10];
                int length2 = annotationArr2 == null ? 0 : annotationArr2.length;
                for (int i11 = 0; i11 < length2; i11++) {
                    this.annotations[i10][i11].traverse(aSTVisitor, classScope);
                }
            }
        }
        aSTVisitor.endVisit(this, classScope);
    }
}
