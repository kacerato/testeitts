package org.eclipse.jdt.internal.compiler.lookup;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.ast.ASTNode;
import org.eclipse.jdt.internal.compiler.ast.AbstractMethodDeclaration;
import org.eclipse.jdt.internal.compiler.ast.Argument;
import org.eclipse.jdt.internal.compiler.ast.MethodDeclaration;
import org.eclipse.jdt.internal.compiler.ast.NullAnnotationMatching;
import org.eclipse.jdt.internal.compiler.impl.CompilerOptions;

public class ImplicitNullAnnotationVerifier {
    ImplicitNullAnnotationVerifier buddyImplicitNullAnnotationsVerifier;
    protected LookupEnvironment environment;
    private boolean inheritNullAnnotations;

    public static class InheritedNonNullnessInfo {
        MethodBinding annotationOrigin;
        boolean complained;
        Boolean inheritedNonNullness;
    }

    public ImplicitNullAnnotationVerifier(LookupEnvironment lookupEnvironment, boolean z10) {
        this.buddyImplicitNullAnnotationsVerifier = this;
        this.inheritNullAnnotations = z10;
        this.environment = lookupEnvironment;
    }

    public static boolean areParametersEqual(MethodBinding methodBinding, MethodBinding methodBinding2) {
        TypeBinding[] typeBindingArr = methodBinding.parameters;
        TypeBinding[] typeBindingArr2 = methodBinding2.parameters;
        if (typeBindingArr == typeBindingArr2) {
            return true;
        }
        int length = typeBindingArr.length;
        if (length != typeBindingArr2.length) {
            return false;
        }
        int i10 = 0;
        while (true) {
            if (i10 >= length) {
                break;
            }
            if (areTypesEqual(typeBindingArr[i10], typeBindingArr2[i10])) {
                i10++;
            } else {
                if (!typeBindingArr[i10].leafComponentType().isRawType() || typeBindingArr[i10].dimensions() != typeBindingArr2[i10].dimensions() || !typeBindingArr[i10].leafComponentType().isEquivalentTo(typeBindingArr2[i10].leafComponentType()) || methodBinding.typeVariables != Binding.NO_TYPE_VARIABLES) {
                    return false;
                }
                for (int i11 = 0; i11 < i10; i11++) {
                    if (typeBindingArr[i11].leafComponentType().isParameterizedTypeWithActualArguments()) {
                        return false;
                    }
                }
            }
        }
        for (int i12 = i10 + 1; i12 < length; i12++) {
            if (areTypesEqual(typeBindingArr[i12], typeBindingArr2[i12])) {
                if (typeBindingArr[i12].leafComponentType().isParameterizedTypeWithActualArguments()) {
                    return false;
                }
            } else if (!typeBindingArr[i12].leafComponentType().isRawType() || typeBindingArr[i12].dimensions() != typeBindingArr2[i12].dimensions() || !typeBindingArr[i12].leafComponentType().isEquivalentTo(typeBindingArr2[i12].leafComponentType())) {
                return false;
            }
        }
        return true;
    }

    public static boolean areTypesEqual(TypeBinding typeBinding, TypeBinding typeBinding2) {
        if (TypeBinding.equalsEquals(typeBinding, typeBinding2)) {
            return true;
        }
        int kind = typeBinding.kind();
        if (kind == 4) {
            int kind2 = typeBinding2.kind();
            if ((kind2 == 260 || kind2 == 1028) && TypeBinding.equalsEquals(typeBinding, typeBinding2.erasure())) {
                return true;
            }
        } else if ((kind == 260 || kind == 1028) && typeBinding2.kind() == 4 && TypeBinding.equalsEquals(typeBinding.erasure(), typeBinding2)) {
            return true;
        }
        return typeBinding.isParameterizedType() && typeBinding2.isParameterizedType() && typeBinding.isEquivalentTo(typeBinding2) && typeBinding2.isEquivalentTo(typeBinding);
    }

