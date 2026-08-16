package org.eclipse.jdt.internal.compiler.lookup;

import java.util.List;
import java.util.Set;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.ClassFile;
import org.eclipse.jdt.internal.compiler.classfmt.ClassFileConstants;
import org.eclipse.jdt.internal.compiler.impl.CompilerOptions;
import org.eclipse.jdt.internal.compiler.impl.Constant;
import org.eclipse.jdt.internal.core.JavaElement;
import w2.C15883c;

public final class ArrayBinding extends TypeBinding {
    public static final FieldBinding ArrayLength = new FieldBinding(TypeConstants.LENGTH, TypeBinding.INT, 17, null, Constant.NotAConstant);
    private MethodBinding clone;
    char[] constantPoolName;
    public int dimensions;
    LookupEnvironment environment;
    char[] genericTypeSignature;
    public TypeBinding leafComponentType;
    public long[] nullTagBitsPerDimension;

    public ArrayBinding(TypeBinding typeBinding, int i10, LookupEnvironment lookupEnvironment) {
        long j10 = this.tagBits | 1;
        this.tagBits = j10;
        this.leafComponentType = typeBinding;
        this.dimensions = i10;
        this.environment = lookupEnvironment;
        if (typeBinding instanceof UnresolvedReferenceBinding) {
            ((UnresolvedReferenceBinding) typeBinding).addWrapper(this, lookupEnvironment);
        } else {
            this.tagBits = (typeBinding.tagBits & 2305843010824308864L) | j10;
        }
        long j11 = typeBinding.tagBits & TagBits.AnnotationNullMASK;
        if (j11 != 0) {
            int i11 = this.dimensions;
            long[] jArr = new long[i11 + 1];
            this.nullTagBitsPerDimension = jArr;
            jArr[i11] = j11;
            this.tagBits |= TagBits.HasNullTypeAnnotation;
        }
    }

    public static boolean isArrayClone(TypeBinding typeBinding, MethodBinding methodBinding) {
        MethodBinding methodBinding2;
        return (typeBinding instanceof ArrayBinding) && (methodBinding2 = ((ArrayBinding) typeBinding).clone) != null && methodBinding == methodBinding2;
    }

    @Override
    public boolean acceptsNonNullDefault() {
        return true;
    }

    @Override
    public String annotatedDebugName() {
        AnnotationBinding annotationBinding;
        StringBuffer stringBuffer = new StringBuffer(this.dimensions * 2);
        stringBuffer.append(this.leafComponentType.annotatedDebugName());
        stringBuffer.append(C15883c.f126249O);
        AnnotationBinding[] typeAnnotations = getTypeAnnotations();
        int i10 = -1;
        for (int i11 = 0; i11 < this.dimensions; i11++) {
            if (typeAnnotations != null) {
                if (i11 != 0) {
                    stringBuffer.append(C15883c.f126249O);
                }
                while (true) {
                    i10++;
                    if (i10 < typeAnnotations.length && (annotationBinding = typeAnnotations[i10]) != null) {
                        stringBuffer.append((Object) annotationBinding);
                        stringBuffer.append(C15883c.f126249O);
                    }
                }
            }
            stringBuffer.append(okhttp3.v.f99450n);
        }
        return stringBuffer.toString();
    }

    @Override
    public TypeBinding closestMatch() {
        if (isValidBinding()) {
            return this;
        }
        if (this.leafComponentType.closestMatch() == null) {
            return null;
        }
        return this.environment.createArrayType(this.leafComponentType.closestMatch(), this.dimensions);
    }

    @Override
    public void collectInferenceVariables(Set<InferenceVariable> set) {
        this.leafComponentType.collectInferenceVariables(set);
    }

    @Override
    public List<TypeBinding> collectMissingTypes(List<TypeBinding> list) {
        return (this.tagBits & 128) != 0 ? this.leafComponentType.collectMissingTypes(list) : list;
    }

