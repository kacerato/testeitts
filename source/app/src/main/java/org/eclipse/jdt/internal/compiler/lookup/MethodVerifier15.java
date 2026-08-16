package org.eclipse.jdt.internal.compiler.lookup;

import java.util.Arrays;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.ast.AbstractMethodDeclaration;
import org.eclipse.jdt.internal.compiler.ast.Argument;
import org.eclipse.jdt.internal.compiler.ast.MethodDeclaration;
import org.eclipse.jdt.internal.compiler.ast.TypeParameter;
import org.eclipse.jdt.internal.compiler.ast.TypeReference;
import org.eclipse.jdt.internal.compiler.classfmt.ClassFileConstants;
import org.eclipse.jdt.internal.compiler.impl.CompilerOptions;
import org.eclipse.jdt.internal.compiler.lookup.ImplicitNullAnnotationVerifier;
import org.eclipse.jdt.internal.compiler.problem.ProblemReporter;
import org.eclipse.jdt.internal.compiler.util.HashtableOfObject;
import org.eclipse.jdt.internal.compiler.util.SimpleSet;
import org.eclipse.jdt.internal.compiler.util.Sorting;

public class MethodVerifier15 extends MethodVerifier {
    public MethodVerifier15(LookupEnvironment lookupEnvironment) {
        super(lookupEnvironment);
    }

    @Override
    public boolean canOverridingMethodDifferInErasure(MethodBinding methodBinding, MethodBinding methodBinding2) {
        return (methodBinding.areParameterErasuresEqual(methodBinding2) || methodBinding.declaringClass.isRawType()) ? false : true;
    }

    @Override
    public boolean canSkipInheritedMethods() {
        return (this.type.superclass() == null || !(this.type.superclass().isAbstract() || this.type.superclass().isParameterizedType())) && this.type.superInterfaces() == Binding.NO_SUPERINTERFACES;
    }

    @Override
    public void checkAgainstInheritedMethods(MethodBinding methodBinding, MethodBinding[] methodBindingArr, int i10, MethodBinding[] methodBindingArr2) {
        super.checkAgainstInheritedMethods(methodBinding, methodBindingArr, i10, methodBindingArr2);
        if (!this.environment.globalOptions.isAnnotationBasedNullAnalysisEnabled || (methodBinding.tagBits & 4096) != 0) {
            return;
        }
        AbstractMethodDeclaration sourceMethod = this.type.equals(methodBinding.declaringClass) ? methodBinding.sourceMethod() : null;
        boolean hasNonNullDefaultForReturnType = methodBinding.hasNonNullDefaultForReturnType(sourceMethod);
        ParameterNonNullDefaultProvider hasNonNullDefaultForParameter = methodBinding.hasNonNullDefaultForParameter(sourceMethod);
        int i11 = i10;
        while (true) {
            int i12 = i11 - 1;
            if (i12 < 0) {
                return;
            }
            if (!methodBinding.isStatic() && !methodBindingArr[i12].isStatic()) {
                checkNullSpecInheritance(methodBinding, sourceMethod, hasNonNullDefaultForReturnType, hasNonNullDefaultForParameter, true, methodBindingArr[i12], methodBindingArr, this.type.scope, null);
            }
            i11 = i12;
        }
    }

    @Override
    public void checkConcreteInheritedMethod(MethodBinding methodBinding, MethodBinding[] methodBindingArr) {
        int i10;
        int i11;
        super.checkConcreteInheritedMethod(methodBinding, methodBindingArr);
        boolean z10 = this.environment.globalOptions.isAnnotationBasedNullAnalysisEnabled;
        AbstractMethodDeclaration sourceMethod = (z10 && this.type.equals(methodBinding.declaringClass)) ? methodBinding.sourceMethod() : null;
        boolean z11 = z10 && methodBinding.hasNonNullDefaultForReturnType(sourceMethod);
        ParameterNonNullDefaultProvider hasNonNullDefaultForParameter = z10 ? methodBinding.hasNonNullDefaultForParameter(sourceMethod) : ParameterNonNullDefaultProvider.FALSE_PROVIDER;
        int length = methodBindingArr.length;
        int i12 = 0;
        while (i12 < length) {
            MethodBinding methodBinding2 = methodBindingArr[i12];
            if (methodBinding.isVarargs() != methodBinding2.isVarargs()) {
                problemReporter().varargsConflict(methodBinding, methodBinding2, this.type);
            }
            MethodBinding original = methodBinding2.original();
            if (TypeBinding.notEquals(original.returnType, methodBinding.returnType) && !isAcceptableReturnTypeOverride(methodBinding, methodBinding2)) {
                problemReporter().unsafeReturnTypeOverride(methodBinding, original, this.type);
            }
            if (original.declaringClass.isInterface() && ((TypeBinding.equalsEquals(methodBinding.declaringClass, this.type.superclass) && this.type.superclass.isParameterizedType() && !areMethodsCompatible(methodBinding, original)) || this.type.superclass.erasure().findSuperTypeOriginatingFrom(original.declaringClass) == null)) {
                this.type.addSyntheticBridgeMethod(original, methodBinding.original());
            }
            if (!z10 || methodBinding.isStatic() || methodBinding2.isStatic()) {
                i10 = i12;
                i11 = length;
            } else {
                i10 = i12;
                i11 = length;
                checkNullSpecInheritance(methodBinding, sourceMethod, z11, hasNonNullDefaultForParameter, true, methodBinding2, methodBindingArr, this.type.scope, null);
            }
            i12 = i10 + 1;
            length = i11;
        }
    }

    @Override
    public void checkForBridgeMethod(MethodBinding methodBinding, MethodBinding methodBinding2, MethodBinding[] methodBindingArr) {
        if (methodBinding.isVarargs() != methodBinding2.isVarargs()) {
            problemReporter(methodBinding).varargsConflict(methodBinding, methodBinding2, this.type);
        }
        MethodBinding original = methodBinding2.original();
        if (TypeBinding.notEquals(original.returnType, methodBinding.returnType) && !isAcceptableReturnTypeOverride(methodBinding, methodBinding2)) {
            problemReporter(methodBinding).unsafeReturnTypeOverride(methodBinding, original, this.type);
        }
        SyntheticMethodBinding addSyntheticBridgeMethod = this.type.addSyntheticBridgeMethod(original, methodBinding.original());
        if (addSyntheticBridgeMethod != null) {
            int length = methodBindingArr == null ? 0 : methodBindingArr.length;
            for (int i10 = 0; i10 < length; i10++) {
                MethodBinding methodBinding3 = methodBindingArr[i10];
                if (methodBinding3 != null && detectInheritedNameClash(original, methodBinding3.original())) {
                    return;
                }
            }
            MethodBinding[] methodBindingArr2 = (MethodBinding[]) this.currentMethods.get(addSyntheticBridgeMethod.selector);
            for (int length2 = methodBindingArr2.length - 1; length2 >= 0; length2--) {
                MethodBinding methodBinding4 = methodBindingArr2[length2];
                if (methodBinding4.areParameterErasuresEqual(addSyntheticBridgeMethod) && TypeBinding.equalsEquals(methodBinding4.returnType.erasure(), addSyntheticBridgeMethod.returnType.erasure())) {
                    ProblemReporter problemReporter = problemReporter(methodBinding4);
                    if (!methodBinding2.declaringClass.isRawType()) {
                        methodBinding2 = methodBinding2.original();
                    }
                    problemReporter.methodNameClash(methodBinding4, methodBinding2, 1);
                    return;
                }
            }
        }
    }

