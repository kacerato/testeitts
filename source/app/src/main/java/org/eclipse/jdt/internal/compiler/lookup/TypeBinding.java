package org.eclipse.jdt.internal.compiler.lookup;

import java.util.List;
import java.util.Set;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.impl.CompilerOptions;
import w2.C15883c;

public abstract class TypeBinding extends Binding {

    public int f102482id;
    public long tagBits;
    protected AnnotationBinding[] typeAnnotations;
    public static final ReferenceBinding TYPE_USE_BINDING = new ReferenceBinding() {
        {
            this.f102482id = 0;
        }

        @Override
        public boolean hasTypeBit(int i10) {
            return false;
        }

        @Override
        public int kind() {
            return 16388;
        }
    };
    public static final BaseTypeBinding INT = new BaseTypeBinding(10, TypeConstants.INT, new char[]{'I'});
    public static final BaseTypeBinding BYTE = new BaseTypeBinding(3, TypeConstants.BYTE, new char[]{'B'});
    public static final BaseTypeBinding SHORT = new BaseTypeBinding(4, TypeConstants.SHORT, new char[]{'S'});
    public static final BaseTypeBinding CHAR = new BaseTypeBinding(2, TypeConstants.CHAR, new char[]{'C'});
    public static final BaseTypeBinding LONG = new BaseTypeBinding(7, TypeConstants.LONG, new char[]{'J'});
    public static final BaseTypeBinding FLOAT = new BaseTypeBinding(9, TypeConstants.FLOAT, new char[]{'F'});
    public static final BaseTypeBinding DOUBLE = new BaseTypeBinding(8, TypeConstants.DOUBLE, new char[]{'D'});
    public static final BaseTypeBinding BOOLEAN = new BaseTypeBinding(5, TypeConstants.BOOLEAN, new char[]{'Z'});
    public static final NullTypeBinding NULL = new NullTypeBinding();
    public static final VoidTypeBinding VOID = new VoidTypeBinding();

    public TypeBinding() {
        this.f102482id = Integer.MAX_VALUE;
        this.tagBits = 0L;
        this.typeAnnotations = Binding.NO_ANNOTATIONS;
    }

    public static boolean equalsEquals(TypeBinding typeBinding, TypeBinding typeBinding2) {
        if (typeBinding == typeBinding2) {
            return true;
        }
        if (typeBinding != null && typeBinding2 != null) {
            int i10 = typeBinding.f102482id;
            if (i10 != Integer.MAX_VALUE && i10 == typeBinding2.f102482id) {
                return true;
            }
            if ((typeBinding instanceof LocalTypeBinding) && (typeBinding2 instanceof LocalTypeBinding) && ((LocalTypeBinding) typeBinding).sourceStart == ((LocalTypeBinding) typeBinding2).sourceStart) {
                return true;
            }
        }
        return false;
    }

    private boolean isProvableDistinctSubType(TypeBinding typeBinding) {
        if (typeBinding.isInterface()) {
            if (isInterface()) {
                return false;
            }
            if (isArrayType() || (((this instanceof ReferenceBinding) && ((ReferenceBinding) this).isFinal()) || (isTypeVariable() && ((TypeVariableBinding) this).superclass().isFinal()))) {
                return !isCompatibleWith(typeBinding);
            }
            return false;
        }
        if (isInterface()) {
            if (typeBinding.isArrayType() || (((typeBinding instanceof ReferenceBinding) && ((ReferenceBinding) typeBinding).isFinal()) || (typeBinding.isTypeVariable() && ((TypeVariableBinding) typeBinding).superclass().isFinal()))) {
                return !isCompatibleWith(typeBinding);
            }
        } else if (!isTypeVariable() && !typeBinding.isTypeVariable()) {
            return !isCompatibleWith(typeBinding);
        }
        return false;
    }