    private void collectOverriddenMethods(MethodBinding methodBinding, char[] cArr, int i10, ReferenceBinding referenceBinding, Set set, List list) {
        boolean z10 = false;
        for (MethodBinding methodBinding2 : referenceBinding.unResolvedMethods()) {
            if (CharOperation.equals(cArr, methodBinding2.selector) && methodBinding2.doesParameterLengthMatch(i10) && !methodBinding2.isStatic() && MethodVerifier.doesMethodOverride(methodBinding, methodBinding2, this.environment)) {
                list.add(methodBinding2);
                z10 = true;
            }
        }
        if (z10) {
            return;
        }
        findAllOverriddenMethods(methodBinding, cArr, i10, referenceBinding, set, list);
    }

    public static void ensureNullnessIsKnown(MethodBinding methodBinding, Scope scope) {
        if ((methodBinding.tagBits & 4096) == 0) {
            LookupEnvironment environment = scope.environment();
            new ImplicitNullAnnotationVerifier(environment, environment.globalOptions.inheritNullAnnotations).checkImplicitNullAnnotations(methodBinding, null, false, scope);
        }
    }

    private void findAllOverriddenMethods(MethodBinding methodBinding, char[] cArr, int i10, ReferenceBinding referenceBinding, Set set, List list) {
        ReferenceBinding superclass;
        if (referenceBinding.f102482id == 1 || (superclass = referenceBinding.superclass()) == null) {
            return;
        }
        collectOverriddenMethods(methodBinding, cArr, i10, superclass, set, list);
        for (ReferenceBinding referenceBinding2 : referenceBinding.superInterfaces()) {
            if (set.add(referenceBinding2.original())) {
                collectOverriddenMethods(methodBinding, cArr, i10, referenceBinding2, set, list);
            }
        }
    }

    private Boolean getParameterNonNullness(MethodBinding methodBinding, int i10, boolean z10) {
        if (!z10) {
            Boolean[] boolArr = methodBinding.parameterNonNullness;
            if (boolArr == null) {
                return null;
            }
            return boolArr[i10];
        }
        TypeBinding typeBinding = methodBinding.parameters[i10];
        if (typeBinding != null) {
            long validNullTagBits = NullAnnotationMatching.validNullTagBits(typeBinding.tagBits);
            if (validNullTagBits != 0) {
                return Boolean.valueOf(validNullTagBits == 72057594037927936L);
            }
        }
        return null;
    }

    private long getReturnTypeNullnessTagBits(MethodBinding methodBinding, boolean z10) {
        if (!z10) {
            return methodBinding.tagBits & TagBits.AnnotationNullMASK;
        }
        TypeBinding typeBinding = methodBinding.returnType;
        if (typeBinding == null) {
            return 0L;
        }
        return NullAnnotationMatching.validNullTagBits(typeBinding.tagBits);
    }

