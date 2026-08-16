package org.eclipse.jdt.internal.compiler.lookup;

import java.util.ArrayList;
import java.util.List;
import org.eclipse.jdt.internal.compiler.ast.Invocation;

public class ConstraintTypeFormula extends ConstraintFormula {
    boolean isSoft;
    TypeBinding left;

    private ConstraintTypeFormula(TypeBinding typeBinding, TypeBinding typeBinding2, int i10, boolean z10) {
        this.left = typeBinding;
        this.right = typeBinding2;
        this.relation = i10;
        this.isSoft = z10;
    }

    public static ConstraintTypeFormula create(TypeBinding typeBinding, TypeBinding typeBinding2, int i10) {
        if (typeBinding != null && typeBinding2 != null) {
            return new ConstraintTypeFormula(typeBinding, typeBinding2, i10, false);
        }
        return ReductionResult.FALSE;
    }

    private ArrayBinding findMostSpecificSuperArray(TypeBinding typeBinding, TypeBinding[] typeBindingArr, TypeBinding typeBinding2) {
        int i10;
        ArrayBinding arrayBinding;
        if (typeBinding == null || !typeBinding.isArrayType()) {
            i10 = 0;
            arrayBinding = null;
        } else {
            arrayBinding = (ArrayBinding) typeBinding;
            i10 = 1;
        }
        for (int i11 = 0; i11 < typeBindingArr.length; i11++) {
            if (typeBindingArr[i11].isArrayType()) {
                arrayBinding = (ArrayBinding) typeBindingArr[i11];
                i10++;
            }
        }
        if (i10 == 0) {
            return null;
        }
        if (i10 == 1) {
            return arrayBinding;
        }
        InferenceContext18.missingImplementation("Extracting array from intersection is not defined");
        return null;
    }

    private TypeBinding peelOneDimension(TypeBinding typeBinding, LookupEnvironment lookupEnvironment) {
        return typeBinding.dimensions() == 1 ? typeBinding.leafComponentType() : lookupEnvironment.createArrayType(typeBinding.leafComponentType(), typeBinding.dimensions() - 1);
    }

