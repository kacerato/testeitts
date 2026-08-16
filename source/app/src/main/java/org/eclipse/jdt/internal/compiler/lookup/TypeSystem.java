package org.eclipse.jdt.internal.compiler.lookup;

import java.util.HashMap;
import org.eclipse.jdt.internal.compiler.ast.ASTNode;
import org.eclipse.jdt.internal.compiler.util.SimpleLookupTable;
import org.eclipse.jdt.internal.compiler.util.Util;

public class TypeSystem {
    LookupEnvironment environment;
    private int typeid;
    private SimpleLookupTable annotationTypes = new SimpleLookupTable(16);
    private TypeBinding[][] types = new TypeBinding[256];
    protected HashedParameterizedTypes parameterizedTypes = new HashedParameterizedTypes();

    public final class HashedParameterizedTypes {
        HashMap<PTBKey, ParameterizedTypeBinding[]> hashedParameterizedTypes = new HashMap<>(256);

        public final class PTBKey extends ReferenceBinding {
            public TypeBinding[] arguments;
            private ReferenceBinding enclosingType;
            protected ReferenceBinding type;

            public PTBKey(ReferenceBinding referenceBinding, TypeBinding[] typeBindingArr, ReferenceBinding referenceBinding2, LookupEnvironment lookupEnvironment) {
                this.type = referenceBinding;
                this.arguments = typeBindingArr;
                this.enclosingType = referenceBinding2;
                if (lookupEnvironment != null) {
                    if (referenceBinding instanceof UnresolvedReferenceBinding) {
                        ((UnresolvedReferenceBinding) referenceBinding).addWrapper(this, lookupEnvironment);
                    }
                    if (typeBindingArr != null) {
                        int length = typeBindingArr.length;
                        for (int i10 = 0; i10 < length; i10++) {
                            TypeBinding typeBinding = typeBindingArr[i10];
                            if (typeBinding instanceof UnresolvedReferenceBinding) {
                                ((UnresolvedReferenceBinding) typeBinding).addWrapper(this, lookupEnvironment);
                            }
                            if (typeBindingArr[i10].hasNullTypeAnnotations()) {
                                this.tagBits |= TagBits.HasNullTypeAnnotation;
                            }
                        }
                    }
                }
            }

            public boolean equals(Object obj) {
                PTBKey pTBKey = (PTBKey) obj;
                return this.type == pTBKey.type && this.enclosingType == pTBKey.enclosingType && Util.effectivelyEqual(this.arguments, pTBKey.arguments);
            }

            public final int hash(TypeBinding typeBinding) {
                return ((typeBinding instanceof WildcardBinding) || (typeBinding instanceof TypeVariableBinding) || typeBinding.getClass() == ParameterizedTypeBinding.class) ? System.identityHashCode(typeBinding) : typeBinding.hashCode();
            }

            @Override
            public int hashCode() {
                int hash = hash(this.type) + 1;
                TypeBinding[] typeBindingArr = this.arguments;
                int length = typeBindingArr == null ? 0 : typeBindingArr.length;
                for (int i10 = 0; i10 < length; i10++) {
                    hash = (hash * 31) + hash(this.arguments[i10]);
                }
                return hash;
            }

            @Override
            public void swapUnresolved(UnresolvedReferenceBinding unresolvedReferenceBinding, ReferenceBinding referenceBinding, LookupEnvironment lookupEnvironment) {
                if (this.type == unresolvedReferenceBinding) {
                    this.type = referenceBinding;
                    ReferenceBinding enclosingType = referenceBinding.enclosingType();
                    if (enclosingType != null) {
                        if (!referenceBinding.isStatic()) {
                            enclosingType = (ReferenceBinding) lookupEnvironment.convertUnresolvedBinaryToRawType(enclosingType);
                        }
                        this.enclosingType = enclosingType;
                    }
                }
                TypeBinding[] typeBindingArr = this.arguments;
                if (typeBindingArr != null) {
                    int length = typeBindingArr.length;
                    for (int i10 = 0; i10 < length; i10++) {
                        TypeBinding[] typeBindingArr2 = this.arguments;
                        if (typeBindingArr2[i10] == unresolvedReferenceBinding) {
                            typeBindingArr2[i10] = lookupEnvironment.convertUnresolvedBinaryToRawType(referenceBinding);
                        }
                    }
                }
            }
        }