    public void applyReturnNullBits(MethodBinding methodBinding, long j10) {
        if (!this.environment.usesNullTypeAnnotations()) {
            methodBinding.tagBits = j10 | methodBinding.tagBits;
        } else {
            if (methodBinding.returnType.isBaseType()) {
                return;
            }
            LookupEnvironment lookupEnvironment = this.environment;
            methodBinding.returnType = lookupEnvironment.createAnnotatedType(methodBinding.returnType, lookupEnvironment.nullAnnotationsFromTagBits(j10));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:53:0x00b7  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void checkImplicitNullAnnotations(MethodBinding methodBinding, AbstractMethodDeclaration abstractMethodDeclaration, boolean z10, Scope scope) {
        ParameterNonNullDefaultProvider parameterNonNullDefaultProvider;
        boolean z11;
        long j10;
        InheritedNonNullnessInfo[] inheritedNonNullnessInfoArr;
        Boolean bool;
        long j11;
        long j12;
        int i10;
        long j13 = 4096;
        try {
            ReferenceBinding referenceBinding = methodBinding.declaringClass;
            boolean z12 = true;
            if (referenceBinding.f102482id != 1) {
                boolean usesNullTypeAnnotations = scope.environment().usesNullTypeAnnotations();
                boolean hasNonNullDefaultForReturnType = methodBinding.hasNonNullDefaultForReturnType(abstractMethodDeclaration);
                ParameterNonNullDefaultProvider hasNonNullDefaultForParameter = methodBinding.hasNonNullDefaultForParameter(abstractMethodDeclaration);
                int hasAnyNonNullDefault = hasNonNullDefaultForReturnType | hasNonNullDefaultForParameter.hasAnyNonNullDefault();
                if (methodBinding.isConstructor() || methodBinding.isStatic()) {
                    z12 = false;
                }
                boolean z13 = z10 & z12;
                if (hasAnyNonNullDefault != 0 || z13 || (this.inheritNullAnnotations && z12)) {
                    if (z12) {
                        ArrayList arrayList = new ArrayList();
                        if ((referenceBinding instanceof SourceTypeBinding) && !referenceBinding.isHierarchyConnected() && !referenceBinding.isAnonymousType()) {
                            ((SourceTypeBinding) referenceBinding).scope.connectTypeHierarchy();
                        }
                        int length = methodBinding.parameters.length;
                        ArrayList arrayList2 = arrayList;
                        int i11 = hasAnyNonNullDefault;
                        int i12 = 0;
                        findAllOverriddenMethods(methodBinding.original(), methodBinding.selector, length, referenceBinding, new HashSet(), arrayList2);
                        int i13 = length;
                        int i14 = i13 + 1;
                        InheritedNonNullnessInfo[] inheritedNonNullnessInfoArr2 = new InheritedNonNullnessInfo[i14];
                        int i15 = 0;
                        while (i15 < i14) {
                            InheritedNonNullnessInfo[] inheritedNonNullnessInfoArr3 = inheritedNonNullnessInfoArr2;
                            inheritedNonNullnessInfoArr3[i15] = new InheritedNonNullnessInfo();
                            i15++;
                            hasNonNullDefaultForParameter = hasNonNullDefaultForParameter;
                            hasNonNullDefaultForReturnType = hasNonNullDefaultForReturnType;
                            i12 = i12;
                            inheritedNonNullnessInfoArr2 = inheritedNonNullnessInfoArr3;
                            arrayList2 = arrayList2;
                            i13 = i13;
                            j13 = 4096;
                        }
                        int size = arrayList2.size();
                        while (true) {
                            int i16 = size - 1;
                            if (i16 < 0) {
                                break;
                            }
                            InheritedNonNullnessInfo[] inheritedNonNullnessInfoArr4 = inheritedNonNullnessInfoArr2;
                            ArrayList arrayList3 = arrayList2;
                            MethodBinding methodBinding2 = (MethodBinding) arrayList3.get(i16);
                            ParameterNonNullDefaultProvider parameterNonNullDefaultProvider2 = hasNonNullDefaultForParameter;
                            if ((methodBinding2.tagBits & j13) == 0) {
                                i10 = 0;
                                checkImplicitNullAnnotations(methodBinding2, null, false, scope);
                            } else {
                                i10 = 0;
                            }
                            checkNullSpecInheritance(methodBinding, abstractMethodDeclaration, hasNonNullDefaultForReturnType, parameterNonNullDefaultProvider2, z13, methodBinding2, null, scope, inheritedNonNullnessInfoArr4);
                            hasNonNullDefaultForParameter = parameterNonNullDefaultProvider2;
                            hasNonNullDefaultForReturnType = hasNonNullDefaultForReturnType;
                            i12 = i10;
                            i11 = i12;
                            size = i16;
                            inheritedNonNullnessInfoArr2 = inheritedNonNullnessInfoArr4;
                            arrayList2 = arrayList3;
                            i13 = i13;
                            j13 = 4096;
                        }
                        InheritedNonNullnessInfo inheritedNonNullnessInfo = inheritedNonNullnessInfoArr2[i12];
                        if (!inheritedNonNullnessInfo.complained) {
                            Boolean bool2 = inheritedNonNullnessInfo.inheritedNonNullness;
                            if (bool2 == Boolean.TRUE) {
                                j12 = 72057594037927936L;
                            } else if (bool2 == Boolean.FALSE) {
                                j12 = 36028797018963968L;
                            } else {
                                j11 = 0;
                                if (j11 != 0) {
                                    if (!usesNullTypeAnnotations) {
                                        methodBinding.tagBits |= j11;
                                    } else if (!methodBinding.returnType.isBaseType()) {
                                        LookupEnvironment environment = scope.environment();
                                        methodBinding.returnType = environment.createAnnotatedType(methodBinding.returnType, environment.nullAnnotationsFromTagBits(j11));
                                    }
                                }
                            }
                            j11 = j12;
                            if (j11 != 0) {
                            }
                        }
                        while (i12 < i13) {
                            int i17 = i12 + 1;
                            InheritedNonNullnessInfo inheritedNonNullnessInfo2 = inheritedNonNullnessInfoArr2[i17];
                            if (inheritedNonNullnessInfo2.complained || (bool = inheritedNonNullnessInfo2.inheritedNonNullness) == null) {
                                inheritedNonNullnessInfoArr = inheritedNonNullnessInfoArr2;
                            } else {
                                Argument argument = abstractMethodDeclaration == null ? null : abstractMethodDeclaration.arguments[i12];
                                if (usesNullTypeAnnotations) {
                                    inheritedNonNullnessInfoArr = inheritedNonNullnessInfoArr2;
                                    recordArgNonNullness18(methodBinding, i12, argument, bool, scope.environment());
                                } else {
                                    inheritedNonNullnessInfoArr = inheritedNonNullnessInfoArr2;
                                    recordArgNonNullness(methodBinding, i13, i12, argument, bool);
                                }
                            }
                            i12 = i17;
                            inheritedNonNullnessInfoArr2 = inheritedNonNullnessInfoArr;
                        }
                        parameterNonNullDefaultProvider = hasNonNullDefaultForParameter;
                        z11 = hasNonNullDefaultForReturnType;
                        hasAnyNonNullDefault = i11;
                    } else {
                        parameterNonNullDefaultProvider = hasNonNullDefaultForParameter;
                        z11 = hasNonNullDefaultForReturnType;
                    }
                    if (hasAnyNonNullDefault != 0) {
                        if (usesNullTypeAnnotations) {
                            methodBinding.fillInDefaultNonNullness18(abstractMethodDeclaration, scope.environment());
                        } else {
                            methodBinding.fillInDefaultNonNullness(abstractMethodDeclaration, z11, parameterNonNullDefaultProvider);
                        }
                    }
                    j10 = methodBinding.tagBits | 4096;
                    methodBinding.tagBits = j10;
                }
            }
            j10 = methodBinding.tagBits | 4096;
            methodBinding.tagBits = j10;
        } finally {
            methodBinding.tagBits |= 4096;
        }
    }

    public void checkNullSpecInheritance(MethodBinding methodBinding, AbstractMethodDeclaration abstractMethodDeclaration, boolean z10, ParameterNonNullDefaultProvider parameterNonNullDefaultProvider, boolean z11, MethodBinding methodBinding2, MethodBinding[] methodBindingArr, Scope scope, InheritedNonNullnessInfo[] inheritedNonNullnessInfoArr) {
        boolean z12;
        Boolean bool;
        Argument argument;
        int i10;
        int i11;
        int i12;
        TypeVariableBinding[] typeVariableBindingArr;
        AbstractMethodDeclaration abstractMethodDeclaration2 = abstractMethodDeclaration;
        if (methodBinding.declaringClass.f102482id == 1) {
            return;
        }
        if ((methodBinding2.tagBits & 4096) == 0) {
            this.buddyImplicitNullAnnotationsVerifier.checkImplicitNullAnnotations(methodBinding2, null, false, scope);
        }
        boolean usesNullTypeAnnotations = this.environment.usesNullTypeAnnotations();
        long returnTypeNullnessTagBits = getReturnTypeNullnessTagBits(methodBinding2, usesNullTypeAnnotations);
        long returnTypeNullnessTagBits2 = getReturnTypeNullnessTagBits(methodBinding, usesNullTypeAnnotations);
        boolean z13 = this.inheritNullAnnotations;
        TypeBinding typeBinding = methodBinding.returnType;
        if (typeBinding == null || typeBinding.isBaseType()) {
            z12 = z13;
        } else {
            if (returnTypeNullnessTagBits2 != 0) {
                z12 = z13;
            } else if (!z13 || returnTypeNullnessTagBits == 0) {
                z12 = z13;
                if (z10 && (!usesNullTypeAnnotations || methodBinding.returnType.acceptsNonNullDefault())) {
                    applyReturnNullBits(methodBinding, 72057594037927936L);
                    returnTypeNullnessTagBits2 = 72057594037927936L;
                }
            } else {
                if (z10 && z11 && returnTypeNullnessTagBits == 36028797018963968L) {
                    scope.problemReporter().conflictingNullAnnotations(methodBinding, ((MethodDeclaration) abstractMethodDeclaration2).returnType, methodBinding2);
                }
                if (inheritedNonNullnessInfoArr == null || abstractMethodDeclaration2 == null) {
                    z12 = z13;
                    applyReturnNullBits(methodBinding, returnTypeNullnessTagBits);
                } else {
                    z12 = z13;
                    recordDeferredInheritedNullness(scope, ((MethodDeclaration) abstractMethodDeclaration2).returnType, methodBinding2, Boolean.valueOf(returnTypeNullnessTagBits == 72057594037927936L), inheritedNonNullnessInfoArr[0]);
                }
            }
            if (z11) {
                if ((returnTypeNullnessTagBits & 72057594037927936L) != 0 && returnTypeNullnessTagBits2 != 72057594037927936L) {
                    if (abstractMethodDeclaration2 == null) {
                        scope.problemReporter().cannotImplementIncompatibleNullness(scope.referenceContext(), methodBinding, methodBinding2, usesNullTypeAnnotations);
                        return;
                    }
                    scope.problemReporter().illegalReturnRedefinition(abstractMethodDeclaration2, methodBinding2, this.environment.getNonNullAnnotationName());
                } else if (usesNullTypeAnnotations) {
                    TypeVariableBinding[] typeVariableBindingArr2 = methodBinding2.original().typeVariables;
                    if (NullAnnotationMatching.analyse(methodBinding2.returnType, methodBinding.returnType, (typeVariableBindingArr2 == null || methodBinding.returnType.f102482id == 6) ? null : this.environment.createParameterizedGenericMethod(methodBinding, typeVariableBindingArr2).returnType, null, 0, null, NullAnnotationMatching.CheckMode.OVERRIDE_RETURN).isAnyMismatch()) {
                        if (abstractMethodDeclaration2 != null) {
                            scope.problemReporter().illegalReturnRedefinition(abstractMethodDeclaration2, methodBinding2, this.environment.getNonNullAnnotationName());
                            return;
                        } else {
                            scope.problemReporter().cannotImplementIncompatibleNullness(scope.referenceContext(), methodBinding, methodBinding2, usesNullTypeAnnotations);
                            return;
                        }
                    }
                }
            }
        }
        TypeBinding[] typeBindingArr = (!z11 || (typeVariableBindingArr = methodBinding.original().typeVariables) == Binding.NO_TYPE_VARIABLES) ? null : this.environment.createParameterizedGenericMethod(methodBinding2, typeVariableBindingArr).parameters;
        Argument[] argumentArr = abstractMethodDeclaration2 == null ? null : abstractMethodDeclaration2.arguments;
        int length = argumentArr != null ? argumentArr.length : 0;
        if (usesNullTypeAnnotations) {
            length = methodBinding.parameters.length;
        } else {
            Boolean[] boolArr = methodBinding2.parameterNonNullness;
            if (boolArr != null) {
                length = boolArr.length;
            } else {
                Boolean[] boolArr2 = methodBinding.parameterNonNullness;
                if (boolArr2 != null) {
                    length = boolArr2.length;
                }
            }
        }
        int i13 = 0;
        for (int i14 = length; i13 < i14; i14 = i11) {
            if (methodBinding.parameters[i13].isBaseType()) {
                i10 = i13;
                i11 = i14;
            } else {
                Argument argument2 = argumentArr == null ? null : argumentArr[i13];
                Boolean parameterNonNullness = getParameterNonNullness(methodBinding2, i13, usesNullTypeAnnotations);
                Boolean parameterNonNullness2 = getParameterNonNullness(methodBinding, i13, usesNullTypeAnnotations);
                if (parameterNonNullness2 != null) {
                    bool = parameterNonNullness;
                    argument = argument2;
                    i10 = i13;
                    i11 = i14;
                } else if (parameterNonNullness == null || !z12) {
                    bool = parameterNonNullness;
                    i11 = i14;
                    Argument argument3 = argument2;
                    if (parameterNonNullDefaultProvider.hasNonNullDefaultForParam(i13)) {
                        Boolean bool2 = Boolean.TRUE;
                        if (usesNullTypeAnnotations) {
                            i10 = i13;
                            argument = argument3;
                            if (methodBinding.parameters[i10].acceptsNonNullDefault()) {
                                recordArgNonNullness18(methodBinding, i10, argument, bool2, this.environment);
                            } else {
                                parameterNonNullness2 = null;
                            }
                        } else {
                            i10 = i13;
                            argument = argument3;
                            recordArgNonNullness(methodBinding, i11, i13, argument3, bool2);
                        }
                        parameterNonNullness2 = bool2;
                    } else {
                        i10 = i13;
                        argument = argument3;
                    }
                } else {
                    if (parameterNonNullDefaultProvider.hasNonNullDefaultForParam(i13) && z11 && parameterNonNullness == Boolean.FALSE && argument2 != null) {
                        scope.problemReporter().conflictingNullAnnotations(methodBinding, argument2, methodBinding2);
                    }
                    if (inheritedNonNullnessInfoArr == null || abstractMethodDeclaration2 == null) {
                        i12 = i13;
                        i11 = i14;
                        if (usesNullTypeAnnotations) {
                            recordArgNonNullness18(methodBinding, i12, argument2, parameterNonNullness, this.environment);
                        } else {
                            recordArgNonNullness(methodBinding, i11, i12, argument2, parameterNonNullness);
                        }
                    } else {
                        i12 = i13;
                        i11 = i14;
                        recordDeferredInheritedNullness(scope, abstractMethodDeclaration2.arguments[i13].type, methodBinding2, parameterNonNullness, inheritedNonNullnessInfoArr[i13 + 1]);
                    }
                    i10 = i12;
                }
                if (z11) {
                    Boolean bool3 = Boolean.TRUE;
                    Boolean bool4 = bool;
                    char[][] nonNullAnnotationName = bool4 == bool3 ? this.environment.getNonNullAnnotationName() : this.environment.getNullableAnnotationName();
                    if (bool4 == bool3 || parameterNonNullness2 != bool3) {
                        Argument argument4 = argument;
                        if (parameterNonNullness2 == null) {
                            if (bool4 == Boolean.FALSE) {
                                if (argument4 != null) {
                                    scope.problemReporter().parameterLackingNullableAnnotation(argument4, methodBinding2.declaringClass, nonNullAnnotationName);
                                } else {
                                    scope.problemReporter().cannotImplementIncompatibleNullness(scope.referenceContext(), methodBinding, methodBinding2, false);
                                    i13 = i10 + 1;
                                    abstractMethodDeclaration2 = abstractMethodDeclaration;
                                }
                            } else if (bool4 == bool3) {
                                if (methodBindingArr != null) {
                                    int length2 = methodBindingArr.length;
                                    int i15 = 0;
                                    while (i15 < length2) {
                                        MethodBinding methodBinding3 = methodBindingArr[i15];
                                        int i16 = length2;
                                        if (TypeBinding.equalsEquals(methodBinding2.declaringClass, methodBinding3.declaringClass) && getParameterNonNullness(methodBinding3, i10, usesNullTypeAnnotations) != Boolean.TRUE) {
                                            break;
                                        }
                                        i15++;
                                        length2 = i16;
                                    }
                                }
                                scope.problemReporter().parameterLackingNonnullAnnotation(argument4, methodBinding2.declaringClass, nonNullAnnotationName);
                            }
                        }
                        if (usesNullTypeAnnotations) {
                            TypeBinding typeBinding2 = methodBinding2.parameters[i10];
                            if (NullAnnotationMatching.analyse(methodBinding.parameters[i10], typeBinding2, typeBindingArr != null ? typeBindingArr[i10] : null, null, 0, null, NullAnnotationMatching.CheckMode.OVERRIDE).isAnyMismatch()) {
                                if (argument4 != null) {
                                    scope.problemReporter().illegalParameterRedefinition(argument4, methodBinding2.declaringClass, typeBinding2);
                                } else {
                                    scope.problemReporter().cannotImplementIncompatibleNullness(scope.referenceContext(), methodBinding, methodBinding2, false);
                                    i13 = i10 + 1;
                                    abstractMethodDeclaration2 = abstractMethodDeclaration;
                                }
                            }
                        }
                    } else {
                        Argument argument5 = argument;
                        if (argument5 != null) {
                            scope.problemReporter().illegalRedefinitionToNonNullParameter(argument5, methodBinding2.declaringClass, bool4 == null ? null : this.environment.getNullableAnnotationName());
                        } else {
                            scope.problemReporter().cannotImplementIncompatibleNullness(scope.referenceContext(), methodBinding, methodBinding2, false);
                            i13 = i10 + 1;
                            abstractMethodDeclaration2 = abstractMethodDeclaration;
                        }
                    }
                }
            }
            i13 = i10 + 1;
            abstractMethodDeclaration2 = abstractMethodDeclaration;
        }
        if (z11 && usesNullTypeAnnotations && abstractMethodDeclaration2 != null) {
            TypeVariableBinding[] typeVariables = methodBinding.typeVariables();
            TypeVariableBinding[] typeVariables2 = methodBinding2.typeVariables();
            if (typeVariables == Binding.NO_TYPE_VARIABLES || typeVariables.length != typeVariables2.length) {
                return;
            }
            for (int i17 = 0; i17 < typeVariables.length; i17++) {
                TypeVariableBinding typeVariableBinding = typeVariables2[i17];
                if (NullAnnotationMatching.analyse(typeVariableBinding, typeVariables[i17], null, null, -1, null, NullAnnotationMatching.CheckMode.BOUND_CHECK).isAnyMismatch()) {
                    scope.problemReporter().cannotRedefineTypeArgumentNullity(typeVariableBinding, methodBinding2, abstractMethodDeclaration.typeParameters()[i17]);
                }
            }
        }
    }

    public void recordArgNonNullness(MethodBinding methodBinding, int i10, int i11, Argument argument, Boolean bool) {
        if (methodBinding.parameterNonNullness == null) {
            methodBinding.parameterNonNullness = new Boolean[i10];
        }
        methodBinding.parameterNonNullness[i11] = bool;
        if (argument != null) {
            argument.binding.tagBits |= bool.booleanValue() ? 72057594037927936L : 36028797018963968L;
        }
    }

    public void recordArgNonNullness18(MethodBinding methodBinding, int i10, Argument argument, Boolean bool, LookupEnvironment lookupEnvironment) {
        AnnotationBinding nonNullAnnotation = bool.booleanValue() ? lookupEnvironment.getNonNullAnnotation() : lookupEnvironment.getNullableAnnotation();
        TypeBinding[] typeBindingArr = methodBinding.parameters;
        typeBindingArr[i10] = lookupEnvironment.createAnnotatedType(typeBindingArr[i10], new AnnotationBinding[]{nonNullAnnotation});
        if (argument != null) {
            argument.binding.type = methodBinding.parameters[i10];
        }
    }

    public void recordDeferredInheritedNullness(Scope scope, ASTNode aSTNode, MethodBinding methodBinding, Boolean bool, InheritedNonNullnessInfo inheritedNonNullnessInfo) {
        Boolean bool2 = inheritedNonNullnessInfo.inheritedNonNullness;
        if (bool2 == null || bool2 == bool) {
            inheritedNonNullnessInfo.inheritedNonNullness = bool;
            inheritedNonNullnessInfo.annotationOrigin = methodBinding;
        } else {
            scope.problemReporter().conflictingInheritedNullAnnotations(aSTNode, inheritedNonNullnessInfo.inheritedNonNullness.booleanValue(), inheritedNonNullnessInfo.annotationOrigin, bool.booleanValue(), methodBinding);
            inheritedNonNullnessInfo.complained = true;
        }
    }

    public ImplicitNullAnnotationVerifier(LookupEnvironment lookupEnvironment) {
        CompilerOptions compilerOptions = lookupEnvironment.globalOptions;
        this.buddyImplicitNullAnnotationsVerifier = new ImplicitNullAnnotationVerifier(lookupEnvironment, compilerOptions.inheritNullAnnotations);
        this.inheritNullAnnotations = compilerOptions.inheritNullAnnotations;
        this.environment = lookupEnvironment;
    }
}