    /* JADX WARN: Multi-variable type inference failed */
    private Object reduceSubType(Scope scope, TypeBinding typeBinding, TypeBinding typeBinding2) {
        ArrayBinding arrayBinding;
        ReferenceBinding[] intersectingTypes;
        TypeBinding typeBinding3;
        ReferenceBinding[] intersectingTypes2;
        if (typeBinding.isProperType(true) && typeBinding2.isProperType(true)) {
            return typeBinding.isSubtypeOf(typeBinding2, true) ? ReductionResult.TRUE : ReductionResult.FALSE;
        }
        if (typeBinding.f102482id == 12) {
            return ReductionResult.TRUE;
        }
        if (typeBinding2.f102482id == 12) {
            return ReductionResult.FALSE;
        }
        if (typeBinding instanceof InferenceVariable) {
            return new TypeBound((InferenceVariable) typeBinding, typeBinding2, 2, this.isSoft);
        }
        if (typeBinding2 instanceof InferenceVariable) {
            return new TypeBound((InferenceVariable) typeBinding2, typeBinding, 3, this.isSoft);
        }
        int kind = typeBinding2.kind();
        if (kind != 4) {
            if (kind == 68) {
                TypeBinding elementsType = ((ArrayBinding) typeBinding2).elementsType();
                int kind2 = typeBinding.kind();
                if (kind2 == 68) {
                    arrayBinding = (ArrayBinding) typeBinding;
                } else if (kind2 == 4100) {
                    TypeVariableBinding typeVariableBinding = (TypeVariableBinding) typeBinding;
                    arrayBinding = findMostSpecificSuperArray(typeVariableBinding.firstBound, typeVariableBinding.otherUpperBounds(), typeVariableBinding);
                } else {
                    if (kind2 != 8196) {
                        return ReductionResult.FALSE;
                    }
                    WildcardBinding wildcardBinding = (WildcardBinding) typeBinding;
                    arrayBinding = findMostSpecificSuperArray(wildcardBinding.bound, wildcardBinding.otherBounds, wildcardBinding);
                }
                if (arrayBinding == null) {
                    return ReductionResult.FALSE;
                }
                TypeBinding elementsType2 = arrayBinding.elementsType();
                return (elementsType.isPrimitiveType() || elementsType2.isPrimitiveType()) ? TypeBinding.equalsEquals(elementsType, elementsType2) ? ReductionResult.TRUE : ReductionResult.FALSE : create(elementsType2, elementsType, 2, this.isSoft);
            }
            int i10 = 0;
            if (kind == 260) {
                List<ConstraintFormula> arrayList = new ArrayList<>();
                boolean z10 = true;
                while (typeBinding2 != null && typeBinding2.kind() == 260 && typeBinding != null) {
                    if (!addConstraintsFromTypeParameters(typeBinding, (ParameterizedTypeBinding) typeBinding2, arrayList) && z10) {
                        return ReductionResult.FALSE;
                    }
                    typeBinding2 = typeBinding2.enclosingType();
                    typeBinding = typeBinding.enclosingType();
                    z10 = false;
                }
                int size = arrayList.size();
                return size != 0 ? size != 1 ? arrayList.toArray(new ConstraintFormula[arrayList.size()]) : arrayList.get(0) : ReductionResult.TRUE;
            }
            if (kind == 516) {
                if (typeBinding.kind() == 8196 && (intersectingTypes = typeBinding.getIntersectingTypes()) != null) {
                    while (i10 < intersectingTypes.length) {
                        if (TypeBinding.equalsEquals(intersectingTypes[i10], typeBinding2)) {
                            return Boolean.TRUE;
                        }
                        i10++;
                    }
                }
                WildcardBinding wildcardBinding2 = (WildcardBinding) typeBinding2;
                return wildcardBinding2.boundKind == 2 ? create(typeBinding, wildcardBinding2.bound, 2, this.isSoft) : ReductionResult.FALSE;
            }
            if (kind != 1028 && kind != 2052) {
                if (kind == 4100) {
                    if (typeBinding.kind() == 8196 && (intersectingTypes2 = typeBinding.getIntersectingTypes()) != null) {
                        while (i10 < intersectingTypes2.length) {
                            if (TypeBinding.equalsEquals(intersectingTypes2[i10], typeBinding2)) {
                                return Boolean.TRUE;
                            }
                            i10++;
                        }
                    }
                    return (!(typeBinding2 instanceof CaptureBinding) || (typeBinding3 = ((CaptureBinding) typeBinding2).lowerBound) == null) ? ReductionResult.FALSE : create(typeBinding, typeBinding3, 2, this.isSoft);
                }
                if (kind == 8196) {
                    typeBinding2 = ((WildcardBinding) typeBinding2).allBounds();
                } else if (kind != 32772) {
                    if (kind != 65540) {
                        throw new IllegalStateException("Unexpected RHS " + ((Object) typeBinding2));
                    }
                    Invocation invocation = (Invocation) ((PolyTypeBinding) typeBinding2).expression;
                    MethodBinding binding = invocation.binding();
                    if (binding == null || !binding.isValidBinding()) {
                        return ReductionResult.FALSE;
                    }
                    return reduceSubType(scope, typeBinding, (binding.isConstructor() ? binding.declaringClass : binding.returnType).capture(scope, invocation.sourceStart(), invocation.sourceEnd()));
                }
                ReferenceBinding[] referenceBindingArr = ((IntersectionTypeBinding18) typeBinding2).intersectingTypes;
                ConstraintFormula[] constraintFormulaArr = new ConstraintFormula[referenceBindingArr.length];
                while (i10 < referenceBindingArr.length) {
                    constraintFormulaArr[i10] = create(typeBinding, referenceBindingArr[i10], 2, this.isSoft);
                    i10++;
                }
                return constraintFormulaArr;
            }
        }
        return typeBinding.isSubtypeOf(typeBinding2, true) ? ReductionResult.TRUE : ReductionResult.FALSE;
    }