    @Override
    public void collectSubstitutes(Scope scope, TypeBinding typeBinding, InferenceContext inferenceContext, int i10) {
        if ((this.tagBits & TagBits.HasTypeVariable) == 0 || typeBinding == TypeBinding.NULL || typeBinding.kind() == 65540 || typeBinding.kind() != 68) {
            return;
        }
        int dimensions = typeBinding.dimensions();
        int i11 = this.dimensions;
        if (dimensions == i11) {
            this.leafComponentType.collectSubstitutes(scope, typeBinding.leafComponentType(), inferenceContext, i10);
        } else if (dimensions > i11) {
            this.leafComponentType.collectSubstitutes(scope, this.environment.createArrayType(typeBinding.leafComponentType(), dimensions - this.dimensions), inferenceContext, i10);
        }
    }

    @Override
    public char[] computeUniqueKey(boolean z10) {
        int i10 = this.dimensions;
        char[] cArr = new char[i10];
        for (int i11 = i10 - 1; i11 >= 0; i11--) {
            cArr[i11] = '[';
        }
        return CharOperation.concat(cArr, this.leafComponentType.computeUniqueKey(z10));
    }

    @Override
    public char[] constantPoolName() {
        char[] cArr = this.constantPoolName;
        if (cArr != null) {
            return cArr;
        }
        int i10 = this.dimensions;
        char[] cArr2 = new char[i10];
        for (int i11 = i10 - 1; i11 >= 0; i11--) {
            cArr2[i11] = '[';
        }
        char[] concat = CharOperation.concat(cArr2, this.leafComponentType.signature());
        this.constantPoolName = concat;
        return concat;
    }

    @Override
    public String debugName() {
        if (hasTypeAnnotations()) {
            return annotatedDebugName();
        }
        StringBuffer stringBuffer = new StringBuffer(this.dimensions * 2);
        int i10 = this.dimensions;
        while (true) {
            i10--;
            if (i10 < 0) {
                return String.valueOf(this.leafComponentType.debugName()) + stringBuffer.toString();
            }
            stringBuffer.append(okhttp3.v.f99450n);
        }
    }

    @Override
    public int dimensions() {
        return this.dimensions;
    }

    public TypeBinding elementsType() {
        if (this.dimensions == 1) {
            return this.leafComponentType;
        }
        AnnotationBinding[] typeAnnotations = getTypeAnnotations();
        AnnotationBinding[] annotationBindingArr = Binding.NO_ANNOTATIONS;
        int length = typeAnnotations == null ? 0 : typeAnnotations.length;
        int i10 = 0;
        while (true) {
            if (i10 >= length) {
                break;
            }
            if (typeAnnotations[i10] == null) {
                int i11 = i10 + 1;
                int i12 = (length - i10) - 1;
                AnnotationBinding[] annotationBindingArr2 = new AnnotationBinding[i12];
                System.arraycopy(typeAnnotations, i11, annotationBindingArr2, 0, i12);
                annotationBindingArr = annotationBindingArr2;
                break;
            }
            i10++;
        }
        return this.environment.createArrayType(this.leafComponentType, this.dimensions - 1, annotationBindingArr);
    }

    public LookupEnvironment environment() {
        return this.environment;
    }

    @Override
    public TypeBinding erasure() {
        TypeBinding erasure = this.leafComponentType.erasure();
        return TypeBinding.notEquals(this.leafComponentType, erasure) ? this.environment.createArrayType(erasure, this.dimensions) : this;
    }

    @Override
    public char[] genericTypeSignature() {
        if (this.genericTypeSignature == null) {
            int i10 = this.dimensions;
            char[] cArr = new char[i10];
            for (int i11 = i10 - 1; i11 >= 0; i11--) {
                cArr[i11] = '[';
            }
            this.genericTypeSignature = CharOperation.concat(cArr, this.leafComponentType.genericTypeSignature());
        }
        return this.genericTypeSignature;
    }