    public void checkForNameClash(MethodBinding methodBinding, MethodBinding methodBinding2) {
        int i10;
        ReferenceBinding[] referenceBindingArr;
        ReferenceBinding[] referenceBindingArr2;
        if (methodBinding2.isStatic() || methodBinding.isStatic()) {
            MethodBinding original = methodBinding2.original();
            if (this.type.scope.compilerOptions().complianceLevel < ClassFileConstants.JDK1_7 || !methodBinding.areParameterErasuresEqual(original)) {
                return;
            }
            ProblemReporter problemReporter = problemReporter(methodBinding);
            if (!methodBinding2.declaringClass.isRawType()) {
                methodBinding2 = original;
            }
            problemReporter.methodNameClashHidden(methodBinding, methodBinding2);
            return;
        }
        if (detectNameClash(methodBinding, methodBinding2, false)) {
            return;
        }
        TypeBinding[] typeBindingArr = methodBinding.parameters;
        TypeBinding[] typeBindingArr2 = methodBinding2.parameters;
        int length = typeBindingArr.length;
        if (length != typeBindingArr2.length) {
            return;
        }
        for (int i11 = 0; i11 < length; i11++) {
            if (TypeBinding.notEquals(typeBindingArr[i11], typeBindingArr2[i11]) && (typeBindingArr[i11].isBaseType() != typeBindingArr2[i11].isBaseType() || !typeBindingArr2[i11].isCompatibleWith(typeBindingArr[i11]))) {
                return;
            }
        }
        ReferenceBinding[] superInterfaces = methodBinding2.declaringClass.superInterfaces();
        if (superInterfaces != Binding.NO_SUPERINTERFACES) {
            i10 = superInterfaces.length;
        } else {
            superInterfaces = null;
            i10 = 0;
        }
        for (ReferenceBinding superclass = r12.superclass(); superclass != null && superclass.isValidBinding(); superclass = superclass.superclass()) {
            for (MethodBinding methodBinding3 : superclass.getMethods(methodBinding.selector)) {
                MethodBinding computeSubstituteMethod = computeSubstituteMethod(methodBinding3, methodBinding);
                if (computeSubstituteMethod != null && !isSubstituteParameterSubsignature(methodBinding, computeSubstituteMethod) && detectNameClash(methodBinding, computeSubstituteMethod, true)) {
                    return;
                }
            }
            ReferenceBinding[] superInterfaces2 = superclass.superInterfaces();
            if (superInterfaces2 != Binding.NO_SUPERINTERFACES) {
                if (superInterfaces == null) {
                    i10 = superInterfaces2.length;
                    superInterfaces = superInterfaces2;
                } else {
                    int length2 = i10 + superInterfaces2.length;
                    if (length2 >= superInterfaces.length) {
                        referenceBindingArr2 = new ReferenceBinding[length2 + 5];
                        System.arraycopy(superInterfaces, 0, referenceBindingArr2, 0, i10);
                    } else {
                        referenceBindingArr2 = superInterfaces;
                    }
                    int i12 = i10;
                    for (ReferenceBinding referenceBinding : superInterfaces2) {
                        int i13 = 0;
                        while (true) {
                            if (i13 >= i12) {
                                referenceBindingArr2[i12] = referenceBinding;
                                i12++;
                                break;
                            } else if (TypeBinding.equalsEquals(referenceBinding, referenceBindingArr2[i13])) {
                                break;
                            } else {
                                i13++;
                            }
                        }
                    }
                    superInterfaces = referenceBindingArr2;
                    i10 = i12;
                }
            }
        }
        for (int i14 = 0; i14 < i10; i14++) {
            ReferenceBinding referenceBinding2 = superInterfaces[i14];
            if (referenceBinding2.isValidBinding()) {
                for (MethodBinding methodBinding4 : referenceBinding2.getMethods(methodBinding.selector)) {
                    MethodBinding computeSubstituteMethod2 = computeSubstituteMethod(methodBinding4, methodBinding);
                    if (computeSubstituteMethod2 != null && !isSubstituteParameterSubsignature(methodBinding, computeSubstituteMethod2) && detectNameClash(methodBinding, computeSubstituteMethod2, true)) {
                        return;
                    }
                }
                ReferenceBinding[] superInterfaces3 = referenceBinding2.superInterfaces();
                if (superInterfaces3 != Binding.NO_SUPERINTERFACES) {
                    int length3 = i10 + superInterfaces3.length;
                    if (length3 >= superInterfaces.length) {
                        referenceBindingArr = new ReferenceBinding[length3 + 5];
                        System.arraycopy(superInterfaces, 0, referenceBindingArr, 0, i10);
                    } else {
                        referenceBindingArr = superInterfaces;
                    }
                    int i15 = i10;
                    for (ReferenceBinding referenceBinding3 : superInterfaces3) {
                        int i16 = 0;
                        while (true) {
                            if (i16 >= i15) {
                                referenceBindingArr[i15] = referenceBinding3;
                                i15++;
                                break;
                            } else if (TypeBinding.equalsEquals(referenceBinding3, referenceBindingArr[i16])) {
                                break;
                            } else {
                                i16++;
                            }
                        }
                    }
                    superInterfaces = referenceBindingArr;
                    i10 = i15;
                }
            }
        }
    }

    public boolean checkInheritedDefaultMethods(MethodBinding[] methodBindingArr, boolean[] zArr, int i10) {
        boolean z10 = true;
        if (i10 < 2) {
            return true;
        }
        for (int i11 = 0; i11 < i10; i11++) {
            if (methodBindingArr[i11].isDefaultMethod() && !zArr[i11]) {
                int i12 = 0;
                while (true) {
                    if (i12 < i10) {
                        if (i12 != i11 && !zArr[i12] && isMethodSubsignature(methodBindingArr[i11], methodBindingArr[i12]) && !doesMethodOverride(methodBindingArr[i11], methodBindingArr[i12]) && !doesMethodOverride(methodBindingArr[i12], methodBindingArr[i11])) {
                            problemReporter().inheritedDefaultMethodConflictsWithOtherInherited(this.type, methodBindingArr[i11], methodBindingArr[i12]);
                            z10 = false;
                            break;
                        }
                        i12++;
                    }
                }
            }
        }
        return z10;
    }

    public void checkInheritedMethods(MethodBinding methodBinding, MethodBinding methodBinding2) {
        if (methodBinding.isStatic()) {
            return;
        }
        if (this.environment.globalOptions.complianceLevel >= ClassFileConstants.JDK1_7 || !methodBinding.declaringClass.isInterface()) {
            detectInheritedNameClash(methodBinding.original(), methodBinding2.original());
        }
    }

