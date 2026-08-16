package org.eclipse.jdt.internal.compiler.lookup;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

public class BoundSet {
    static final BoundSet TRUE = new BoundSet();
    static final BoundSet FALSE = new BoundSet();
    HashMap<InferenceVariable, ThreeSets> boundsPerVariable = new HashMap<>();
    HashMap<ParameterizedTypeBinding, ParameterizedTypeBinding> captures = new HashMap<>();
    Set<InferenceVariable> inThrows = new HashSet();
    private TypeBound[] incorporatedBounds = new TypeBound[0];
    private TypeBound[] unincorporatedBounds = new TypeBound[1024];
    private int unincorporatedBoundsCount = 0;
    private TypeBound[] mostRecentBounds = new TypeBound[4];

    public class ThreeSets {
        Set<InferenceVariable> dependencies;
        TypeBinding instantiation;
        Map<InferenceVariable, TypeBound> inverseBounds;
        Set<TypeBound> sameBounds;
        Set<TypeBound> subBounds;
        Set<TypeBound> superBounds;

        public ThreeSets() {
        }

        private boolean addBound1(TypeBound typeBound) {
            int i10 = typeBound.relation;
            if (i10 == 2) {
                if (this.subBounds == null) {
                    this.subBounds = new HashSet();
                }
                return this.subBounds.add(typeBound);
            }
            if (i10 == 3) {
                if (this.superBounds == null) {
                    this.superBounds = new HashSet();
                }
                return this.superBounds.add(typeBound);
            }
            if (i10 == 4) {
                if (this.sameBounds == null) {
                    this.sameBounds = new HashSet();
                }
                return this.sameBounds.add(typeBound);
            }
            throw new IllegalArgumentException("Unexpected bound relation in : " + ((Object) typeBound));
        }

        private void useNullHints(long j10, TypeBinding[] typeBindingArr, LookupEnvironment lookupEnvironment) {
            int i10 = 0;
            if (j10 == TagBits.AnnotationNullMASK) {
                while (i10 < typeBindingArr.length) {
                    typeBindingArr[i10] = typeBindingArr[i10].withoutToplevelNullAnnotation();
                    i10++;
                }
            } else {
                AnnotationBinding[] nullAnnotationsFromTagBits = lookupEnvironment.nullAnnotationsFromTagBits(j10);
                if (nullAnnotationsFromTagBits != null) {
                    while (i10 < typeBindingArr.length) {
                        typeBindingArr[i10] = lookupEnvironment.createAnnotatedType(typeBindingArr[i10], nullAnnotationsFromTagBits);
                        i10++;
                    }
                }
            }
        }

        public boolean addBound(TypeBound typeBound) {
            boolean addBound1 = addBound1(typeBound);
            if (addBound1) {
                Set<InferenceVariable> set = this.dependencies;
                if (set == null) {
                    set = new HashSet<>();
                }
                typeBound.right.collectInferenceVariables(set);
                if (this.dependencies == null && set.size() > 0) {
                    this.dependencies = set;
                }
            }
            return addBound1;
        }

        public TypeBinding combineAndUseNullHints(TypeBinding typeBinding, long j10, LookupEnvironment lookupEnvironment) {
            Set<TypeBound> set = this.sameBounds;
            if (set != null) {
                Iterator<TypeBound> it = set.iterator();
                while (it.hasNext()) {
                    j10 |= it.next().nullHints;
                }
            }
            Set<TypeBound> set2 = this.superBounds;
            if (set2 != null) {
                Iterator<TypeBound> it2 = set2.iterator();
                while (it2.hasNext()) {
                    j10 |= it2.next().nullHints;
                }
            }
            Set<TypeBound> set3 = this.subBounds;
            if (set3 != null) {
                Iterator<TypeBound> it3 = set3.iterator();
                while (it3.hasNext()) {
                    j10 |= it3.next().nullHints;
                }
            }
            if (j10 == TagBits.AnnotationNullMASK) {
                return typeBinding.withoutToplevelNullAnnotation();
            }
            AnnotationBinding[] nullAnnotationsFromTagBits = lookupEnvironment.nullAnnotationsFromTagBits(j10);
            return nullAnnotationsFromTagBits != null ? lookupEnvironment.createAnnotatedType(typeBinding, nullAnnotationsFromTagBits) : typeBinding;
        }

        public ThreeSets copy() {
            ThreeSets threeSets = new ThreeSets();
            if (this.superBounds != null) {
                threeSets.superBounds = new HashSet(this.superBounds);
            }
            if (this.sameBounds != null) {
                threeSets.sameBounds = new HashSet(this.sameBounds);
            }
            if (this.subBounds != null) {
                threeSets.subBounds = new HashSet(this.subBounds);
            }
            threeSets.instantiation = this.instantiation;
            if (this.dependencies != null) {
                threeSets.dependencies = new HashSet(this.dependencies);
            }
            return threeSets;
        }

        public TypeBinding findSingleWrapperType() {
            TypeBinding typeBinding = this.instantiation;
            if (typeBinding != null && typeBinding.isProperType(true)) {
                TypeBinding typeBinding2 = this.instantiation;
                switch (typeBinding2.f102482id) {
                    case 26:
                    case 27:
                    case 28:
                    case 29:
                    case 30:
                    case 31:
                    case 32:
                    case 33:
                        return typeBinding2;
                }
            }
            Set<TypeBound> set = this.subBounds;
            if (set != null) {
                Iterator<TypeBound> it = set.iterator();
                while (it.hasNext()) {
                    TypeBinding typeBinding3 = it.next().right;
                    if (typeBinding3.isProperType(true)) {
                        switch (typeBinding3.f102482id) {
                            case 26:
                            case 27:
                            case 28:
                            case 29:
                            case 30:
                            case 31:
                            case 32:
                            case 33:
                                return typeBinding3;
                        }
                    }
                }
            }
            Set<TypeBound> set2 = this.superBounds;
            if (set2 == null) {
                return null;
            }
            Iterator<TypeBound> it2 = set2.iterator();
            while (it2.hasNext()) {
                TypeBinding typeBinding4 = it2.next().right;
                if (typeBinding4.isProperType(true)) {
                    switch (typeBinding4.f102482id) {
                        case 26:
                        case 27:
                        case 28:
                        case 29:
                        case 30:
                        case 31:
                        case 32:
                        case 33:
                            return typeBinding4;
                    }
                }
            }
            return null;
        }

        public int flattenInto(TypeBound[] typeBoundArr, int i10) {
            Set<TypeBound> set = this.superBounds;
            if (set != null) {
                int size = set.size();
                System.arraycopy(this.superBounds.toArray(), 0, typeBoundArr, i10, size);
                i10 += size;
            }
            Set<TypeBound> set2 = this.sameBounds;
            if (set2 != null) {
                int size2 = set2.size();
                System.arraycopy(this.sameBounds.toArray(), 0, typeBoundArr, i10, size2);
                i10 += size2;
            }
            Set<TypeBound> set3 = this.subBounds;
            if (set3 == null) {
                return i10;
            }
            int size3 = set3.size();
            System.arraycopy(this.subBounds.toArray(), 0, typeBoundArr, i10, size3);
            return i10 + size3;
        }

        public boolean hasDependency(InferenceVariable inferenceVariable) {
            Set<InferenceVariable> set = this.dependencies;
            if (set != null && set.contains(inferenceVariable)) {
                return true;
            }
            Map<InferenceVariable, TypeBound> map = this.inverseBounds;
            return map != null && map.containsKey(inferenceVariable);
        }