    private Object reduceTypeEquality(TypeBinding typeBinding, InferenceContext18 inferenceContext18) {
        if (this.left.kind() == 516) {
            if (this.right.kind() == 516) {
                WildcardBinding wildcardBinding = (WildcardBinding) this.left;
                WildcardBinding wildcardBinding2 = (WildcardBinding) this.right;
                int i10 = wildcardBinding.boundKind;
                if (i10 == 0 && wildcardBinding2.boundKind == 0) {
                    return ReductionResult.TRUE;
                }
                if (i10 == 0 && wildcardBinding2.boundKind == 1) {
                    return create(typeBinding, wildcardBinding2.bound, 4, this.isSoft);
                }
                if (i10 == 1 && wildcardBinding2.boundKind == 0) {
                    return create(wildcardBinding.bound, typeBinding, 4, this.isSoft);
                }
                if ((i10 == 1 && wildcardBinding2.boundKind == 1) || (i10 == 2 && wildcardBinding2.boundKind == 2)) {
                    return create(wildcardBinding.bound, wildcardBinding2.bound, 4, this.isSoft);
                }
            }
        } else if (this.right.kind() != 516) {
            if (this.left.isProperType(true) && this.right.isProperType(true)) {
                return TypeBinding.equalsEquals(this.left, this.right) ? ReductionResult.TRUE : ReductionResult.FALSE;
            }
            TypeBinding typeBinding2 = this.left;
            if (typeBinding2.f102482id != 12) {
                TypeBinding typeBinding3 = this.right;
                if (typeBinding3.f102482id != 12) {
                    if ((typeBinding2 instanceof InferenceVariable) && !typeBinding3.isPrimitiveType()) {
                        return new TypeBound((InferenceVariable) this.left, this.right, 4, this.isSoft);
                    }
                    if ((this.right instanceof InferenceVariable) && !this.left.isPrimitiveType()) {
                        return new TypeBound((InferenceVariable) this.right, this.left, 4, this.isSoft);
                    }
                    if ((this.left.isClass() || this.left.isInterface()) && ((this.right.isClass() || this.right.isInterface()) && TypeBinding.equalsEquals(this.left.erasure(), this.right.erasure()))) {
                        TypeBinding[] typeArguments = this.left.typeArguments();
                        TypeBinding[] typeArguments2 = this.right.typeArguments();
                        if (typeArguments == null || typeArguments2 == null) {
                            return typeArguments == typeArguments2 ? ReductionResult.TRUE : ReductionResult.FALSE;
                        }
                        if (typeArguments.length != typeArguments2.length) {
                            return ReductionResult.FALSE;
                        }
                        int length = typeArguments.length;
                        ConstraintFormula[] constraintFormulaArr = new ConstraintFormula[length];
                        for (int i11 = 0; i11 < length; i11++) {
                            constraintFormulaArr[i11] = create(typeArguments[i11], typeArguments2[i11], 4, this.isSoft);
                        }
                        return constraintFormulaArr;
                    }
                    if (this.left.isArrayType() && this.right.isArrayType()) {
                        if (this.left.dimensions() == this.right.dimensions()) {
                            return create(this.left.leafComponentType(), this.right.leafComponentType(), 4, this.isSoft);
                        }
                        if (this.left.dimensions() > 0 && this.right.dimensions() > 0) {
                            return create(peelOneDimension(this.left, inferenceContext18.environment), peelOneDimension(this.right, inferenceContext18.environment), 4, this.isSoft);
                        }
                    }
                }
            }
            return ReductionResult.FALSE;
        }
        return ReductionResult.FALSE;
    }

    public boolean addConstraintsFromTypeParameters(TypeBinding typeBinding, ParameterizedTypeBinding parameterizedTypeBinding, List<ConstraintFormula> list) {
        TypeBinding findSuperTypeOriginatingFrom = typeBinding.findSuperTypeOriginatingFrom(parameterizedTypeBinding);
        if (findSuperTypeOriginatingFrom == null) {
            return false;
        }
        if (TypeBinding.equalsEquals(parameterizedTypeBinding, findSuperTypeOriginatingFrom)) {
            return true;
        }
        if (!(findSuperTypeOriginatingFrom instanceof ParameterizedTypeBinding)) {
            return parameterizedTypeBinding.isParameterizedWithOwnVariables();
        }
        TypeBinding[] typeBindingArr = ((ParameterizedTypeBinding) findSuperTypeOriginatingFrom).arguments;
        TypeBinding[] typeBindingArr2 = parameterizedTypeBinding.arguments;
        if (typeBindingArr2 == null) {
            return true;
        }
        if (findSuperTypeOriginatingFrom.isRawType() || typeBindingArr == null || typeBindingArr.length == 0) {
            return this.isSoft;
        }
        for (int i10 = 0; i10 < typeBindingArr2.length; i10++) {
            list.add(create(typeBindingArr[i10], typeBindingArr2[i10], 5, this.isSoft));
        }
        return true;
    }

    @Override
    public boolean applySubstitution(BoundSet boundSet, InferenceVariable[] inferenceVariableArr) {
        super.applySubstitution(boundSet, inferenceVariableArr);
        for (InferenceVariable inferenceVariable : inferenceVariableArr) {
            TypeBinding instantiation = boundSet.getInstantiation(inferenceVariable, null);
            if (instantiation == null) {
                return false;
            }
            this.left = this.left.substituteInferenceVariable(inferenceVariable, instantiation);
        }
        return true;
    }

    public boolean checkIVFreeTVmatch(TypeBinding typeBinding, TypeBinding typeBinding2) {
        if (!(typeBinding instanceof InferenceVariable) || !typeBinding2.isTypeVariable() || (typeBinding2.tagBits & TagBits.AnnotationNullMASK) != 0) {
            return false;
        }
        ((InferenceVariable) typeBinding).nullHints = TagBits.AnnotationNullMASK;
        return true;
    }