    @Override
    public boolean checkInheritedReturnTypes(MethodBinding methodBinding, MethodBinding methodBinding2) {
        if (areReturnTypesCompatible(methodBinding, methodBinding2)) {
            return true;
        }
        if (!isUnsafeReturnTypeOverride(methodBinding, methodBinding2)) {
            return false;
        }
        if (!methodBinding.declaringClass.implementsInterface(methodBinding2.declaringClass, false)) {
            problemReporter(methodBinding).unsafeReturnTypeOverride(methodBinding, methodBinding2, this.type);
        }
        return true;
    }

    @Override
    public void checkMethods() {
        boolean z10;
        char[][] cArr;
        int i10;
        int i11;
        boolean[] zArr;
        int i12;
        boolean z11;
        boolean[] zArr2;
        boolean[] zArr3;
        boolean[] zArr4;
        int i13;
        MethodBinding[] methodBindingArr;
        MethodBinding[] methodBindingArr2;
        int i14;
        MethodBinding[] methodBindingArr3;
        MethodBinding[] methodBindingArr4;
        boolean[] zArr5;
        boolean[] zArr6;
        int i15;
        MethodBinding methodBinding;
        boolean mustImplementAbstractMethods = mustImplementAbstractMethods();
        int i16 = 0;
        boolean z12 = true;
        boolean z13 = mustImplementAbstractMethods && canSkipInheritedMethods();
        boolean isOrEnclosedByPrivateType = this.type.isOrEnclosedByPrivateType();
        char[][] cArr2 = this.inheritedMethods.keyTable;
        int length = cArr2.length;
        while (true) {
            int i17 = length - 1;
            if (i17 < 0) {
                return;
            }
            char[] cArr3 = cArr2[i17];
            if (cArr3 != null) {
                MethodBinding[] methodBindingArr5 = (MethodBinding[]) this.currentMethods.get(cArr3);
                MethodBinding[] methodBindingArr6 = (MethodBinding[]) this.inheritedMethods.valueTable[i17];
                MethodBinding[] concreteFirst = Sorting.concreteFirst(methodBindingArr6, methodBindingArr6.length);
                if (methodBindingArr5 == null && !isOrEnclosedByPrivateType) {
                    int length2 = concreteFirst.length;
                    for (int i18 = i16; i18 < length2; i18++) {
                        concreteFirst[i18].original().modifiers |= 134217728;
                    }
                }
                if (methodBindingArr5 == null && this.type.isPublic()) {
                    int length3 = concreteFirst.length;
                    for (int i19 = i16; i19 < length3; i19++) {
                        MethodBinding methodBinding2 = concreteFirst[i19];
                        if (methodBinding2.isPublic() && !methodBinding2.declaringClass.isInterface() && !methodBinding2.declaringClass.isPublic()) {
                            this.type.addSyntheticBridgeMethod(methodBinding2.original());
                        }
                    }
                }
                if (methodBindingArr5 != null || !z13) {
                    if (concreteFirst.length != z12 || methodBindingArr5 != null) {
                        int length4 = concreteFirst.length;
                        MethodBinding[] methodBindingArr7 = new MethodBinding[length4];
                        MethodBinding[] methodBindingArr8 = new MethodBinding[length4];
                        boolean[] zArr7 = new boolean[length4];
                        boolean[] zArr8 = new boolean[length4];
                        boolean[] zArr9 = new boolean[length4];
                        Arrays.fill(zArr9, z12);
                        if (methodBindingArr5 != null) {
                            int length5 = methodBindingArr5.length;
                            int i20 = 0;
                            i10 = -1;
                            while (i20 < length5) {
                                boolean z14 = z13;
                                MethodBinding methodBinding3 = methodBindingArr5[i20];
                                char[][] cArr4 = cArr2;
                                int i21 = length5;
                                MethodBinding[] methodBindingArr9 = null;
                                int i22 = 0;
                                while (i22 < length4) {
                                    int i23 = i20;
                                    MethodBinding computeSubstituteMethod = computeSubstituteMethod(concreteFirst[i22], methodBinding3);
                                    if (computeSubstituteMethod != null) {
                                        if (methodBindingArr8[i22] == null && isSubstituteParameterSubsignature(methodBinding3, computeSubstituteMethod)) {
                                            boolean couldMethodOverride = MethodVerifier.couldMethodOverride(methodBinding3, computeSubstituteMethod);
                                            zArr7[i22] = couldMethodOverride;
                                            zArr8[i22] = couldMethodOverride;
                                            i10++;
                                            methodBindingArr7[i10] = computeSubstituteMethod;
                                            methodBindingArr8[i22] = methodBinding3;
                                        } else {
                                            checkForNameClash(methodBinding3, computeSubstituteMethod);
                                            methodBinding = methodBinding3;
                                            if (length4 > 1) {
                                                if (methodBindingArr9 == null) {
                                                    methodBindingArr9 = new MethodBinding[length4];
                                                }
                                                methodBindingArr9[i22] = computeSubstituteMethod;
                                            }
                                            i22++;
                                            i20 = i23;
                                            methodBinding3 = methodBinding;
                                        }
                                    }
                                    methodBinding = methodBinding3;
                                    i22++;
                                    i20 = i23;
                                    methodBinding3 = methodBinding;
                                }
                                if (i10 >= 0) {
                                    checkAgainstInheritedMethods(methodBinding3, methodBindingArr7, i10 + 1, methodBindingArr9);
                                    while (i10 >= 0) {
                                        methodBindingArr7[i10] = null;
                                        i10--;
                                    }
                                }
                                i20++;
                                z13 = z14;
                                cArr2 = cArr4;
                                length5 = i21;
                            }
                            z10 = z13;
                            cArr = cArr2;
                        } else {
                            z10 = z13;
                            cArr = cArr2;
                            i10 = -1;
                        }
                        int i24 = 0;
                        while (i24 < length4) {
                            boolean[] zArr10 = zArr7;
                            int i25 = length4;
                            boolean z15 = isOrEnclosedByPrivateType;
                            int i26 = i17;
                            MethodBinding methodBinding4 = methodBindingArr8[i24];
                            if (methodBinding4 == null && methodBindingArr5 != null && this.type.isPublic()) {
                                MethodBinding methodBinding5 = concreteFirst[i24];
                                if (methodBinding5.isPublic() && !methodBinding5.declaringClass.isInterface() && !methodBinding5.declaringClass.isPublic()) {
                                    this.type.addSyntheticBridgeMethod(methodBinding5.original());
                                }
                            }
                            if (!z15 && methodBinding4 == null && methodBindingArr5 != null) {
                                concreteFirst[i24].original().modifiers |= 134217728;
                            }
                            MethodBinding methodBinding6 = concreteFirst[i24];
                            int i27 = i24 + 1;
                            int i28 = i27;
                            length4 = i25;
                            while (i28 < length4) {
                                MethodBinding methodBinding7 = concreteFirst[i28];
                                if ((methodBinding4 != methodBindingArr8[i28] || methodBinding4 == null) && !canSkipInheritedMethods(methodBinding6, methodBinding7)) {
                                    boolean[] zArr11 = zArr8;
                                    if (TypeBinding.notEquals(methodBinding6.declaringClass, methodBinding7.declaringClass)) {
                                        zArr5 = zArr11;
                                        zArr6 = zArr10;
                                        i15 = i28;
                                        methodBindingArr = methodBindingArr8;
                                        methodBindingArr2 = methodBindingArr7;
                                        i14 = length4;
                                        methodBindingArr3 = concreteFirst;
                                        methodBindingArr4 = methodBindingArr5;
                                        if (!isSkippableOrOverridden(methodBinding6, methodBinding7, zArr6, zArr5, zArr9, i15)) {
                                            isSkippableOrOverridden(methodBinding7, methodBinding6, zArr6, zArr5, zArr9, i24);
                                        }
                                        i28 = i15 + 1;
                                        zArr8 = zArr5;
                                        zArr10 = zArr6;
                                        methodBindingArr8 = methodBindingArr;
                                        methodBindingArr7 = methodBindingArr2;
                                        length4 = i14;
                                        concreteFirst = methodBindingArr3;
                                        methodBindingArr5 = methodBindingArr4;
                                    } else {
                                        methodBindingArr = methodBindingArr8;
                                        methodBindingArr2 = methodBindingArr7;
                                        i14 = length4;
                                        methodBindingArr3 = concreteFirst;
                                        methodBindingArr4 = methodBindingArr5;
                                        zArr5 = zArr11;
                                    }
                                } else {
                                    zArr5 = zArr8;
                                    methodBindingArr = methodBindingArr8;
                                    methodBindingArr2 = methodBindingArr7;
                                    i14 = length4;
                                    methodBindingArr3 = concreteFirst;
                                    methodBindingArr4 = methodBindingArr5;
                                }
                                zArr6 = zArr10;
                                i15 = i28;
                                i28 = i15 + 1;
                                zArr8 = zArr5;
                                zArr10 = zArr6;
                                methodBindingArr8 = methodBindingArr;
                                methodBindingArr7 = methodBindingArr2;
                                length4 = i14;
                                concreteFirst = methodBindingArr3;
                                methodBindingArr5 = methodBindingArr4;
                            }
                            i24 = i27;
                            i17 = i26;
                            isOrEnclosedByPrivateType = z15;
                            zArr7 = zArr10;
                        }
                        int i29 = 0;
                        while (i29 < length4) {
                            MethodBinding methodBinding8 = methodBindingArr8[i29];
                            if (zArr7[i29]) {
                                zArr = zArr7;
                                i12 = length4;
                                z11 = isOrEnclosedByPrivateType;
                                i11 = i17;
                            } else {
                                MethodBinding methodBinding9 = concreteFirst[i29];
                                if (methodBinding8 == null) {
                                    i10++;
                                    methodBindingArr7[i10] = methodBinding9;
                                }
                                int i30 = i29 + 1;
                                int i31 = i10;
                                while (i30 < length4) {
                                    boolean[] zArr12 = zArr7;
                                    int i32 = length4;
                                    boolean z16 = isOrEnclosedByPrivateType;
                                    int i33 = i17;
                                    MethodBinding methodBinding10 = methodBindingArr8[i30];
                                    if (methodBinding10 == null) {
                                        MethodBinding methodBinding11 = concreteFirst[i30];
                                        if ((methodBinding8 != methodBinding10 || methodBinding8 == null) && !canSkipInheritedMethods(methodBinding9, methodBinding11)) {
                                            MethodBinding findReplacedMethod = findReplacedMethod(methodBinding9, methodBinding11);
                                            if (findReplacedMethod != null) {
                                                i31++;
                                                methodBindingArr7[i31] = findReplacedMethod;
                                                zArr12[i30] = true;
                                            } else {
                                                MethodBinding findReplacedMethod2 = findReplacedMethod(methodBinding11, methodBinding9);
                                                if (findReplacedMethod2 != null) {
                                                    i31++;
                                                    methodBindingArr7[i31] = findReplacedMethod2;
                                                    zArr12[i30] = true;
                                                } else if (methodBinding8 == null) {
                                                    checkInheritedMethods(methodBinding9, methodBinding11);
                                                }
                                            }
                                            i30++;
                                            i17 = i33;
                                            isOrEnclosedByPrivateType = z16;
                                            length4 = i32;
                                            zArr7 = zArr12;
                                        }
                                    }
                                    i30++;
                                    i17 = i33;
                                    isOrEnclosedByPrivateType = z16;
                                    length4 = i32;
                                    zArr7 = zArr12;
                                }
                                i11 = i17;
                                if (i31 == -1) {
                                    zArr = zArr7;
                                    i12 = length4;
                                    i10 = i31;
                                    z11 = isOrEnclosedByPrivateType;
                                } else {
                                    if (i31 > 0) {
                                        int i34 = i31 + 1;
                                        if (i34 != length4) {
                                            zArr2 = new boolean[i34];
                                            zArr3 = new boolean[i34];
                                            int i35 = 0;
                                            while (i35 < i34) {
                                                boolean z17 = isOrEnclosedByPrivateType;
                                                int i36 = 0;
                                                while (true) {
                                                    if (i36 >= length4) {
                                                        zArr4 = zArr7;
                                                        i13 = length4;
                                                        break;
                                                    }
                                                    i13 = length4;
                                                    zArr4 = zArr7;
                                                    if (methodBindingArr7[i35] == concreteFirst[i36]) {
                                                        zArr2[i35] = zArr8[i36];
                                                        zArr3[i35] = zArr9[i36];
                                                        break;
                                                    } else {
                                                        i36++;
                                                        length4 = i13;
                                                        zArr7 = zArr4;
                                                    }
                                                }
                                                i35++;
                                                isOrEnclosedByPrivateType = z17;
                                                length4 = i13;
                                                zArr7 = zArr4;
                                            }
                                            zArr = zArr7;
                                            i12 = length4;
                                            z11 = isOrEnclosedByPrivateType;
                                        } else {
                                            zArr = zArr7;
                                            i12 = length4;
                                            z11 = isOrEnclosedByPrivateType;
                                            zArr2 = zArr8;
                                            zArr3 = zArr9;
                                        }
                                        checkInheritedMethods(methodBindingArr7, i34, zArr2, zArr3);
                                    } else {
                                        zArr = zArr7;
                                        i12 = length4;
                                        z11 = isOrEnclosedByPrivateType;
                                        if (mustImplementAbstractMethods && methodBindingArr7[0].isAbstract() && methodBinding8 == null) {
                                            checkAbstractMethod(methodBindingArr7[0]);
                                        }
                                    }
                                    while (i31 >= 0) {
                                        methodBindingArr7[i31] = null;
                                        i31--;
                                    }
                                    i10 = i31;
                                    i29++;
                                    i17 = i11;
                                    isOrEnclosedByPrivateType = z11;
                                    length4 = i12;
                                    zArr7 = zArr;
                                }
                            }
                            i29++;
                            i17 = i11;
                            isOrEnclosedByPrivateType = z11;
                            length4 = i12;
                            zArr7 = zArr;
                        }
                        length = i17;
                        z13 = z10;
                        cArr2 = cArr;
                        i16 = 0;
                        z12 = true;
                    } else if (mustImplementAbstractMethods && concreteFirst[i16].isAbstract()) {
                        checkAbstractMethod(concreteFirst[i16]);
                    }
                }
            }
            z10 = z13;
            cArr = cArr2;
            length = i17;
            z13 = z10;
            cArr2 = cArr;
            i16 = 0;
            z12 = true;
        }
    }

