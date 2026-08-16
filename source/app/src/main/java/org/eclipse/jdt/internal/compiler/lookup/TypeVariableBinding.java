package org.eclipse.jdt.internal.compiler.lookup;

import java.util.Arrays;
import java.util.Set;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.ast.ASTNode;
import org.eclipse.jdt.internal.compiler.ast.Annotation;
import org.eclipse.jdt.internal.compiler.ast.NullAnnotationMatching;
import org.eclipse.jdt.internal.compiler.ast.TypeParameter;
import org.eclipse.jdt.internal.compiler.ast.TypeReference;
import org.eclipse.jdt.internal.compiler.impl.CompilerOptions;
import org.eclipse.jdt.internal.compiler.lookup.TypeConstants;

public class TypeVariableBinding extends ReferenceBinding {
    public Binding declaringElement;
    LookupEnvironment environment;
    public TypeBinding firstBound;
    public char[] genericTypeSignature;
    boolean inRecursiveFunction;
    boolean inRecursiveProjectionFunction;
    public int rank;
    public ReferenceBinding[] superInterfaces;
    public ReferenceBinding superclass;

    public TypeVariableBinding(char[] cArr, Binding binding, int i10, LookupEnvironment lookupEnvironment) {
        this.inRecursiveFunction = false;
        this.inRecursiveProjectionFunction = false;
        this.sourceName = cArr;
        this.declaringElement = binding;
        this.rank = i10;
        this.modifiers = CompilerOptions.ShouldImplementHashcode;
        this.tagBits |= TagBits.HasTypeVariable;
        this.environment = lookupEnvironment;
        this.typeBits = 134217728;
        computeId(lookupEnvironment);
    }

    private TypeReference findBound(TypeBinding typeBinding, TypeParameter typeParameter) {
        TypeReference typeReference = typeParameter.type;
        if (typeReference != null && TypeBinding.equalsEquals(typeReference.resolvedType, typeBinding)) {
            return typeParameter.type;
        }
        TypeReference[] typeReferenceArr = typeParameter.bounds;
        if (typeReferenceArr == null) {
            return null;
        }
        for (int i10 = 0; i10 < typeReferenceArr.length; i10++) {
            if (TypeBinding.equalsEquals(typeReferenceArr[i10].resolvedType, typeBinding)) {
                return typeReferenceArr[i10];
            }
        }
        return null;
    }

    private boolean hasRelevantTypeUseNullAnnotations() {
        TypeVariableBinding[] typeVariableBindingArr;
        Binding binding = this.declaringElement;
        if (binding instanceof ReferenceBinding) {
            typeVariableBindingArr = ((ReferenceBinding) binding).original().typeVariables();
        } else {
            if (!(binding instanceof MethodBinding)) {
                throw new IllegalStateException("Unexpected declaring element:" + String.valueOf(this.declaringElement.readableName()));
            }
            typeVariableBindingArr = ((MethodBinding) binding).original().typeVariables;
        }
        return ((this.tagBits & TagBits.AnnotationNullMASK) & (~(TagBits.AnnotationNullMASK & typeVariableBindingArr[this.rank].tagBits))) != 0;
    }