        public TypeBinding[] lowerBounds(boolean z10, InferenceVariable inferenceVariable) {
            int size = this.superBounds.size();
            TypeBinding[] typeBindingArr = new TypeBinding[size];
            long j10 = inferenceVariable.nullHints;
            int i10 = 0;
            for (TypeBound typeBound : this.superBounds) {
                TypeBinding typeBinding = typeBound.right;
                if (!z10 || typeBinding.isProperType(true)) {
                    typeBindingArr[i10] = typeBinding;
                    j10 |= typeBound.nullHints;
                    i10++;
                }
            }
            if (i10 == 0) {
                return Binding.NO_TYPES;
            }
            if (i10 < size) {
                TypeBinding[] typeBindingArr2 = new TypeBinding[i10];
                System.arraycopy(typeBindingArr, 0, typeBindingArr2, 0, i10);
                typeBindingArr = typeBindingArr2;
            }
            useNullHints(j10, typeBindingArr, inferenceVariable.environment);
            InferenceContext18.sortTypes(typeBindingArr);
            return typeBindingArr;
        }

        public void setInstantiation(TypeBinding typeBinding, InferenceVariable inferenceVariable, LookupEnvironment lookupEnvironment) {
            if (lookupEnvironment.globalOptions.isAnnotationBasedNullAnalysisEnabled) {
                long j10 = inferenceVariable.tagBits & TagBits.AnnotationNullMASK;
                long j11 = typeBinding.tagBits;
                long j12 = j11 | j10;
                TypeBinding typeBinding2 = this.instantiation;
                if (typeBinding2 != null) {
                    j12 |= typeBinding2.tagBits;
                }
                long j13 = j12 & TagBits.AnnotationNullMASK;
                if (j13 != TagBits.AnnotationNullMASK) {
                    j10 = j13;
                }
                if (j10 != (TagBits.AnnotationNullMASK & j11)) {
                    AnnotationBinding[] nullAnnotationsFromTagBits = lookupEnvironment.nullAnnotationsFromTagBits(j10);
                    if (nullAnnotationsFromTagBits != null) {
                        typeBinding = lookupEnvironment.createAnnotatedType(typeBinding.withoutToplevelNullAnnotation(), nullAnnotationsFromTagBits);
                    } else if (typeBinding.hasNullTypeAnnotations()) {
                        typeBinding = typeBinding.withoutToplevelNullAnnotation();
                    }
                }
            }
            this.instantiation = typeBinding;
        }

        public int size() {
            Set<TypeBound> set = this.superBounds;
            int size = set != null ? set.size() : 0;
            Set<TypeBound> set2 = this.sameBounds;
            if (set2 != null) {
                size += set2.size();
            }
            Set<TypeBound> set3 = this.subBounds;
            return set3 != null ? size + set3.size() : size;
        }

        public TypeBinding[] upperBounds(boolean z10, InferenceVariable inferenceVariable) {
            int size = this.subBounds.size();
            ReferenceBinding[] referenceBindingArr = new ReferenceBinding[size];
            Iterator<TypeBound> it = this.subBounds.iterator();
            long j10 = inferenceVariable.nullHints;
            TypeBinding typeBinding = null;
            int i10 = 0;
            while (it.hasNext()) {
                TypeBinding typeBinding2 = it.next().right;
                if (!z10 || typeBinding2.isProperType(true)) {
                    if (typeBinding2 instanceof ReferenceBinding) {
                        referenceBindingArr[i10] = (ReferenceBinding) typeBinding2;
                        j10 |= typeBinding2.tagBits & TagBits.AnnotationNullMASK;
                        i10++;
                    } else {
                        if (typeBinding != null) {
                            return Binding.NO_TYPES;
                        }
                        typeBinding = typeBinding2;
                    }
                }
            }
            if (i10 == 0) {
                return typeBinding != null ? new TypeBinding[]{typeBinding} : Binding.NO_TYPES;
            }
            if (i10 == 1 && typeBinding != null) {
                return new TypeBinding[]{typeBinding};
            }
            if (i10 < size) {
                ReferenceBinding[] referenceBindingArr2 = new ReferenceBinding[i10];
                System.arraycopy(referenceBindingArr, 0, referenceBindingArr2, 0, i10);
                referenceBindingArr = referenceBindingArr2;
            }
            useNullHints(j10, referenceBindingArr, inferenceVariable.environment);
            InferenceContext18.sortTypes(referenceBindingArr);
            return referenceBindingArr;
        }
    }

    private boolean addBounds(TypeBound[] typeBoundArr, LookupEnvironment lookupEnvironment) {
        boolean z10 = false;
        for (int i10 = 0; i10 < typeBoundArr.length; i10++) {
            addBound(typeBoundArr[i10], lookupEnvironment);
            z10 |= typeBoundArr[i10].isBound();
        }
        return z10;
    }

    private void addConnected(Set<InferenceVariable> set, InferenceVariable inferenceVariable, Map<InferenceVariable, Set<InferenceVariable>> map, Set<InferenceVariable> set2) {
        if (set2.add(inferenceVariable)) {
            set.add(inferenceVariable);
            Iterator<InferenceVariable> it = map.get(inferenceVariable).iterator();
            while (it.hasNext()) {
                addConnected(set, it.next(), map, set2);
            }
        }
    }

    private ConstraintTypeFormula combineEqualSupers(TypeBound typeBound, TypeBound typeBound2) {
        boolean z10 = true;
        if (TypeBinding.equalsEquals(typeBound.left, typeBound2.right)) {
            InferenceVariable inferenceVariable = typeBound2.left;
            TypeBinding typeBinding = typeBound.right;
            int i10 = typeBound.relation;
            if (!typeBound2.isSoft && !typeBound.isSoft) {
                z10 = false;
            }
            return ConstraintTypeFormula.create(inferenceVariable, typeBinding, i10, z10);
        }
        if (!TypeBinding.equalsEquals(typeBound.right, typeBound2.left)) {
            return null;
        }
        InferenceVariable inferenceVariable2 = typeBound.left;
        TypeBinding typeBinding2 = typeBound2.right;
        int i11 = typeBound.relation;
        if (!typeBound2.isSoft && !typeBound.isSoft) {
            z10 = false;
        }
        return ConstraintTypeFormula.create(inferenceVariable2, typeBinding2, i11, z10);
    }

    private ConstraintTypeFormula combineSameSame(TypeBound typeBound, TypeBound typeBound2) {
        if (TypeBinding.equalsEquals(typeBound.left, typeBound2.left)) {
            return ConstraintTypeFormula.create(typeBound.right, typeBound2.right, 4, typeBound.isSoft || typeBound2.isSoft);
        }
        ConstraintTypeFormula combineSameSameWithProperType = combineSameSameWithProperType(typeBound, typeBound2);
        if (combineSameSameWithProperType != null) {
            return combineSameSameWithProperType;
        }
        ConstraintTypeFormula combineSameSameWithProperType2 = combineSameSameWithProperType(typeBound2, typeBound);
        if (combineSameSameWithProperType2 != null) {
            return combineSameSameWithProperType2;
        }
        return null;
    }