    @Override
    public void checkNullSpecInheritance(MethodBinding methodBinding, AbstractMethodDeclaration abstractMethodDeclaration, boolean z10, ParameterNonNullDefaultProvider parameterNonNullDefaultProvider, boolean z11, MethodBinding methodBinding2, MethodBinding[] methodBindingArr, Scope scope, ImplicitNullAnnotationVerifier.InheritedNonNullnessInfo[] inheritedNonNullnessInfoArr) {
        boolean z12 = z11 & (!methodBinding.isConstructor());
        if (!z10 && !parameterNonNullDefaultProvider.hasAnyNonNullDefault() && !z12 && !this.environment.globalOptions.inheritNullAnnotations) {
            methodBinding.tagBits = 4096 | methodBinding.tagBits;
            return;
        }
        if (TypeBinding.notEquals(methodBinding.declaringClass, this.type) && (4096 & methodBinding.tagBits) == 0) {
            this.buddyImplicitNullAnnotationsVerifier.checkImplicitNullAnnotations(methodBinding, abstractMethodDeclaration, z12, scope);
        }
        super.checkNullSpecInheritance(methodBinding, abstractMethodDeclaration, z10, parameterNonNullDefaultProvider, z12, methodBinding2, methodBindingArr, scope, inheritedNonNullnessInfoArr);
    }