    /* JADX WARN: Removed duplicated region for block: B:129:0x0143 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:154:0x01e6  */
    /* JADX WARN: Removed duplicated region for block: B:173:0x0261  */
    /* JADX WARN: Removed duplicated region for block: B:176:0x0272  */
    /* JADX WARN: Removed duplicated region for block: B:96:0x0144  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    private TypeConstants.BoundCheckStatus internalBoundCheck(Substitution substitution, TypeBinding typeBinding, Scope scope, ASTNode aSTNode) {
        boolean z10;
        TypeConstants.BoundCheckStatus boundCheckStatus;
        boolean z11;
        int i10;
        TypeBinding typeBinding2;
        int length;
        int i11;
        int i12;
        int i13;
        if (typeBinding == TypeBinding.NULL || TypeBinding.equalsEquals(typeBinding, this)) {
            return TypeConstants.BoundCheckStatus.OK;
        }
        boolean z12 = true;
        boolean z13 = substitution != null;
        if (!(typeBinding instanceof ReferenceBinding) && !typeBinding.isArrayType()) {
            return TypeConstants.BoundCheckStatus.MISMATCH;
        }
        if (this.superclass == null) {
            return TypeConstants.BoundCheckStatus.OK;
        }
        TypeConstants.BoundCheckStatus boundCheckStatus2 = TypeConstants.BoundCheckStatus.OK;
        boolean z14 = scope.environment().usesNullTypeAnnotations() && (aSTNode == null || (aSTNode.bits & 32768) == 0);
        if (typeBinding.kind() != 516) {
            TypeBinding typeBinding3 = this.superclass;
            if (typeBinding3.f102482id != 1) {
                if (z13) {
                    typeBinding3 = Scope.substitute(substitution, typeBinding3);
                }
                TypeBinding typeBinding4 = typeBinding3;
                if (TypeBinding.notEquals(typeBinding4, typeBinding)) {
                    if (!typeBinding.isCompatibleWith(typeBinding4, scope)) {
                        return TypeConstants.BoundCheckStatus.MISMATCH;
                    }
                    TypeBinding findSuperTypeOriginatingFrom = typeBinding.findSuperTypeOriginatingFrom(typeBinding4);
                    if (findSuperTypeOriginatingFrom != null && findSuperTypeOriginatingFrom.isRawType() && typeBinding4.isBoundParameterizedType()) {
                        z10 = true;
                        if (z14) {
                            boundCheckStatus2 = nullBoundCheck(scope, typeBinding, typeBinding4, substitution, aSTNode, boundCheckStatus2);
                        }
                    }
                }
                z10 = false;
                if (z14) {
                }
            } else {
                z10 = false;
            }
            int length2 = this.superInterfaces.length;
            boolean z15 = z10;
            int i14 = 0;
            while (i14 < length2) {
                TypeBinding[] typeBindingArr = this.superInterfaces;
                TypeBinding substitute = z13 ? Scope.substitute(substitution, typeBindingArr[i14]) : typeBindingArr[i14];
                if (TypeBinding.notEquals(substitute, typeBinding)) {
                    if (!typeBinding.isCompatibleWith(substitute, scope)) {
                        return TypeConstants.BoundCheckStatus.MISMATCH;
                    }
                    TypeBinding findSuperTypeOriginatingFrom2 = typeBinding.findSuperTypeOriginatingFrom(substitute);
                    if (findSuperTypeOriginatingFrom2 != null && findSuperTypeOriginatingFrom2.isRawType() && substitute.isBoundParameterizedType()) {
                        z11 = true;
                        if (z14) {
                            i10 = length2;
                        } else {
                            i10 = length2;
                            boundCheckStatus2 = nullBoundCheck(scope, typeBinding, substitute, substitution, aSTNode, boundCheckStatus2);
                        }
                        i14++;
                        z15 = z11;
                        length2 = i10;
                    }
                }
                z11 = z15;
                if (z14) {
                }
                i14++;
                z15 = z11;
                length2 = i10;
            }
            if (z14 && boundCheckStatus2 != (boundCheckStatus = TypeConstants.BoundCheckStatus.NULL_PROBLEM)) {
                long j10 = this.tagBits & TagBits.AnnotationNullMASK;
                if (j10 != 0 && j10 != (TagBits.AnnotationNullMASK & typeBinding.tagBits)) {
                    if (aSTNode != null) {
                        scope.problemReporter().nullityMismatchTypeArgument(this, typeBinding, aSTNode);
                    }
                    boundCheckStatus2 = boundCheckStatus;
                }
            }
            return z15 ? TypeConstants.BoundCheckStatus.UNCHECKED : boundCheckStatus2 != null ? boundCheckStatus2 : TypeConstants.BoundCheckStatus.OK;
        }
        WildcardBinding wildcardBinding = (WildcardBinding) typeBinding;
        int i15 = wildcardBinding.boundKind;
        if (i15 != 0) {
            if (i15 == 1) {
                TypeBinding typeBinding5 = wildcardBinding.bound;
                boolean equalsEquals = TypeBinding.equalsEquals(typeBinding5, this);
                boolean isArrayType = typeBinding5.isArrayType();
                if (!typeBinding5.isInterface()) {
                    TypeBinding typeBinding6 = this.superclass;
                    if (z13) {
                        typeBinding6 = Scope.substitute(substitution, typeBinding6);
                    }
                    TypeBinding typeBinding7 = typeBinding6;
                    if (!equalsEquals && typeBinding7.f102482id != 1) {
                        if (!isArrayType) {
                            TypeBinding findSuperTypeOriginatingFrom3 = typeBinding5.findSuperTypeOriginatingFrom(typeBinding7);
                            if (findSuperTypeOriginatingFrom3 == null) {
                                TypeBinding findSuperTypeOriginatingFrom4 = typeBinding7.findSuperTypeOriginatingFrom(typeBinding5);
                                if (findSuperTypeOriginatingFrom4 == null) {
                                    if (denotesRelevantSuperClass(typeBinding5)) {
                                        if (denotesRelevantSuperClass(typeBinding7)) {
                                            return TypeConstants.BoundCheckStatus.MISMATCH;
                                        }
                                    }
                                    if (Scope.greaterLowerBound(new TypeBinding[]{typeBinding7, typeBinding5}, scope, this.environment) == null) {
                                        return TypeConstants.BoundCheckStatus.MISMATCH;
                                    }
                                } else if (findSuperTypeOriginatingFrom4.isProvablyDistinct(typeBinding5)) {
                                    return TypeConstants.BoundCheckStatus.MISMATCH;
                                }
                            } else if (typeBinding7.isProvablyDistinct(findSuperTypeOriginatingFrom3)) {
                                return TypeConstants.BoundCheckStatus.MISMATCH;
                            }
                        } else if (!typeBinding5.isCompatibleWith(typeBinding7, scope)) {
                            return TypeConstants.BoundCheckStatus.MISMATCH;
                        }
                    }
                    if (z14 && typeBinding.hasNullTypeAnnotations()) {
                        typeBinding2 = typeBinding5;
                        boundCheckStatus2 = nullBoundCheck(scope, typeBinding, typeBinding7, substitution, aSTNode, boundCheckStatus2);
                        if (!isArrayType && !((ReferenceBinding) typeBinding2).isFinal()) {
                            z12 = false;
                        }
                        length = this.superInterfaces.length;
                        i11 = 0;
                        while (i11 < length) {
                            TypeBinding[] typeBindingArr2 = this.superInterfaces;
                            TypeBinding substitute2 = z13 ? Scope.substitute(substitution, typeBindingArr2[i11]) : typeBindingArr2[i11];
                            if (!equalsEquals) {
                                if (!isArrayType) {
                                    TypeBinding findSuperTypeOriginatingFrom5 = typeBinding2.findSuperTypeOriginatingFrom(substitute2);
                                    if (findSuperTypeOriginatingFrom5 != null) {
                                        if (substitute2.isProvablyDistinct(findSuperTypeOriginatingFrom5)) {
                                            return TypeConstants.BoundCheckStatus.MISMATCH;
                                        }
                                    } else if (z12) {
                                        return TypeConstants.BoundCheckStatus.MISMATCH;
                                    }
                                } else if (!typeBinding2.isCompatibleWith(substitute2, scope)) {
                                    return TypeConstants.BoundCheckStatus.MISMATCH;
                                }
                            }
                            if (z14 && typeBinding.hasNullTypeAnnotations()) {
                                i12 = i11;
                                i13 = length;
                                boundCheckStatus2 = nullBoundCheck(scope, typeBinding, substitute2, substitution, aSTNode, boundCheckStatus2);
                            } else {
                                i12 = i11;
                                i13 = length;
                            }
                            i11 = i12 + 1;
                            length = i13;
                        }
                        if (boundCheckStatus2 != null) {
                            return boundCheckStatus2;
                        }
                    }
                }
                typeBinding2 = typeBinding5;
                if (!isArrayType) {
                    z12 = false;
                }
                length = this.superInterfaces.length;
                i11 = 0;
                while (i11 < length) {
                }
                if (boundCheckStatus2 != null) {
                }
            } else if (i15 == 2) {
                if (wildcardBinding.bound.isTypeVariable() && ((TypeVariableBinding) wildcardBinding.bound).superclass.f102482id == 1) {
                    return nullBoundCheck(scope, typeBinding, null, substitution, aSTNode, boundCheckStatus2);
                }
                TypeBinding typeBinding8 = wildcardBinding.bound;
                if (z14 && this.environment.containsNullTypeAnnotation(wildcardBinding.typeAnnotations)) {
                    typeBinding8 = this.environment.createAnnotatedType(typeBinding8.withoutToplevelNullAnnotation(), wildcardBinding.getTypeAnnotations());
                }
                TypeConstants.BoundCheckStatus boundCheck = boundCheck(substitution, typeBinding8, scope, null);
                if (boundCheck == TypeConstants.BoundCheckStatus.NULL_PROBLEM && aSTNode != null) {
                    scope.problemReporter().nullityMismatchTypeArgument(this, wildcardBinding, aSTNode);
                }
                return boundCheck;
            }
        } else if (z14 && typeBinding.hasNullTypeAnnotations()) {
            return nullBoundCheck(scope, typeBinding, null, substitution, aSTNode, boundCheckStatus2);
        }
        return TypeConstants.BoundCheckStatus.OK;
    }

    private TypeConstants.BoundCheckStatus nullBoundCheck(Scope scope, TypeBinding typeBinding, TypeBinding typeBinding2, Substitution substitution, ASTNode aSTNode, TypeConstants.BoundCheckStatus boundCheckStatus) {
        if (!NullAnnotationMatching.analyse(this, typeBinding, typeBinding2, substitution, -1, null, NullAnnotationMatching.CheckMode.BOUND_CHECK).isAnyMismatch()) {
            return boundCheckStatus;
        }
        if (aSTNode != null) {
            scope.problemReporter().nullityMismatchTypeArgument(this, typeBinding, aSTNode);
        }
        return TypeConstants.BoundCheckStatus.NULL_PROBLEM;
    }

    private TypeBinding nullMismatchOnBound(TypeParameter typeParameter, TypeBinding typeBinding, long j10, long j11, Scope scope) {
        Annotation findAnnotation = findBound(typeBinding, typeParameter).findAnnotation(j10);
        if (findAnnotation == null) {
            return typeBinding.withoutToplevelNullAnnotation();
        }
        scope.problemReporter().contradictoryNullAnnotationsOnBounds(findAnnotation, j11);
        this.tagBits &= -108086391056891905L;
        return typeBinding;
    }

    @Override
    public boolean acceptsNonNullDefault() {
        return false;
    }

    public TypeBinding[] allUpperBounds() {
        ReferenceBinding referenceBinding = this.superclass;
        if (referenceBinding == null) {
            return this.superInterfaces;
        }
        ReferenceBinding[] referenceBindingArr = this.superInterfaces;
        if (referenceBindingArr == null || referenceBindingArr.length == 0) {
            return new TypeBinding[]{referenceBinding};
        }
        int length = referenceBindingArr.length;
        TypeBinding[] typeBindingArr = (TypeBinding[]) Arrays.copyOf(referenceBindingArr, 1 + length);
        typeBindingArr[length] = this.superclass;
        return typeBindingArr;
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x0059, code lost:
    
        if (org.eclipse.jdt.internal.compiler.lookup.TypeBinding.equalsEquals(r6.firstBound, r6.superclass) != false) goto L26;
     */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public String annotatedDebugName() {
        StringBuffer stringBuffer = new StringBuffer(10);
        stringBuffer.append(super.annotatedDebugName());
        if (!this.inRecursiveFunction) {
            this.inRecursiveFunction = true;
            try {
                ReferenceBinding referenceBinding = this.superclass;
                if (referenceBinding != null && TypeBinding.equalsEquals(this.firstBound, referenceBinding)) {
                    stringBuffer.append(" extends ");
                    stringBuffer.append(this.superclass.annotatedDebugName());
                }
                ReferenceBinding[] referenceBindingArr = this.superInterfaces;
                if (referenceBindingArr != null && referenceBindingArr != Binding.NO_SUPERINTERFACES) {
                    if (TypeBinding.notEquals(this.firstBound, this.superclass)) {
                        stringBuffer.append(" extends ");
                    }
                    int length = this.superInterfaces.length;
                    for (int i10 = 0; i10 < length; i10++) {
                        if (i10 <= 0) {
                        }
                        stringBuffer.append(" & ");
                        stringBuffer.append(this.superInterfaces[i10].annotatedDebugName());
                    }
                }
            } finally {
                this.inRecursiveFunction = false;
            }
        }
        return stringBuffer.toString();
    }