        public HashedParameterizedTypes() {
        }

        public ParameterizedTypeBinding get(ReferenceBinding referenceBinding, TypeBinding[] typeBindingArr, ReferenceBinding referenceBinding2, AnnotationBinding[] annotationBindingArr) {
            ReferenceBinding referenceBinding3;
            TypeBinding[] typeBindingArr2;
            ReferenceBinding referenceBinding4 = (ReferenceBinding) TypeSystem.this.getUnannotatedType(referenceBinding);
            int length = typeBindingArr == null ? 0 : typeBindingArr.length;
            TypeBinding[] typeBindingArr3 = typeBindingArr == null ? null : new TypeBinding[length];
            for (int i10 = 0; i10 < length; i10++) {
                typeBindingArr3[i10] = TypeSystem.this.getUnannotatedType(typeBindingArr[i10]);
            }
            ReferenceBinding referenceBinding5 = referenceBinding2 == null ? null : (ReferenceBinding) TypeSystem.this.getUnannotatedType(referenceBinding2);
            PTBKey pTBKey = new PTBKey(referenceBinding4, typeBindingArr3, referenceBinding5, null);
            if (TypeSystem.this instanceof AnnotatableTypeSystem) {
                typeBindingArr2 = typeBindingArr;
                referenceBinding5 = referenceBinding2;
                referenceBinding3 = referenceBinding;
            } else {
                referenceBinding3 = referenceBinding4;
                typeBindingArr2 = typeBindingArr3;
            }
            ParameterizedTypeBinding[] parameterizedTypeBindingArr = this.hashedParameterizedTypes.get(pTBKey);
            int length2 = parameterizedTypeBindingArr == null ? 0 : parameterizedTypeBindingArr.length;
            for (int i11 = 0; i11 < length2; i11++) {
                ParameterizedTypeBinding parameterizedTypeBinding = parameterizedTypeBindingArr[i11];
                if (parameterizedTypeBinding.actualType() == referenceBinding3 && parameterizedTypeBinding.enclosingType == referenceBinding5 && Util.effectivelyEqual(parameterizedTypeBinding.typeArguments(), typeBindingArr2)) {
                    if (Util.effectivelyEqual(annotationBindingArr, parameterizedTypeBinding.getTypeAnnotations())) {
                        return parameterizedTypeBinding;
                    }
                }
            }
            return null;
        }

        public void put(ReferenceBinding referenceBinding, TypeBinding[] typeBindingArr, ReferenceBinding referenceBinding2, ParameterizedTypeBinding parameterizedTypeBinding) {
            ParameterizedTypeBinding[] parameterizedTypeBindingArr;
            ReferenceBinding referenceBinding3 = (ReferenceBinding) TypeSystem.this.getUnannotatedType(referenceBinding);
            int i10 = 0;
            int length = typeBindingArr == null ? 0 : typeBindingArr.length;
            TypeBinding[] typeBindingArr2 = typeBindingArr == null ? null : new TypeBinding[length];
            for (int i11 = 0; i11 < length; i11++) {
                typeBindingArr2[i11] = TypeSystem.this.getUnannotatedType(typeBindingArr[i11]);
            }
            PTBKey pTBKey = new PTBKey(referenceBinding3, typeBindingArr2, referenceBinding2 == null ? null : (ReferenceBinding) TypeSystem.this.getUnannotatedType(referenceBinding2), TypeSystem.this.environment);
            ParameterizedTypeBinding[] parameterizedTypeBindingArr2 = this.hashedParameterizedTypes.get(pTBKey);
            if (parameterizedTypeBindingArr2 == null) {
                parameterizedTypeBindingArr = new ParameterizedTypeBinding[1];
            } else {
                int length2 = parameterizedTypeBindingArr2.length;
                ParameterizedTypeBinding[] parameterizedTypeBindingArr3 = new ParameterizedTypeBinding[length2 + 1];
                System.arraycopy(parameterizedTypeBindingArr2, 0, parameterizedTypeBindingArr3, 0, length2);
                i10 = length2;
                parameterizedTypeBindingArr = parameterizedTypeBindingArr3;
            }
            parameterizedTypeBindingArr[i10] = parameterizedTypeBinding;
            this.hashedParameterizedTypes.put(pTBKey, parameterizedTypeBindingArr);
        }
    }