    private boolean isProvablyDistinctTypeArgument(TypeBinding typeBinding, ParameterizedTypeBinding parameterizedTypeBinding, int i10) {
        TypeBinding typeBinding2;
        TypeBinding typeBinding3;
        TypeBinding typeBinding4;
        TypeBinding typeBinding5;
        if (equalsEquals(this, typeBinding)) {
            return false;
        }
        ReferenceBinding genericType = parameterizedTypeBinding.genericType();
        int kind = kind();
        TypeBinding typeBinding6 = null;
        if (kind == 516) {
            WildcardBinding wildcardBinding = (WildcardBinding) this;
            int i11 = wildcardBinding.boundKind;
            if (i11 != 0) {
                if (i11 != 1) {
                    if (i11 == 2) {
                        typeBinding3 = wildcardBinding.bound;
                        typeBinding2 = null;
                    }
                    typeBinding3 = null;
                    typeBinding2 = null;
                } else {
                    typeBinding2 = wildcardBinding.bound;
                    typeBinding3 = null;
                }
            }
            return false;
        }
        if (kind == 4100) {
            TypeVariableBinding typeVariableBinding = (TypeVariableBinding) this;
            if (typeVariableBinding.isCapture()) {
                if (typeVariableBinding instanceof CaptureBinding18) {
                    CaptureBinding18 captureBinding18 = (CaptureBinding18) typeVariableBinding;
                    typeBinding2 = captureBinding18.firstBound;
                    typeBinding3 = captureBinding18.lowerBound;
                } else {
                    WildcardBinding wildcardBinding2 = ((CaptureBinding) typeVariableBinding).wildcard;
                    int i12 = wildcardBinding2.boundKind;
                    if (i12 == 0) {
                        return false;
                    }
                    if (i12 == 1) {
                        typeBinding2 = wildcardBinding2.bound;
                        typeBinding3 = null;
                    } else if (i12 == 2) {
                        typeBinding3 = wildcardBinding2.bound;
                        typeBinding2 = null;
                    }
                }
            } else {
                if (typeVariableBinding.firstBound == null) {
                    return false;
                }
                TypeBinding convertEliminatingTypeVariables = Scope.convertEliminatingTypeVariables(typeVariableBinding, genericType, i10, null);
                int kind2 = convertEliminatingTypeVariables.kind();
                if (kind2 == 516 || kind2 == 8196) {
                    WildcardBinding wildcardBinding3 = (WildcardBinding) convertEliminatingTypeVariables;
                    int i13 = wildcardBinding3.boundKind;
                    if (i13 == 0) {
                        return false;
                    }
                    if (i13 == 1) {
                        typeBinding2 = wildcardBinding3.bound;
                        typeBinding3 = null;
                    } else if (i13 == 2) {
                        typeBinding3 = wildcardBinding3.bound;
                        typeBinding2 = null;
                    }
                }
            }
        }
        typeBinding3 = null;
        typeBinding2 = null;
        int kind3 = typeBinding.kind();
        if (kind3 == 516) {
            WildcardBinding wildcardBinding4 = (WildcardBinding) typeBinding;
            int i14 = wildcardBinding4.boundKind;
            if (i14 != 0) {
                if (i14 != 1) {
                    if (i14 == 2) {
                        typeBinding5 = wildcardBinding4.bound;
                        TypeBinding typeBinding7 = typeBinding6;
                        typeBinding6 = typeBinding5;
                        typeBinding4 = typeBinding7;
                    }
                    typeBinding4 = null;
                } else {
                    typeBinding4 = wildcardBinding4.bound;
                }
            }
            return false;
        }
        if (kind3 == 4100) {
            TypeVariableBinding typeVariableBinding2 = (TypeVariableBinding) typeBinding;
            if (typeVariableBinding2.isCapture()) {
                if (typeVariableBinding2 instanceof CaptureBinding18) {
                    CaptureBinding18 captureBinding182 = (CaptureBinding18) typeVariableBinding2;
                    typeBinding6 = captureBinding182.firstBound;
                    typeBinding5 = captureBinding182.lowerBound;
                } else {
                    WildcardBinding wildcardBinding5 = ((CaptureBinding) typeVariableBinding2).wildcard;
                    int i15 = wildcardBinding5.boundKind;
                    if (i15 == 0) {
                        return false;
                    }
                    if (i15 == 1) {
                        typeBinding4 = wildcardBinding5.bound;
                    } else if (i15 == 2) {
                        typeBinding5 = wildcardBinding5.bound;
                    }
                }
                TypeBinding typeBinding72 = typeBinding6;
                typeBinding6 = typeBinding5;
                typeBinding4 = typeBinding72;
            } else {
                if (typeVariableBinding2.firstBound == null) {
                    return false;
                }
                TypeBinding convertEliminatingTypeVariables2 = Scope.convertEliminatingTypeVariables(typeVariableBinding2, genericType, i10, null);
                int kind4 = convertEliminatingTypeVariables2.kind();
                if (kind4 == 516 || kind4 == 8196) {
                    WildcardBinding wildcardBinding6 = (WildcardBinding) convertEliminatingTypeVariables2;
                    int i16 = wildcardBinding6.boundKind;
                    if (i16 == 0) {
                        return false;
                    }
                    if (i16 == 1) {
                        typeBinding4 = wildcardBinding6.bound;
                    } else if (i16 == 2) {
                        typeBinding5 = wildcardBinding6.bound;
                        TypeBinding typeBinding722 = typeBinding6;
                        typeBinding6 = typeBinding5;
                        typeBinding4 = typeBinding722;
                    }
                }
            }
        }
        typeBinding4 = null;
        if (typeBinding3 == null) {
            if (typeBinding2 != null) {
                return typeBinding6 != null ? !typeBinding6.isCompatibleWith(typeBinding2) : typeBinding4 != null ? typeBinding2.isProvableDistinctSubType(typeBinding4) && typeBinding4.isProvableDistinctSubType(typeBinding2) : typeBinding.isProvableDistinctSubType(typeBinding2);
            }
            if (typeBinding6 == null) {
                if (typeBinding4 != null) {
                    return isProvableDistinctSubType(typeBinding4);
                }
                return true;
            }
            if (typeBinding6.isTypeVariable() || isTypeVariable()) {
                return false;
            }
            return !typeBinding6.isCompatibleWith(this);
        }
        if (typeBinding6 != null) {
            return false;
        }
        if (typeBinding4 != null) {
            if (typeBinding3.isTypeVariable() || typeBinding4.isTypeVariable()) {
                return false;
            }
            return !typeBinding3.isCompatibleWith(typeBinding4);
        }
        if (typeBinding3.isTypeVariable() || typeBinding.isTypeVariable()) {
            return false;
        }
        return !typeBinding3.isCompatibleWith(typeBinding);
    }

    public static boolean notEquals(TypeBinding typeBinding, TypeBinding typeBinding2) {
        int i10;
        if (typeBinding == typeBinding2) {
            return false;
        }
        return typeBinding == null || typeBinding2 == null || (i10 = typeBinding.f102482id) == Integer.MAX_VALUE || i10 != typeBinding2.f102482id;
    }

    public static final TypeBinding wellKnownType(Scope scope, int i10) {
        switch (i10) {
            case 1:
                return scope.getJavaLangObject();
            case 2:
                return CHAR;
            case 3:
                return BYTE;
            case 4:
                return SHORT;
            case 5:
                return BOOLEAN;
            case 6:
            default:
                return null;
            case 7:
                return LONG;
            case 8:
                return DOUBLE;
            case 9:
                return FLOAT;
            case 10:
                return INT;
            case 11:
                return scope.getJavaLangString();
        }
    }

    public boolean acceptsNonNullDefault() {
        return false;
    }

    public ReferenceBinding actualType() {
        return null;
    }

    public TypeBinding[] additionalBounds() {
        return null;
    }

    public String annotatedDebugName() {
        ReferenceBinding enclosingType = enclosingType();
        StringBuffer stringBuffer = new StringBuffer(16);
        if (enclosingType != null) {
            stringBuffer.append(enclosingType.annotatedDebugName());
            stringBuffer.append('.');
        }
        AnnotationBinding[] typeAnnotations = getTypeAnnotations();
        int length = typeAnnotations == null ? 0 : typeAnnotations.length;
        for (int i10 = 0; i10 < length; i10++) {
            stringBuffer.append((Object) typeAnnotations[i10]);
            stringBuffer.append(C15883c.f126249O);
        }
        stringBuffer.append(sourceName());
        return stringBuffer.toString();
    }

    public TypeBinding bound() {
        return null;
    }

    public int boundKind() {
        return -1;
    }

    public boolean canBeInstantiated() {
        return !isBaseType();
    }

    public boolean canBeSeenBy(Scope scope) {
        return true;
    }

    public TypeBinding capture(Scope scope, int i10, int i11) {
        return this;
    }

    public TypeBinding clone(TypeBinding typeBinding) {
        throw new IllegalStateException("TypeBinding#clone() should have been overridden");
    }

    public TypeBinding closestMatch() {
        return this;
    }

    public void collectInferenceVariables(Set<InferenceVariable> set) {
    }

    public List<TypeBinding> collectMissingTypes(List<TypeBinding> list) {
        return list;
    }

    public void collectSubstitutes(Scope scope, TypeBinding typeBinding, InferenceContext inferenceContext, int i10) {
    }

