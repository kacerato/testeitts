package org.eclipse.jdt.internal.compiler.lookup;

import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.util.Util;

public class AnnotatableTypeSystem extends TypeSystem {
    private boolean isAnnotationBasedNullAnalysisEnabled;

    public AnnotatableTypeSystem(LookupEnvironment lookupEnvironment) {
        super(lookupEnvironment);
        this.environment = lookupEnvironment;
        this.isAnnotationBasedNullAnalysisEnabled = lookupEnvironment.globalOptions.isAnnotationBasedNullAnalysisEnabled;
    }

    public static AnnotationBinding[] flattenedAnnotations(AnnotationBinding[][] annotationBindingArr) {
        if (annotationBindingArr == null || annotationBindingArr.length == 0) {
            return Binding.NO_ANNOTATIONS;
        }
        int length = annotationBindingArr.length;
        int i10 = length;
        for (int i11 = 0; i11 < length; i11++) {
            AnnotationBinding[] annotationBindingArr2 = annotationBindingArr[i11];
            i10 += annotationBindingArr2 == null ? 0 : annotationBindingArr2.length;
        }
        if (i10 == 0) {
            return Binding.NO_ANNOTATIONS;
        }
        AnnotationBinding[] annotationBindingArr3 = new AnnotationBinding[i10];
        int i12 = 0;
        int i13 = 0;
        while (i12 < length) {
            AnnotationBinding[] annotationBindingArr4 = annotationBindingArr[i12];
            int length2 = annotationBindingArr4 == null ? 0 : annotationBindingArr4.length;
            if (length2 > 0) {
                System.arraycopy(annotationBindingArr4, 0, annotationBindingArr3, i13, length2);
                i13 += length2;
            }
            annotationBindingArr3[i13] = null;
            i12++;
            i13++;
        }
        if (i13 == i10) {
            return annotationBindingArr3;
        }
        throw new IllegalStateException();
    }

    private boolean haveTypeAnnotations(TypeBinding typeBinding, TypeBinding typeBinding2, TypeBinding[] typeBindingArr, AnnotationBinding[] annotationBindingArr) {
        if (typeBinding != null && typeBinding.hasTypeAnnotations()) {
            return true;
        }
        if (typeBinding2 != null && typeBinding2.hasTypeAnnotations()) {
            return true;
        }
        int length = annotationBindingArr == null ? 0 : annotationBindingArr.length;
        for (int i10 = 0; i10 < length; i10++) {
            if (annotationBindingArr[i10] != null) {
                return true;
            }
        }
        int length2 = typeBindingArr == null ? 0 : typeBindingArr.length;
        for (int i11 = 0; i11 < length2; i11++) {
            if (typeBindingArr[i11].hasTypeAnnotations()) {
                return true;
            }
        }
        return false;
    }

    @Override
    public TypeBinding getAnnotatedType(TypeBinding typeBinding, AnnotationBinding[][] annotationBindingArr) {
        if (typeBinding == null || !typeBinding.isValidBinding() || annotationBindingArr == null || annotationBindingArr.length == 0) {
            return typeBinding;
        }
        int kind = typeBinding.kind();
        if (kind != 4) {
            if (kind == 68) {
                ArrayBinding arrayBinding = (ArrayBinding) typeBinding;
                return getArrayType(arrayBinding.leafComponentType, arrayBinding.dimensions, flattenedAnnotations(annotationBindingArr));
            }
            if (kind != 132 && kind != 260 && kind != 516 && kind != 1028 && kind != 2052 && kind != 4100 && kind != 8196 && kind != 32772) {
                throw new IllegalStateException();
            }
        }
        if (typeBinding.isUnresolvedType() && CharOperation.indexOf('$', typeBinding.sourceName()) > 0) {
            typeBinding = BinaryTypeBinding.resolveType(typeBinding, this.environment, true);
        }
        TypeBinding typeBinding2 = typeBinding;
        int depth = typeBinding2.depth();
        int i10 = depth + 1;
        TypeBinding[] typeBindingArr = new TypeBinding[i10];
        typeBindingArr[depth] = typeBinding2;
        for (ReferenceBinding enclosingType = typeBinding2.enclosingType(); enclosingType != null; enclosingType = enclosingType.enclosingType()) {
            depth--;
            typeBindingArr[depth] = enclosingType;
        }
        int length = annotationBindingArr.length;
        int i11 = i10 - length;
        int i12 = 0;
        while (i12 < length) {
            AnnotationBinding[] annotationBindingArr2 = annotationBindingArr[i12];
            if (annotationBindingArr2 != null && annotationBindingArr2.length > 0) {
                break;
            }
            i12++;
            i11++;
        }
        if (i12 == length || i11 < 0) {
            return typeBinding2;
        }
        TypeBinding typeBinding3 = null;
        TypeBinding typeBinding4 = i11 == 0 ? null : typeBindingArr[i11 - 1];
        while (i12 < length) {
            TypeBinding typeBinding5 = typeBindingArr[i11];
            AnnotationBinding[] annotationBindingArr3 = annotationBindingArr[i12];
            if (annotationBindingArr3 == null || annotationBindingArr3.length <= 0) {
                annotationBindingArr3 = typeBinding5.getTypeAnnotations();
            }
            typeBinding4 = getAnnotatedType(typeBinding5, typeBinding4, annotationBindingArr3);
            i12++;
            i11++;
            typeBinding3 = typeBinding4;
        }
        return typeBinding3;
    }