    /* JADX WARN: Code restructure failed: missing block: B:62:0x00d4, code lost:
    
        problemReporter().inheritedMethodsHaveIncompatibleReturnTypes(r18, r6, r13);
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void checkTypeVariableMethods(TypeParameter typeParameter) {
        MethodBinding methodBinding;
        MethodBinding methodBinding2;
        MethodBinding methodBinding3;
        MethodBinding methodBinding4;
        MethodBinding computeSubstituteMethod;
        char[][] cArr = this.inheritedMethods.keyTable;
        int length = cArr.length;
        while (true) {
            int i10 = -1;
            length--;
            if (length < 0) {
                return;
            }
            if (cArr[length] != null) {
                MethodBinding[] methodBindingArr = (MethodBinding[]) this.inheritedMethods.valueTable[length];
                if (methodBindingArr.length != 1) {
                    MethodBinding[] methodBindingArr2 = new MethodBinding[methodBindingArr.length];
                    int length2 = methodBindingArr.length;
                    char c10 = 0;
                    int i11 = -1;
                    int i12 = 0;
                    while (true) {
                        if (i12 >= length2) {
                            break;
                        }
                        while (true) {
                            methodBinding = null;
                            if (i11 < 0) {
                                break;
                            }
                            methodBindingArr2[i11] = null;
                            i11--;
                            i10 = -1;
                            c10 = 0;
                        }
                        MethodBinding methodBinding5 = methodBindingArr[i12];
                        if (methodBinding5 != null) {
                            i11++;
                            methodBindingArr2[i11] = methodBinding5;
                            for (int i13 = i12 + 1; i13 < length2; i13++) {
                                MethodBinding methodBinding6 = methodBindingArr[i13];
                                if (!canSkipInheritedMethods(methodBinding5, methodBinding6) && (computeSubstituteMethod = computeSubstituteMethod(methodBinding6, methodBinding5)) != null && isSubstituteParameterSubsignature(methodBinding5, computeSubstituteMethod)) {
                                    i11++;
                                    methodBindingArr2[i11] = computeSubstituteMethod;
                                    methodBindingArr[i13] = null;
                                }
                            }
                        }
                        if (i11 > 0) {
                            MethodBinding methodBinding7 = methodBindingArr2[c10];
                            int i14 = i11 + 1;
                            int i15 = i14;
                            while (true) {
                                i15 += i10;
                                if (i15 <= 0) {
                                    break;
                                }
                                MethodBinding methodBinding8 = methodBindingArr2[i15];
                                if (methodBinding7.declaringClass.isInterface()) {
                                    methodBinding3 = methodBinding;
                                    methodBinding2 = methodBinding7;
                                } else if (methodBinding7.declaringClass.isClass()) {
                                    methodBinding2 = methodBinding;
                                    methodBinding3 = methodBinding7;
                                } else {
                                    methodBinding2 = methodBinding;
                                    methodBinding3 = methodBinding2;
                                }
                                if (methodBinding8.declaringClass.isInterface()) {
                                    methodBinding2 = methodBinding8;
                                } else if (methodBinding8.declaringClass.isClass()) {
                                    methodBinding4 = methodBinding8;
                                    if (methodBinding2 != null && methodBinding4 != null && !methodBinding4.isAbstract() && !isAsVisible(methodBinding4, methodBinding2)) {
                                        problemReporter().inheritedMethodReducesVisibility(typeParameter, methodBinding4, new MethodBinding[]{methodBinding2});
                                    }
                                    if (areReturnTypesCompatible(methodBinding7, methodBinding8) && (!methodBinding7.declaringClass.isInterface() || !methodBinding8.declaringClass.isInterface() || !areReturnTypesCompatible(methodBinding8, methodBinding7))) {
                                        break;
                                    }
                                    i10 = -1;
                                    methodBinding = null;
                                }
                                methodBinding4 = methodBinding3;
                                if (methodBinding2 != null) {
                                    problemReporter().inheritedMethodReducesVisibility(typeParameter, methodBinding4, new MethodBinding[]{methodBinding2});
                                }
                                if (areReturnTypesCompatible(methodBinding7, methodBinding8)) {
                                }
                                i10 = -1;
                                methodBinding = null;
                            }
                        }
                        i12++;
                        i10 = -1;
                        c10 = 0;
                    }
                }
            }
        }
    }

    public boolean detectInheritedNameClash(MethodBinding methodBinding, MethodBinding methodBinding2) {
        if (!methodBinding.areParameterErasuresEqual(methodBinding2) || TypeBinding.notEquals(methodBinding.returnType.erasure(), methodBinding2.returnType.erasure())) {
            return false;
        }
        if (TypeBinding.notEquals(methodBinding.declaringClass.erasure(), methodBinding2.declaringClass.erasure()) && (methodBinding.declaringClass.findSuperTypeOriginatingFrom(methodBinding2.declaringClass) != null || methodBinding2.declaringClass.findSuperTypeOriginatingFrom(methodBinding.declaringClass) != null)) {
            return false;
        }
        problemReporter().inheritedMethodsHaveNameClash(this.type, methodBinding, methodBinding2);
        return true;
    }

    public boolean detectNameClash(MethodBinding methodBinding, MethodBinding methodBinding2, boolean z10) {
        MethodBinding methodBinding3;
        MethodBinding original = methodBinding2.original();
        if (!methodBinding.areParameterErasuresEqual(original)) {
            return false;
        }
        int i10 = (this.environment.globalOptions.complianceLevel == ClassFileConstants.JDK1_6 && TypeBinding.notEquals(methodBinding.returnType.erasure(), original.returnType.erasure())) ? 0 : 1;
        if (!z10) {
            MethodBinding[] methodBindingArr = (MethodBinding[]) this.currentMethods.get(methodBinding2.selector);
            if (methodBindingArr.length > 1) {
                int length = methodBindingArr.length;
                for (int i11 = 0; i11 < length; i11++) {
                    methodBinding3 = methodBindingArr[i11];
                    if (methodBinding3 != methodBinding && doesMethodOverride(methodBinding3, methodBinding2)) {
                        break;
                    }
                }
            }
        }
        methodBinding3 = methodBinding2;
        if (!methodBinding.areParameterErasuresEqual(methodBinding3.original())) {
            return false;
        }
        MethodBinding original2 = methodBinding2.original();
        ProblemReporter problemReporter = problemReporter(methodBinding);
        if (!methodBinding2.declaringClass.isRawType()) {
            methodBinding2 = original2;
        }
        problemReporter.methodNameClash(methodBinding, methodBinding2, i10);
        return i10 != 0;
    }

    public boolean doTypeVariablesClash(MethodBinding methodBinding, MethodBinding methodBinding2) {
        return (methodBinding.typeVariables == Binding.NO_TYPE_VARIABLES || (methodBinding2 instanceof ParameterizedGenericMethodBinding)) ? false : true;
    }

    public MethodBinding findReplacedMethod(MethodBinding methodBinding, MethodBinding methodBinding2) {
        MethodBinding computeSubstituteMethod = computeSubstituteMethod(methodBinding2, methodBinding);
        if (computeSubstituteMethod == null) {
            return null;
        }
        if ((!methodBinding.isAbstract() || methodBinding2.isAbstract() || (methodBinding2.isDefaultMethod() && methodBinding.declaringClass.isClass())) && isSubstituteParameterSubsignature(methodBinding, computeSubstituteMethod)) {
            return computeSubstituteMethod;
        }
        return null;
    }

    @Override
    public SimpleSet findSuperinterfaceCollisions(ReferenceBinding referenceBinding, ReferenceBinding[] referenceBindingArr) {
        int i10;
        ReferenceBinding[] referenceBindingArr2;
        ReferenceBinding[] referenceBindingArr3;
        SimpleSet simpleSet = null;
        if (referenceBindingArr != Binding.NO_SUPERINTERFACES) {
            i10 = referenceBindingArr.length;
        } else {
            referenceBindingArr = null;
            i10 = 0;
        }
        boolean isHierarchyInconsistent = this.type.isHierarchyInconsistent();
        while (referenceBinding != null && referenceBinding.isValidBinding()) {
            isHierarchyInconsistent |= referenceBinding.isHierarchyInconsistent();
            ReferenceBinding[] superInterfaces = referenceBinding.superInterfaces();
            if (superInterfaces != Binding.NO_SUPERINTERFACES) {
                if (referenceBindingArr == null) {
                    i10 = superInterfaces.length;
                    referenceBindingArr = superInterfaces;
                } else {
                    int length = i10 + superInterfaces.length;
                    if (length >= referenceBindingArr.length) {
                        referenceBindingArr3 = new ReferenceBinding[length + 5];
                        System.arraycopy(referenceBindingArr, 0, referenceBindingArr3, 0, i10);
                    } else {
                        referenceBindingArr3 = referenceBindingArr;
                    }
                    int i11 = i10;
                    for (ReferenceBinding referenceBinding2 : superInterfaces) {
                        int i12 = 0;
                        while (true) {
                            if (i12 >= i11) {
                                referenceBindingArr3[i11] = referenceBinding2;
                                i11++;
                                break;
                            }
                            if (TypeBinding.equalsEquals(referenceBinding2, referenceBindingArr3[i12])) {
                                break;
                            }
                            i12++;
                        }
                    }
                    referenceBindingArr = referenceBindingArr3;
                    i10 = i11;
                }
            }
            referenceBinding = referenceBinding.superclass();
        }
        for (int i13 = 0; i13 < i10; i13++) {
            ReferenceBinding referenceBinding3 = referenceBindingArr[i13];
            if (referenceBinding3.isValidBinding()) {
                isHierarchyInconsistent |= referenceBinding3.isHierarchyInconsistent();
                ReferenceBinding[] superInterfaces2 = referenceBinding3.superInterfaces();
                if (superInterfaces2 != Binding.NO_SUPERINTERFACES) {
                    int length2 = i10 + superInterfaces2.length;
                    if (length2 >= referenceBindingArr.length) {
                        referenceBindingArr2 = new ReferenceBinding[length2 + 5];
                        System.arraycopy(referenceBindingArr, 0, referenceBindingArr2, 0, i10);
                    } else {
                        referenceBindingArr2 = referenceBindingArr;
                    }
                    int i14 = i10;
                    for (ReferenceBinding referenceBinding4 : superInterfaces2) {
                        int i15 = 0;
                        while (true) {
                            if (i15 >= i14) {
                                referenceBindingArr2[i14] = referenceBinding4;
                                i14++;
                                break;
                            }
                            if (TypeBinding.equalsEquals(referenceBinding4, referenceBindingArr2[i15])) {
                                break;
                            }
                            i15++;
                        }
                    }
                    referenceBindingArr = referenceBindingArr2;
                    i10 = i14;
                }
            }
        }
        if (!isHierarchyInconsistent) {
            return null;
        }
        for (int i16 = 0; i16 < i10; i16++) {
            ReferenceBinding referenceBinding5 = referenceBindingArr[i16];
            if (referenceBinding5.isValidBinding()) {
                TypeBinding erasure = referenceBinding5.erasure();
                for (int i17 = i16 + 1; i17 < i10; i17++) {
                    ReferenceBinding referenceBinding6 = referenceBindingArr[i17];
                    if (referenceBinding6.isValidBinding() && TypeBinding.equalsEquals(referenceBinding6.erasure(), erasure)) {
                        if (simpleSet == null) {
                            simpleSet = new SimpleSet(i10);
                        }
                        simpleSet.add(referenceBindingArr[i16]);
                        simpleSet.add(referenceBindingArr[i17]);
                    }
                }
            }
        }
        return simpleSet;
    }

    public boolean isAcceptableReturnTypeOverride(MethodBinding methodBinding, MethodBinding methodBinding2) {
        if (methodBinding2.declaringClass.isRawType()) {
            return true;
        }
        MethodBinding original = methodBinding2.original();
        TypeBinding leafComponentType = original.returnType.leafComponentType();
        if (leafComponentType.isParameterizedTypeWithActualArguments()) {
            return !methodBinding.returnType.leafComponentType().isRawType();
        }
        TypeBinding leafComponentType2 = methodBinding.returnType.leafComponentType();
        return ((leafComponentType2.kind() != 4100 || !TypeBinding.equalsEquals(leafComponentType2, methodBinding2.returnType.leafComponentType())) && leafComponentType.isTypeVariable() && ((TypeVariableBinding) leafComponentType).declaringElement == original) ? false : true;
    }

    @Override
    public boolean isInterfaceMethodImplemented(MethodBinding methodBinding, MethodBinding methodBinding2, ReferenceBinding referenceBinding) {
        MethodBinding computeSubstituteMethod;
        if ((methodBinding.original() != methodBinding && methodBinding2.declaringClass.isInterface()) || (computeSubstituteMethod = computeSubstituteMethod(methodBinding, methodBinding2)) == null || !doesMethodOverride(methodBinding2, computeSubstituteMethod)) {
            return false;
        }
        if (TypeBinding.equalsEquals(computeSubstituteMethod.returnType, methodBinding2.returnType)) {
            return true;
        }
        return TypeBinding.notEquals(this.type, methodBinding2.declaringClass) && !methodBinding2.declaringClass.isInterface() && areReturnTypesCompatible(methodBinding2, computeSubstituteMethod);
    }

    @Override
    public boolean isMethodSubsignature(MethodBinding methodBinding, MethodBinding methodBinding2) {
        if (!CharOperation.equals(methodBinding.selector, methodBinding2.selector)) {
            return false;
        }
        if (methodBinding.declaringClass.isParameterizedType()) {
            methodBinding = methodBinding.original();
        }
        MethodBinding findOriginalInheritedMethod = methodBinding.findOriginalInheritedMethod(methodBinding2);
        if (findOriginalInheritedMethod != null) {
            methodBinding2 = findOriginalInheritedMethod;
        }
        return isParameterSubsignature(methodBinding, methodBinding2);
    }

    public boolean isSkippableOrOverridden(MethodBinding methodBinding, MethodBinding methodBinding2, boolean[] zArr, boolean[] zArr2, boolean[] zArr3, int i10) {
        boolean isInterface = methodBinding.declaringClass.isInterface();
        boolean isInterface2 = methodBinding2.declaringClass.isInterface();
        if (isInterface || !isInterface2) {
            if (isInterface == isInterface2 && methodBinding.declaringClass.isCompatibleWith(methodBinding2.declaringClass) && isMethodSubsignature(methodBinding, methodBinding2)) {
                zArr[i10] = true;
                zArr2[i10] = true;
                return true;
            }
        } else {
            if (!methodBinding.isAbstract() && isParameterSubsignature(methodBinding, methodBinding2)) {
                zArr3[i10] = false;
                return true;
            }
            if (isInterfaceMethodImplemented(methodBinding2, methodBinding, methodBinding2.declaringClass)) {
                zArr[i10] = true;
                zArr2[i10] = true;
                return true;
            }
        }
        return false;
    }

    public boolean isUnsafeReturnTypeOverride(MethodBinding methodBinding, MethodBinding methodBinding2) {
        if (TypeBinding.equalsEquals(methodBinding.returnType, methodBinding2.returnType.erasure())) {
            TypeBinding[] typeBindingArr = methodBinding.parameters;
            TypeBinding[] typeBindingArr2 = methodBinding2.parameters;
            int length = typeBindingArr.length;
            for (int i10 = 0; i10 < length; i10++) {
                if (!ImplicitNullAnnotationVerifier.areTypesEqual(typeBindingArr[i10], typeBindingArr2[i10])) {
                    return true;
                }
            }
        }
        TypeVariableBinding[] typeVariableBindingArr = methodBinding.typeVariables;
        TypeVariableBinding[] typeVariableBindingArr2 = Binding.NO_TYPE_VARIABLES;
        return (typeVariableBindingArr != typeVariableBindingArr2 || methodBinding2.original().typeVariables == typeVariableBindingArr2 || methodBinding.returnType.erasure().findSuperTypeOriginatingFrom(methodBinding2.returnType.erasure()) == null) ? false : true;
    }

    @Override
    public boolean reportIncompatibleReturnTypeError(MethodBinding methodBinding, MethodBinding methodBinding2) {
        if (!isUnsafeReturnTypeOverride(methodBinding, methodBinding2)) {
            return super.reportIncompatibleReturnTypeError(methodBinding, methodBinding2);
        }
        problemReporter(methodBinding).unsafeReturnTypeOverride(methodBinding, methodBinding2, this.type);
        return false;
    }

    public void reportRawReferences() {
        CompilerOptions compilerOptions = this.type.scope.compilerOptions();
        if (compilerOptions.sourceLevel < ClassFileConstants.JDK1_5 || compilerOptions.reportUnavoidableGenericTypeProblems) {
            return;
        }
        Object[] objArr = this.currentMethods.valueTable;
        int length = objArr.length;
        while (true) {
            length--;
            if (length < 0) {
                return;
            }
            Object obj = objArr[length];
            if (obj != null) {
                for (MethodBinding methodBinding : (MethodBinding[]) obj) {
                    if ((methodBinding.modifiers & 805306368) == 0) {
                        AbstractMethodDeclaration sourceMethod = methodBinding.sourceMethod();
                        if (sourceMethod == null) {
                            return;
                        }
                        TypeBinding[] typeBindingArr = methodBinding.parameters;
                        Argument[] argumentArr = sourceMethod.arguments;
                        int length2 = typeBindingArr.length;
                        for (int i10 = 0; i10 < length2; i10++) {
                            TypeBinding typeBinding = typeBindingArr[i10];
                            Argument argument = argumentArr[i10];
                            if (typeBinding.leafComponentType().isRawType() && compilerOptions.getSeverity(CompilerOptions.RawTypeReference) != 256 && (argument.type.bits & 1073741824) == 0) {
                                sourceMethod.scope.problemReporter().rawTypeReference(argument.type, typeBinding);
                            }
                        }
                        if (!sourceMethod.isConstructor() && (sourceMethod instanceof MethodDeclaration)) {
                            TypeReference typeReference = ((MethodDeclaration) sourceMethod).returnType;
                            TypeBinding typeBinding2 = methodBinding.returnType;
                            if (typeReference != null && typeBinding2.leafComponentType().isRawType() && compilerOptions.getSeverity(CompilerOptions.RawTypeReference) != 256 && (typeReference.bits & 1073741824) == 0) {
                                sourceMethod.scope.problemReporter().rawTypeReference(typeReference, typeBinding2);
                            }
                        }
                    }
                }
            }
        }
    }

    @Override
    public void verify() {
        if (this.type.isAnnotationType()) {
            this.type.detectAnnotationCycle();
        }
        super.verify();
        reportRawReferences();
        int length = this.type.typeVariables.length;
        while (true) {
            length--;
            if (length < 0) {
                return;
            }
            TypeVariableBinding typeVariableBinding = this.type.typeVariables[length];
            ReferenceBinding[] referenceBindingArr = typeVariableBinding.superInterfaces;
            if (referenceBindingArr != Binding.NO_SUPERINTERFACES && (referenceBindingArr.length != 1 || typeVariableBinding.superclass.f102482id != 1)) {
                this.currentMethods = new HashtableOfObject(0);
                ReferenceBinding superclass = typeVariableBinding.superclass();
                if (superclass.kind() == 4100) {
                    superclass = (ReferenceBinding) superclass.erasure();
                }
                ReferenceBinding[] superInterfaces = typeVariableBinding.superInterfaces();
                ReferenceBinding[] referenceBindingArr2 = new ReferenceBinding[superInterfaces.length];
                int length2 = superInterfaces.length;
                while (true) {
                    length2--;
                    if (length2 < 0) {
                        break;
                    } else {
                        referenceBindingArr2[length2] = superInterfaces[length2].kind() == 4100 ? (ReferenceBinding) superInterfaces[length2].erasure() : superInterfaces[length2];
                    }
                }
                computeInheritedMethods(superclass, referenceBindingArr2);
                checkTypeVariableMethods(this.type.scope.referenceContext.typeParameters[length]);
            }
        }
    }

    @Override
    public boolean canSkipInheritedMethods(MethodBinding methodBinding, MethodBinding methodBinding2) {
        if (methodBinding2 != null) {
            return TypeBinding.equalsEquals(methodBinding.declaringClass, methodBinding2.declaringClass) && !methodBinding.declaringClass.isParameterizedType();
        }
        return true;
    }

    /* JADX WARN: Code restructure failed: missing block: B:46:0x00ca, code lost:
    
        if (r10.original() == r6) goto L62;
     */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public void checkInheritedMethods(MethodBinding[] methodBindingArr, int i10, boolean[] zArr, boolean[] zArr2) {
        MethodBinding methodBinding;
        MethodBinding methodBinding2;
        int i11 = 0;
        while (true) {
            methodBinding = null;
            if (i11 >= i10) {
                methodBinding2 = null;
                break;
            }
            if (!methodBindingArr[i11].declaringClass.isInterface() && TypeBinding.notEquals(methodBindingArr[i11].declaringClass, this.type) && methodBindingArr[i11].isAbstract()) {
                methodBinding2 = methodBindingArr[i11];
                break;
            }
            i11++;
        }
        boolean z10 = false;
        boolean z11 = true;
        for (int i12 = 0; i12 < i10; i12++) {
            if (zArr2[i12] && !methodBindingArr[i12].isAbstract()) {
                if (methodBindingArr[i12].isDefaultMethod() && methodBinding2 != null && ImplicitNullAnnotationVerifier.areParametersEqual(methodBinding2, methodBindingArr[i12]) && methodBinding == null) {
                    z10 = true;
                } else {
                    if (methodBinding != null) {
                        if (!zArr[i12] || !areMethodsCompatible(methodBinding, methodBindingArr[i12])) {
                            if (TypeBinding.equalsEquals(methodBinding.declaringClass, methodBindingArr[i12].declaringClass)) {
                                TypeVariableBinding[] typeVariableBindingArr = methodBinding.typeVariables;
                                if (typeVariableBindingArr.length != methodBindingArr[i12].typeVariables.length) {
                                    TypeVariableBinding[] typeVariableBindingArr2 = Binding.NO_TYPE_VARIABLES;
                                    if (typeVariableBindingArr != typeVariableBindingArr2 || methodBinding.original() != methodBindingArr[i12]) {
                                        MethodBinding methodBinding3 = methodBindingArr[i12];
                                        if (methodBinding3.typeVariables == typeVariableBindingArr2) {
                                        }
                                    }
                                }
                            }
                            problemReporter().duplicateInheritedMethods(this.type, methodBinding, methodBindingArr[i12], this.environment.globalOptions.sourceLevel >= ClassFileConstants.JDK1_8);
                            z11 = false;
                        }
                        z10 = false;
                    }
                    methodBinding = methodBindingArr[i12];
                    z10 = false;
                }
            }
        }
        if (z11) {
            if (z10) {
                if (!this.type.isAbstract()) {
                    problemReporter().abstractMethodMustBeImplemented(this.type, methodBinding2);
                    return;
                }
            } else if (methodBinding != null && methodBinding.isDefaultMethod() && this.environment.globalOptions.complianceLevel >= ClassFileConstants.JDK1_8 && !checkInheritedDefaultMethods(methodBindingArr, zArr, i10)) {
                return;
            }
            super.checkInheritedMethods(methodBindingArr, i10, zArr, zArr2);
        }
    }