    public TypeSystem(LookupEnvironment lookupEnvironment) {
        this.typeid = 128;
        this.environment = lookupEnvironment;
        this.typeid = 128;
    }

    private TypeBinding cacheDerivedType(TypeBinding typeBinding, TypeBinding typeBinding2) {
        int i10;
        if (typeBinding != null && typeBinding2 != null && (i10 = typeBinding.f102482id) != Integer.MAX_VALUE) {
            TypeBinding[] typeBindingArr = this.types[i10];
            int length = typeBindingArr.length;
            int i11 = length / 2;
            int i12 = length;
            int i13 = 0;
            do {
                if (typeBindingArr[i11] != null) {
                    i13 = i11 + 1;
                } else {
                    if (i11 == i13 || (i11 > 0 && typeBindingArr[i11 - 1] != null)) {
                        break;
                    }
                    i12 = i11 - 1;
                }
                i11 = (i13 + i12) / 2;
                if (i11 >= length) {
                    break;
                }
            } while (i13 <= i12);
            if (i11 == length) {
                TypeBinding[] typeBindingArr2 = new TypeBinding[length * 2];
                System.arraycopy(typeBindingArr, 0, typeBindingArr2, 0, length);
                this.types[typeBinding.f102482id] = typeBindingArr2;
                typeBindingArr = typeBindingArr2;
            }
            typeBindingArr[i11] = typeBinding2;
            return typeBinding2;
        }
        throw new IllegalStateException();
    }

    public void fixTypeVariableDeclaringElement(TypeVariableBinding typeVariableBinding, Binding binding) {
        TypeBinding[] typeBindingArr;
        int i10 = typeVariableBinding.f102482id;
        if (i10 >= this.typeid || (typeBindingArr = this.types[i10]) == null) {
            typeVariableBinding.declaringElement = binding;
            return;
        }
        for (TypeBinding typeBinding : typeBindingArr) {
            if (typeBinding instanceof TypeVariableBinding) {
                ((TypeVariableBinding) typeBinding).declaringElement = binding;
            }
        }
    }

    public void forceRegisterAsDerived(TypeBinding typeBinding) {
        TypeBinding[] typeBindingArr;
        int i10 = typeBinding.f102482id;
        if (i10 == Integer.MAX_VALUE || (typeBindingArr = this.types[i10]) == null) {
            throw new IllegalStateException("Type was not yet registered as expected: " + ((Object) typeBinding));
        }
        TypeBinding typeBinding2 = typeBindingArr[0];
        if (typeBinding2 == typeBinding) {
            typeBinding2 = typeBinding.clone(null);
            typeBindingArr[0] = typeBinding2;
        }
        cacheDerivedType(typeBinding2, typeBinding);
    }

    public TypeBinding getAnnotatedType(TypeBinding typeBinding, AnnotationBinding[][] annotationBindingArr) {
        return typeBinding;
    }

    public TypeBinding[] getAnnotatedTypes(TypeBinding typeBinding) {
        return Binding.NO_TYPES;
    }