    public abstract char[] constantPoolName();

    public ReferenceBinding containerAnnotationType() {
        return null;
    }

    public String debugName() {
        return hasTypeAnnotations() ? annotatedDebugName() : new String(readableName());
    }

    public int depth() {
        return 0;
    }

    public int dimensions() {
        return 0;
    }

    public TypeBinding downwardsProjection(Scope scope, TypeBinding[] typeBindingArr) {
        return this;
    }

    public MethodBinding enclosingMethod() {
        return null;
    }

    public ReferenceBinding enclosingType() {
        return null;
    }

    public boolean enterRecursiveFunction() {
        return true;
    }

    public TypeBinding erasure() {
        return this;
    }

    public void exitRecursiveFunction() {
    }

    public ReferenceBinding findSuperTypeOriginatingFrom(int i10, boolean z10) {
        ReferenceBinding[] referenceBindingArr;
        ReferenceBinding[] referenceBindingArr2;
        if (!(this instanceof ReferenceBinding)) {
            return null;
        }
        ReferenceBinding referenceBinding = (ReferenceBinding) this;
        if (referenceBinding.f102482id == i10 || original().f102482id == i10) {
            return referenceBinding;
        }
        if (!z10) {
            int i11 = 0;
            ReferenceBinding[] referenceBindingArr3 = null;
            do {
                ReferenceBinding[] superInterfaces = referenceBinding.superInterfaces();
                if (superInterfaces != null && superInterfaces != Binding.NO_SUPERINTERFACES) {
                    if (referenceBindingArr3 == null) {
                        i11 = superInterfaces.length;
                        referenceBindingArr3 = superInterfaces;
                    } else {
                        int length = i11 + superInterfaces.length;
                        if (length >= referenceBindingArr3.length) {
                            referenceBindingArr2 = new ReferenceBinding[length + 5];
                            System.arraycopy(referenceBindingArr3, 0, referenceBindingArr2, 0, i11);
                        } else {
                            referenceBindingArr2 = referenceBindingArr3;
                        }
                        int i12 = i11;
                        for (ReferenceBinding referenceBinding2 : superInterfaces) {
                            int i13 = 0;
                            while (true) {
                                if (i13 >= i12) {
                                    referenceBindingArr2[i12] = referenceBinding2;
                                    i12++;
                                    break;
                                }
                                if (equalsEquals(referenceBinding2, referenceBindingArr2[i13])) {
                                    break;
                                }
                                i13++;
                            }
                        }
                        referenceBindingArr3 = referenceBindingArr2;
                        i11 = i12;
                    }
                }
                referenceBinding = referenceBinding.superclass();
            } while (referenceBinding != null);
            for (int i14 = 0; i14 < i11; i14++) {
                ReferenceBinding referenceBinding3 = referenceBindingArr3[i14];
                if (referenceBinding3.f102482id == i10 || referenceBinding3.original().f102482id == i10) {
                    return referenceBinding3;
                }
                ReferenceBinding[] superInterfaces2 = referenceBinding3.superInterfaces();
                if (superInterfaces2 != null && superInterfaces2 != Binding.NO_SUPERINTERFACES) {
                    int length2 = i11 + superInterfaces2.length;
                    if (length2 >= referenceBindingArr3.length) {
                        referenceBindingArr = new ReferenceBinding[length2 + 5];
                        System.arraycopy(referenceBindingArr3, 0, referenceBindingArr, 0, i11);
                    } else {
                        referenceBindingArr = referenceBindingArr3;
                    }
                    int i15 = i11;
                    for (ReferenceBinding referenceBinding4 : superInterfaces2) {
                        int i16 = 0;
                        while (true) {
                            if (i16 >= i15) {
                                referenceBindingArr[i15] = referenceBinding4;
                                i15++;
                                break;
                            }
                            if (equalsEquals(referenceBinding4, referenceBindingArr[i16])) {
                                break;
                            }
                            i16++;
                        }
                    }
                    referenceBindingArr3 = referenceBindingArr;
                    i11 = i15;
                }
            }
            return null;
        }
        do {
            referenceBinding = referenceBinding.superclass();
            if (referenceBinding == null) {
                return null;
            }
            if (referenceBinding.f102482id == i10) {
                return referenceBinding;
            }
        } while (referenceBinding.original().f102482id != i10);
        return referenceBinding;
    }

    public TypeBinding genericCast(TypeBinding typeBinding) {
        if (equalsEquals(this, typeBinding)) {
            return null;
        }
        TypeBinding erasure = typeBinding.erasure();
        if (erasure().findSuperTypeOriginatingFrom(erasure) != null) {
            return null;
        }
        return erasure;
    }

    public char[] genericTypeSignature() {
        return signature();
    }

    public TypeBinding getErasureCompatibleType(TypeBinding typeBinding) {
        int kind = kind();
        int i10 = 0;
        if (kind == 4100) {
            TypeVariableBinding typeVariableBinding = (TypeVariableBinding) this;
            if (typeVariableBinding.erasure().findSuperTypeOriginatingFrom(typeBinding) != null) {
                return this;
            }
            ReferenceBinding referenceBinding = typeVariableBinding.superclass;
            if (referenceBinding != null && referenceBinding.findSuperTypeOriginatingFrom(typeBinding) != null) {
                return typeVariableBinding.superclass.getErasureCompatibleType(typeBinding);
            }
            int length = typeVariableBinding.superInterfaces.length;
            while (i10 < length) {
                ReferenceBinding referenceBinding2 = typeVariableBinding.superInterfaces[i10];
                if (referenceBinding2.findSuperTypeOriginatingFrom(typeBinding) != null) {
                    return referenceBinding2.getErasureCompatibleType(typeBinding);
                }
                i10++;
            }
            return this;
        }
        if (kind == 8196) {
            WildcardBinding wildcardBinding = (WildcardBinding) this;
            if (wildcardBinding.erasure().findSuperTypeOriginatingFrom(typeBinding) != null) {
                return this;
            }
            ReferenceBinding referenceBinding3 = wildcardBinding.superclass;
            if (referenceBinding3 != null && referenceBinding3.findSuperTypeOriginatingFrom(typeBinding) != null) {
                return wildcardBinding.superclass.getErasureCompatibleType(typeBinding);
            }
            int length2 = wildcardBinding.superInterfaces.length;
            while (i10 < length2) {
                ReferenceBinding referenceBinding4 = wildcardBinding.superInterfaces[i10];
                if (referenceBinding4.findSuperTypeOriginatingFrom(typeBinding) != null) {
                    return referenceBinding4.getErasureCompatibleType(typeBinding);
                }
                i10++;
            }
            return this;
        }
        if (kind != 32772) {
            return this;
        }
        ReferenceBinding[] intersectingTypes = ((IntersectionTypeBinding18) this).getIntersectingTypes();
        ReferenceBinding referenceBinding5 = intersectingTypes[0];
        if (referenceBinding5.f102482id == 1 && intersectingTypes.length > 1) {
            referenceBinding5 = intersectingTypes[1];
        }
        if (referenceBinding5.erasure().findSuperTypeOriginatingFrom(typeBinding) != null) {
            return this;
        }
        int length3 = intersectingTypes.length;
        while (i10 < length3) {
            ReferenceBinding referenceBinding6 = intersectingTypes[i10];
            if (referenceBinding6.findSuperTypeOriginatingFrom(typeBinding) != null) {
                return referenceBinding6.getErasureCompatibleType(typeBinding);
            }
            i10++;
        }
        return this;
    }