    @Override
    public void appendNullAnnotation(StringBuffer stringBuffer, CompilerOptions compilerOptions) {
        TypeVariableBinding typeVariableBinding;
        int length = stringBuffer.length();
        super.appendNullAnnotation(stringBuffer, compilerOptions);
        if (length == stringBuffer.length() && hasNullTypeAnnotations()) {
            Binding binding = this.declaringElement;
            TypeVariableBinding[] typeVariables = binding instanceof ReferenceBinding ? ((ReferenceBinding) binding).typeVariables() : binding instanceof MethodBinding ? ((MethodBinding) binding).typeVariables() : null;
            if (typeVariables != null) {
                int length2 = typeVariables.length;
                int i10 = this.rank;
                if (length2 <= i10 || (typeVariableBinding = typeVariables[i10]) == this) {
                    return;
                }
                typeVariableBinding.appendNullAnnotation(stringBuffer, compilerOptions);
            }
        }
    }

    public TypeConstants.BoundCheckStatus boundCheck(Substitution substitution, TypeBinding typeBinding, Scope scope, ASTNode aSTNode) {
        TypeConstants.BoundCheckStatus internalBoundCheck = internalBoundCheck(substitution, typeBinding, scope, aSTNode);
        if (internalBoundCheck == TypeConstants.BoundCheckStatus.MISMATCH && (typeBinding instanceof TypeVariableBinding) && scope != null) {
            TypeBinding typeBinding2 = ((TypeVariableBinding) typeBinding).firstBound;
            if (typeBinding2 instanceof ParameterizedTypeBinding) {
                return internalBoundCheck.betterOf(boundCheck(substitution, typeBinding2.capture(scope, -1, -1), scope, aSTNode));
            }
        }
        return internalBoundCheck;
    }