    public final AnnotationBinding getAnnotationType(ReferenceBinding referenceBinding, boolean z10) {
        AnnotationBinding annotationBinding = (AnnotationBinding) this.annotationTypes.get(referenceBinding);
        if (annotationBinding == null) {
            annotationBinding = z10 ? new AnnotationBinding(referenceBinding, Binding.NO_ELEMENT_VALUE_PAIRS) : new UnresolvedAnnotationBinding(referenceBinding, Binding.NO_ELEMENT_VALUE_PAIRS, this.environment);
            this.annotationTypes.put(referenceBinding, annotationBinding);
        }
        if (z10) {
            annotationBinding.resolve();
        }
        return annotationBinding;
    }

    public ArrayBinding getArrayType(TypeBinding typeBinding, int i10) {
        if (typeBinding instanceof ArrayBinding) {
            i10 += typeBinding.dimensions();
            typeBinding = typeBinding.leafComponentType();
        }
        TypeBinding unannotatedType = getUnannotatedType(typeBinding);
        TypeBinding[] typeBindingArr = this.types[unannotatedType.f102482id];
        int length = typeBindingArr.length;
        int i11 = 0;
        while (i11 < length) {
            TypeBinding typeBinding2 = typeBindingArr[i11];
            if (typeBinding2 == null) {
                break;
            }
            if (typeBinding2.isArrayType() && !typeBinding2.hasTypeAnnotations() && typeBinding2.leafComponentType() == unannotatedType && typeBinding2.dimensions() == i10) {
                return (ArrayBinding) typeBinding2;
            }
            i11++;
        }
        if (i11 == length) {
            TypeBinding[] typeBindingArr2 = new TypeBinding[length * 2];
            System.arraycopy(typeBindingArr, 0, typeBindingArr2, 0, length);
            this.types[unannotatedType.f102482id] = typeBindingArr2;
            typeBindingArr = typeBindingArr2;
        }
        ArrayBinding arrayBinding = new ArrayBinding(unannotatedType, i10, this.environment);
        typeBindingArr[i11] = arrayBinding;
        TypeBinding[][] typeBindingArr3 = this.types;
        int length2 = typeBindingArr3.length;
        if (this.typeid == length2) {
            TypeBinding[][] typeBindingArr4 = new TypeBinding[length2 * 2];
            this.types = typeBindingArr4;
            System.arraycopy(typeBindingArr3, 0, typeBindingArr4, 0, length2);
        }
        TypeBinding[][] typeBindingArr5 = this.types;
        int i12 = this.typeid;
        TypeBinding[] typeBindingArr6 = new TypeBinding[1];
        typeBindingArr5[i12] = typeBindingArr6;
        this.typeid = i12 + 1;
        arrayBinding.f102482id = i12;
        typeBindingArr6[0] = arrayBinding;
        return arrayBinding;
    }

    public final CaptureBinding getCapturedWildcard(WildcardBinding wildcardBinding, ReferenceBinding referenceBinding, int i10, int i11, ASTNode aSTNode, int i12) {
        WildcardBinding wildcardBinding2 = (WildcardBinding) getUnannotatedType(wildcardBinding);
        TypeBinding[] typeBindingArr = this.types[wildcardBinding2.f102482id];
        int length = typeBindingArr.length;
        int i13 = length - 1;
        int i14 = length;
        while (i13 >= -1) {
            if (i13 != -1) {
                TypeBinding typeBinding = typeBindingArr[i13];
                if (typeBinding == null) {
                    i14 = i13;
                } else if (typeBinding.isCapture()) {
                    CaptureBinding captureBinding = (CaptureBinding) typeBinding;
                    if (captureBinding.cud == aSTNode) {
                        if (captureBinding.sourceType == referenceBinding && captureBinding.start == i10) {
                            if (captureBinding.end == i11) {
                                return captureBinding;
                            }
                        }
                    }
                }
                i13--;
            }
            i13 = i14;
        }
        if (i13 == length) {
            TypeBinding[] typeBindingArr2 = new TypeBinding[length * 2];
            System.arraycopy(typeBindingArr, 0, typeBindingArr2, 0, length);
            this.types[wildcardBinding2.f102482id] = typeBindingArr2;
            typeBindingArr = typeBindingArr2;
        }
        CaptureBinding captureBinding2 = new CaptureBinding(wildcardBinding, referenceBinding, i10, i11, aSTNode, i12);
        typeBindingArr[i13] = captureBinding2;
        return captureBinding2;
    }