    public ReferenceBinding[] getIntersectingTypes() {
        return null;
    }

    public MethodBinding[] getMethods(char[] cArr) {
        return Binding.NO_METHODS;
    }

    public abstract PackageBinding getPackage();

    public MethodBinding getSingleAbstractMethod(Scope scope, boolean z10) {
        return null;
    }

    public final AnnotationBinding[] getTypeAnnotations() {
        return this.typeAnnotations;
    }

    public boolean hasNullTypeAnnotations() {
        return (this.tagBits & TagBits.HasNullTypeAnnotation) != 0;
    }

    public final boolean hasTypeAnnotations() {
        return (this.tagBits & 2097152) != 0;
    }

    public boolean hasTypeBit(int i10) {
        return false;
    }

    public void initializeForStaticImports() {
    }

    public final boolean isAnonymousType() {
        return (this.tagBits & 32) != 0;
    }

    public final boolean isArrayType() {
        return (this.tagBits & 1) != 0;
    }

    public final boolean isBaseType() {
        return (this.tagBits & 2) != 0;
    }

    public boolean isBoundParameterizedType() {
        return false;
    }

    public boolean isBoxedPrimitiveType() {
        switch (this.f102482id) {
            case 26:
            case 27:
            case 28:
            case 29:
            case 30:
            case 31:
            case 32:
            case 33:
                return true;
            default:
                return false;
        }
    }

    public boolean isBoxingCompatibleWith(TypeBinding typeBinding, Scope scope) {
        if (typeBinding == null) {
            return false;
        }
        if (equalsEquals(this, typeBinding) || isCompatibleWith(typeBinding, scope)) {
            return true;
        }
        if (isBaseType() != typeBinding.isBaseType()) {
            TypeBinding computeBoxingType = scope.environment().computeBoxingType(this);
            if (equalsEquals(computeBoxingType, typeBinding) || computeBoxingType.isCompatibleWith(typeBinding, scope)) {
                return true;
            }
        }
        return false;
    }

    public boolean isCapture() {
        return false;
    }

    public boolean isClass() {
        return false;
    }

    public boolean isCompatibleWith(TypeBinding typeBinding) {
        return isCompatibleWith(typeBinding, null);
    }

    public abstract boolean isCompatibleWith(TypeBinding typeBinding, Scope scope);

    public boolean isEnum() {
        return false;
    }

    public boolean isEquivalentTo(TypeBinding typeBinding) {
        if (equalsEquals(this, typeBinding)) {
            return true;
        }
        if (typeBinding == null) {
            return false;
        }
        int kind = typeBinding.kind();
        if (kind == 516 || kind == 8196) {
            return ((WildcardBinding) typeBinding).boundCheck(this);
        }
        return false;
    }

    public boolean isFreeTypeVariable() {
        return false;
    }

    public boolean isFunctionalInterface(Scope scope) {
        return false;
    }

    public boolean isFunctionalType() {
        return false;
    }

    public boolean isGenericType() {
        return false;
    }

    public final boolean isHierarchyInconsistent() {
        return (this.tagBits & 131072) != 0;
    }

    public boolean isInterface() {
        return false;
    }

    public boolean isIntersectionType() {
        return false;
    }

    public boolean isIntersectionType18() {
        return false;
    }

    public final boolean isLocalType() {
        return (this.tagBits & 16) != 0;
    }

    public final boolean isMemberType() {
        return (this.tagBits & 8) != 0;
    }

    public final boolean isNestedType() {
        return (this.tagBits & 4) != 0;
    }

    public final boolean isNumericType() {
        switch (this.f102482id) {
            case 2:
            case 3:
            case 4:
            case 7:
            case 8:
            case 9:
            case 10:
                return true;
            case 5:
            case 6:
            default:
                return false;
        }
    }

    public boolean isParameterizedType() {
        return false;
    }

    public final boolean isParameterizedTypeWithActualArguments() {
        return kind() == 260 && ((ParameterizedTypeBinding) this).arguments != null;
    }

    public boolean isParameterizedWithOwnVariables() {
        if (kind() != 260) {
            return false;
        }
        ParameterizedTypeBinding parameterizedTypeBinding = (ParameterizedTypeBinding) this;
        if (parameterizedTypeBinding.arguments == null) {
            return false;
        }
        TypeVariableBinding[] typeVariables = erasure().typeVariables();
        int length = typeVariables.length;
        for (int i10 = 0; i10 < length; i10++) {
            if (notEquals(typeVariables[i10], parameterizedTypeBinding.arguments[i10])) {
                return false;
            }
        }
        ReferenceBinding enclosingType = parameterizedTypeBinding.enclosingType();
        return enclosingType == null || !enclosingType.erasure().isGenericType() || enclosingType.isParameterizedWithOwnVariables();
    }

    public boolean isPolyType() {
        return false;
    }

    public boolean isPotentiallyCompatibleWith(TypeBinding typeBinding, Scope scope) {
        return isCompatibleWith(typeBinding, scope);
    }

    public final boolean isPrimitiveOrBoxedPrimitiveType() {
        if (isPrimitiveType()) {
            return true;
        }
        switch (this.f102482id) {
            case 26:
            case 27:
            case 28:
            case 29:
            case 30:
            case 31:
            case 32:
            case 33:
                return true;
            default:
                return false;
        }
    }

    public final boolean isPrimitiveType() {
        int i10;
        return ((this.tagBits & 2) == 0 || (i10 = this.f102482id) == 6 || i10 == 12) ? false : true;
    }

    public boolean isProperType(boolean z10) {
        return true;
    }