    private ConstraintTypeFormula combineSameSameWithProperType(TypeBound typeBound, TypeBound typeBound2) {
        TypeBinding typeBinding = typeBound.right;
        boolean z10 = true;
        if (!typeBinding.isProperType(true)) {
            return null;
        }
        InferenceVariable inferenceVariable = typeBound.left;
        InferenceVariable inferenceVariable2 = typeBound2.left;
        TypeBinding substituteInferenceVariable = typeBound2.right.substituteInferenceVariable(inferenceVariable, typeBinding);
        if (!typeBound.isSoft && !typeBound2.isSoft) {
            z10 = false;
        }
        return ConstraintTypeFormula.create(inferenceVariable2, substituteInferenceVariable, 4, z10);
    }

    private ConstraintTypeFormula combineSameSubSuper(TypeBound typeBound, TypeBound typeBound2) {
        InferenceVariable inferenceVariable = typeBound.left;
        TypeBinding typeBinding = typeBound.right;
        if (TypeBinding.equalsEquals(inferenceVariable, typeBound2.left)) {
            return ConstraintTypeFormula.create(typeBinding, typeBound2.right, typeBound2.relation, typeBound2.isSoft || typeBound.isSoft);
        }
        if (TypeBinding.equalsEquals(inferenceVariable, typeBound2.right)) {
            return ConstraintTypeFormula.create(typeBound2.left, typeBinding, typeBound2.relation, typeBound2.isSoft || typeBound.isSoft);
        }
        TypeBinding typeBinding2 = typeBound.right;
        if (typeBinding2 instanceof InferenceVariable) {
            inferenceVariable = (InferenceVariable) typeBinding2;
            InferenceVariable inferenceVariable2 = typeBound.left;
            if (TypeBinding.equalsEquals(inferenceVariable, typeBound2.left)) {
                return ConstraintTypeFormula.create(inferenceVariable2, typeBound2.right, typeBound2.relation, typeBound2.isSoft || typeBound.isSoft);
            }
            if (TypeBinding.equalsEquals(inferenceVariable, typeBound2.right)) {
                return ConstraintTypeFormula.create(typeBound2.left, inferenceVariable2, typeBound2.relation, typeBound2.isSoft || typeBound.isSoft);
            }
        }
        TypeBinding typeBinding3 = typeBound.right;
        if (!typeBinding3.isProperType(true)) {
            return null;
        }
        boolean equalsEquals = TypeBinding.equalsEquals(inferenceVariable, typeBound2.left);
        TypeBinding typeBinding4 = equalsEquals ? typeBinding3 : typeBound2.left;
        TypeBinding substituteInferenceVariable = typeBound2.right.substituteInferenceVariable(inferenceVariable, typeBinding3);
        if (TypeBinding.notEquals(substituteInferenceVariable, typeBound2.right) || equalsEquals) {
            return ConstraintTypeFormula.create(typeBinding4, substituteInferenceVariable, typeBound2.relation, typeBound2.isSoft || typeBound.isSoft);
        }
        return null;
    }

    private ConstraintTypeFormula combineSuperAndSub(TypeBound typeBound, TypeBound typeBound2) {
        boolean z10 = true;
        if (TypeBinding.equalsEquals(typeBound.left, typeBound2.left)) {
            TypeBinding typeBinding = typeBound.right;
            TypeBinding typeBinding2 = typeBound2.right;
            if (!typeBound2.isSoft && !typeBound.isSoft) {
                z10 = false;
            }
            return ConstraintTypeFormula.create(typeBinding, typeBinding2, 2, z10);
        }
        TypeBinding typeBinding3 = typeBound.right;
        if (!(typeBinding3 instanceof InferenceVariable) || !TypeBinding.equalsEquals((InferenceVariable) typeBinding3, typeBound2.right)) {
            return null;
        }
        InferenceVariable inferenceVariable = typeBound.left;
        InferenceVariable inferenceVariable2 = typeBound2.left;
        if (!typeBound2.isSoft && !typeBound.isSoft) {
            z10 = false;
        }
        return ConstraintTypeFormula.create(inferenceVariable, inferenceVariable2, 3, z10);
    }

    private ConstraintTypeFormula[] deriveTypeArgumentConstraints(TypeBound typeBound, TypeBound typeBound2) {
        TypeBinding[] superTypesWithCommonGenericType = superTypesWithCommonGenericType(typeBound.right, typeBound2.right);
        if (superTypesWithCommonGenericType != null) {
            return typeArgumentEqualityConstraints(superTypesWithCommonGenericType[0], superTypesWithCommonGenericType[1], typeBound.isSoft || typeBound2.isSoft);
        }
        return null;
    }

    private boolean superOnlyRaw(TypeBinding typeBinding, TypeBinding typeBinding2, LookupEnvironment lookupEnvironment) {
        TypeBinding findSuperTypeOriginatingFrom;
        if ((typeBinding2 instanceof InferenceVariable) || (findSuperTypeOriginatingFrom = typeBinding2.findSuperTypeOriginatingFrom(typeBinding)) == null || findSuperTypeOriginatingFrom.isParameterizedType()) {
            return false;
        }
        return typeBinding2.isCompatibleWith(lookupEnvironment.convertToRawType(typeBinding, false));
    }

    private ConstraintTypeFormula[] typeArgumentEqualityConstraints(TypeBinding typeBinding, TypeBinding typeBinding2, boolean z10) {
        if (typeBinding == null || typeBinding.kind() != 260 || typeBinding2 == null || typeBinding2.kind() != 260 || TypeBinding.equalsEquals(typeBinding, typeBinding2)) {
            return null;
        }
        TypeBinding[] typeArguments = typeBinding.typeArguments();
        TypeBinding[] typeArguments2 = typeBinding2.typeArguments();
        if (typeArguments != null && typeArguments2 != null && typeArguments.length == typeArguments2.length) {
            ArrayList arrayList = new ArrayList();
            for (int i10 = 0; i10 < typeArguments.length; i10++) {
                TypeBinding typeBinding3 = typeArguments[i10];
                TypeBinding typeBinding4 = typeArguments2[i10];
                if (!typeBinding3.isWildcard() && !typeBinding4.isWildcard() && !TypeBinding.equalsEquals(typeBinding3, typeBinding4)) {
                    arrayList.add(ConstraintTypeFormula.create(typeBinding3, typeBinding4, 4, z10));
                }
            }
            if (arrayList.size() > 0) {
                return (ConstraintTypeFormula[]) arrayList.toArray(new ConstraintTypeFormula[arrayList.size()]);
            }
            return null;
        }
        return null;
    }