    public int boundsCount() {
        TypeBinding typeBinding = this.firstBound;
        if (typeBinding == null) {
            return 0;
        }
        return typeBinding.isInterface() ? this.superInterfaces.length : this.superInterfaces.length + 1;
    }

    @Override
    public boolean canBeInstantiated() {
        return false;
    }

    @Override
    public TypeBinding clone(TypeBinding typeBinding) {
        return new TypeVariableBinding(this);
    }

    @Override
    public void collectInferenceVariables(Set<InferenceVariable> set) {
        if (this.inRecursiveFunction) {
            return;
        }
        this.inRecursiveFunction = true;
        try {
            ReferenceBinding referenceBinding = this.superclass;
            if (referenceBinding != null) {
                referenceBinding.collectInferenceVariables(set);
            }
            if (this.superInterfaces != null) {
                int i10 = 0;
                while (true) {
                    ReferenceBinding[] referenceBindingArr = this.superInterfaces;
                    if (i10 >= referenceBindingArr.length) {
                        break;
                    }
                    referenceBindingArr[i10].collectInferenceVariables(set);
                    i10++;
                }
            }
        } finally {
            this.inRecursiveFunction = false;
        }
    }

    @Override
    public void collectSubstitutes(Scope scope, TypeBinding typeBinding, InferenceContext inferenceContext, int i10) {
        TypeBinding computeBoxingType;
        int i11;
        if (this.declaringElement != inferenceContext.genericMethod) {
            return;
        }
        int kind = typeBinding.kind();
        if (kind != 132) {
            if (kind == 516 || kind == 65540) {
                return;
            }
        } else if (typeBinding == TypeBinding.NULL || (computeBoxingType = scope.environment().computeBoxingType(typeBinding)) == typeBinding) {
            return;
        } else {
            typeBinding = computeBoxingType;
        }
        if (i10 != 0) {
            i11 = 1;
            if (i10 == 1) {
                i11 = 2;
            }
        } else {
            i11 = 0;
        }
        inferenceContext.recordSubstitute(this, typeBinding, i11);
    }

    public TypeBinding combineTypeAnnotations(TypeBinding typeBinding) {
        if (!hasTypeAnnotations()) {
            return typeBinding;
        }
        if (hasRelevantTypeUseNullAnnotations()) {
            typeBinding = typeBinding.withoutToplevelNullAnnotation();
        }
        AnnotationBinding[] annotationBindingArr = this.typeAnnotations;
        return annotationBindingArr != Binding.NO_ANNOTATIONS ? this.environment.createAnnotatedType(typeBinding, annotationBindingArr) : typeBinding;
    }

    @Override
    public char[] computeUniqueKey(boolean z10) {
        StringBuffer stringBuffer = new StringBuffer();
        Binding binding = this.declaringElement;
        if (z10 || binding.kind() != 8) {
            stringBuffer.append(binding.computeUniqueKey(false));
            stringBuffer.append(':');
        } else {
            MethodBinding methodBinding = (MethodBinding) binding;
            ReferenceBinding referenceBinding = methodBinding.declaringClass;
            stringBuffer.append(referenceBinding.computeUniqueKey(false));
            stringBuffer.append(':');
            MethodBinding[] methods = referenceBinding.methods();
            if (methods != null) {
                int length = methods.length;
                int i10 = 0;
                while (true) {
                    if (i10 >= length) {
                        break;
                    }
                    if (methods[i10] == methodBinding) {
                        stringBuffer.append(i10);
                        break;
                    }
                    i10++;
                }
            }
        }
        stringBuffer.append(genericTypeSignature());
        int length2 = stringBuffer.length();
        char[] cArr = new char[length2];
        stringBuffer.getChars(0, length2, cArr, 0);
        return cArr;
    }

    @Override
    public char[] constantPoolName() {
        TypeBinding typeBinding = this.firstBound;
        return typeBinding != null ? typeBinding.constantPoolName() : this.superclass.constantPoolName();
    }

    @Override
    public String debugName() {
        return hasTypeAnnotations() ? super.annotatedDebugName() : new String(this.sourceName);
    }

    public boolean denotesRelevantSuperClass(TypeBinding typeBinding) {
        if (!typeBinding.isTypeVariable() && !typeBinding.isInterface() && typeBinding.f102482id != 1) {
            return true;
        }
        ReferenceBinding superclass = typeBinding.superclass();
        return (superclass == null || superclass.f102482id == 1 || superclass.isTypeVariable()) ? false : true;
    }

    @Override
    public ReferenceBinding downwardsProjection(Scope scope, TypeBinding[] typeBindingArr) {
        return this;
    }

    @Override
    public boolean enterRecursiveFunction() {
        if (this.inRecursiveFunction) {
            return false;
        }
        this.inRecursiveFunction = true;
        return true;
    }

    public boolean enterRecursiveProjectionFunction() {
        if (this.inRecursiveProjectionFunction) {
            return false;
        }
        this.inRecursiveProjectionFunction = true;
        return true;
    }

    @Override
    public TypeBinding erasure() {
        TypeBinding typeBinding = this.firstBound;
        return typeBinding != null ? typeBinding.erasure() : this.superclass;
    }