    public MethodBinding getCloneMethod(final MethodBinding methodBinding) {
        MethodBinding methodBinding2 = this.clone;
        if (methodBinding2 != null) {
            return methodBinding2;
        }
        MethodBinding methodBinding3 = new MethodBinding() {
            @Override
            public char[] signature(ClassFile classFile) {
                return methodBinding.signature();
            }
        };
        methodBinding3.modifiers = methodBinding.modifiers;
        methodBinding3.selector = methodBinding.selector;
        methodBinding3.declaringClass = methodBinding.declaringClass;
        methodBinding3.typeVariables = Binding.NO_TYPE_VARIABLES;
        methodBinding3.parameters = methodBinding.parameters;
        methodBinding3.thrownExceptions = Binding.NO_EXCEPTIONS;
        methodBinding3.tagBits = methodBinding.tagBits;
        LookupEnvironment lookupEnvironment = this.environment;
        CompilerOptions compilerOptions = lookupEnvironment.globalOptions;
        methodBinding3.returnType = compilerOptions.sourceLevel >= ClassFileConstants.JDK1_5 ? this : methodBinding.returnType;
        if (compilerOptions.isAnnotationBasedNullAnalysisEnabled) {
            if (lookupEnvironment.usesNullTypeAnnotations()) {
                LookupEnvironment lookupEnvironment2 = this.environment;
                methodBinding3.returnType = lookupEnvironment2.createAnnotatedType(methodBinding3.returnType, new AnnotationBinding[]{lookupEnvironment2.getNonNullAnnotation()});
            } else {
                methodBinding3.tagBits |= 72057594037927936L;
            }
        }
        if ((methodBinding3.returnType.tagBits & 128) != 0) {
            methodBinding3.tagBits |= 128;
        }
        this.clone = methodBinding3;
        return methodBinding3;
    }

    @Override
    public PackageBinding getPackage() {
        return this.leafComponentType.getPackage();
    }

    public int hashCode() {
        TypeBinding typeBinding = this.leafComponentType;
        return typeBinding == null ? super.hashCode() : typeBinding.hashCode();
    }

    @Override
    public boolean isCompatibleWith(TypeBinding typeBinding, Scope scope) {
        TypeBinding typeBinding2;
        if (TypeBinding.equalsEquals(this, typeBinding)) {
            return true;
        }
        int kind = typeBinding.kind();
        if (kind != 68) {
            if (kind == 132) {
                return false;
            }
            if (kind != 516) {
                if (kind == 4100) {
                    if (typeBinding.isCapture() && (typeBinding2 = ((CaptureBinding) typeBinding).lowerBound) != null && typeBinding2.isArrayType()) {
                        return isCompatibleWith(typeBinding2, scope);
                    }
                    return false;
                }
                if (kind != 8196) {
                    if (kind == 32772) {
                        ReferenceBinding[] referenceBindingArr = ((IntersectionTypeBinding18) typeBinding).intersectingTypes;
                        for (ReferenceBinding referenceBinding : referenceBindingArr) {
                            if (!isCompatibleWith(referenceBinding, scope)) {
                                return false;
                            }
                        }
                        return true;
                    }
                }
            }
            return ((WildcardBinding) typeBinding).boundCheck(this);
        }
        ArrayBinding arrayBinding = (ArrayBinding) typeBinding;
        if (arrayBinding.leafComponentType.isBaseType()) {
            return false;
        }
        int i10 = this.dimensions;
        int i11 = arrayBinding.dimensions;
        if (i10 == i11) {
            return this.leafComponentType.isCompatibleWith(arrayBinding.leafComponentType);
        }
        if (i10 < i11) {
            return false;
        }
        int i12 = typeBinding.leafComponentType().f102482id;
        return i12 == 1 || i12 == 36 || i12 == 37;
    }

    @Override
    public boolean isProperType(boolean z10) {
        return this.leafComponentType.isProperType(z10);
    }

    @Override
    public boolean isSubtypeOf(TypeBinding typeBinding, boolean z10) {
        TypeBinding typeBinding2;
        if (TypeBinding.equalsEquals(this, typeBinding)) {
            return true;
        }
        int kind = typeBinding.kind();
        if (kind == 68) {
            ArrayBinding arrayBinding = (ArrayBinding) typeBinding;
            if (arrayBinding.leafComponentType.isBaseType()) {
                return false;
            }
            int i10 = this.dimensions;
            int i11 = arrayBinding.dimensions;
            if (i10 == i11) {
                return this.leafComponentType.isSubtypeOf(arrayBinding.leafComponentType, z10);
            }
            if (i10 < i11) {
                return false;
            }
        } else {
            if (kind == 132) {
                return false;
            }
            if (kind != 4100) {
                if (kind == 32772) {
                    ReferenceBinding[] referenceBindingArr = ((IntersectionTypeBinding18) typeBinding).intersectingTypes;
                    for (ReferenceBinding referenceBinding : referenceBindingArr) {
                        if (!isSubtypeOf(referenceBinding, z10)) {
                            return false;
                        }
                    }
                    return true;
                }
            } else if (typeBinding.isCapture() && (typeBinding2 = ((CaptureBinding) typeBinding).lowerBound) != null) {
                if (typeBinding2.isArrayType()) {
                    return isSubtypeOf(typeBinding2, z10);
                }
                return false;
            }
        }
        int i12 = typeBinding.leafComponentType().f102482id;
        return i12 == 1 || i12 == 36 || i12 == 37;
    }