    @Override
    public void reportRawReferences(MethodBinding methodBinding, MethodBinding methodBinding2) {
        AbstractMethodDeclaration sourceMethod;
        TypeReference typeReference;
        CompilerOptions compilerOptions = this.type.scope.compilerOptions();
        if (compilerOptions.sourceLevel < ClassFileConstants.JDK1_5 || compilerOptions.reportUnavoidableGenericTypeProblems || (sourceMethod = methodBinding.sourceMethod()) == null) {
            return;
        }
        TypeBinding[] typeBindingArr = methodBinding.parameters;
        TypeBinding[] typeBindingArr2 = methodBinding2.parameters;
        Argument[] argumentArr = sourceMethod.arguments;
        int length = typeBindingArr.length;
        for (int i10 = 0; i10 < length; i10++) {
            TypeBinding typeBinding = typeBindingArr[i10];
            TypeBinding typeBinding2 = typeBindingArr2[i10];
            Argument argument = argumentArr[i10];
            if (typeBinding.leafComponentType().isRawType()) {
                if (typeBinding2.leafComponentType().isRawType()) {
                    argument.binding.tagBits |= 512;
                } else if (compilerOptions.getSeverity(CompilerOptions.RawTypeReference) != 256 && (argument.type.bits & 1073741824) == 0) {
                    sourceMethod.scope.problemReporter().rawTypeReference(argument.type, typeBinding);
                }
            }
        }
        if (sourceMethod.isConstructor() || !(sourceMethod instanceof MethodDeclaration) || (typeReference = ((MethodDeclaration) sourceMethod).returnType) == null) {
            return;
        }
        TypeBinding typeBinding3 = methodBinding2.returnType;
        TypeBinding typeBinding4 = methodBinding.returnType;
        if (!typeBinding4.leafComponentType().isRawType() || typeBinding3.leafComponentType().isRawType() || (typeReference.bits & 1073741824) != 0 || compilerOptions.getSeverity(CompilerOptions.RawTypeReference) == 256) {
            return;
        }
        sourceMethod.scope.problemReporter().rawTypeReference(typeReference, typeBinding4);
    }
}