    public final TypeBinding[] getDerivedTypes(TypeBinding typeBinding) {
        return this.types[getUnannotatedType(typeBinding).f102482id];
    }

    public final TypeBinding getIntersectionType18(ReferenceBinding[] referenceBindingArr) {
        int length = referenceBindingArr == null ? 0 : referenceBindingArr.length;
        if (length == 0) {
            return null;
        }
        ReferenceBinding referenceBinding = referenceBindingArr[0];
        if (referenceBinding == null || length == 1) {
            return referenceBinding;
        }
        for (TypeBinding typeBinding : getDerivedTypes(referenceBinding)) {
            if (typeBinding == null) {
                break;
            }
            if (typeBinding.isIntersectionType18()) {
                ReferenceBinding[] intersectingTypes = typeBinding.getIntersectingTypes();
                if (intersectingTypes.length == length) {
                    for (int i10 = 0; i10 < length; i10++) {
                        if (referenceBindingArr[i10] != intersectingTypes[i10]) {
                            break;
                        }
                    }
                    return typeBinding;
                }
                continue;
            }
        }
        return cacheDerivedType(referenceBinding, new IntersectionTypeBinding18(referenceBindingArr, this.environment));
    }

    public ReferenceBinding getMemberType(ReferenceBinding referenceBinding, ReferenceBinding referenceBinding2) {
        return referenceBinding;
    }

    public ParameterizedTypeBinding getParameterizedType(ReferenceBinding referenceBinding, TypeBinding[] typeBindingArr, ReferenceBinding referenceBinding2) {
        ReferenceBinding referenceBinding3 = (ReferenceBinding) getUnannotatedType(referenceBinding);
        if (referenceBinding2 == null && (referenceBinding instanceof UnresolvedReferenceBinding) && !(referenceBinding3 instanceof UnresolvedReferenceBinding)) {
            referenceBinding2 = referenceBinding3.enclosingType();
        }
        int length = typeBindingArr == null ? 0 : typeBindingArr.length;
        TypeBinding[] typeBindingArr2 = typeBindingArr == null ? null : new TypeBinding[length];
        for (int i10 = 0; i10 < length; i10++) {
            typeBindingArr2[i10] = getUnannotatedType(typeBindingArr[i10]);
        }
        ReferenceBinding referenceBinding4 = referenceBinding2 != null ? (ReferenceBinding) getUnannotatedType(referenceBinding2) : null;
        ParameterizedTypeBinding parameterizedTypeBinding = this.parameterizedTypes.get(referenceBinding3, typeBindingArr2, referenceBinding4, Binding.NO_ANNOTATIONS);
        if (parameterizedTypeBinding != null) {
            return parameterizedTypeBinding;
        }
        ParameterizedTypeBinding parameterizedTypeBinding2 = new ParameterizedTypeBinding(referenceBinding3, typeBindingArr2, referenceBinding4, this.environment);
        cacheDerivedType(referenceBinding3, parameterizedTypeBinding2);
        this.parameterizedTypes.put(referenceBinding, typeBindingArr, referenceBinding2, parameterizedTypeBinding2);
        TypeBinding[][] typeBindingArr3 = this.types;
        int length2 = typeBindingArr3.length;
        if (this.typeid == length2) {
            TypeBinding[][] typeBindingArr4 = new TypeBinding[length2 * 2];
            this.types = typeBindingArr4;
            System.arraycopy(typeBindingArr3, 0, typeBindingArr4, 0, length2);
        }
        TypeBinding[][] typeBindingArr5 = this.types;
        int i11 = this.typeid;
        TypeBinding[] typeBindingArr6 = new TypeBinding[1];
        typeBindingArr5[i11] = typeBindingArr6;
        this.typeid = i11 + 1;
        parameterizedTypeBinding2.f102482id = i11;
        typeBindingArr6[0] = parameterizedTypeBinding2;
        return parameterizedTypeBinding2;
    }