    public void evaluateNullAnnotations(Scope scope, TypeParameter typeParameter) {
        int length;
        long validNullTagBits = NullAnnotationMatching.validNullTagBits(this.tagBits);
        TypeBinding typeBinding = this.firstBound;
        if (typeBinding != null && typeBinding.isValidBinding()) {
            long validNullTagBits2 = NullAnnotationMatching.validNullTagBits(this.firstBound.tagBits);
            if (validNullTagBits2 != 0) {
                if (validNullTagBits == 0) {
                    if ((validNullTagBits2 & 72057594037927936L) != 0) {
                        validNullTagBits = validNullTagBits2;
                    }
                } else if (validNullTagBits2 != validNullTagBits && typeParameter != null) {
                    this.firstBound = nullMismatchOnBound(typeParameter, this.firstBound, validNullTagBits2, validNullTagBits, scope);
                }
            }
        }
        ReferenceBinding[] referenceBindingArr = this.superInterfaces;
        if (referenceBindingArr != null && (length = referenceBindingArr.length) != 0) {
            while (true) {
                int i10 = length - 1;
                if (i10 < 0) {
                    break;
                }
                ReferenceBinding referenceBinding = referenceBindingArr[i10];
                long validNullTagBits3 = NullAnnotationMatching.validNullTagBits(referenceBinding.tagBits);
                if (validNullTagBits3 != 0) {
                    if (validNullTagBits == 0) {
                        if ((validNullTagBits3 & 72057594037927936L) != 0) {
                            validNullTagBits = validNullTagBits3;
                        }
                    } else if (validNullTagBits3 != validNullTagBits && typeParameter != null) {
                        referenceBindingArr[i10] = (ReferenceBinding) nullMismatchOnBound(typeParameter, referenceBinding, validNullTagBits3, validNullTagBits, scope);
                    }
                }
                length = i10;
            }
        }
        if (validNullTagBits != 0) {
            this.tagBits |= TagBits.HasNullTypeAnnotation | validNullTagBits;
        }
    }

    @Override
    public void exitRecursiveFunction() {
        this.inRecursiveFunction = false;
    }

    public void exitRecursiveProjectionFunction() {
        this.inRecursiveProjectionFunction = false;
    }

    public char[] genericSignature() {
        ReferenceBinding referenceBinding;
        StringBuffer stringBuffer = new StringBuffer(10);
        stringBuffer.append(this.sourceName);
        stringBuffer.append(':');
        ReferenceBinding[] referenceBindingArr = this.superInterfaces;
        int length = referenceBindingArr == null ? 0 : referenceBindingArr.length;
        if ((length == 0 || TypeBinding.equalsEquals(this.firstBound, this.superclass)) && (referenceBinding = this.superclass) != null) {
            stringBuffer.append(referenceBinding.genericTypeSignature());
        }
        for (int i10 = 0; i10 < length; i10++) {
            stringBuffer.append(':');
            stringBuffer.append(this.superInterfaces[i10].genericTypeSignature());
        }
        int length2 = stringBuffer.length();
        char[] cArr = new char[length2];
        stringBuffer.getChars(0, length2, cArr, 0);
        return cArr;
    }

    @Override
    public char[] genericTypeSignature() {
        char[] cArr = this.genericTypeSignature;
        if (cArr != null) {
            return cArr;
        }
        char[] concat = CharOperation.concat('T', this.sourceName, ';');
        this.genericTypeSignature = concat;
        return concat;
    }

    public TypeBinding[] getDerivedTypesForDeferredInitialization() {
        return this.environment.getAnnotatedTypes(this);
    }

    public TypeBound[] getTypeBounds(InferenceVariable inferenceVariable, InferenceSubstitution inferenceSubstitution) {
        int i10;
        int boundsCount = boundsCount();
        if (boundsCount == 0) {
            return Binding.NO_TYPE_BOUNDS;
        }
        TypeBound[] typeBoundArr = new TypeBound[boundsCount];
        int i11 = 0;
        if (this.firstBound.isInterface()) {
            i10 = 0;
        } else {
            typeBoundArr[0] = TypeBound.createBoundOrDependency(inferenceSubstitution, this.firstBound, inferenceVariable);
            i10 = 1;
        }
        while (true) {
            ReferenceBinding[] referenceBindingArr = this.superInterfaces;
            if (i11 >= referenceBindingArr.length) {
                return typeBoundArr;
            }
            typeBoundArr[i10] = TypeBound.createBoundOrDependency(inferenceSubstitution, referenceBindingArr[i11], inferenceVariable);
            i11++;
            i10++;
        }
    }

    public boolean hasOnlyRawBounds() {
        ReferenceBinding referenceBinding = this.superclass;
        if (referenceBinding != null && TypeBinding.equalsEquals(this.firstBound, referenceBinding) && !this.superclass.isRawType()) {
            return false;
        }
        ReferenceBinding[] referenceBindingArr = this.superInterfaces;
        if (referenceBindingArr == null) {
            return true;
        }
        int length = referenceBindingArr.length;
        for (int i10 = 0; i10 < length; i10++) {
            if (!this.superInterfaces[i10].isRawType()) {
                return false;
            }
        }
        return true;
    }

    @Override
    public boolean hasTypeBit(int i10) {
        if (this.typeBits == 134217728) {
            this.typeBits = 0;
            ReferenceBinding referenceBinding = this.superclass;
            if (referenceBinding != null && referenceBinding.hasTypeBit(-134217729)) {
                this.typeBits |= this.superclass.typeBits & TypeIds.InheritableBits;
            }
            ReferenceBinding[] referenceBindingArr = this.superInterfaces;
            if (referenceBindingArr != null) {
                int length = referenceBindingArr.length;
                for (int i11 = 0; i11 < length; i11++) {
                    if (this.superInterfaces[i11].hasTypeBit(-134217729)) {
                        this.typeBits |= this.superInterfaces[i11].typeBits & TypeIds.InheritableBits;
                    }
                }
            }
        }
        return (i10 & this.typeBits) != 0;
    }

    public boolean isErasureBoundTo(TypeBinding typeBinding) {
        if (TypeBinding.equalsEquals(this.superclass.erasure(), typeBinding)) {
            return true;
        }
        int length = this.superInterfaces.length;
        for (int i10 = 0; i10 < length; i10++) {
            if (TypeBinding.equalsEquals(this.superInterfaces[i10].erasure(), typeBinding)) {
                return true;
            }
        }
        return false;
    }

    @Override
    public boolean isFreeTypeVariable() {
        return this.environment.usesNullTypeAnnotations() && this.environment.globalOptions.pessimisticNullAnalysisForFreeTypeVariablesEnabled && (this.tagBits & TagBits.AnnotationNullMASK) == 0;
    }