    public boolean isProvablyDistinct(TypeBinding typeBinding) {
        ReferenceBinding enclosingType;
        ReferenceBinding enclosingType2;
        if (equalsEquals(this, typeBinding)) {
            return false;
        }
        if (typeBinding == null) {
            return true;
        }
        int kind = kind();
        if (kind == 4) {
            int kind2 = typeBinding.kind();
            if (kind2 == 260 || kind2 == 1028) {
                return notEquals(this, typeBinding.erasure());
            }
        } else {
            if (kind == 260) {
                ParameterizedTypeBinding parameterizedTypeBinding = (ParameterizedTypeBinding) this;
                int kind3 = typeBinding.kind();
                if (kind3 == 4) {
                    return notEquals(erasure(), typeBinding);
                }
                if (kind3 == 260) {
                    ParameterizedTypeBinding parameterizedTypeBinding2 = (ParameterizedTypeBinding) typeBinding;
                    if (notEquals(parameterizedTypeBinding.genericType(), parameterizedTypeBinding2.genericType())) {
                        return true;
                    }
                    if (!parameterizedTypeBinding.isStatic() && (enclosingType = enclosingType()) != null) {
                        ReferenceBinding enclosingType3 = parameterizedTypeBinding2.enclosingType();
                        if (enclosingType3 == null) {
                            return true;
                        }
                        if ((enclosingType3.tagBits & TagBits.HasDirectWildcard) == 0) {
                            if (enclosingType.isProvablyDistinct(enclosingType3)) {
                                return true;
                            }
                        } else if (!enclosingType.isEquivalentTo(parameterizedTypeBinding2.enclosingType())) {
                            return true;
                        }
                    }
                    TypeBinding[] typeBindingArr = parameterizedTypeBinding.arguments;
                    int length = typeBindingArr == null ? 0 : typeBindingArr.length;
                    TypeBinding[] typeBindingArr2 = parameterizedTypeBinding2.arguments;
                    if ((typeBindingArr2 == null ? 0 : typeBindingArr2.length) != length) {
                        return true;
                    }
                    for (int i10 = 0; i10 < length; i10++) {
                        if (parameterizedTypeBinding.arguments[i10].isProvablyDistinctTypeArgument(typeBindingArr2[i10], parameterizedTypeBinding, i10)) {
                            return true;
                        }
                    }
                    return false;
                }
                if (kind3 == 1028) {
                    return notEquals(erasure(), typeBinding.erasure());
                }
                if (kind3 != 2052 || notEquals(parameterizedTypeBinding.genericType(), typeBinding)) {
                    return true;
                }
                if (!parameterizedTypeBinding.isStatic() && (enclosingType2 = enclosingType()) != null) {
                    ReferenceBinding enclosingType4 = typeBinding.enclosingType();
                    if (enclosingType4 == null) {
                        return true;
                    }
                    if ((enclosingType4.tagBits & TagBits.HasDirectWildcard) == 0) {
                        if (notEquals(enclosingType2, enclosingType4)) {
                            return true;
                        }
                    } else if (!enclosingType2.isEquivalentTo(typeBinding.enclosingType())) {
                        return true;
                    }
                }
                TypeBinding[] typeBindingArr3 = parameterizedTypeBinding.arguments;
                int length2 = typeBindingArr3 == null ? 0 : typeBindingArr3.length;
                TypeVariableBinding[] typeVariables = typeBinding.typeVariables();
                if ((typeVariables == null ? 0 : typeVariables.length) != length2) {
                    return true;
                }
                for (int i11 = 0; i11 < length2; i11++) {
                    if (parameterizedTypeBinding.arguments[i11].isProvablyDistinctTypeArgument(typeVariables[i11], parameterizedTypeBinding, i11)) {
                        return true;
                    }
                }
                return false;
            }
            if (kind == 1028) {
                int kind4 = typeBinding.kind();
                if (kind4 == 4 || kind4 == 260 || kind4 == 1028 || kind4 == 2052) {
                    return notEquals(erasure(), typeBinding.erasure());
                }
                return true;
            }
        }
        return true;
    }

    public final boolean isRawType() {
        return kind() == 1028;
    }

    public boolean isReifiable() {
        MethodBinding methodBinding;
        TypeBinding leafComponentType = leafComponentType();
        if (!(leafComponentType instanceof ReferenceBinding)) {
            return true;
        }
        ReferenceBinding referenceBinding = (ReferenceBinding) leafComponentType;
        do {
            int kind = referenceBinding.kind();
            if (kind != 260) {
                if (kind != 516) {
                    if (kind == 1028) {
                        return true;
                    }
                    if (kind != 2052) {
                        if (kind != 4100) {
                            if (kind == 8196) {
                            }
                        }
                    }
                }
                return false;
            }
            if (referenceBinding.isBoundParameterizedType()) {
                return false;
            }
            if (referenceBinding.isStatic()) {
                return true;
            }
            if (referenceBinding.isLocalType() && (methodBinding = ((LocalTypeBinding) referenceBinding.erasure()).enclosingMethod) != null && methodBinding.isStatic()) {
                return true;
            }
            referenceBinding = referenceBinding.enclosingType();
        } while (referenceBinding != null);
        return true;
    }

    public boolean isRepeatableAnnotationType() {
        return false;
    }

    public boolean isStatic() {
        return false;
    }

    public boolean isSubtypeOf(TypeBinding typeBinding, boolean z10) {
        return isCompatibleWith(typeBinding);
    }