    public RawTypeBinding getRawType(ReferenceBinding referenceBinding, ReferenceBinding referenceBinding2) {
        if (!referenceBinding.hasEnclosingInstanceContext() && referenceBinding2 != null) {
            referenceBinding2 = (ReferenceBinding) referenceBinding2.original();
        }
        ReferenceBinding referenceBinding3 = (ReferenceBinding) getUnannotatedType(referenceBinding);
        ReferenceBinding referenceBinding4 = referenceBinding2 == null ? null : (ReferenceBinding) getUnannotatedType(referenceBinding2);
        TypeBinding[] typeBindingArr = this.types[referenceBinding3.f102482id];
        int length = typeBindingArr.length;
        int i10 = 0;
        while (i10 < length) {
            TypeBinding typeBinding = typeBindingArr[i10];
            if (typeBinding == null) {
                break;
            }
            if (typeBinding.isRawType() && typeBinding.actualType() == referenceBinding3 && !typeBinding.hasTypeAnnotations() && typeBinding.enclosingType() == referenceBinding4) {
                return (RawTypeBinding) typeBinding;
            }
            i10++;
        }
        if (i10 == length) {
            TypeBinding[] typeBindingArr2 = new TypeBinding[length * 2];
            System.arraycopy(typeBindingArr, 0, typeBindingArr2, 0, length);
            this.types[referenceBinding3.f102482id] = typeBindingArr2;
            typeBindingArr = typeBindingArr2;
        }
        RawTypeBinding rawTypeBinding = new RawTypeBinding(referenceBinding3, referenceBinding4, this.environment);
        typeBindingArr[i10] = rawTypeBinding;
        TypeBinding[][] typeBindingArr3 = this.types;
        int length2 = typeBindingArr3.length;
        if (this.typeid == length2) {
            TypeBinding[][] typeBindingArr4 = new TypeBinding[length2 * 2];
            this.types = typeBindingArr4;
            System.arraycopy(typeBindingArr3, 0, typeBindingArr4, 0, length2);
        }
        TypeBinding[][] typeBindingArr5 = this.types;
        int i11 = this.typeid;
        TypeBinding[] typeBindingArr6 = new TypeBinding[1];
        typeBindingArr5[i11] = typeBindingArr6;
        this.typeid = i11 + 1;
        rawTypeBinding.f102482id = i11;
        typeBindingArr6[0] = rawTypeBinding;
        return rawTypeBinding;
    }