    public void addBound(TypeBound typeBound, LookupEnvironment lookupEnvironment) {
        if ((typeBound.relation == 2 && typeBound.right.f102482id == 1) || typeBound.left == typeBound.right) {
            return;
        }
        for (int i10 = 0; i10 < 4; i10++) {
            if (typeBound.equals(this.mostRecentBounds[i10])) {
                if (lookupEnvironment.globalOptions.isAnnotationBasedNullAnalysisEnabled) {
                    TypeBound typeBound2 = this.mostRecentBounds[i10];
                    TypeBinding typeBinding = typeBound.right;
                    long j10 = typeBinding.tagBits & TagBits.AnnotationNullMASK;
                    TypeBinding typeBinding2 = typeBound2.right;
                    long j11 = TagBits.AnnotationNullMASK & typeBinding2.tagBits;
                    if (j10 != j11) {
                        if (j11 == 0) {
                            typeBound2.right = typeBinding;
                            return;
                        } else {
                            if (j10 != 0) {
                                typeBound2.right = lookupEnvironment.createAnnotatedType(typeBinding2, lookupEnvironment.nullAnnotationsFromTagBits(j10));
                                return;
                            }
                            return;
                        }
                    }
                    return;
                }
                return;
            }
        }
        TypeBound[] typeBoundArr = this.mostRecentBounds;
        typeBoundArr[3] = typeBoundArr[2];
        typeBoundArr[2] = typeBoundArr[1];
        typeBoundArr[1] = typeBoundArr[0];
        typeBoundArr[0] = typeBound;
        InferenceVariable prototype = typeBound.left.prototype();
        ThreeSets threeSets = this.boundsPerVariable.get(prototype);
        if (threeSets == null) {
            HashMap<InferenceVariable, ThreeSets> hashMap = this.boundsPerVariable;
            ThreeSets threeSets2 = new ThreeSets();
            hashMap.put(prototype, threeSets2);
            threeSets = threeSets2;
        }
        if (threeSets.addBound(typeBound)) {
            TypeBound[] typeBoundArr2 = this.unincorporatedBounds;
            int length = typeBoundArr2.length;
            if (this.unincorporatedBoundsCount >= length) {
                TypeBound[] typeBoundArr3 = new TypeBound[length * 2];
                this.unincorporatedBounds = typeBoundArr3;
                System.arraycopy(typeBoundArr2, 0, typeBoundArr3, 0, length);
            }
            TypeBound[] typeBoundArr4 = this.unincorporatedBounds;
            int i11 = this.unincorporatedBoundsCount;
            this.unincorporatedBoundsCount = i11 + 1;
            typeBoundArr4[i11] = typeBound;
            TypeBinding typeBinding3 = typeBound.right;
            if (typeBound.relation == 4 && typeBinding3.isProperType(true)) {
                threeSets.setInstantiation(typeBinding3, prototype, lookupEnvironment);
            }
            TypeBinding typeBinding4 = typeBound.right;
            if (typeBinding4 instanceof InferenceVariable) {
                InferenceVariable inferenceVariable = (InferenceVariable) typeBinding4.prototype();
                ThreeSets threeSets3 = this.boundsPerVariable.get(inferenceVariable);
                if (threeSets3 == null) {
                    HashMap<InferenceVariable, ThreeSets> hashMap2 = this.boundsPerVariable;
                    ThreeSets threeSets4 = new ThreeSets();
                    hashMap2.put(inferenceVariable, threeSets4);
                    threeSets3 = threeSets4;
                }
                if (threeSets3.inverseBounds == null) {
                    threeSets3.inverseBounds = new HashMap();
                }
                threeSets3.inverseBounds.put(inferenceVariable, typeBound);
            }
        }
    }

    public void addBoundsFromTypeParameters(InferenceContext18 inferenceContext18, TypeVariableBinding[] typeVariableBindingArr, InferenceVariable[] inferenceVariableArr) {
        int length = typeVariableBindingArr.length;
        for (int i10 = 0; i10 < length; i10++) {
            TypeVariableBinding typeVariableBinding = typeVariableBindingArr[i10];
            InferenceVariable inferenceVariable = inferenceVariableArr[i10];
            TypeBound[] typeBounds = typeVariableBinding.getTypeBounds(inferenceVariable, new InferenceSubstitution(inferenceContext18));
            if (!(typeBounds.length > 0 ? addBounds(typeBounds, inferenceContext18.environment) : false)) {
                addBound(new TypeBound(inferenceVariable, inferenceContext18.object, 2), inferenceContext18.environment);
            }
        }
    }

    public void addTypeBoundsFromWildcardBound(InferenceContext18 inferenceContext18, InferenceSubstitution inferenceSubstitution, int i10, TypeBinding typeBinding, TypeBinding typeBinding2, TypeBinding typeBinding3) throws InferenceFailureException {
        ConstraintTypeFormula create;
        if (i10 == 1) {
            create = typeBinding3.f102482id == 1 ? ConstraintTypeFormula.create(typeBinding, typeBinding2, 2) : null;
            if (typeBinding.f102482id == 1) {
                create = ConstraintTypeFormula.create(inferenceSubstitution.substitute(inferenceSubstitution, typeBinding3), typeBinding2, 2);
            }
        } else {
            create = ConstraintTypeFormula.create(inferenceSubstitution.substitute(inferenceSubstitution, typeBinding3), typeBinding2, 2);
        }
        if (create != null) {
            reduceOneConstraint(inferenceContext18, create);
        }
    }

    public List<Set<InferenceVariable>> computeConnectedComponents(InferenceVariable[] inferenceVariableArr) {
        HashMap hashMap = new HashMap();
        for (int i10 = 0; i10 < inferenceVariableArr.length; i10++) {
            InferenceVariable inferenceVariable = inferenceVariableArr[i10];
            HashSet hashSet = new HashSet();
            hashMap.put(inferenceVariable, hashSet);
            for (int i11 = 0; i11 < i10; i11++) {
                InferenceVariable inferenceVariable2 = inferenceVariableArr[i11];
                if (dependsOnResolutionOf(inferenceVariable, inferenceVariable2) || dependsOnResolutionOf(inferenceVariable2, inferenceVariable)) {
                    hashSet.add(inferenceVariable2);
                    hashMap.get(inferenceVariable2).add(inferenceVariable);
                }
            }
        }
        HashSet hashSet2 = new HashSet();
        ArrayList arrayList = new ArrayList();
        for (InferenceVariable inferenceVariable3 : inferenceVariableArr) {
            HashSet hashSet3 = new HashSet();
            addConnected(hashSet3, inferenceVariable3, hashMap, hashSet2);
            if (!hashSet3.isEmpty()) {
                arrayList.add(hashSet3);
            }
        }
        return arrayList;
    }