    @Override
    public boolean isHierarchyConnected() {
        return (this.modifiers & 33554432) == 0;
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x003b, code lost:
    
        r2 = r2 + 1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean isInterchangeableWith(TypeVariableBinding typeVariableBinding, Substitution substitution) {
        if (TypeBinding.equalsEquals(this, typeVariableBinding)) {
            return true;
        }
        int length = this.superInterfaces.length;
        if (length != typeVariableBinding.superInterfaces.length || TypeBinding.notEquals(this.superclass, Scope.substitute(substitution, typeVariableBinding.superclass))) {
            return false;
        }
        int i10 = 0;
        while (i10 < length) {
            TypeBinding substitute = Scope.substitute(substitution, typeVariableBinding.superInterfaces[i10]);
            for (int i11 = 0; i11 < length; i11++) {
                if (TypeBinding.equalsEquals(substitute, this.superInterfaces[i11])) {
                    break;
                }
            }
            return false;
        }
        return true;
    }

    @Override
    public boolean isProperType(boolean z10) {
        if (this.inRecursiveFunction) {
            return true;
        }
        this.inRecursiveFunction = true;
        try {
            ReferenceBinding referenceBinding = this.superclass;
            if (referenceBinding != null && !referenceBinding.isProperType(z10)) {
                return false;
            }
            ReferenceBinding[] referenceBindingArr = this.superInterfaces;
            if (referenceBindingArr != null) {
                int length = referenceBindingArr.length;
                for (int i10 = 0; i10 < length; i10++) {
                    if (!this.superInterfaces[i10].isProperType(z10)) {
                        return false;
                    }
                }
            }
            return true;
        } finally {
            this.inRecursiveFunction = false;
        }
    }

    @Override
    public boolean isSubtypeOf(TypeBinding typeBinding, boolean z10) {
        if (isSubTypeOfRTL(typeBinding)) {
            return true;
        }
        TypeBinding typeBinding2 = this.firstBound;
        if (typeBinding2 != null && typeBinding2.isSubtypeOf(typeBinding, z10)) {
            return true;
        }
        ReferenceBinding referenceBinding = this.superclass;
        if (referenceBinding != null && referenceBinding.isSubtypeOf(typeBinding, z10)) {
            return true;
        }
        ReferenceBinding[] referenceBindingArr = this.superInterfaces;
        if (referenceBindingArr != null) {
            int length = referenceBindingArr.length;
            for (int i10 = 0; i10 < length; i10++) {
                if (this.superInterfaces[i10].isSubtypeOf(typeBinding, false)) {
                    return true;
                }
            }
        }
        return typeBinding.f102482id == 1;
    }

    @Override
    public boolean isTypeVariable() {
        return true;
    }

    @Override
    public int kind() {
        return 4100;
    }

    @Override
    public boolean mentionsAny(TypeBinding[] typeBindingArr, int i10) {
        if (this.inRecursiveFunction) {
            return false;
        }
        this.inRecursiveFunction = true;
        try {
            if (super.mentionsAny(typeBindingArr, i10)) {
                return true;
            }
            ReferenceBinding referenceBinding = this.superclass;
            if (referenceBinding != null && referenceBinding.mentionsAny(typeBindingArr, i10)) {
                return true;
            }
            if (this.superInterfaces != null) {
                int i11 = 0;
                while (true) {
                    ReferenceBinding[] referenceBindingArr = this.superInterfaces;
                    if (i11 >= referenceBindingArr.length) {
                        break;
                    }
                    if (referenceBindingArr[i11].mentionsAny(typeBindingArr, i10)) {
                        return true;
                    }
                    i11++;
                }
            }
            return false;
        } finally {
            this.inRecursiveFunction = false;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:22:0x005c, code lost:
    
        if (org.eclipse.jdt.internal.compiler.lookup.TypeBinding.equalsEquals(r6.firstBound, r6.superclass) != false) goto L26;
     */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public char[] nullAnnotatedReadableName(CompilerOptions compilerOptions, boolean z10) {
        StringBuffer stringBuffer = new StringBuffer(10);
        appendNullAnnotation(stringBuffer, compilerOptions);
        stringBuffer.append(sourceName());
        if (!this.inRecursiveFunction) {
            this.inRecursiveFunction = true;
            try {
                ReferenceBinding referenceBinding = this.superclass;
                if (referenceBinding != null && TypeBinding.equalsEquals(this.firstBound, referenceBinding)) {
                    stringBuffer.append(" extends ");
                    stringBuffer.append(this.superclass.nullAnnotatedReadableName(compilerOptions, z10));
                }
                ReferenceBinding[] referenceBindingArr = this.superInterfaces;
                if (referenceBindingArr != null && referenceBindingArr != Binding.NO_SUPERINTERFACES) {
                    if (TypeBinding.notEquals(this.firstBound, this.superclass)) {
                        stringBuffer.append(" extends ");
                    }
                    int length = this.superInterfaces.length;
                    for (int i10 = 0; i10 < length; i10++) {
                        if (i10 <= 0) {
                        }
                        stringBuffer.append(" & ");
                        stringBuffer.append(this.superInterfaces[i10].nullAnnotatedReadableName(compilerOptions, z10));
                    }
                }
            } finally {
                this.inRecursiveFunction = false;
            }
        }
        int length2 = stringBuffer.length();
        char[] cArr = new char[length2];
        stringBuffer.getChars(0, length2, cArr, 0);
        return cArr;
    }

    public TypeBinding[] otherUpperBounds() {
        TypeBinding typeBinding = this.firstBound;
        if (typeBinding == null) {
            return Binding.NO_TYPES;
        }
        if (TypeBinding.equalsEquals(typeBinding, this.superclass)) {
            return this.superInterfaces;
        }
        ReferenceBinding[] referenceBindingArr = this.superInterfaces;
        int length = referenceBindingArr.length - 1;
        if (length <= 0) {
            return Binding.NO_TYPES;
        }
        TypeBinding[] typeBindingArr = new TypeBinding[length];
        System.arraycopy(referenceBindingArr, 1, typeBindingArr, 0, length);
        return typeBindingArr;
    }

    @Override
    public char[] readableName() {
        return this.sourceName;
    }

    public ReferenceBinding resolve() {
        long j10;
        ReferenceBinding referenceBinding;
        if ((this.modifiers & 33554432) == 0) {
            return this;
        }
        long j11 = this.tagBits & TagBits.AnnotationNullMASK;
        ReferenceBinding referenceBinding2 = this.superclass;
        boolean z10 = true;
        long j12 = 0;
        if (referenceBinding2 != null) {
            ReferenceBinding referenceBinding3 = (ReferenceBinding) BinaryTypeBinding.resolveType(referenceBinding2, this.environment, true);
            this.tagBits = (referenceBinding3.tagBits & 2048) | this.tagBits;
            long j13 = referenceBinding3.tagBits;
            long j14 = j13 & TagBits.AnnotationNullMASK;
            if (j14 != 0 && j11 == 0 && (j13 & 72057594037927936L) != 0) {
                j11 = j14;
            }
            setSuperClass(referenceBinding3);
        }
        ReferenceBinding[] referenceBindingArr = this.superInterfaces;
        int length = referenceBindingArr.length;
        if (length != 0) {
            referenceBinding = referenceBindingArr[0];
            while (true) {
                length--;
                if (length < 0) {
                    break;
                }
                ReferenceBinding referenceBinding4 = (ReferenceBinding) BinaryTypeBinding.resolveType(referenceBindingArr[length], this.environment, z10);
                this.tagBits = (referenceBinding4.tagBits & 2048) | this.tagBits;
                long j15 = referenceBinding4.tagBits;
                long j16 = j15 & TagBits.AnnotationNullMASK;
                if (j16 != 0 && j11 == 0) {
                    if ((j15 & 72057594037927936L) != 0) {
                        j11 = j16;
                    }
                }
                referenceBindingArr[length] = referenceBinding4;
                j12 = 0;
                z10 = true;
            }
            j10 = j12;
        } else {
            j10 = 0;
            referenceBinding = null;
        }
        if (j11 != j10) {
            this.tagBits = j11 | TagBits.HasNullTypeAnnotation | this.tagBits;
        }
        TypeBinding typeBinding = this.firstBound;
        if (typeBinding != null) {
            if (TypeBinding.equalsEquals(typeBinding, referenceBinding2)) {
                setFirstBound(this.superclass);
            } else if (TypeBinding.equalsEquals(this.firstBound, referenceBinding)) {
                setFirstBound(referenceBindingArr[0]);
            }
        }
        this.modifiers &= -33554433;
        return this;
    }

    public TypeBinding setFirstBound(TypeBinding typeBinding) {
        this.firstBound = typeBinding;
        if ((this.tagBits & 8388608) != 0) {
            TypeBinding[] derivedTypesForDeferredInitialization = getDerivedTypesForDeferredInitialization();
            int length = derivedTypesForDeferredInitialization == null ? 0 : derivedTypesForDeferredInitialization.length;
            for (int i10 = 0; i10 < length; i10++) {
                ((TypeVariableBinding) derivedTypesForDeferredInitialization[i10]).firstBound = typeBinding;
            }
        }
        if (typeBinding != null && typeBinding.hasNullTypeAnnotations()) {
            this.tagBits |= TagBits.HasNullTypeAnnotation;
        }
        return typeBinding;
    }

    public ReferenceBinding setSuperClass(ReferenceBinding referenceBinding) {
        this.superclass = referenceBinding;
        if ((this.tagBits & 8388608) != 0) {
            TypeBinding[] derivedTypesForDeferredInitialization = getDerivedTypesForDeferredInitialization();
            int length = derivedTypesForDeferredInitialization == null ? 0 : derivedTypesForDeferredInitialization.length;
            for (int i10 = 0; i10 < length; i10++) {
                ((TypeVariableBinding) derivedTypesForDeferredInitialization[i10]).superclass = referenceBinding;
            }
        }
        return referenceBinding;
    }

    public ReferenceBinding[] setSuperInterfaces(ReferenceBinding[] referenceBindingArr) {
        this.superInterfaces = referenceBindingArr;
        if ((this.tagBits & 8388608) != 0) {
            TypeBinding[] derivedTypesForDeferredInitialization = getDerivedTypesForDeferredInitialization();
            int length = derivedTypesForDeferredInitialization == null ? 0 : derivedTypesForDeferredInitialization.length;
            for (int i10 = 0; i10 < length; i10++) {
                ((TypeVariableBinding) derivedTypesForDeferredInitialization[i10]).superInterfaces = referenceBindingArr;
            }
        }
        return referenceBindingArr;
    }

    @Override
    public void setTypeAnnotations(AnnotationBinding[] annotationBindingArr, boolean z10) {
        if (getClass() == TypeVariableBinding.class) {
            this.environment.typeSystem.forceRegisterAsDerived(this);
        } else {
            this.environment.getUnannotatedType(this);
        }
        super.setTypeAnnotations(annotationBindingArr, z10);
    }

    @Override
    public char[] shortReadableName() {
        return readableName();
    }

    @Override
    public TypeBinding substituteInferenceVariable(InferenceVariable inferenceVariable, TypeBinding typeBinding) {
        boolean z10;
        if (this.inRecursiveFunction) {
            return this;
        }
        this.inRecursiveFunction = true;
        try {
            ReferenceBinding referenceBinding = this.superclass;
            if (referenceBinding != null) {
                referenceBinding = (ReferenceBinding) referenceBinding.substituteInferenceVariable(inferenceVariable, typeBinding);
                z10 = TypeBinding.notEquals(referenceBinding, this.superclass);
            } else {
                z10 = false;
            }
            ReferenceBinding[] referenceBindingArr = this.superInterfaces;
            ReferenceBinding[] referenceBindingArr2 = null;
            if (referenceBindingArr != null) {
                int length = referenceBindingArr.length;
                if (z10) {
                    referenceBindingArr2 = new ReferenceBinding[length];
                    System.arraycopy(referenceBindingArr, 0, referenceBindingArr2, 0, length);
                }
                for (int i10 = 0; i10 < length; i10++) {
                    ReferenceBinding referenceBinding2 = this.superInterfaces[i10];
                    if (referenceBinding2 != null) {
                        ReferenceBinding referenceBinding3 = (ReferenceBinding) referenceBinding2.substituteInferenceVariable(inferenceVariable, typeBinding);
                        if (TypeBinding.notEquals(referenceBinding3, this.superInterfaces[i10])) {
                            if (referenceBindingArr2 == null) {
                                referenceBindingArr2 = new ReferenceBinding[length];
                                System.arraycopy(this.superInterfaces, 0, referenceBindingArr2, 0, length);
                            }
                            referenceBindingArr2[i10] = referenceBinding3;
                            z10 = true;
                        }
                    }
                }
            }
            if (!z10) {
                this.inRecursiveFunction = false;
                return this;
            }
            TypeVariableBinding typeVariableBinding = new TypeVariableBinding(this.sourceName, this.declaringElement, this.rank, this.environment);
            typeVariableBinding.superclass = referenceBinding;
            typeVariableBinding.superInterfaces = referenceBindingArr2;
            typeVariableBinding.tagBits = this.tagBits;
            this.inRecursiveFunction = false;
            return typeVariableBinding;
        } catch (Throwable th2) {
            this.inRecursiveFunction = false;
            throw th2;
        }
    }

    @Override
    public ReferenceBinding[] superInterfaces() {
        return this.superInterfaces;
    }

    @Override
    public ReferenceBinding superclass() {
        return this.superclass;
    }

    public String toString() {
        if (hasTypeAnnotations()) {
            return annotatedDebugName();
        }
        StringBuffer stringBuffer = new StringBuffer(10);
        stringBuffer.append('<');
        stringBuffer.append(this.sourceName);
        ReferenceBinding referenceBinding = this.superclass;
        if (referenceBinding != null && TypeBinding.equalsEquals(this.firstBound, referenceBinding)) {
            stringBuffer.append(" extends ");
            stringBuffer.append(this.superclass.debugName());
        }
        ReferenceBinding[] referenceBindingArr = this.superInterfaces;
        if (referenceBindingArr != null && referenceBindingArr != Binding.NO_SUPERINTERFACES) {
            if (TypeBinding.notEquals(this.firstBound, this.superclass)) {
                stringBuffer.append(" extends ");
            }
            int length = this.superInterfaces.length;
            for (int i10 = 0; i10 < length; i10++) {
                if (i10 > 0 || TypeBinding.equalsEquals(this.firstBound, this.superclass)) {
                    stringBuffer.append(" & ");
                }
                stringBuffer.append(this.superInterfaces[i10].debugName());
            }
        }
        stringBuffer.append('>');
        return stringBuffer.toString();
    }

    @Override
    public TypeBinding unannotated() {
        return hasTypeAnnotations() ? this.environment.getUnannotatedType(this) : this;
    }

    @Override
    public long updateTagBits() {
        if (!this.inRecursiveFunction) {
            this.inRecursiveFunction = true;
            try {
                ReferenceBinding referenceBinding = this.superclass;
                if (referenceBinding != null) {
                    this.tagBits |= referenceBinding.updateTagBits();
                }
                ReferenceBinding[] referenceBindingArr = this.superInterfaces;
                if (referenceBindingArr != null) {
                    for (ReferenceBinding referenceBinding2 : referenceBindingArr) {
                        this.tagBits |= referenceBinding2.updateTagBits();
                    }
                }
            } finally {
                this.inRecursiveFunction = false;
            }
        }
        return super.updateTagBits();
    }

    public TypeBinding upperBound() {
        TypeBinding typeBinding = this.firstBound;
        return typeBinding != null ? typeBinding : this.superclass;
    }

    @Override
    public ReferenceBinding upwardsProjection(Scope scope, TypeBinding[] typeBindingArr) {
        return this;
    }

    @Override
    public TypeBinding withoutToplevelNullAnnotation() {
        if (!hasNullTypeAnnotations()) {
            return this;
        }
        TypeBinding unannotatedType = this.environment.getUnannotatedType(this);
        AnnotationBinding[] filterNullTypeAnnotations = this.environment.filterNullTypeAnnotations(this.typeAnnotations);
        return filterNullTypeAnnotations.length > 0 ? this.environment.createAnnotatedType(unannotatedType, filterNullTypeAnnotations) : unannotatedType;
    }

    public TypeVariableBinding(char[] cArr, LookupEnvironment lookupEnvironment) {
        this.inRecursiveFunction = false;
        this.inRecursiveProjectionFunction = false;
        this.sourceName = cArr;
        this.modifiers = CompilerOptions.ShouldImplementHashcode;
        this.tagBits |= TagBits.HasTypeVariable;
        this.environment = lookupEnvironment;
        this.typeBits = 134217728;
    }

    public TypeVariableBinding(TypeVariableBinding typeVariableBinding) {
        super(typeVariableBinding);
        this.inRecursiveFunction = false;
        this.inRecursiveProjectionFunction = false;
        this.declaringElement = typeVariableBinding.declaringElement;
        this.rank = typeVariableBinding.rank;
        this.firstBound = typeVariableBinding.firstBound;
        this.superclass = typeVariableBinding.superclass;
        ReferenceBinding[] referenceBindingArr = typeVariableBinding.superInterfaces;
        if (referenceBindingArr != null) {
            int length = referenceBindingArr.length;
            if (length > 0) {
                ReferenceBinding[] referenceBindingArr2 = new ReferenceBinding[length];
                this.superInterfaces = referenceBindingArr2;
                System.arraycopy(referenceBindingArr, 0, referenceBindingArr2, 0, length);
            } else {
                this.superInterfaces = Binding.NO_SUPERINTERFACES;
            }
        }
        this.genericTypeSignature = typeVariableBinding.genericTypeSignature;
        this.environment = typeVariableBinding.environment;
        typeVariableBinding.tagBits |= 8388608;
        this.tagBits &= -8388609;
    }
}