    public boolean equalsEquals(ConstraintTypeFormula constraintTypeFormula) {
        return constraintTypeFormula != null && this.relation == constraintTypeFormula.relation && this.isSoft == constraintTypeFormula.isSoft && TypeBinding.equalsEquals(this.left, constraintTypeFormula.left) && TypeBinding.equalsEquals(this.right, constraintTypeFormula.right);
    }

    @Override
    public Object reduce(InferenceContext18 inferenceContext18) {
        int i10 = this.relation;
        if (i10 == 1) {
            if (this.left.isProperType(true) && this.right.isProperType(true)) {
                return (this.left.isCompatibleWith(this.right, inferenceContext18.scope) || this.left.isBoxingCompatibleWith(this.right, inferenceContext18.scope)) ? ReductionResult.TRUE : ReductionResult.FALSE;
            }
            if (this.left.isPrimitiveType()) {
                return create(inferenceContext18.environment.computeBoxingType(this.left), this.right, 1, this.isSoft);
            }
            if (this.right.isPrimitiveType()) {
                return create(this.left, inferenceContext18.environment.computeBoxingType(this.right), 4, this.isSoft);
            }
            int kind = this.right.kind();
            if (kind == 68 ? this.right.leafComponentType().kind() == 260 : kind == 260) {
                TypeBinding findSuperTypeOriginatingFrom = this.left.findSuperTypeOriginatingFrom(this.right);
                if (findSuperTypeOriginatingFrom != null && findSuperTypeOriginatingFrom.leafComponentType().isRawType()) {
                    inferenceContext18.recordUncheckedConversion(this);
                    return ReductionResult.TRUE;
                }
            }
            return create(this.left, this.right, 2, this.isSoft);
        }
        if (i10 == 2) {
            return reduceSubType(inferenceContext18.scope, this.left, this.right);
        }
        if (i10 == 3) {
            return reduceSubType(inferenceContext18.scope, this.right, this.left);
        }
        if (i10 == 4) {
            if (inferenceContext18.environment.globalOptions.isAnnotationBasedNullAnalysisEnabled && !checkIVFreeTVmatch(this.left, this.right)) {
                checkIVFreeTVmatch(this.right, this.left);
            }
            return reduceTypeEquality(inferenceContext18.object, inferenceContext18);
        }
        if (i10 != 5) {
            throw new IllegalStateException("Unexpected relation kind " + this.relation);
        }
        if (this.right.kind() != 516) {
            if (this.left.kind() != 516) {
                return create(this.left, this.right, 4, this.isSoft);
            }
            TypeBinding typeBinding = this.right;
            return typeBinding instanceof InferenceVariable ? new TypeBound((InferenceVariable) typeBinding, this.left, 4, this.isSoft) : ReductionResult.FALSE;
        }
        WildcardBinding wildcardBinding = (WildcardBinding) this.right;
        int i11 = wildcardBinding.boundKind;
        if (i11 == 0) {
            return ReductionResult.TRUE;
        }
        if (i11 != 1) {
            if (this.left.kind() != 516) {
                return create(wildcardBinding.bound, this.left, 2, this.isSoft);
            }
            WildcardBinding wildcardBinding2 = (WildcardBinding) this.left;
            return wildcardBinding2.boundKind == 2 ? create(wildcardBinding.bound, wildcardBinding2.bound, 2, this.isSoft) : ReductionResult.FALSE;
        }
        if (this.left.kind() != 516) {
            return create(this.left, wildcardBinding.bound, 2, this.isSoft);
        }
        WildcardBinding wildcardBinding3 = (WildcardBinding) this.left;
        int i12 = wildcardBinding3.boundKind;
        if (i12 == 0) {
            return create(inferenceContext18.object, wildcardBinding.bound, 2, this.isSoft);
        }
        if (i12 == 1) {
            return create(wildcardBinding3.bound, wildcardBinding.bound, 2, this.isSoft);
        }
        if (i12 == 2) {
            return create(inferenceContext18.object, wildcardBinding.bound, 4, this.isSoft);
        }
        throw new IllegalArgumentException("Unexpected boundKind " + wildcardBinding3.boundKind);
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer("Type Constraint:\n");
        stringBuffer.append('\t');
        stringBuffer.append('\u27e8');
        appendTypeName(stringBuffer, this.left);
        stringBuffer.append(ReductionResult.relationToString(this.relation));
        appendTypeName(stringBuffer, this.right);
        stringBuffer.append('\u27e9');
        return stringBuffer.toString();
    }

    public static ConstraintTypeFormula create(TypeBinding typeBinding, TypeBinding typeBinding2, int i10, boolean z10) {
        if (typeBinding != null && typeBinding2 != null) {
            return new ConstraintTypeFormula(typeBinding, typeBinding2, i10, z10);
        }
        return ReductionResult.FALSE;
    }

    public ConstraintTypeFormula() {
    }
}