    @Override
    public TypeBinding[] getAnnotatedTypes(TypeBinding typeBinding) {
        TypeBinding[] derivedTypes = getDerivedTypes(typeBinding);
        int length = derivedTypes.length;
        TypeBinding[] typeBindingArr = new TypeBinding[length];
        int i10 = 0;
        for (TypeBinding typeBinding2 : derivedTypes) {
            if (typeBinding2 == null) {
                break;
            }
            if (typeBinding2.hasTypeAnnotations() && typeBinding2.f102482id == typeBinding.f102482id) {
                typeBindingArr[i10] = typeBinding2;
                i10++;
            }
        }
        if (i10 == length) {
            return typeBindingArr;
        }
        TypeBinding[] typeBindingArr2 = new TypeBinding[i10];
        System.arraycopy(typeBindingArr, 0, typeBindingArr2, 0, i10);
        return typeBindingArr2;
    }

    @Override
    public ArrayBinding getArrayType(TypeBinding typeBinding, int i10, AnnotationBinding[] annotationBindingArr) {
        if (typeBinding instanceof ArrayBinding) {
            i10 += typeBinding.dimensions();
            AnnotationBinding[] typeAnnotations = typeBinding.getTypeAnnotations();
            typeBinding = typeBinding.leafComponentType();
            AnnotationBinding[] annotationBindingArr2 = new AnnotationBinding[typeAnnotations.length + annotationBindingArr.length + 1];
            System.arraycopy(annotationBindingArr, 0, annotationBindingArr2, 0, annotationBindingArr.length);
            System.arraycopy(typeAnnotations, 0, annotationBindingArr2, annotationBindingArr.length + 1, typeAnnotations.length);
            annotationBindingArr = annotationBindingArr2;
        }
        ArrayBinding arrayBinding = null;
        for (TypeBinding typeBinding2 : getDerivedTypes(typeBinding)) {
            if (typeBinding2 == null) {
                break;
            }
            if (typeBinding2.isArrayType() && typeBinding2.dimensions() == i10 && typeBinding2.leafComponentType() == typeBinding) {
                if (Util.effectivelyEqual(typeBinding2.getTypeAnnotations(), annotationBindingArr)) {
                    return (ArrayBinding) typeBinding2;
                }
                if (!typeBinding2.hasTypeAnnotations()) {
                    arrayBinding = (ArrayBinding) typeBinding2;
                }
            }
        }
        if (arrayBinding == null) {
            arrayBinding = super.getArrayType(typeBinding, i10);
        }
        if (!haveTypeAnnotations(typeBinding, annotationBindingArr)) {
            return arrayBinding;
        }
        TypeBinding arrayBinding2 = new ArrayBinding(typeBinding, i10, this.environment);
        arrayBinding2.f102482id = arrayBinding.f102482id;
        arrayBinding2.setTypeAnnotations(annotationBindingArr, this.isAnnotationBasedNullAnalysisEnabled);
        return (ArrayBinding) cacheDerivedType(typeBinding, arrayBinding, arrayBinding2);
    }