    @Override
    public int kind() {
        return 68;
    }

    @Override
    public TypeBinding leafComponentType() {
        return this.leafComponentType;
    }

    @Override
    public boolean mentionsAny(TypeBinding[] typeBindingArr, int i10) {
        return this.leafComponentType.mentionsAny(typeBindingArr, i10);
    }

    @Override
    public char[] nullAnnotatedReadableName(CompilerOptions compilerOptions, boolean z10) {
        if (this.nullTagBitsPerDimension == null) {
            return z10 ? shortReadableName() : readableName();
        }
        char[][] cArr = new char[this.dimensions];
        for (int i10 = 0; i10 < this.dimensions; i10++) {
            long j10 = this.nullTagBitsPerDimension[i10];
            if ((TagBits.AnnotationNullMASK & j10) != 0) {
                char[][] cArr2 = (j10 & 72057594037927936L) != 0 ? compilerOptions.nonNullAnnotationName : compilerOptions.nullableAnnotationName;
                char[] concatWith = z10 ? cArr2[cArr2.length - 1] : CharOperation.concatWith(cArr2, '.');
                char[] cArr3 = new char[concatWith.length + 3];
                cArr[i10] = cArr3;
                cArr3[0] = '@';
                System.arraycopy(concatWith, 0, cArr3, 1, concatWith.length);
                char[] cArr4 = cArr[i10];
                cArr4[concatWith.length + 1] = '[';
                cArr4[concatWith.length + 2] = JavaElement.JEM_TYPE_PARAMETER;
            } else {
                cArr[i10] = new char[]{'[', JavaElement.JEM_TYPE_PARAMETER};
            }
        }
        return CharOperation.concat(this.leafComponentType.nullAnnotatedReadableName(compilerOptions, z10), CharOperation.concatWith(cArr, C15883c.f126249O), C15883c.f126249O);
    }

    @Override
    public int problemId() {
        return this.leafComponentType.problemId();
    }

    @Override
    public char[] qualifiedSourceName() {
        int i10 = this.dimensions;
        char[] cArr = new char[i10 * 2];
        for (int i11 = (i10 * 2) - 1; i11 >= 0; i11 -= 2) {
            cArr[i11] = JavaElement.JEM_TYPE_PARAMETER;
            cArr[i11 - 1] = '[';
        }
        return CharOperation.concat(this.leafComponentType.qualifiedSourceName(), cArr);
    }

    @Override
    public char[] readableName() {
        int i10 = this.dimensions;
        char[] cArr = new char[i10 * 2];
        for (int i11 = (i10 * 2) - 1; i11 >= 0; i11 -= 2) {
            cArr[i11] = JavaElement.JEM_TYPE_PARAMETER;
            cArr[i11 - 1] = '[';
        }
        return CharOperation.concat(this.leafComponentType.readableName(), cArr);
    }

    @Override
    public void setTypeAnnotations(AnnotationBinding[] annotationBindingArr, boolean z10) {
        this.tagBits |= 2097152;
        if (annotationBindingArr == null || annotationBindingArr.length == 0) {
            return;
        }
        this.typeAnnotations = annotationBindingArr;
        if (z10) {
            if (this.nullTagBitsPerDimension == null) {
                this.nullTagBitsPerDimension = new long[this.dimensions + 1];
            }
            int i10 = 0;
            long j10 = 0;
            for (AnnotationBinding annotationBinding : annotationBindingArr) {
                if (annotationBinding == null) {
                    if (j10 != 0) {
                        this.nullTagBitsPerDimension[i10] = j10;
                        j10 = 0;
                    }
                    i10++;
                } else if (annotationBinding.type.hasNullBit(64)) {
                    j10 |= 36028797018963968L;
                    this.tagBits |= TagBits.HasNullTypeAnnotation;
                } else if (annotationBinding.type.hasNullBit(32)) {
                    j10 |= 72057594037927936L;
                    this.tagBits |= TagBits.HasNullTypeAnnotation;
                }
            }
            this.tagBits |= this.nullTagBitsPerDimension[0];
        }
    }