    /* JADX WARN: Code restructure failed: missing block: B:35:0x0062, code lost:
    
        if (r0 == null) goto L36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x0066, code lost:
    
        if (r0.f102482id != Integer.MAX_VALUE) goto L36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x0068, code lost:
    
        r0.f102482id = r8.f102482id;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x006c, code lost:
    
        return r1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final TypeBinding getUnannotatedType(TypeBinding typeBinding) {
        UnresolvedReferenceBinding unresolvedReferenceBinding;
        TypeBinding typeBinding2 = null;
        if (typeBinding.isUnresolvedType()) {
            unresolvedReferenceBinding = (UnresolvedReferenceBinding) typeBinding;
            ReferenceBinding referenceBinding = unresolvedReferenceBinding.resolvedType;
            if (referenceBinding != null) {
                typeBinding = referenceBinding;
            }
        } else {
            unresolvedReferenceBinding = null;
        }
        try {
            int i10 = typeBinding.f102482id;
            if (i10 != Integer.MAX_VALUE) {
                TypeBinding[] typeBindingArr = this.types[i10];
                if (typeBindingArr != null) {
                    typeBinding2 = typeBindingArr[0];
                }
                if (typeBinding.hasTypeAnnotations() && typeBinding2 == null) {
                    throw new IllegalStateException();
                }
                this.types[typeBinding.f102482id] = new TypeBinding[4];
            } else {
                if (typeBinding.hasTypeAnnotations()) {
                    throw new IllegalStateException();
                }
                TypeBinding[][] typeBindingArr2 = this.types;
                int length = typeBindingArr2.length;
                if (this.typeid == length) {
                    TypeBinding[][] typeBindingArr3 = new TypeBinding[length * 2];
                    this.types = typeBindingArr3;
                    System.arraycopy(typeBindingArr2, 0, typeBindingArr3, 0, length);
                }
                TypeBinding[][] typeBindingArr4 = this.types;
                int i11 = this.typeid;
                this.typeid = i11 + 1;
                typeBinding.f102482id = i11;
                typeBindingArr4[i11] = new TypeBinding[4];
            }
            if (unresolvedReferenceBinding != null && unresolvedReferenceBinding.f102482id == Integer.MAX_VALUE) {
                unresolvedReferenceBinding.f102482id = typeBinding.f102482id;
            }
            this.types[typeBinding.f102482id][0] = typeBinding;
            return typeBinding;
        } catch (Throwable th2) {
            if (unresolvedReferenceBinding != null && unresolvedReferenceBinding.f102482id == Integer.MAX_VALUE) {
                unresolvedReferenceBinding.f102482id = typeBinding.f102482id;
            }
            throw th2;
        }
    }

    public WildcardBinding getWildcard(ReferenceBinding referenceBinding, int i10, TypeBinding typeBinding, TypeBinding[] typeBindingArr, int i11) {
        if (referenceBinding == null) {
            referenceBinding = ReferenceBinding.LUB_GENERIC;
        }
        ReferenceBinding referenceBinding2 = (ReferenceBinding) getUnannotatedType(referenceBinding);
        int length = typeBindingArr == null ? 0 : typeBindingArr.length;
        TypeBinding[] typeBindingArr2 = typeBindingArr == null ? null : new TypeBinding[length];
        for (int i12 = 0; i12 < length; i12++) {
            typeBindingArr2[i12] = getUnannotatedType(typeBindingArr[i12]);
        }
        TypeBinding unannotatedType = typeBinding == null ? null : getUnannotatedType(typeBinding);
        boolean z10 = (unannotatedType instanceof TypeVariableBinding) || ((unannotatedType instanceof ParameterizedTypeBinding) && !(unannotatedType instanceof RawTypeBinding));
        TypeBinding[] typeBindingArr3 = this.types[z10 ? unannotatedType.f102482id : referenceBinding2.f102482id];
        int length2 = typeBindingArr3.length;
        int i13 = 0;
        while (i13 < length2) {
            TypeBinding typeBinding2 = typeBindingArr3[i13];
            if (typeBinding2 == null) {
                break;
            }
            if (typeBinding2.isWildcard() && typeBinding2.actualType() == referenceBinding2 && !typeBinding2.hasTypeAnnotations() && typeBinding2.rank() == i10 && typeBinding2.boundKind() == i11 && typeBinding2.bound() == unannotatedType && Util.effectivelyEqual(typeBinding2.additionalBounds(), typeBindingArr2)) {
                return (WildcardBinding) typeBinding2;
            }
            i13++;
        }
        if (i13 == length2) {
            TypeBinding[] typeBindingArr4 = new TypeBinding[length2 * 2];
            System.arraycopy(typeBindingArr3, 0, typeBindingArr4, 0, length2);
            this.types[z10 ? unannotatedType.f102482id : referenceBinding2.f102482id] = typeBindingArr4;
            typeBindingArr3 = typeBindingArr4;
        }
        WildcardBinding wildcardBinding = new WildcardBinding(referenceBinding2, i10, unannotatedType, typeBindingArr2, i11, this.environment);
        typeBindingArr3[i13] = wildcardBinding;
        TypeBinding[][] typeBindingArr5 = this.types;
        int length3 = typeBindingArr5.length;
        if (this.typeid == length3) {
            TypeBinding[][] typeBindingArr6 = new TypeBinding[length3 * 2];
            this.types = typeBindingArr6;
            System.arraycopy(typeBindingArr5, 0, typeBindingArr6, 0, length3);
        }
        TypeBinding[][] typeBindingArr7 = this.types;
        int i14 = this.typeid;
        TypeBinding[] typeBindingArr8 = new TypeBinding[1];
        typeBindingArr7[i14] = typeBindingArr8;
        this.typeid = i14 + 1;
        wildcardBinding.f102482id = i14;
        typeBindingArr8[0] = wildcardBinding;
        return wildcardBinding;
    }

    public boolean isAnnotatedTypeSystem() {
        return false;
    }

    public void reset() {
        this.annotationTypes = new SimpleLookupTable(16);
        this.typeid = 128;
        this.types = new TypeBinding[256];
        this.parameterizedTypes = new HashedParameterizedTypes();
    }

    public void updateCaches(UnresolvedReferenceBinding unresolvedReferenceBinding, ReferenceBinding referenceBinding) {
        int i10 = unresolvedReferenceBinding.f102482id;
        int i11 = referenceBinding.f102482id;
        if (i11 != Integer.MAX_VALUE) {
            unresolvedReferenceBinding.f102482id = i11;
        }
        if (i10 != Integer.MAX_VALUE) {
            TypeBinding[] typeBindingArr = this.types[i10];
            int length = typeBindingArr == null ? 0 : typeBindingArr.length;
            for (int i12 = 0; i12 < length; i12++) {
                TypeBinding typeBinding = typeBindingArr[i12];
                if (typeBinding == null) {
                    break;
                }
                if (typeBinding == unresolvedReferenceBinding) {
                    if (referenceBinding.f102482id == Integer.MAX_VALUE) {
                        referenceBinding.f102482id = i10;
                    }
                    typeBindingArr[i12] = referenceBinding;
                }
            }
        }
        if (this.annotationTypes.get(unresolvedReferenceBinding) != null) {
            Object[] objArr = this.annotationTypes.keyTable;
            int length2 = objArr.length;
            for (int i13 = 0; i13 < length2; i13++) {
                if (objArr[i13] == unresolvedReferenceBinding) {
                    objArr[i13] = referenceBinding;
                    return;
                }
            }
        }
    }

    public final TypeBinding cacheDerivedType(TypeBinding typeBinding, TypeBinding typeBinding2, TypeBinding typeBinding3) {
        cacheDerivedType(typeBinding, typeBinding3);
        if (typeBinding2.f102482id != typeBinding.f102482id) {
            cacheDerivedType(typeBinding2, typeBinding3);
        }
        return typeBinding3;
    }

    public ParameterizedTypeBinding getParameterizedType(ReferenceBinding referenceBinding, TypeBinding[] typeBindingArr, ReferenceBinding referenceBinding2, AnnotationBinding[] annotationBindingArr) {
        return getParameterizedType(referenceBinding, typeBindingArr, referenceBinding2);
    }

    public ArrayBinding getArrayType(TypeBinding typeBinding, int i10, AnnotationBinding[] annotationBindingArr) {
        return getArrayType(typeBinding, i10);
    }

    public RawTypeBinding getRawType(ReferenceBinding referenceBinding, ReferenceBinding referenceBinding2, AnnotationBinding[] annotationBindingArr) {
        return getRawType(referenceBinding, referenceBinding2);
    }

    public WildcardBinding getWildcard(ReferenceBinding referenceBinding, int i10, TypeBinding typeBinding, TypeBinding[] typeBindingArr, int i11, AnnotationBinding[] annotationBindingArr) {
        return getWildcard(referenceBinding, i10, typeBinding, typeBindingArr, i11);
    }
}