    @Override
    public ReferenceBinding getMemberType(ReferenceBinding referenceBinding, ReferenceBinding referenceBinding2) {
        return !haveTypeAnnotations(referenceBinding, referenceBinding2) ? super.getMemberType(referenceBinding, referenceBinding2) : (ReferenceBinding) getAnnotatedType(referenceBinding, referenceBinding2, referenceBinding.getTypeAnnotations());
    }

    @Override
    public ParameterizedTypeBinding getParameterizedType(ReferenceBinding referenceBinding, TypeBinding[] typeBindingArr, ReferenceBinding referenceBinding2, AnnotationBinding[] annotationBindingArr) {
        if (!referenceBinding.hasTypeAnnotations()) {
            ParameterizedTypeBinding parameterizedTypeBinding = this.parameterizedTypes.get(referenceBinding, typeBindingArr, referenceBinding2, annotationBindingArr);
            if (parameterizedTypeBinding != null) {
                return parameterizedTypeBinding;
            }
            ParameterizedTypeBinding parameterizedType = super.getParameterizedType(referenceBinding, typeBindingArr, referenceBinding2);
            if (!haveTypeAnnotations(referenceBinding, referenceBinding2, typeBindingArr, annotationBindingArr)) {
                return parameterizedType;
            }
            ParameterizedTypeBinding parameterizedTypeBinding2 = new ParameterizedTypeBinding(referenceBinding, typeBindingArr, referenceBinding2, this.environment);
            parameterizedTypeBinding2.f102482id = parameterizedType.f102482id;
            parameterizedTypeBinding2.setTypeAnnotations(annotationBindingArr, this.isAnnotationBasedNullAnalysisEnabled);
            this.parameterizedTypes.put(referenceBinding, typeBindingArr, referenceBinding2, parameterizedTypeBinding2);
            return (ParameterizedTypeBinding) cacheDerivedType(referenceBinding, parameterizedType, parameterizedTypeBinding2);
        }
        throw new IllegalStateException();
    }

    @Override
    public RawTypeBinding getRawType(ReferenceBinding referenceBinding, ReferenceBinding referenceBinding2, AnnotationBinding[] annotationBindingArr) {
        if (!referenceBinding.hasTypeAnnotations()) {
            if (!referenceBinding.hasEnclosingInstanceContext() && referenceBinding2 != null) {
                referenceBinding2 = (ReferenceBinding) referenceBinding2.original();
            }
            RawTypeBinding rawTypeBinding = null;
            for (TypeBinding typeBinding : getDerivedTypes(referenceBinding)) {
                if (typeBinding == null) {
                    break;
                }
                if (typeBinding.isRawType() && typeBinding.actualType() == referenceBinding && typeBinding.enclosingType() == referenceBinding2) {
                    if (Util.effectivelyEqual(typeBinding.getTypeAnnotations(), annotationBindingArr)) {
                        return (RawTypeBinding) typeBinding;
                    }
                    if (!typeBinding.hasTypeAnnotations()) {
                        rawTypeBinding = (RawTypeBinding) typeBinding;
                    }
                }
            }
            if (rawTypeBinding == null) {
                rawTypeBinding = super.getRawType(referenceBinding, referenceBinding2);
            }
            if (!haveTypeAnnotations(referenceBinding, referenceBinding2, null, annotationBindingArr)) {
                return rawTypeBinding;
            }
            TypeBinding rawTypeBinding2 = new RawTypeBinding(referenceBinding, referenceBinding2, this.environment);
            rawTypeBinding2.f102482id = rawTypeBinding.f102482id;
            rawTypeBinding2.setTypeAnnotations(annotationBindingArr, this.isAnnotationBasedNullAnalysisEnabled);
            return (RawTypeBinding) cacheDerivedType(referenceBinding, rawTypeBinding, rawTypeBinding2);
        }
        throw new IllegalStateException();
    }