    public boolean isThrowable() {
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:62:0x00ce, code lost:
    
        if (r0 != 8196) goto L79;
     */
    /* JADX WARN: Removed duplicated region for block: B:66:0x00fe A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:67:0x00ff  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean isTypeArgumentContainedBy(TypeBinding typeBinding) {
        ReferenceBinding enclosingType;
        TypeBinding typeBinding2;
        WildcardBinding wildcardBinding;
        TypeBinding upperBound;
        TypeBinding[] otherUpperBounds;
        WildcardBinding createWildcard;
        if (equalsEquals(this, typeBinding)) {
            return true;
        }
        int kind = typeBinding.kind();
        if (kind == 260) {
            if (!isParameterizedType()) {
                return false;
            }
            ParameterizedTypeBinding parameterizedTypeBinding = (ParameterizedTypeBinding) this;
            ParameterizedTypeBinding parameterizedTypeBinding2 = (ParameterizedTypeBinding) typeBinding;
            if (notEquals(parameterizedTypeBinding.actualType(), parameterizedTypeBinding2.actualType())) {
                return false;
            }
            if (!parameterizedTypeBinding.isStatic() && (enclosingType = enclosingType()) != null) {
                ReferenceBinding enclosingType2 = parameterizedTypeBinding2.enclosingType();
                if (enclosingType2 == null) {
                    return false;
                }
                if ((enclosingType2.tagBits & TagBits.HasDirectWildcard) == 0) {
                    if (notEquals(enclosingType, enclosingType2)) {
                        return false;
                    }
                } else if (!enclosingType.isEquivalentTo(parameterizedTypeBinding2.enclosingType())) {
                    return false;
                }
            }
            TypeBinding[] typeBindingArr = parameterizedTypeBinding.arguments;
            int length = typeBindingArr == null ? 0 : typeBindingArr.length;
            TypeBinding[] typeBindingArr2 = parameterizedTypeBinding2.arguments;
            if ((typeBindingArr2 == null ? 0 : typeBindingArr2.length) != length) {
                return false;
            }
            for (int i10 = 0; i10 < length; i10++) {
                TypeBinding typeBinding3 = parameterizedTypeBinding.arguments[i10];
                TypeBinding typeBinding4 = typeBindingArr2[i10];
                if (!equalsEquals(typeBinding3, typeBinding4)) {
                    int kind2 = typeBinding3.kind();
                    if (typeBinding4.kind() != kind2) {
                        return false;
                    }
                    if (kind2 != 260) {
                        if (kind2 == 516 || kind2 == 8196) {
                            WildcardBinding wildcardBinding2 = (WildcardBinding) typeBinding3;
                            WildcardBinding wildcardBinding3 = (WildcardBinding) typeBinding4;
                            int i11 = wildcardBinding2.boundKind;
                            if (i11 != 0) {
                                if (i11 == 1 && wildcardBinding3.boundKind == 0 && equalsEquals(wildcardBinding2.bound, wildcardBinding2.typeVariable().upperBound())) {
                                }
                            } else if (wildcardBinding3.boundKind == 1 && equalsEquals(wildcardBinding3.bound, wildcardBinding3.typeVariable().upperBound())) {
                            }
                        }
                        return false;
                    }
                    if (!typeBinding3.isTypeArgumentContainedBy(typeBinding4)) {
                        return false;
                    }
                }
            }
            return true;
        }
        TypeBinding typeBinding5 = null;
        TypeBinding[] typeBindingArr3 = null;
        typeBinding5 = null;
        if (kind != 516) {
            if (kind == 4100) {
                if (!isParameterizedType() || !typeBinding.isCapture()) {
                    return false;
                }
                CaptureBinding captureBinding = (CaptureBinding) typeBinding;
                if (captureBinding instanceof CaptureBinding18) {
                    CaptureBinding18 captureBinding18 = (CaptureBinding18) captureBinding;
                    if (captureBinding18.firstBound == null) {
                        TypeBinding typeBinding6 = captureBinding18.lowerBound;
                        if (typeBinding6 == null) {
                            return false;
                        }
                        createWildcard = captureBinding.environment.createWildcard(null, 0, typeBinding6, null, 2);
                    } else {
                        if (captureBinding18.lowerBound != null) {
                            return false;
                        }
                        TypeBinding[] typeBindingArr4 = captureBinding18.upperBounds;
                        int length2 = typeBindingArr4.length;
                        if (length2 > 1) {
                            int i12 = length2 - 1;
                            typeBindingArr3 = new TypeBinding[i12];
                            System.arraycopy(typeBindingArr4, 1, typeBindingArr3, 0, i12);
                        }
                        createWildcard = captureBinding.environment.createWildcard(null, 0, captureBinding18.firstBound, typeBindingArr3, 1);
                    }
                } else {
                    WildcardBinding wildcardBinding4 = captureBinding.wildcard;
                    int i13 = wildcardBinding4.boundKind;
                    if (i13 == 0) {
                        TypeVariableBinding typeVariableBinding = wildcardBinding4.genericType.typeVariables()[wildcardBinding4.rank];
                        upperBound = typeVariableBinding.upperBound();
                        otherUpperBounds = typeVariableBinding.boundsCount() > 1 ? typeVariableBinding.otherUpperBounds() : null;
                    } else if (i13 == 1) {
                        TypeBinding typeBinding7 = wildcardBinding4.bound;
                        otherUpperBounds = wildcardBinding4.otherBounds;
                        upperBound = typeBinding7;
                    } else {
                        if (i13 == 2) {
                            return false;
                        }
                        upperBound = null;
                        otherUpperBounds = null;
                    }
                    if (upperBound.f102482id == 1 && otherUpperBounds == null) {
                        return false;
                    }
                    createWildcard = captureBinding.environment.createWildcard(null, 0, upperBound, otherUpperBounds, 1);
                }
                return isTypeArgumentContainedBy(createWildcard);
            }
            if (kind != 8196) {
                if (typeBinding.f102482id == 1 && kind() == 516) {
                    WildcardBinding wildcardBinding5 = (WildcardBinding) this;
                    if (wildcardBinding5.boundKind == 2 && wildcardBinding5.bound.f102482id == 1) {
                        return true;
                    }
                }
                return false;
            }
        }
        int kind3 = kind();
        if (kind3 != 516) {
            if (kind3 == 4100) {
                if (isCapture() && (typeBinding5 = ((CaptureBinding) this).lowerBound) != null) {
                    typeBinding2 = this;
                    wildcardBinding = (WildcardBinding) typeBinding;
                    if (wildcardBinding.otherBounds != null) {
                        return false;
                    }
                    TypeBinding typeBinding8 = wildcardBinding.bound;
                    int i14 = wildcardBinding.boundKind;
                    if (i14 == 1) {
                        if (typeBinding8 instanceof IntersectionTypeBinding18) {
                            for (ReferenceBinding referenceBinding : ((IntersectionTypeBinding18) typeBinding8).intersectingTypes) {
                                if (equalsEquals(referenceBinding, this)) {
                                    return true;
                                }
                            }
                        }
                        if (equalsEquals(typeBinding8, this)) {
                            return true;
                        }
                        if (typeBinding2 == null) {
                            return false;
                        }
                        TypeBinding findSuperTypeOriginatingFrom = typeBinding2.findSuperTypeOriginatingFrom(typeBinding8);
                        if (findSuperTypeOriginatingFrom != null) {
                            TypeBinding leafComponentType = findSuperTypeOriginatingFrom.leafComponentType();
                            if (leafComponentType.isRawType()) {
                                return equalsEquals(leafComponentType, typeBinding8.leafComponentType());
                            }
                        }
                        return typeBinding2.isCompatibleWith(typeBinding8);
                    }
                    if (i14 != 2) {
                        return true;
                    }
                    if (typeBinding8 instanceof IntersectionTypeBinding18) {
                        for (ReferenceBinding referenceBinding2 : ((IntersectionTypeBinding18) typeBinding8).intersectingTypes) {
                            if (equalsEquals(referenceBinding2, this)) {
                                return true;
                            }
                        }
                    }
                    if (equalsEquals(typeBinding8, this)) {
                        return true;
                    }
                    if (typeBinding5 == null) {
                        return false;
                    }
                    TypeBinding findSuperTypeOriginatingFrom2 = typeBinding8.findSuperTypeOriginatingFrom(typeBinding5);
                    if (findSuperTypeOriginatingFrom2 != null) {
                        TypeBinding leafComponentType2 = findSuperTypeOriginatingFrom2.leafComponentType();
                        if (leafComponentType2.isRawType()) {
                            return equalsEquals(leafComponentType2, typeBinding5.leafComponentType());
                        }
                    }
                    return typeBinding8.isCompatibleWith(typeBinding5);
                }
            }
            TypeBinding typeBinding9 = this;
            typeBinding5 = typeBinding9;
            typeBinding2 = typeBinding9;
            wildcardBinding = (WildcardBinding) typeBinding;
            if (wildcardBinding.otherBounds != null) {
            }
        }
        WildcardBinding wildcardBinding6 = (WildcardBinding) this;
        int i15 = wildcardBinding6.boundKind;
        typeBinding2 = wildcardBinding6;
        if (i15 != 0) {
            if (i15 != 1) {
                if (i15 == 2) {
                    typeBinding5 = wildcardBinding6.bound;
                    typeBinding2 = wildcardBinding6;
                }
                TypeBinding typeBinding92 = this;
                typeBinding5 = typeBinding92;
                typeBinding2 = typeBinding92;
            } else {
                if (wildcardBinding6.otherBounds == null) {
                    typeBinding2 = wildcardBinding6.bound;
                }
                TypeBinding typeBinding922 = this;
                typeBinding5 = typeBinding922;
                typeBinding2 = typeBinding922;
            }
        }
        wildcardBinding = (WildcardBinding) typeBinding;
        if (wildcardBinding.otherBounds != null) {
        }
    }

    public boolean isTypeVariable() {
        return false;
    }

    public boolean isUnboundWildcard() {
        return false;
    }

    public boolean isUncheckedException(boolean z10) {
        return false;
    }

    public boolean isUnresolvedType() {
        return false;
    }

    public boolean isWildcard() {
        return false;
    }

    @Override
    public int kind() {
        return 4;
    }

    public TypeBinding leafComponentType() {
        return this;
    }

    public boolean mentionsAny(TypeBinding[] typeBindingArr, int i10) {
        for (int i11 = 0; i11 < typeBindingArr.length; i11++) {
            if (i11 != i10 && equalsEquals(typeBindingArr[i11], this)) {
                return true;
            }
        }
        return false;
    }

    public boolean needsUncheckedConversion(TypeBinding typeBinding) {
        if (equalsEquals(this, typeBinding)) {
            return false;
        }
        TypeBinding leafComponentType = typeBinding.leafComponentType();
        if (!(leafComponentType instanceof ReferenceBinding)) {
            return false;
        }
        TypeBinding findSuperTypeOriginatingFrom = leafComponentType().findSuperTypeOriginatingFrom(leafComponentType);
        if (!(findSuperTypeOriginatingFrom instanceof ReferenceBinding)) {
            return false;
        }
        ReferenceBinding referenceBinding = (ReferenceBinding) findSuperTypeOriginatingFrom;
        while (referenceBinding.isRawType()) {
            if (!leafComponentType.isBoundParameterizedType()) {
                if (referenceBinding.isStatic() || (referenceBinding = referenceBinding.enclosingType()) == null || (leafComponentType = leafComponentType.enclosingType()) == null) {
                    break;
                }
            } else {
                return true;
            }
        }
        return false;
    }

    public char[] nullAnnotatedReadableName(CompilerOptions compilerOptions, boolean z10) {
        return z10 ? shortReadableName() : readableName();
    }

    public TypeBinding original() {
        int kind = kind();
        return (kind == 68 || kind == 260 || kind == 1028) ? erasure().unannotated() : unannotated();
    }

    public TypeBinding prototype() {
        return null;
    }

    public char[] qualifiedPackageName() {
        PackageBinding packageBinding = getPackage();
        return (packageBinding == null || packageBinding.compoundName == CharOperation.NO_CHAR_CHAR) ? CharOperation.NO_CHAR : packageBinding.readableName();
    }

    public abstract char[] qualifiedSourceName();

    public int rank() {
        return -1;
    }

    public boolean sIsMoreSpecific(TypeBinding typeBinding, TypeBinding typeBinding2, Scope scope) {
        return typeBinding.isCompatibleWith(typeBinding2, scope) && !typeBinding.needsUncheckedConversion(typeBinding2);
    }

    public void setTypeAnnotations(AnnotationBinding[] annotationBindingArr, boolean z10) {
        this.tagBits |= 2097152;
        if (annotationBindingArr == null || annotationBindingArr.length == 0) {
            return;
        }
        this.typeAnnotations = annotationBindingArr;
        if (z10) {
            for (AnnotationBinding annotationBinding : annotationBindingArr) {
                if (annotationBinding != null) {
                    if (annotationBinding.type.hasNullBit(64)) {
                        this.tagBits |= 36028797020012544L;
                    } else if (annotationBinding.type.hasNullBit(32)) {
                        this.tagBits |= 72057594038976512L;
                    }
                }
            }
        }
    }

    public char[] signableName() {
        return readableName();
    }

    public char[] signature() {
        return constantPoolName();
    }

    public abstract char[] sourceName();

    public TypeBinding substituteInferenceVariable(InferenceVariable inferenceVariable, TypeBinding typeBinding) {
        return this;
    }

    public ReferenceBinding[] superInterfaces() {
        return Binding.NO_SUPERINTERFACES;
    }

    public ReferenceBinding superclass() {
        return null;
    }

    public void swapUnresolved(UnresolvedReferenceBinding unresolvedReferenceBinding, ReferenceBinding referenceBinding, LookupEnvironment lookupEnvironment) {
    }

    public SyntheticArgumentBinding[] syntheticOuterLocalVariables() {
        return null;
    }

    public TypeBinding[] typeArguments() {
        return null;
    }

    public TypeVariableBinding[] typeVariables() {
        return Binding.NO_TYPE_VARIABLES;
    }

    public TypeBinding unannotated() {
        return this;
    }

    public TypeBinding uncapture(Scope scope) {
        return this;
    }

    public long updateTagBits() {
        return this.tagBits & TagBits.HasNullTypeAnnotation;
    }

    public TypeBinding upwardsProjection(Scope scope, TypeBinding[] typeBindingArr) {
        return this;
    }

    public TypeBinding withoutToplevelNullAnnotation() {
        return this;
    }

    public TypeBinding(TypeBinding typeBinding) {
        this.f102482id = Integer.MAX_VALUE;
        this.tagBits = 0L;
        this.typeAnnotations = Binding.NO_ANNOTATIONS;
        this.f102482id = typeBinding.f102482id;
        this.tagBits = typeBinding.tagBits & (-108086391056891905L);
    }

    public TypeBinding findSuperTypeOriginatingFrom(TypeBinding typeBinding) {
        ReferenceBinding[] referenceBindingArr;
        ReferenceBinding[] referenceBindingArr2;
        TypeBinding findSuperTypeOriginatingFrom;
        TypeBinding findSuperTypeOriginatingFrom2;
        if (equalsEquals(this, typeBinding)) {
            return this;
        }
        if (typeBinding == null) {
            return null;
        }
        int kind = kind();
        if (kind != 4) {
            if (kind == 68) {
                ArrayBinding arrayBinding = (ArrayBinding) this;
                int dimensions = typeBinding.dimensions();
                int i10 = arrayBinding.dimensions;
                if (i10 != dimensions) {
                    int i11 = typeBinding.f102482id;
                    if (i11 == 1 || i11 == 36 || i11 == 37) {
                        return typeBinding;
                    }
                    if (dimensions >= i10 || typeBinding.leafComponentType().f102482id != 1) {
                        return null;
                    }
                    return typeBinding;
                }
                TypeBinding typeBinding2 = arrayBinding.leafComponentType;
                if ((typeBinding2 instanceof ReferenceBinding) && (findSuperTypeOriginatingFrom = typeBinding2.findSuperTypeOriginatingFrom(typeBinding.leafComponentType())) != null) {
                    return arrayBinding.environment().createArrayType(findSuperTypeOriginatingFrom, arrayBinding.dimensions);
                }
                return null;
            }
            if (kind != 260 && kind != 516 && kind != 1028 && kind != 2052) {
                if (kind != 4100) {
                    if (kind != 8196) {
                        if (kind == 32772) {
                            for (ReferenceBinding referenceBinding : ((IntersectionTypeBinding18) this).getIntersectingTypes()) {
                                TypeBinding findSuperTypeOriginatingFrom3 = referenceBinding.findSuperTypeOriginatingFrom(typeBinding);
                                if (findSuperTypeOriginatingFrom3 != null) {
                                    return findSuperTypeOriginatingFrom3;
                                }
                            }
                        }
                        return null;
                    }
                } else if (isCapture()) {
                    TypeBinding typeBinding3 = ((CaptureBinding) this).firstBound;
                    if ((typeBinding3 instanceof ArrayBinding) && (findSuperTypeOriginatingFrom2 = typeBinding3.findSuperTypeOriginatingFrom(typeBinding)) != null) {
                        return findSuperTypeOriginatingFrom2;
                    }
                }
            }
        }
        TypeBinding original = typeBinding.original();
        if (equalsEquals(this, original) || equalsEquals(original(), original)) {
            return this;
        }
        ReferenceBinding referenceBinding2 = (ReferenceBinding) this;
        if (original.isInterface()) {
            ReferenceBinding[] referenceBindingArr3 = null;
            int i12 = 0;
            do {
                ReferenceBinding[] superInterfaces = referenceBinding2.superInterfaces();
                if (superInterfaces != null && superInterfaces != Binding.NO_SUPERINTERFACES) {
                    if (referenceBindingArr3 == null) {
                        i12 = superInterfaces.length;
                        referenceBindingArr3 = superInterfaces;
                    } else {
                        int length = i12 + superInterfaces.length;
                        if (length >= referenceBindingArr3.length) {
                            referenceBindingArr2 = new ReferenceBinding[length + 5];
                            System.arraycopy(referenceBindingArr3, 0, referenceBindingArr2, 0, i12);
                        } else {
                            referenceBindingArr2 = referenceBindingArr3;
                        }
                        int i13 = i12;
                        for (ReferenceBinding referenceBinding3 : superInterfaces) {
                            int i14 = 0;
                            while (true) {
                                if (i14 >= i13) {
                                    referenceBindingArr2[i13] = referenceBinding3;
                                    i13++;
                                    break;
                                }
                                if (equalsEquals(referenceBinding3, referenceBindingArr2[i14])) {
                                    break;
                                }
                                i14++;
                            }
                        }
                        referenceBindingArr3 = referenceBindingArr2;
                        i12 = i13;
                    }
                }
                referenceBinding2 = referenceBinding2.superclass();
            } while (referenceBinding2 != null);
            for (int i15 = 0; i15 < i12; i15++) {
                ReferenceBinding referenceBinding4 = referenceBindingArr3[i15];
                if (equalsEquals(referenceBinding4, original) || equalsEquals(referenceBinding4.original(), original)) {
                    return referenceBinding4;
                }
                ReferenceBinding[] superInterfaces2 = referenceBinding4.superInterfaces();
                if (superInterfaces2 != null && superInterfaces2 != Binding.NO_SUPERINTERFACES) {
                    int length2 = i12 + superInterfaces2.length;
                    if (length2 >= referenceBindingArr3.length) {
                        referenceBindingArr = new ReferenceBinding[length2 + 5];
                        System.arraycopy(referenceBindingArr3, 0, referenceBindingArr, 0, i12);
                    } else {
                        referenceBindingArr = referenceBindingArr3;
                    }
                    int i16 = i12;
                    for (ReferenceBinding referenceBinding5 : superInterfaces2) {
                        int i17 = 0;
                        while (true) {
                            if (i17 >= i16) {
                                referenceBindingArr[i16] = referenceBinding5;
                                i16++;
                                break;
                            }
                            if (equalsEquals(referenceBinding5, referenceBindingArr[i17])) {
                                break;
                            }
                            i17++;
                        }
                    }
                    referenceBindingArr3 = referenceBindingArr;
                    i12 = i16;
                }
            }
            return null;
        }
        do {
            referenceBinding2 = referenceBinding2.superclass();
            if (referenceBinding2 == null) {
                return null;
            }
            if (equalsEquals(referenceBinding2, original)) {
                return referenceBinding2;
            }
        } while (!equalsEquals(referenceBinding2.original(), original));
        return referenceBinding2;
    }
}