    public boolean condition18_5_2_bullet_3_3_1(InferenceVariable inferenceVariable, TypeBinding typeBinding) {
        ThreeSets threeSets;
        if (typeBinding.isBaseType() || InferenceContext18.parameterizedWithWildcard(typeBinding) != null || (threeSets = this.boundsPerVariable.get(inferenceVariable.prototype())) == null) {
            return false;
        }
        Set<TypeBound> set = threeSets.sameBounds;
        if (set != null) {
            Iterator<TypeBound> it = set.iterator();
            while (it.hasNext()) {
                if (InferenceContext18.parameterizedWithWildcard(it.next().right) != null) {
                    return true;
                }
            }
        }
        Set<TypeBound> set2 = threeSets.superBounds;
        if (set2 != null) {
            Iterator<TypeBound> it2 = set2.iterator();
            while (it2.hasNext()) {
                if (InferenceContext18.parameterizedWithWildcard(it2.next().right) != null) {
                    return true;
                }
            }
        }
        if (threeSets.superBounds != null) {
            ArrayList arrayList = new ArrayList(threeSets.superBounds);
            int size = arrayList.size();
            int i10 = 0;
            while (i10 < size) {
                TypeBinding typeBinding2 = ((TypeBound) arrayList.get(i10)).right;
                i10++;
                for (int i11 = i10; i11 < size; i11++) {
                    TypeBinding[] superTypesWithCommonGenericType = superTypesWithCommonGenericType(typeBinding2, ((TypeBound) arrayList.get(i11)).right);
                    if (superTypesWithCommonGenericType != null && superTypesWithCommonGenericType[0].isProperType(true) && superTypesWithCommonGenericType[1].isProperType(true) && !TypeBinding.equalsEquals(superTypesWithCommonGenericType[0], superTypesWithCommonGenericType[1])) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public boolean condition18_5_2_bullet_3_3_2(InferenceVariable inferenceVariable, TypeBinding typeBinding, InferenceContext18 inferenceContext18) {
        if (!typeBinding.isParameterizedType()) {
            return false;
        }
        TypeBinding original = typeBinding.original();
        ThreeSets threeSets = this.boundsPerVariable.get(inferenceVariable.prototype());
        if (threeSets == null) {
            return false;
        }
        Set<TypeBound> set = threeSets.sameBounds;
        if (set != null) {
            Iterator<TypeBound> it = set.iterator();
            while (it.hasNext()) {
                if (superOnlyRaw(original, it.next().right, inferenceContext18.environment)) {
                    return true;
                }
            }
        }
        Set<TypeBound> set2 = threeSets.superBounds;
        if (set2 != null) {
            Iterator<TypeBound> it2 = set2.iterator();
            while (it2.hasNext()) {
                if (superOnlyRaw(original, it2.next().right, inferenceContext18.environment)) {
                    return true;
                }
            }
        }
        return false;
    }

    public BoundSet copy() {
        BoundSet boundSet = new BoundSet();
        for (Map.Entry<InferenceVariable, ThreeSets> entry : this.boundsPerVariable.entrySet()) {
            boundSet.boundsPerVariable.put(entry.getKey(), entry.getValue().copy());
        }
        boundSet.inThrows.addAll(this.inThrows);
        boundSet.captures.putAll(this.captures);
        TypeBound[] typeBoundArr = this.incorporatedBounds;
        TypeBound[] typeBoundArr2 = new TypeBound[typeBoundArr.length];
        boundSet.incorporatedBounds = typeBoundArr2;
        System.arraycopy(typeBoundArr, 0, typeBoundArr2, 0, this.incorporatedBounds.length);
        TypeBound[] typeBoundArr3 = this.unincorporatedBounds;
        TypeBound[] typeBoundArr4 = new TypeBound[typeBoundArr3.length];
        boundSet.unincorporatedBounds = typeBoundArr4;
        System.arraycopy(typeBoundArr3, 0, typeBoundArr4, 0, this.unincorporatedBounds.length);
        boundSet.unincorporatedBoundsCount = this.unincorporatedBoundsCount;
        return boundSet;
    }

    public boolean dependsOnResolutionOf(InferenceVariable inferenceVariable, InferenceVariable inferenceVariable2) {
        InferenceVariable prototype = inferenceVariable.prototype();
        InferenceVariable prototype2 = inferenceVariable2.prototype();
        if (TypeBinding.equalsEquals(prototype, prototype2)) {
            return true;
        }
        boolean z10 = false;
        for (Map.Entry<ParameterizedTypeBinding, ParameterizedTypeBinding> entry : this.captures.entrySet()) {
            ParameterizedTypeBinding key = entry.getKey();
            int i10 = 0;
            while (true) {
                TypeBinding[] typeBindingArr = key.arguments;
                if (i10 >= typeBindingArr.length) {
                    break;
                }
                if (TypeBinding.equalsEquals(typeBindingArr[i10], prototype)) {
                    if (entry.getValue().mentionsAny(new TypeBinding[]{prototype2}, -1) || key.mentionsAny(new TypeBinding[]{prototype2}, i10)) {
                        return true;
                    }
                } else if (TypeBinding.equalsEquals(key.arguments[i10], prototype2)) {
                    z10 = true;
                }
                i10++;
            }
        }
        if (z10) {
            ThreeSets threeSets = this.boundsPerVariable.get(prototype2);
            if (threeSets != null && threeSets.hasDependency(prototype)) {
                return true;
            }
        } else {
            ThreeSets threeSets2 = this.boundsPerVariable.get(prototype);
            if (threeSets2 != null && threeSets2.hasDependency(prototype2)) {
                return true;
            }
        }
        return false;
    }

    public TypeBinding findWrapperTypeBound(InferenceVariable inferenceVariable) {
        ThreeSets threeSets = this.boundsPerVariable.get(inferenceVariable.prototype());
        if (threeSets == null) {
            return null;
        }
        return threeSets.findSingleWrapperType();
    }

    public TypeBound[] flatten() {
        Iterator<ThreeSets> it = this.boundsPerVariable.values().iterator();
        int i10 = 0;
        int i11 = 0;
        while (it.hasNext()) {
            i11 += it.next().size();
        }
        TypeBound[] typeBoundArr = new TypeBound[i11];
        if (i11 == 0) {
            return typeBoundArr;
        }
        Iterator<ThreeSets> it2 = this.boundsPerVariable.values().iterator();
        while (it2.hasNext()) {
            i10 = it2.next().flattenInto(typeBoundArr, i10);
        }
        return typeBoundArr;
    }

    public TypeBinding getEquivalentOuterVariable(InferenceVariable inferenceVariable, InferenceVariable[] inferenceVariableArr) {
        Set<TypeBound> set;
        ThreeSets threeSets = this.boundsPerVariable.get(inferenceVariable);
        if (threeSets != null) {
            for (TypeBound typeBound : threeSets.sameBounds) {
                for (InferenceVariable inferenceVariable2 : inferenceVariableArr) {
                    if (TypeBinding.equalsEquals(typeBound.right, inferenceVariable2)) {
                        return inferenceVariable2;
                    }
                }
            }
        }
        for (InferenceVariable inferenceVariable3 : inferenceVariableArr) {
            ThreeSets threeSets2 = this.boundsPerVariable.get(inferenceVariable3);
            if (threeSets2 != null && (set = threeSets2.sameBounds) != null) {
                Iterator<TypeBound> it = set.iterator();
                while (it.hasNext()) {
                    if (TypeBinding.equalsEquals(it.next().right, inferenceVariable)) {
                        return inferenceVariable3;
                    }
                }
            }
        }
        return null;
    }

    public TypeBinding getInstantiation(InferenceVariable inferenceVariable, LookupEnvironment lookupEnvironment) {
        ThreeSets threeSets = this.boundsPerVariable.get(inferenceVariable.prototype());
        if (threeSets == null) {
            return null;
        }
        TypeBinding typeBinding = threeSets.instantiation;
        return (lookupEnvironment == null || !lookupEnvironment.globalOptions.isAnnotationBasedNullAnalysisEnabled || typeBinding == null || (typeBinding.tagBits & TagBits.AnnotationNullMASK) != 0) ? typeBinding : threeSets.combineAndUseNullHints(typeBinding, inferenceVariable.nullHints, lookupEnvironment);
    }

    public boolean hasCaptureBound(Set<InferenceVariable> set) {
        Iterator<ParameterizedTypeBinding> it = this.captures.o().iterator();
        while (true) {
            int i10 = 0;
            if (!it.hasNext()) {
                return false;
            }
            ParameterizedTypeBinding next = it.next();
            while (true) {
                TypeBinding[] typeBindingArr = next.arguments;
                if (i10 >= typeBindingArr.length) {
                    break;
                }
                if (set.contains(typeBindingArr[i10])) {
                    return true;
                }
                i10++;
            }
        }
    }

    public boolean hasOnlyTrivialExceptionBounds(InferenceVariable inferenceVariable, TypeBinding[] typeBindingArr) {
        if (typeBindingArr != null) {
            for (TypeBinding typeBinding : typeBindingArr) {
                int i10 = typeBinding.f102482id;
                if (i10 != 1 && i10 != 21 && i10 != 25) {
                    return false;
                }
            }
        }
        return true;
    }

    public boolean incorporate(InferenceContext18 inferenceContext18) throws InferenceFailureException {
        if (this.unincorporatedBoundsCount == 0 && this.captures.size() == 0) {
            return true;
        }
        do {
            TypeBound[] typeBoundArr = this.unincorporatedBounds;
            int i10 = this.unincorporatedBoundsCount;
            TypeBound[] typeBoundArr2 = new TypeBound[i10];
            System.arraycopy(typeBoundArr, 0, typeBoundArr2, 0, i10);
            this.unincorporatedBoundsCount = 0;
            if (!incorporate(inferenceContext18, this.incorporatedBounds, typeBoundArr2) || !incorporate(inferenceContext18, typeBoundArr2, typeBoundArr2)) {
                return false;
            }
            TypeBound[] typeBoundArr3 = this.incorporatedBounds;
            int length = typeBoundArr3.length;
            TypeBound[] typeBoundArr4 = new TypeBound[length + i10];
            System.arraycopy(typeBoundArr3, 0, typeBoundArr4, 0, length);
            System.arraycopy(typeBoundArr2, 0, typeBoundArr4, length, i10);
            this.incorporatedBounds = typeBoundArr4;
        } while (this.unincorporatedBoundsCount > 0);
        return true;
    }

    public boolean isInstantiated(InferenceVariable inferenceVariable) {
        ThreeSets threeSets = this.boundsPerVariable.get(inferenceVariable.prototype());
        return (threeSets == null || threeSets.instantiation == null) ? false : true;
    }

    public TypeBinding[] lowerBounds(InferenceVariable inferenceVariable, boolean z10) {
        ThreeSets threeSets = this.boundsPerVariable.get(inferenceVariable.prototype());
        return (threeSets == null || threeSets.superBounds == null) ? Binding.NO_TYPES : threeSets.lowerBounds(z10, inferenceVariable);
    }

    public int numUninstantiatedVariables(InferenceVariable[] inferenceVariableArr) {
        int i10 = 0;
        for (InferenceVariable inferenceVariable : inferenceVariableArr) {
            if (!isInstantiated(inferenceVariable)) {
                i10++;
            }
        }
        return i10;
    }

    public boolean reduceOneConstraint(InferenceContext18 inferenceContext18, ConstraintFormula constraintFormula) throws InferenceFailureException {
        Object reduce = constraintFormula.reduce(inferenceContext18);
        if (reduce == ReductionResult.FALSE) {
            return false;
        }
        if (reduce == ReductionResult.TRUE) {
            return true;
        }
        if (reduce == constraintFormula) {
            throw new IllegalStateException("Failed to reduce constraint formula");
        }
        if (reduce != null) {
            if (reduce instanceof ConstraintFormula) {
                if (!reduceOneConstraint(inferenceContext18, (ConstraintFormula) reduce)) {
                    return false;
                }
            } else if (reduce instanceof ConstraintFormula[]) {
                ConstraintFormula[] constraintFormulaArr = (ConstraintFormula[]) reduce;
                for (ConstraintFormula constraintFormula2 : constraintFormulaArr) {
                    if (!reduceOneConstraint(inferenceContext18, constraintFormula2)) {
                        return false;
                    }
                }
            } else {
                addBound((TypeBound) reduce, inferenceContext18.environment);
            }
        }
        return true;
    }

    public TypeBinding[] superTypesWithCommonGenericType(TypeBinding typeBinding, TypeBinding typeBinding2) {
        if (typeBinding != null && typeBinding.f102482id != 1 && typeBinding2 != null && typeBinding2.f102482id != 1) {
            if (TypeBinding.equalsEquals(typeBinding.original(), typeBinding2.original())) {
                return new TypeBinding[]{typeBinding, typeBinding2};
            }
            TypeBinding findSuperTypeOriginatingFrom = typeBinding2.findSuperTypeOriginatingFrom(typeBinding);
            if (findSuperTypeOriginatingFrom != null) {
                return new TypeBinding[]{typeBinding, findSuperTypeOriginatingFrom};
            }
            TypeBinding[] superTypesWithCommonGenericType = superTypesWithCommonGenericType(typeBinding.superclass(), typeBinding2);
            if (superTypesWithCommonGenericType != null) {
                return superTypesWithCommonGenericType;
            }
            ReferenceBinding[] superInterfaces = typeBinding.superInterfaces();
            if (superInterfaces != null) {
                for (ReferenceBinding referenceBinding : superInterfaces) {
                    TypeBinding[] superTypesWithCommonGenericType2 = superTypesWithCommonGenericType(referenceBinding, typeBinding2);
                    if (superTypesWithCommonGenericType2 != null) {
                        return superTypesWithCommonGenericType2;
                    }
                }
            }
        }
        return null;
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer("Type Bounds:\n");
        for (TypeBound typeBound : flatten()) {
            stringBuffer.append('\t');
            stringBuffer.append(typeBound.toString());
            stringBuffer.append('\n');
        }
        stringBuffer.append("Capture Bounds:\n");
        for (Map.Entry<ParameterizedTypeBinding, ParameterizedTypeBinding> entry : this.captures.entrySet()) {
            String valueOf = String.valueOf(entry.getKey().shortReadableName());
            String valueOf2 = String.valueOf(entry.getValue().shortReadableName());
            stringBuffer.append('\t');
            stringBuffer.append(valueOf);
            stringBuffer.append(" = capt(");
            stringBuffer.append(valueOf2);
            stringBuffer.append(")\n");
        }
        return stringBuffer.toString();
    }

    public TypeBinding[] upperBounds(InferenceVariable inferenceVariable, boolean z10) {
        ThreeSets threeSets = this.boundsPerVariable.get(inferenceVariable.prototype());
        return (threeSets == null || threeSets.subBounds == null) ? Binding.NO_TYPES : threeSets.upperBounds(z10, inferenceVariable);
    }

    public void addBounds(BoundSet boundSet, LookupEnvironment lookupEnvironment) {
        if (boundSet == null || lookupEnvironment == null) {
            return;
        }
        addBounds(boundSet.flatten(), lookupEnvironment);
    }

    /* JADX WARN: Code restructure failed: missing block: B:41:0x0294, code lost:
    
        if (org.eclipse.jdt.internal.compiler.lookup.TypeBinding.equalsEquals(r11.right, r12.left) != false) goto L133;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x02a5, code lost:
    
        if (org.eclipse.jdt.internal.compiler.lookup.TypeBinding.equalsEquals(r11.left, r12.right) != false) goto L133;
     */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0217  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x024a  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x02bf  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x02c7  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x02e0  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x02e7  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x02f7 A[ADDED_TO_REGION, EDGE_INSN: B:66:0x02f7->B:64:0x02f7 BREAK  A[LOOP:2: B:12:0x01b0->B:62:0x02ec], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:67:0x02dc  */
    /* JADX WARN: Removed duplicated region for block: B:68:0x02c4  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x0246  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean incorporate(InferenceContext18 inferenceContext18, TypeBound[] typeBoundArr, TypeBound[] typeBoundArr2) throws InferenceFailureException {
        int i10;
        int i11;
        TypeVariableBinding[] typeVariableBindingArr;
        InferenceSubstitution inferenceSubstitution;
        TypeBinding typeBinding;
        TypeVariableBinding typeVariableBinding;
        int i12;
        TypeBinding createIntersectionType18;
        ConstraintTypeFormula combineEqualSupers;
        boolean equalsEquals;
        int i13;
        boolean z10;
        ConstraintTypeFormula[] constraintTypeFormulaArr;
        int i14;
        int i15;
        ConstraintTypeFormula[] deriveTypeArgumentConstraints;
        int i16;
        boolean z11 = inferenceContext18.environment.globalOptions.isAnnotationBasedNullAnalysisEnabled;
        ConstraintTypeFormula[] constraintTypeFormulaArr2 = new ConstraintTypeFormula[4];
        int length = typeBoundArr.length;
        boolean z12 = false;
        int i17 = 0;
        while (true) {
            boolean z13 = true;
            if (i17 >= length) {
                for (Map.Entry<ParameterizedTypeBinding, ParameterizedTypeBinding> entry : this.captures.entrySet()) {
                    ParameterizedTypeBinding key = entry.getKey();
                    ParameterizedTypeBinding value = entry.getValue();
                    final TypeVariableBinding[] typeVariables = ((ReferenceBinding) value.original()).typeVariables();
                    TypeBinding[] typeBindingArr = key.arguments;
                    int length2 = typeBindingArr.length;
                    InferenceVariable[] inferenceVariableArr = new InferenceVariable[length2];
                    System.arraycopy(typeBindingArr, z12 ? 1 : 0, inferenceVariableArr, z12 ? 1 : 0, length2);
                    InferenceSubstitution inferenceSubstitution2 = r5;
                    InferenceSubstitution inferenceSubstitution3 = new InferenceSubstitution(inferenceContext18.environment, inferenceVariableArr, inferenceContext18.currentInvocation) {
                        @Override
                        public TypeBinding getP(int i18) {
                            return typeVariables[i18];
                        }
                    };
                    int length3 = typeVariables.length;
                    int i18 = z12 ? 1 : 0;
                    while (i18 < length3) {
                        TypeVariableBinding typeVariableBinding2 = typeVariables[i18];
                        InferenceVariable inferenceVariable = (InferenceVariable) key.arguments[i18];
                        addBounds(typeVariableBinding2.getTypeBounds(inferenceVariable, inferenceSubstitution2), inferenceContext18.environment);
                        TypeBinding typeBinding2 = value.arguments[i18];
                        if (typeBinding2 instanceof WildcardBinding) {
                            WildcardBinding wildcardBinding = (WildcardBinding) typeBinding2;
                            TypeBinding typeBinding3 = wildcardBinding.bound;
                            ThreeSets threeSets = this.boundsPerVariable.get(inferenceVariable.prototype());
                            if (threeSets != null) {
                                Set<TypeBound> set = threeSets.sameBounds;
                                if (set != null) {
                                    Iterator<TypeBound> it = set.iterator();
                                    while (it.hasNext()) {
                                        if (!(it.next().right instanceof InferenceVariable)) {
                                            return z12;
                                        }
                                    }
                                }
                                Set<TypeBound> set2 = threeSets.subBounds;
                                if (set2 != null) {
                                    TypeBinding typeBinding4 = typeVariableBinding2.firstBound;
                                    if (typeBinding4 == null) {
                                        typeBinding4 = inferenceContext18.object;
                                    }
                                    Iterator<TypeBound> it2 = set2.iterator();
                                    while (it2.hasNext()) {
                                        TypeBinding typeBinding5 = it2.next().right;
                                        if (!(typeBinding5 instanceof InferenceVariable)) {
                                            ReferenceBinding[] referenceBindingArr = typeVariableBinding2.superInterfaces;
                                            if (referenceBindingArr == Binding.NO_SUPERINTERFACES) {
                                                typeBinding = typeBinding3;
                                                typeVariableBinding = typeVariableBinding2;
                                                i12 = i18;
                                                createIntersectionType18 = typeBinding4;
                                            } else {
                                                int length4 = referenceBindingArr.length;
                                                typeBinding = typeBinding3;
                                                ReferenceBinding[] referenceBindingArr2 = new ReferenceBinding[length4 + 1];
                                                typeVariableBinding = typeVariableBinding2;
                                                referenceBindingArr2[0] = (ReferenceBinding) typeBinding4;
                                                i12 = i18;
                                                System.arraycopy(referenceBindingArr, 0, referenceBindingArr2, 1, length4);
                                                createIntersectionType18 = inferenceContext18.environment.createIntersectionType18(referenceBindingArr2);
                                            }
                                            TypeBinding typeBinding6 = typeBinding;
                                            addTypeBoundsFromWildcardBound(inferenceContext18, inferenceSubstitution2, wildcardBinding.boundKind, typeBinding6, typeBinding5, createIntersectionType18);
                                            typeBinding3 = typeBinding6;
                                            wildcardBinding = wildcardBinding;
                                            i18 = i12;
                                            typeVariableBinding2 = typeVariableBinding;
                                            typeVariables = typeVariables;
                                            inferenceSubstitution2 = inferenceSubstitution2;
                                            length3 = length3;
                                        }
                                    }
                                }
                                TypeBinding typeBinding7 = typeBinding3;
                                i10 = i18;
                                i11 = length3;
                                typeVariableBindingArr = typeVariables;
                                inferenceSubstitution = inferenceSubstitution2;
                                WildcardBinding wildcardBinding2 = wildcardBinding;
                                Set<TypeBound> set3 = threeSets.superBounds;
                                if (set3 != null) {
                                    Iterator<TypeBound> it3 = set3.iterator();
                                    while (it3.hasNext()) {
                                        TypeBinding typeBinding8 = it3.next().right;
                                        if (!(typeBinding8 instanceof InferenceVariable)) {
                                            if (wildcardBinding2.boundKind != 2) {
                                                return false;
                                            }
                                            reduceOneConstraint(inferenceContext18, ConstraintTypeFormula.create(typeBinding8, typeBinding7, 2));
                                        }
                                    }
                                } else {
                                    continue;
                                }
                            } else {
                                i10 = i18;
                                i11 = length3;
                                typeVariableBindingArr = typeVariables;
                                inferenceSubstitution = inferenceSubstitution2;
                            }
                        } else {
                            i10 = i18;
                            i11 = length3;
                            typeVariableBindingArr = typeVariables;
                            inferenceSubstitution = inferenceSubstitution2;
                            addBound(new TypeBound(inferenceVariable, typeBinding2, 4), inferenceContext18.environment);
                        }
                        i18 = i10 + 1;
                        typeVariables = typeVariableBindingArr;
                        inferenceSubstitution2 = inferenceSubstitution;
                        length3 = i11;
                        z12 = false;
                        z13 = true;
                    }
                }
                this.captures.clear();
                return z13;
            }
            TypeBound typeBound = typeBoundArr[i17];
            int length5 = typeBoundArr2.length;
            TypeBound typeBound2 = typeBound;
            int i19 = 0;
            while (i19 < length5) {
                TypeBound typeBound3 = typeBoundArr2[i19];
                if (typeBound2 == typeBound3) {
                    z10 = z11;
                    constraintTypeFormulaArr = constraintTypeFormulaArr2;
                    i13 = length;
                    i14 = i17;
                    i15 = i19;
                } else {
                    TypeBound typeBound4 = typeBound3;
                    int i20 = 2;
                    TypeBound typeBound5 = typeBound2;
                    int i21 = 1;
                    while (true) {
                        if (i21 == i20) {
                            TypeBound typeBound6 = typeBound4;
                            typeBound4 = typeBound5;
                            typeBound5 = typeBound6;
                        }
                        int i22 = typeBound5.relation;
                        if (i22 == i20) {
                            int i23 = typeBound4.relation;
                            if (i23 == 2) {
                                combineEqualSupers = combineEqualSupers(typeBound5, typeBound4);
                                equalsEquals = TypeBinding.equalsEquals(typeBound5.left, typeBound4.left);
                                if (combineEqualSupers != null) {
                                }
                                if (combineEqualSupers != null) {
                                }
                                z10 = z11;
                                constraintTypeFormulaArr = constraintTypeFormulaArr2;
                                i14 = i17;
                                i15 = i19;
                                if (equalsEquals) {
                                }
                                if (deriveTypeArgumentConstraints != null) {
                                }
                                if (i21 == i16) {
                                }
                                if (typeBoundArr != typeBoundArr2) {
                                }
                            } else {
                                if (i23 != 3) {
                                    if (i23 == 4) {
                                        combineEqualSupers = combineSameSubSuper(typeBound4, typeBound5);
                                    }
                                    combineEqualSupers = null;
                                } else {
                                    combineEqualSupers = combineSuperAndSub(typeBound4, typeBound5);
                                }
                                equalsEquals = false;
                                if (combineEqualSupers != null) {
                                }
                                if (combineEqualSupers != null) {
                                }
                                z10 = z11;
                                constraintTypeFormulaArr = constraintTypeFormulaArr2;
                                i14 = i17;
                                i15 = i19;
                                if (equalsEquals) {
                                }
                                if (deriveTypeArgumentConstraints != null) {
                                }
                                if (i21 == i16) {
                                }
                                if (typeBoundArr != typeBoundArr2) {
                                }
                            }
                        } else if (i22 == 3) {
                            int i24 = typeBound4.relation;
                            if (i24 == 2) {
                                combineEqualSupers = combineSuperAndSub(typeBound5, typeBound4);
                            } else if (i24 != 3) {
                                if (i24 == 4) {
                                    combineEqualSupers = combineSameSubSuper(typeBound4, typeBound5);
                                }
                                combineEqualSupers = null;
                            } else {
                                combineEqualSupers = combineEqualSupers(typeBound5, typeBound4);
                            }
                            equalsEquals = false;
                            if (combineEqualSupers != null) {
                            }
                            if (combineEqualSupers != null) {
                            }
                            z10 = z11;
                            constraintTypeFormulaArr = constraintTypeFormulaArr2;
                            i14 = i17;
                            i15 = i19;
                            if (equalsEquals) {
                            }
                            if (deriveTypeArgumentConstraints != null) {
                            }
                            if (i21 == i16) {
                            }
                            if (typeBoundArr != typeBoundArr2) {
                            }
                        } else {
                            if (i22 == 4) {
                                int i25 = typeBound4.relation;
                                if (i25 == i20 || i25 == 3) {
                                    combineEqualSupers = combineSameSubSuper(typeBound5, typeBound4);
                                } else if (i25 == 4) {
                                    combineEqualSupers = combineSameSame(typeBound5, typeBound4);
                                }
                                equalsEquals = false;
                                if (combineEqualSupers != null) {
                                    i13 = length;
                                    if (combineEqualSupers.left == combineEqualSupers.right || combineEqualSupers.equalsEquals(constraintTypeFormulaArr2[0]) || combineEqualSupers.equalsEquals(constraintTypeFormulaArr2[1]) || combineEqualSupers.equalsEquals(constraintTypeFormulaArr2[2]) || combineEqualSupers.equalsEquals(constraintTypeFormulaArr2[3])) {
                                        combineEqualSupers = null;
                                    }
                                } else {
                                    i13 = length;
                                }
                                if (combineEqualSupers != null) {
                                    constraintTypeFormulaArr2[3] = constraintTypeFormulaArr2[2];
                                    constraintTypeFormulaArr2[2] = constraintTypeFormulaArr2[1];
                                    constraintTypeFormulaArr2[1] = constraintTypeFormulaArr2[0];
                                    constraintTypeFormulaArr2[0] = combineEqualSupers;
                                    if (!reduceOneConstraint(inferenceContext18, combineEqualSupers)) {
                                        return false;
                                    }
                                    if (z11) {
                                        z10 = z11;
                                        constraintTypeFormulaArr = constraintTypeFormulaArr2;
                                        long j10 = combineEqualSupers.left.tagBits;
                                        TypeBinding typeBinding9 = combineEqualSupers.right;
                                        i14 = i17;
                                        long j11 = (j10 | typeBinding9.tagBits) & TagBits.AnnotationNullMASK;
                                        if (j11 != 0) {
                                            if (!TypeBinding.equalsEquals(typeBound5.left, typeBound4.left)) {
                                                if (typeBound5.relation == 4) {
                                                }
                                                if (typeBound4.relation == 4) {
                                                }
                                            }
                                            i15 = i19;
                                            typeBound5.nullHints |= j11;
                                            typeBound4.nullHints = j11 | typeBound4.nullHints;
                                            deriveTypeArgumentConstraints = equalsEquals ? deriveTypeArgumentConstraints(typeBound5, typeBound4) : null;
                                            if (deriveTypeArgumentConstraints != null) {
                                                for (ConstraintTypeFormula constraintTypeFormula : deriveTypeArgumentConstraints) {
                                                    if (!reduceOneConstraint(inferenceContext18, constraintTypeFormula)) {
                                                        return false;
                                                    }
                                                }
                                                i16 = 2;
                                            } else {
                                                i16 = 2;
                                            }
                                            if (i21 == i16) {
                                                TypeBound typeBound7 = typeBound4;
                                                typeBound4 = typeBound5;
                                                typeBound5 = typeBound7;
                                            }
                                            if (typeBoundArr != typeBoundArr2 || (i21 = i21 + 1) > i16) {
                                                break;
                                            }
                                            i19 = i15;
                                            i17 = i14;
                                            constraintTypeFormulaArr2 = constraintTypeFormulaArr;
                                            length = i13;
                                            i20 = i16;
                                            z11 = z10;
                                        }
                                        i15 = i19;
                                        if (equalsEquals) {
                                        }
                                        if (deriveTypeArgumentConstraints != null) {
                                        }
                                        if (i21 == i16) {
                                        }
                                        if (typeBoundArr != typeBoundArr2) {
                                            break;
                                        }
                                        break;
                                    }
                                }
                                z10 = z11;
                                constraintTypeFormulaArr = constraintTypeFormulaArr2;
                                i14 = i17;
                                i15 = i19;
                                if (equalsEquals) {
                                }
                                if (deriveTypeArgumentConstraints != null) {
                                }
                                if (i21 == i16) {
                                }
                                if (typeBoundArr != typeBoundArr2) {
                                }
                            }
                            combineEqualSupers = null;
                            equalsEquals = false;
                            if (combineEqualSupers != null) {
                            }
                            if (combineEqualSupers != null) {
                            }
                            z10 = z11;
                            constraintTypeFormulaArr = constraintTypeFormulaArr2;
                            i14 = i17;
                            i15 = i19;
                            if (equalsEquals) {
                            }
                            if (deriveTypeArgumentConstraints != null) {
                            }
                            if (i21 == i16) {
                            }
                            if (typeBoundArr != typeBoundArr2) {
                            }
                        }
                    }
                    typeBound2 = typeBound5;
                }
                i19 = i15 + 1;
                i17 = i14;
                z11 = z10;
                constraintTypeFormulaArr2 = constraintTypeFormulaArr;
                length = i13;
            }
            i17++;
            z12 = false;
        }
    }
}