    @Override
    public WildcardBinding getWildcard(ReferenceBinding referenceBinding, int i10, TypeBinding typeBinding, TypeBinding[] typeBindingArr, int i11, AnnotationBinding[] annotationBindingArr) {
        TypeBinding typeBinding2 = typeBinding;
        ReferenceBinding referenceBinding2 = referenceBinding == null ? ReferenceBinding.LUB_GENERIC : referenceBinding;
        if (!referenceBinding2.hasTypeAnnotations()) {
            int i12 = 0;
            boolean z10 = (typeBinding2 instanceof TypeVariableBinding) || ((typeBinding2 instanceof ParameterizedTypeBinding) && !(typeBinding2 instanceof RawTypeBinding));
            TypeBinding[] derivedTypes = getDerivedTypes(z10 ? typeBinding2 : referenceBinding2);
            int length = derivedTypes.length;
            WildcardBinding wildcardBinding = null;
            while (i12 < length) {
                TypeBinding typeBinding3 = derivedTypes[i12];
                if (typeBinding3 == null) {
                    break;
                }
                ReferenceBinding referenceBinding3 = referenceBinding2;
                if (typeBinding3.isWildcard() && typeBinding3.actualType() == referenceBinding3) {
                    if (typeBinding3.rank() == i10) {
                        if (typeBinding3.boundKind() == i11 && typeBinding3.bound() == typeBinding2 && Util.effectivelyEqual(typeBinding3.additionalBounds(), typeBindingArr)) {
                            if (Util.effectivelyEqual(typeBinding3.getTypeAnnotations(), annotationBindingArr)) {
                                return (WildcardBinding) typeBinding3;
                            }
                            if (!typeBinding3.hasTypeAnnotations()) {
                                wildcardBinding = (WildcardBinding) typeBinding3;
                            }
                        }
                        i12++;
                        referenceBinding2 = referenceBinding3;
                    }
                }
                i12++;
                referenceBinding2 = referenceBinding3;
            }
            if (wildcardBinding == null) {
                wildcardBinding = super.getWildcard(referenceBinding2, i10, typeBinding, typeBindingArr, i11);
            }
            if (!haveTypeAnnotations(referenceBinding2, typeBinding2, typeBindingArr, annotationBindingArr)) {
                return wildcardBinding;
            }
            ReferenceBinding referenceBinding4 = referenceBinding2;
            TypeBinding wildcardBinding2 = new WildcardBinding(referenceBinding2, i10, typeBinding, typeBindingArr, i11, this.environment);
            wildcardBinding2.f102482id = wildcardBinding.f102482id;
            wildcardBinding2.setTypeAnnotations(annotationBindingArr, this.isAnnotationBasedNullAnalysisEnabled);
            if (!z10) {
                typeBinding2 = referenceBinding4;
            }
            return (WildcardBinding) cacheDerivedType(typeBinding2, wildcardBinding, wildcardBinding2);
        }
        throw new IllegalStateException();
    }

    @Override
    public boolean isAnnotatedTypeSystem() {
        return true;
    }

    private boolean haveTypeAnnotations(TypeBinding typeBinding, AnnotationBinding[] annotationBindingArr) {
        return haveTypeAnnotations(typeBinding, null, null, annotationBindingArr);
    }

    private boolean haveTypeAnnotations(TypeBinding typeBinding, TypeBinding typeBinding2) {
        return haveTypeAnnotations(typeBinding, typeBinding2, null, null);
    }

    @Override
    public ParameterizedTypeBinding getParameterizedType(ReferenceBinding referenceBinding, TypeBinding[] typeBindingArr, ReferenceBinding referenceBinding2) {
        return getParameterizedType(referenceBinding, typeBindingArr, referenceBinding2, Binding.NO_ANNOTATIONS);
    }

    @Override
    public RawTypeBinding getRawType(ReferenceBinding referenceBinding, ReferenceBinding referenceBinding2) {
        return getRawType(referenceBinding, referenceBinding2, Binding.NO_ANNOTATIONS);
    }