    @Override
    public char[] shortReadableName() {
        int i10 = this.dimensions;
        char[] cArr = new char[i10 * 2];
        for (int i11 = (i10 * 2) - 1; i11 >= 0; i11 -= 2) {
            cArr[i11] = JavaElement.JEM_TYPE_PARAMETER;
            cArr[i11 - 1] = '[';
        }
        return CharOperation.concat(this.leafComponentType.shortReadableName(), cArr);
    }

    @Override
    public char[] sourceName() {
        int i10 = this.dimensions;
        char[] cArr = new char[i10 * 2];
        for (int i11 = (i10 * 2) - 1; i11 >= 0; i11 -= 2) {
            cArr[i11] = JavaElement.JEM_TYPE_PARAMETER;
            cArr[i11 - 1] = '[';
        }
        return CharOperation.concat(this.leafComponentType.sourceName(), cArr);
    }

    @Override
    public TypeBinding substituteInferenceVariable(InferenceVariable inferenceVariable, TypeBinding typeBinding) {
        TypeBinding substituteInferenceVariable = this.leafComponentType.substituteInferenceVariable(inferenceVariable, typeBinding);
        return TypeBinding.notEquals(substituteInferenceVariable, this.leafComponentType) ? this.environment.createArrayType(substituteInferenceVariable, this.dimensions, this.typeAnnotations) : this;
    }

    @Override
    public void swapUnresolved(UnresolvedReferenceBinding unresolvedReferenceBinding, ReferenceBinding referenceBinding, LookupEnvironment lookupEnvironment) {
        if (this.leafComponentType == unresolvedReferenceBinding) {
            TypeBinding convertUnresolvedBinaryToRawType = lookupEnvironment.convertUnresolvedBinaryToRawType(referenceBinding);
            this.leafComponentType = convertUnresolvedBinaryToRawType;
            if (convertUnresolvedBinaryToRawType != referenceBinding) {
                this.f102482id = lookupEnvironment.createArrayType(convertUnresolvedBinaryToRawType, this.dimensions, this.typeAnnotations).f102482id;
            }
            this.tagBits |= this.leafComponentType.tagBits & 2305843010824306816L;
        }
    }

    public String toString() {
        return this.leafComponentType != null ? debugName() : "NULL TYPE ARRAY";
    }

    @Override
    public TypeBinding unannotated() {
        return hasTypeAnnotations() ? this.environment.getUnannotatedType(this) : this;
    }

    @Override
    public TypeBinding uncapture(Scope scope) {
        if ((this.tagBits & 2305843009213693952L) == 0) {
            return this;
        }
        return scope.environment().createArrayType(this.leafComponentType.uncapture(scope), this.dimensions, this.typeAnnotations);
    }

    @Override
    public long updateTagBits() {
        TypeBinding typeBinding = this.leafComponentType;
        if (typeBinding != null) {
            this.tagBits |= typeBinding.updateTagBits();
        }
        return super.updateTagBits();
    }

    @Override
    public TypeBinding withoutToplevelNullAnnotation() {
        if (!hasNullTypeAnnotations()) {
            return this;
        }
        return this.environment.createArrayType(this.leafComponentType, this.dimensions, this.environment.filterNullTypeAnnotations(this.typeAnnotations));
    }

    @Override
    public ArrayBinding downwardsProjection(Scope scope, TypeBinding[] typeBindingArr) {
        return scope.environment().createArrayType(this.leafComponentType.downwardsProjection(scope, typeBindingArr), this.dimensions, this.typeAnnotations);
    }

    @Override
    public ArrayBinding upwardsProjection(Scope scope, TypeBinding[] typeBindingArr) {
        return scope.environment().createArrayType(this.leafComponentType.upwardsProjection(scope, typeBindingArr), this.dimensions, this.typeAnnotations);
    }
}