    /* JADX WARN: Removed duplicated region for block: B:30:0x0123  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0122 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private TypeBinding getAnnotatedType(TypeBinding typeBinding, TypeBinding typeBinding2, AnnotationBinding[] annotationBindingArr) {
        TypeBinding leafComponentType;
        TypeBinding typeBinding3;
        if (typeBinding.kind() == 260) {
            return getParameterizedType(typeBinding.actualType(), typeBinding.typeArguments(), (ReferenceBinding) typeBinding2, annotationBindingArr);
        }
        TypeBinding[] derivedTypes = getDerivedTypes(typeBinding);
        int length = derivedTypes.length;
        TypeBinding typeBinding4 = null;
        for (int i10 = 0; i10 < length && (typeBinding3 = derivedTypes[i10]) != null; i10++) {
            if (typeBinding3.enclosingType() == typeBinding2 && Util.effectivelyEqual(typeBinding3.typeArguments(), typeBinding.typeArguments())) {
                int kind = typeBinding.kind();
                if (kind != 68) {
                    if (kind != 516) {
                        if (kind != 1028) {
                            if (kind != 8196) {
                                int kind2 = typeBinding3.kind();
                                if (kind2 == 68) {
                                    continue;
                                } else if (kind2 == 516) {
                                    continue;
                                } else if (kind2 == 1028) {
                                    continue;
                                } else if (kind2 == 8196) {
                                    continue;
                                } else {
                                    if (kind2 == 32772) {
                                        continue;
                                    }
                                    if (!Util.effectivelyEqual(typeBinding3.getTypeAnnotations(), annotationBindingArr)) {
                                        return typeBinding3;
                                    }
                                    if (!typeBinding3.hasTypeAnnotations()) {
                                        typeBinding4 = typeBinding3;
                                    }
                                }
                            }
                        } else if (typeBinding3.isRawType()) {
                            if (typeBinding3.actualType() != typeBinding.actualType()) {
                                continue;
                            }
                            if (!Util.effectivelyEqual(typeBinding3.getTypeAnnotations(), annotationBindingArr)) {
                            }
                        } else {
                            continue;
                        }
                    }
                    if (!typeBinding3.isWildcard()) {
                        continue;
                    } else if (typeBinding3.actualType() != typeBinding.actualType()) {
                        continue;
                    } else if (typeBinding3.rank() != typeBinding.rank()) {
                        continue;
                    } else if (typeBinding3.boundKind() != typeBinding.boundKind()) {
                        continue;
                    } else if (typeBinding3.bound() != typeBinding.bound()) {
                        continue;
                    } else {
                        if (!Util.effectivelyEqual(typeBinding3.additionalBounds(), typeBinding.additionalBounds())) {
                            continue;
                        }
                        if (!Util.effectivelyEqual(typeBinding3.getTypeAnnotations(), annotationBindingArr)) {
                        }
                    }
                } else if (!typeBinding3.isArrayType()) {
                    continue;
                } else if (typeBinding3.dimensions() != typeBinding.dimensions()) {
                    continue;
                } else {
                    if (typeBinding3.leafComponentType() != typeBinding.leafComponentType()) {
                        continue;
                    }
                    if (!Util.effectivelyEqual(typeBinding3.getTypeAnnotations(), annotationBindingArr)) {
                    }
                }
            }
        }
        if (typeBinding4 == null) {
            typeBinding4 = getUnannotatedType(typeBinding);
        }
        if (!haveTypeAnnotations(typeBinding, typeBinding2, null, annotationBindingArr)) {
            return typeBinding4;
        }
        TypeBinding clone = typeBinding.clone(typeBinding2);
        clone.f102482id = typeBinding4.f102482id;
        clone.setTypeAnnotations(annotationBindingArr, this.isAnnotationBasedNullAnalysisEnabled);
        if (this.isAnnotationBasedNullAnalysisEnabled) {
            long j10 = clone.tagBits;
            if ((j10 & TagBits.AnnotationNullMASK) == 0) {
                clone.tagBits = j10 | (TagBits.AnnotationNullMASK & typeBinding.tagBits);
            }
        }
        int kind3 = typeBinding.kind();
        if (kind3 != 68) {
            leafComponentType = (kind3 == 516 || kind3 == 1028) ? typeBinding.actualType() : typeBinding4;
        } else {
            leafComponentType = typeBinding.leafComponentType();
        }
        return cacheDerivedType(leafComponentType, typeBinding4, clone);
    }

    @Override
    public WildcardBinding getWildcard(ReferenceBinding referenceBinding, int i10, TypeBinding typeBinding, TypeBinding[] typeBindingArr, int i11) {
        return getWildcard(referenceBinding, i10, typeBinding, typeBindingArr, i11, Binding.NO_ANNOTATIONS);
    }

    @Override
    public ArrayBinding getArrayType(TypeBinding typeBinding, int i10) {
        return getArrayType(typeBinding, i10, Binding.NO_ANNOTATIONS);
    }
}
