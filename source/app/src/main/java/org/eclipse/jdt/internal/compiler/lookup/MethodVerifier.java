package org.eclipse.jdt.internal.compiler.lookup;

import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.ast.TypeDeclaration;
import org.eclipse.jdt.internal.compiler.ast.TypeReference;
import org.eclipse.jdt.internal.compiler.classfmt.ClassFileConstants;
import org.eclipse.jdt.internal.compiler.impl.CompilerOptions;
import org.eclipse.jdt.internal.compiler.problem.ProblemReporter;
import org.eclipse.jdt.internal.compiler.util.HashtableOfObject;
import org.eclipse.jdt.internal.compiler.util.SimpleSet;
import org.eclipse.jdt.internal.compiler.util.Sorting;

public abstract class MethodVerifier extends ImplicitNullAnnotationVerifier {
    HashtableOfObject currentMethods;
    HashtableOfObject inheritedMethods;
    HashtableOfObject inheritedOverriddenMethods;
    SourceTypeBinding type;

    public MethodVerifier(LookupEnvironment lookupEnvironment) {
        super(lookupEnvironment);
        this.type = null;
        this.inheritedMethods = null;
        this.currentMethods = null;
        this.inheritedOverriddenMethods = null;
    }

    public static boolean couldMethodOverride(MethodBinding methodBinding, MethodBinding methodBinding2) {
        if (!CharOperation.equals(methodBinding.selector, methodBinding2.selector) || methodBinding == methodBinding2 || methodBinding.isStatic() || methodBinding2.isStatic() || methodBinding2.isPrivate()) {
            return false;
        }
        if (methodBinding2.isDefault() && methodBinding.declaringClass.getPackage() != methodBinding2.declaringClass.getPackage()) {
            return false;
        }
        if (methodBinding.isPublic()) {
            return true;
        }
        if (methodBinding2.isPublic()) {
            return false;
        }
        return !methodBinding2.isProtected() || methodBinding.isProtected();
    }

    public static boolean hasGenericParameter(MethodBinding methodBinding) {
        if (methodBinding.genericSignature() == null) {
            return false;
        }
        for (TypeBinding typeBinding : methodBinding.parameters) {
            TypeBinding leafComponentType = typeBinding.leafComponentType();
            if ((leafComponentType instanceof ReferenceBinding) && (((ReferenceBinding) leafComponentType).modifiers & 1073741824) != 0) {
                return true;
            }
        }
        return false;
    }

    public void addBridgeMethodCandidate(MethodBinding methodBinding) {
        MethodBinding[] methodBindingArr;
        MethodBinding[] methodBindingArr2 = (MethodBinding[]) this.inheritedOverriddenMethods.get(methodBinding.selector);
        if (methodBindingArr2 == null) {
            methodBindingArr = new MethodBinding[]{methodBinding};
        } else {
            int length = methodBindingArr2.length;
            MethodBinding[] methodBindingArr3 = new MethodBinding[length + 1];
            System.arraycopy(methodBindingArr2, 0, methodBindingArr3, 0, length);
            methodBindingArr3[length] = methodBinding;
            methodBindingArr = methodBindingArr3;
        }
        this.inheritedOverriddenMethods.put(methodBinding.selector, methodBindingArr);
    }

    public boolean areMethodsCompatible(MethodBinding methodBinding, MethodBinding methodBinding2) {
        return areMethodsCompatible(methodBinding, methodBinding2, this.environment);
    }

    public boolean areReturnTypesCompatible(MethodBinding methodBinding, MethodBinding methodBinding2) {
        return areReturnTypesCompatible(methodBinding, methodBinding2, this.type.scope.environment());
    }

    public boolean canOverridingMethodDifferInErasure(MethodBinding methodBinding, MethodBinding methodBinding2) {
        return false;
    }

    public boolean canSkipInheritedMethods() {
        return (this.type.superclass() == null || !this.type.superclass().isAbstract()) && this.type.superInterfaces() == Binding.NO_SUPERINTERFACES;
    }

    public void checkAbstractMethod(MethodBinding methodBinding) {
        if (mustImplementAbstractMethod(methodBinding.declaringClass)) {
            TypeDeclaration typeDeclaration = this.type.scope.referenceContext;
            if (typeDeclaration != null) {
                typeDeclaration.addMissingAbstractMethodFor(methodBinding).scope.problemReporter().abstractMethodMustBeImplemented(this.type, methodBinding);
            } else {
                problemReporter().abstractMethodMustBeImplemented(this.type, methodBinding);
            }
        }
    }

    public void checkAgainstInheritedMethods(MethodBinding methodBinding, MethodBinding[] methodBindingArr, int i10, MethodBinding[] methodBindingArr2) {
        if (this.type.isAnnotationType()) {
            problemReporter().annotationCannotOverrideMethod(methodBinding, methodBindingArr[i10 - 1]);
            return;
        }
        CompilerOptions compilerOptions = this.type.scope.compilerOptions();
        int[] findOverriddenInheritedMethods = i10 > 1 ? findOverriddenInheritedMethods(methodBindingArr, i10) : null;
        int i11 = i10;
        while (true) {
            i11--;
            if (i11 < 0) {
                break;
            }
            MethodBinding methodBinding2 = methodBindingArr[i11];
            if (findOverriddenInheritedMethods == null || findOverriddenInheritedMethods[i11] == 0) {
                if (methodBinding.isStatic() != methodBinding2.isStatic()) {
                    problemReporter(methodBinding).staticAndInstanceConflict(methodBinding, methodBinding2);
                } else {
                    if (methodBinding2.isAbstract()) {
                        if (methodBinding2.declaringClass.isInterface()) {
                            methodBinding.modifiers |= 536870912;
                        } else {
                            methodBinding.modifiers |= 805306368;
                        }
                    } else if (methodBinding2.isPublic() || !this.type.isInterface()) {
                        if (methodBinding.isDefaultMethod() && !methodBinding2.isFinal() && methodBinding2.declaringClass.f102482id == 1) {
                            problemReporter(methodBinding).defaultMethodOverridesObjectMethod(methodBinding);
                        } else if (methodBinding2.isDefaultMethod()) {
                            methodBinding.modifiers |= 536870912;
                        } else {
                            methodBinding.modifiers |= 268435456;
                        }
                    }
                    if (areReturnTypesCompatible(methodBinding, methodBinding2) || (methodBinding.returnType.tagBits & 128) != 0 || !reportIncompatibleReturnTypeError(methodBinding, methodBinding2)) {
                        reportRawReferences(methodBinding, methodBinding2);
                        if (methodBinding.thrownExceptions != Binding.NO_EXCEPTIONS) {
                            checkExceptions(methodBinding, methodBinding2);
                        }
                        if (methodBinding2.isFinal()) {
                            problemReporter(methodBinding).finalMethodCannotBeOverridden(methodBinding, methodBinding2);
                        }
                        if (!isAsVisible(methodBinding, methodBinding2)) {
                            problemReporter(methodBinding).visibilityConflict(methodBinding, methodBinding2);
                        }
                        if (methodBinding2.isSynchronized() && !methodBinding.isSynchronized()) {
                            problemReporter(methodBinding).missingSynchronizedOnInheritedMethod(methodBinding, methodBinding2);
                        }
                        if (compilerOptions.reportDeprecationWhenOverridingDeprecatedMethod && methodBinding2.isViewedAsDeprecated() && (!methodBinding.isViewedAsDeprecated() || compilerOptions.reportDeprecationInsideDeprecatedCode)) {
                            ReferenceBinding referenceBinding = methodBinding2.declaringClass;
                            if (referenceBinding.isInterface()) {
                                int i12 = i10;
                                while (true) {
                                    i12--;
                                    if (i12 < 0) {
                                        break;
                                    } else if (i11 == i12 || !methodBindingArr[i12].declaringClass.implementsInterface(referenceBinding, false)) {
                                    }
                                }
                            }
                            problemReporter(methodBinding).overridesDeprecatedMethod(methodBinding, methodBinding2);
                        }
                    }
                }
            }
            if (!methodBinding2.isStatic() && !methodBinding2.isFinal()) {
                checkForBridgeMethod(methodBinding, methodBinding2, methodBindingArr2);
            }
        }
        MethodBinding[] methodBindingArr3 = (MethodBinding[]) this.inheritedOverriddenMethods.get(methodBinding.selector);
        if (methodBindingArr3 == null) {
            return;
        }
        int length = methodBindingArr3.length;
        while (true) {
            length--;
            if (length < 0) {
                return;
            }
            MethodBinding methodBinding3 = methodBindingArr3[length];
            if (isParameterSubsignature(methodBinding, methodBinding3) && !methodBinding3.isStatic() && !methodBinding3.isFinal()) {
                checkForBridgeMethod(methodBinding, methodBinding3, methodBindingArr2);
            }
        }
    }

    public void checkConcreteInheritedMethod(MethodBinding methodBinding, MethodBinding[] methodBindingArr) {
        if (methodBinding.isStatic()) {
            problemReporter().staticInheritedMethodConflicts(this.type, methodBinding, methodBindingArr);
        }
        if (!methodBinding.isPublic()) {
            int length = methodBindingArr.length;
            int i10 = 0;
            if (methodBinding.isProtected()) {
                while (i10 < length && !methodBindingArr[i10].isPublic()) {
                    i10++;
                }
            } else if (methodBinding.isDefault()) {
                while (i10 < length && methodBindingArr[i10].isDefault()) {
                    i10++;
                }
            }
            if (i10 < length) {
                problemReporter().inheritedMethodReducesVisibility(this.type, methodBinding, methodBindingArr);
            }
        }
        if (methodBinding.thrownExceptions != Binding.NO_EXCEPTIONS) {
            int length2 = methodBindingArr.length;
            while (true) {
                length2--;
                if (length2 < 0) {
                    break;
                } else {
                    checkExceptions(methodBinding, methodBindingArr[length2]);
                }
            }
        }
        if (methodBinding.isOrEnclosedByPrivateType()) {
            methodBinding.original().modifiers |= 134217728;
        }
    }

    public void checkExceptions(MethodBinding methodBinding, MethodBinding methodBinding2) {
        ReferenceBinding[] resolvedExceptionTypesFor = resolvedExceptionTypesFor(methodBinding);
        ReferenceBinding[] resolvedExceptionTypesFor2 = resolvedExceptionTypesFor(methodBinding2);
        int length = resolvedExceptionTypesFor.length;
        while (true) {
            length--;
            if (length < 0) {
                return;
            }
            ReferenceBinding referenceBinding = resolvedExceptionTypesFor[length];
            int length2 = resolvedExceptionTypesFor2.length;
            do {
                length2--;
                if (length2 <= -1) {
                    break;
                }
            } while (!isSameClassOrSubclassOf(referenceBinding, resolvedExceptionTypesFor2[length2]));
            if (length2 == -1 && !referenceBinding.isUncheckedException(false) && (referenceBinding.tagBits & 128) == 0) {
                problemReporter(methodBinding).incompatibleExceptionInThrowsClause(this.type, methodBinding, methodBinding2, referenceBinding);
            }
        }
    }

    public void checkForBridgeMethod(MethodBinding methodBinding, MethodBinding methodBinding2, MethodBinding[] methodBindingArr) {
    }

    public void checkForMissingHashCodeMethod() {
        boolean z10;
        MethodBinding exactMethod;
        MethodBinding[] methods = this.type.getMethods(TypeConstants.EQUALS);
        int length = methods.length;
        loop0: while (true) {
            z10 = false;
            while (!z10 && length - 1 >= 0) {
                TypeBinding[] typeBindingArr = methods[length].parameters;
                if (typeBindingArr.length == 1 && typeBindingArr[0].f102482id == 1) {
                    z10 = true;
                }
            }
        }
        if (z10 && (exactMethod = this.type.getExactMethod(TypeConstants.HASHCODE, Binding.NO_PARAMETERS, null)) != null && exactMethod.declaringClass.f102482id == 1) {
            problemReporter().shouldImplementHashcode(this.type);
        }
    }

    public void checkForRedundantSuperinterfaces(ReferenceBinding referenceBinding, ReferenceBinding[] referenceBindingArr) {
        int i10;
        ReferenceBinding[] referenceBindingArr2;
        if (referenceBindingArr == Binding.NO_SUPERINTERFACES) {
            return;
        }
        SimpleSet simpleSet = new SimpleSet(referenceBindingArr.length);
        int length = referenceBindingArr.length;
        int i11 = 0;
        SimpleSet simpleSet2 = null;
        int i12 = 0;
        while (true) {
            i10 = 3;
            if (i12 >= length) {
                break;
            }
            ReferenceBinding referenceBinding2 = referenceBindingArr[i12];
            for (int i13 = 0; i13 < length; i13++) {
                ReferenceBinding referenceBinding3 = referenceBindingArr[i13];
                if (i12 != i13 && referenceBinding2.implementsInterface(referenceBinding3, true)) {
                    if (simpleSet2 == null) {
                        simpleSet2 = new SimpleSet(3);
                    } else if (simpleSet2.includes(referenceBinding3)) {
                    }
                    SimpleSet simpleSet3 = simpleSet2;
                    simpleSet3.add(referenceBinding3);
                    TypeReference[] typeReferenceArr = this.type.scope.referenceContext.superInterfaces;
                    int length2 = typeReferenceArr.length;
                    int i14 = 0;
                    while (true) {
                        if (i14 >= length2) {
                            break;
                        }
                        if (TypeBinding.equalsEquals(typeReferenceArr[i14].resolvedType, referenceBinding2)) {
                            problemReporter().redundantSuperInterface(this.type, typeReferenceArr[i13], referenceBinding3, referenceBinding2);
                            break;
                        }
                        i14++;
                    }
                    simpleSet2 = simpleSet3;
                }
            }
            simpleSet.add(referenceBinding2);
            i12++;
            i11 = 0;
        }
        SimpleSet simpleSet4 = new SimpleSet(5);
        for (ReferenceBinding referenceBinding4 = referenceBinding; referenceBinding4 != null && referenceBinding4.isValidBinding(); referenceBinding4 = referenceBinding4.superclass()) {
            ReferenceBinding[] superInterfaces = referenceBinding4.superInterfaces();
            if (superInterfaces != Binding.NO_SUPERINTERFACES) {
                int length3 = superInterfaces.length;
                for (int i15 = i11; i15 < length3; i15++) {
                    ReferenceBinding referenceBinding5 = superInterfaces[i15];
                    if (!simpleSet4.includes(referenceBinding5) && referenceBinding5.isValidBinding()) {
                        if (simpleSet.includes(referenceBinding5)) {
                            if (simpleSet2 == null) {
                                simpleSet2 = new SimpleSet(3);
                            } else if (simpleSet2.includes(referenceBinding5)) {
                            }
                            SimpleSet simpleSet5 = simpleSet2;
                            simpleSet5.add(referenceBinding5);
                            TypeReference[] typeReferenceArr2 = this.type.scope.referenceContext.superInterfaces;
                            int length4 = typeReferenceArr2.length;
                            int i16 = i11;
                            while (true) {
                                if (i16 >= length4) {
                                    break;
                                }
                                if (TypeBinding.equalsEquals(typeReferenceArr2[i16].resolvedType, referenceBinding5)) {
                                    problemReporter().redundantSuperInterface(this.type, typeReferenceArr2[i16], referenceBinding5, referenceBinding4);
                                    break;
                                }
                                i16++;
                            }
                            simpleSet2 = simpleSet5;
                        } else {
                            simpleSet4.add(referenceBinding5);
                        }
                    }
                }
            }
        }
        int i17 = simpleSet4.elementSize;
        if (i17 == 0) {
            return;
        }
        ReferenceBinding[] referenceBindingArr3 = new ReferenceBinding[i17];
        simpleSet4.asArray(referenceBindingArr3);
        int i18 = i11;
        while (i18 < i17) {
            ReferenceBinding referenceBinding6 = referenceBindingArr3[i18];
            ReferenceBinding[] superInterfaces2 = referenceBinding6.superInterfaces();
            if (superInterfaces2 != Binding.NO_SUPERINTERFACES) {
                int length5 = superInterfaces2.length;
                int i19 = i17 + length5;
                if (i19 >= referenceBindingArr3.length) {
                    referenceBindingArr2 = new ReferenceBinding[i19 + 5];
                    System.arraycopy(referenceBindingArr3, i11, referenceBindingArr2, i11, i17);
                } else {
                    referenceBindingArr2 = referenceBindingArr3;
                }
                int i20 = i11;
                while (i20 < length5) {
                    ReferenceBinding referenceBinding7 = superInterfaces2[i20];
                    if (!simpleSet4.includes(referenceBinding7) && referenceBinding7.isValidBinding()) {
                        if (simpleSet.includes(referenceBinding7)) {
                            if (simpleSet2 == null) {
                                simpleSet2 = new SimpleSet(i10);
                            } else if (simpleSet2.includes(referenceBinding7)) {
                            }
                            SimpleSet simpleSet6 = simpleSet2;
                            simpleSet6.add(referenceBinding7);
                            TypeReference[] typeReferenceArr3 = this.type.scope.referenceContext.superInterfaces;
                            int length6 = typeReferenceArr3.length;
                            while (true) {
                                if (i11 >= length6) {
                                    break;
                                }
                                if (TypeBinding.equalsEquals(typeReferenceArr3[i11].resolvedType, referenceBinding7)) {
                                    problemReporter().redundantSuperInterface(this.type, typeReferenceArr3[i11], referenceBinding7, referenceBinding6);
                                    break;
                                }
                                i11++;
                            }
                            simpleSet2 = simpleSet6;
                        } else {
                            simpleSet4.add(referenceBinding7);
                            referenceBindingArr2[i17] = referenceBinding7;
                            i17++;
                        }
                    }
                    i20++;
                    i11 = 0;
                    i10 = 3;
                }
                referenceBindingArr3 = referenceBindingArr2;
            }
            i18++;
            i11 = 0;
            i10 = 3;
        }
    }

    public void checkInheritedMethods(MethodBinding[] methodBindingArr, int i10, boolean[] zArr, boolean[] zArr2) {
        MethodBinding methodBinding;
        MethodBinding methodBinding2 = (this.type.isInterface() || methodBindingArr[0].isAbstract()) ? null : methodBindingArr[0];
        if (methodBinding2 == null) {
            MethodBinding findBestInheritedAbstractOrDefaultMethod = i10 == 1 ? methodBindingArr[0] : findBestInheritedAbstractOrDefaultMethod(methodBindingArr, i10);
            boolean z10 = findBestInheritedAbstractOrDefaultMethod == null;
            if (z10) {
                findBestInheritedAbstractOrDefaultMethod = methodBindingArr[0];
            }
            if (!mustImplementAbstractMethod(findBestInheritedAbstractOrDefaultMethod.declaringClass)) {
                if (z10) {
                    problemReporter().inheritedMethodsHaveIncompatibleReturnTypes(this.type, methodBindingArr, i10, zArr);
                    return;
                }
                return;
            }
            TypeDeclaration typeDeclaration = this.type.scope.referenceContext;
            MethodBinding methodBinding3 = methodBindingArr[0];
            if (methodBinding3 == findBestInheritedAbstractOrDefaultMethod || methodBinding3.declaringClass.isInterface()) {
                if (typeDeclaration != null) {
                    typeDeclaration.addMissingAbstractMethodFor(findBestInheritedAbstractOrDefaultMethod).scope.problemReporter().abstractMethodMustBeImplemented(this.type, findBestInheritedAbstractOrDefaultMethod);
                    return;
                } else {
                    problemReporter().abstractMethodMustBeImplemented(this.type, findBestInheritedAbstractOrDefaultMethod);
                    return;
                }
            }
            if (typeDeclaration != null) {
                typeDeclaration.addMissingAbstractMethodFor(findBestInheritedAbstractOrDefaultMethod).scope.problemReporter().abstractMethodMustBeImplemented(this.type, findBestInheritedAbstractOrDefaultMethod, methodBinding3);
                return;
            } else {
                problemReporter().abstractMethodMustBeImplemented(this.type, findBestInheritedAbstractOrDefaultMethod, methodBinding3);
                return;
            }
        }
        if (i10 < 2) {
            return;
        }
        int i11 = i10;
        do {
            i11--;
            if (i11 <= 0) {
                break;
            }
        } while (checkInheritedReturnTypes(methodBinding2, methodBindingArr[i11]));
        if (i11 > 0) {
            MethodBinding findBestInheritedAbstractOrDefaultMethod2 = findBestInheritedAbstractOrDefaultMethod(methodBindingArr, i10);
            if (findBestInheritedAbstractOrDefaultMethod2 == null) {
                problemReporter().inheritedMethodsHaveIncompatibleReturnTypes(this.type, methodBindingArr, i10, zArr);
                return;
            } else {
                problemReporter().abstractMethodMustBeImplemented(this.type, findBestInheritedAbstractOrDefaultMethod2, methodBinding2);
                return;
            }
        }
        int i12 = i10 - 1;
        MethodBinding[] methodBindingArr2 = new MethodBinding[i12];
        int i13 = 0;
        for (int i14 = 0; i14 < i10; i14++) {
            if (methodBindingArr[i14].isAbstract() || ((methodBinding = methodBindingArr[i14]) != methodBinding2 && methodBinding.isDefaultMethod())) {
                methodBindingArr2[i13] = methodBindingArr[i14];
                i13++;
            }
        }
        if (i13 == 0) {
            return;
        }
        if (i13 < i12) {
            MethodBinding[] methodBindingArr3 = new MethodBinding[i13];
            System.arraycopy(methodBindingArr2, 0, methodBindingArr3, 0, i13);
            methodBindingArr2 = methodBindingArr3;
        }
        checkConcreteInheritedMethod(methodBinding2, methodBindingArr2);
    }

    public boolean checkInheritedReturnTypes(MethodBinding methodBinding, MethodBinding methodBinding2) {
        if (areReturnTypesCompatible(methodBinding, methodBinding2)) {
            return true;
        }
        return !this.type.isInterface() && (methodBinding.declaringClass.isClass() || !this.type.implementsInterface(methodBinding.declaringClass, false)) && (methodBinding2.declaringClass.isClass() || !this.type.implementsInterface(methodBinding2.declaringClass, false));
    }

    public abstract void checkMethods();

    public void checkPackagePrivateAbstractMethod(MethodBinding methodBinding) {
        PackageBinding packageBinding = methodBinding.declaringClass.fPackage;
        SourceTypeBinding sourceTypeBinding = this.type;
        if (packageBinding == sourceTypeBinding.fPackage) {
            return;
        }
        ReferenceBinding superclass = sourceTypeBinding.superclass();
        char[] cArr = methodBinding.selector;
        while (superclass.isValidBinding() && superclass.isAbstract()) {
            if (packageBinding == superclass.fPackage) {
                MethodBinding[] methods = superclass.getMethods(cArr);
                int length = methods.length;
                while (true) {
                    length--;
                    if (length < 0) {
                        break;
                    }
                    MethodBinding methodBinding2 = methods[length];
                    if (!methodBinding2.isPrivate() && !methodBinding2.isConstructor() && !methodBinding2.isDefaultAbstract() && areMethodsCompatible(methodBinding2, methodBinding)) {
                        return;
                    }
                }
            }
            superclass = superclass.superclass();
            if (!TypeBinding.notEquals(superclass, methodBinding.declaringClass)) {
                problemReporter().abstractMethodCannotBeOverridden(this.type, methodBinding);
                return;
            }
        }
    }

    public void collectAllDistinctSuperInterfaces(ReferenceBinding[] referenceBindingArr, Set set, List list) {
        for (ReferenceBinding referenceBinding : referenceBindingArr) {
            if (set.add(referenceBinding)) {
                list.add(referenceBinding);
                collectAllDistinctSuperInterfaces(referenceBinding.superInterfaces(), set, list);
            }
        }
    }

    public void computeInheritedMethods() {
        ReferenceBinding superclass;
        if (this.type.isInterface()) {
            superclass = this.type.scope.getJavaLangObject();
        } else {
            superclass = this.type.superclass();
        }
        computeInheritedMethods(superclass, this.type.superInterfaces());
        checkForRedundantSuperinterfaces(superclass, this.type.superInterfaces());
    }

    public void computeMethods() {
        MethodBinding[] methodBindingArr;
        MethodBinding[] methods = this.type.methods();
        int length = methods.length;
        this.currentMethods = new HashtableOfObject(length == 0 ? 1 : length);
        while (true) {
            length--;
            if (length < 0) {
                return;
            }
            MethodBinding methodBinding = methods[length];
            if (!methodBinding.isConstructor() && !methodBinding.isDefaultAbstract()) {
                MethodBinding[] methodBindingArr2 = (MethodBinding[]) this.currentMethods.get(methodBinding.selector);
                if (methodBindingArr2 == null) {
                    methodBindingArr = new MethodBinding[1];
                } else {
                    int length2 = methodBindingArr2.length;
                    MethodBinding[] methodBindingArr3 = new MethodBinding[length2 + 1];
                    System.arraycopy(methodBindingArr2, 0, methodBindingArr3, 0, length2);
                    methodBindingArr = methodBindingArr3;
                }
                methodBindingArr[methodBindingArr.length - 1] = methodBinding;
                this.currentMethods.put(methodBinding.selector, methodBindingArr);
            }
        }
    }

    public MethodBinding computeSubstituteMethod(MethodBinding methodBinding, MethodBinding methodBinding2) {
        return computeSubstituteMethod(methodBinding, methodBinding2, this.environment);
    }

    public boolean doesMethodOverride(MethodBinding methodBinding, MethodBinding methodBinding2) {
        return doesMethodOverride(methodBinding, methodBinding2, this.environment);
    }

    public MethodBinding findBestInheritedAbstractOrDefaultMethod(MethodBinding[] methodBindingArr, int i10) {
        for (int i11 = 0; i11 < i10; i11++) {
            MethodBinding methodBinding = methodBindingArr[i11];
            if (methodBinding.isAbstract() || methodBinding.isDefaultMethod()) {
                for (int i12 = 0; i12 < i10; i12++) {
                    if (i11 != i12 && !checkInheritedReturnTypes(methodBinding, methodBindingArr[i12])) {
                        if (this.type.isInterface() && methodBindingArr[i12].declaringClass.f102482id == 1) {
                            return methodBinding;
                        }
                    }
                }
                return methodBinding;
            }
        }
        return null;
    }

    public int[] findOverriddenInheritedMethods(MethodBinding[] methodBindingArr, int i10) {
        int i11 = 0;
        ReferenceBinding referenceBinding = methodBindingArr[0].declaringClass;
        int[] iArr = null;
        if (!referenceBinding.isInterface()) {
            ReferenceBinding referenceBinding2 = methodBindingArr[1].declaringClass;
            int i12 = 1;
            while (TypeBinding.equalsEquals(referenceBinding, referenceBinding2)) {
                i12++;
                if (i12 == i10) {
                    return null;
                }
                referenceBinding2 = methodBindingArr[i12].declaringClass;
            }
            if (!referenceBinding2.isInterface()) {
                if (referenceBinding.fPackage != referenceBinding2.fPackage && methodBindingArr[i12].isDefault()) {
                    return null;
                }
                int[] iArr2 = new int[i10];
                do {
                    iArr2[i12] = -1;
                    i12++;
                    if (i12 == i10) {
                        return iArr2;
                    }
                } while (!methodBindingArr[i12].declaringClass.isInterface());
                iArr = iArr2;
            }
            i11 = i12;
        }
        while (i11 < i10) {
            if (iArr == null || iArr[i11] != -1) {
                ReferenceBinding referenceBinding3 = methodBindingArr[i11].declaringClass;
                int i13 = i11 + 1;
                while (true) {
                    if (i13 < i10) {
                        if (iArr == null || iArr[i13] != -1) {
                            ReferenceBinding referenceBinding4 = methodBindingArr[i13].declaringClass;
                            if (TypeBinding.equalsEquals(referenceBinding3, referenceBinding4)) {
                                continue;
                            } else if (referenceBinding3.implementsInterface(referenceBinding4, true)) {
                                if (iArr == null) {
                                    iArr = new int[i10];
                                }
                                iArr[i13] = -1;
                            } else if (referenceBinding4.implementsInterface(referenceBinding3, true)) {
                                if (iArr == null) {
                                    iArr = new int[i10];
                                }
                                iArr[i11] = -1;
                            }
                        }
                        i13++;
                    }
                }
            }
            i11++;
        }
        return iArr;
    }

    public SimpleSet findSuperinterfaceCollisions(ReferenceBinding referenceBinding, ReferenceBinding[] referenceBindingArr) {
        return null;
    }

    public boolean isAsVisible(MethodBinding methodBinding, MethodBinding methodBinding2) {
        if (methodBinding2.modifiers == methodBinding.modifiers || methodBinding.isPublic()) {
            return true;
        }
        if (methodBinding2.isPublic()) {
            return false;
        }
        if (methodBinding.isProtected()) {
            return true;
        }
        if (methodBinding2.isProtected()) {
            return false;
        }
        return !methodBinding.isPrivate();
    }

    public boolean isInterfaceMethodImplemented(MethodBinding methodBinding, MethodBinding methodBinding2, ReferenceBinding referenceBinding) {
        return ImplicitNullAnnotationVerifier.areParametersEqual(methodBinding2, methodBinding) && methodBinding2.declaringClass.implementsInterface(referenceBinding, true);
    }

    public boolean isMethodSubsignature(MethodBinding methodBinding, MethodBinding methodBinding2) {
        return CharOperation.equals(methodBinding.selector, methodBinding2.selector) && isParameterSubsignature(methodBinding, methodBinding2);
    }

    public boolean isParameterSubsignature(MethodBinding methodBinding, MethodBinding methodBinding2) {
        return isParameterSubsignature(methodBinding, methodBinding2, this.environment);
    }

    public boolean isSameClassOrSubclassOf(ReferenceBinding referenceBinding, ReferenceBinding referenceBinding2) {
        while (!TypeBinding.equalsEquals(referenceBinding, referenceBinding2)) {
            referenceBinding = referenceBinding.superclass();
            if (referenceBinding == null) {
                return false;
            }
        }
        return true;
    }

    public boolean isSubstituteParameterSubsignature(MethodBinding methodBinding, MethodBinding methodBinding2) {
        return isSubstituteParameterSubsignature(methodBinding, methodBinding2, this.environment);
    }

    public boolean mustImplementAbstractMethod(ReferenceBinding referenceBinding) {
        if (!mustImplementAbstractMethods()) {
            return false;
        }
        ReferenceBinding superclass = this.type.superclass();
        if (referenceBinding.isClass()) {
            while (superclass.isAbstract() && TypeBinding.notEquals(superclass, referenceBinding)) {
                superclass = superclass.superclass();
            }
        } else {
            if (this.type.implementsInterface(referenceBinding, false) && !superclass.implementsInterface(referenceBinding, true)) {
                return true;
            }
            while (superclass.isAbstract() && !superclass.implementsInterface(referenceBinding, false)) {
                superclass = superclass.superclass();
            }
        }
        return superclass.isAbstract();
    }

    public boolean mustImplementAbstractMethods() {
        return (this.type.isInterface() || this.type.isAbstract()) ? false : true;
    }

    public ProblemReporter problemReporter() {
        return this.type.scope.problemReporter();
    }

    public boolean reportIncompatibleReturnTypeError(MethodBinding methodBinding, MethodBinding methodBinding2) {
        problemReporter(methodBinding).incompatibleReturnType(methodBinding, methodBinding2);
        return true;
    }

    public void reportRawReferences(MethodBinding methodBinding, MethodBinding methodBinding2) {
    }

    public ReferenceBinding[] resolvedExceptionTypesFor(MethodBinding methodBinding) {
        ReferenceBinding[] referenceBindingArr = methodBinding.thrownExceptions;
        if ((methodBinding.modifiers & 33554432) == 0) {
            return referenceBindingArr;
        }
        if (!(methodBinding.declaringClass instanceof BinaryTypeBinding)) {
            return Binding.NO_EXCEPTIONS;
        }
        int length = referenceBindingArr.length;
        while (true) {
            length--;
            if (length < 0) {
                return referenceBindingArr;
            }
            referenceBindingArr[length] = (ReferenceBinding) BinaryTypeBinding.resolveType(referenceBindingArr[length], this.environment, true);
        }
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer(10);
        stringBuffer.append("MethodVerifier for type: ");
        stringBuffer.append(this.type.readableName());
        stringBuffer.append('\n');
        stringBuffer.append("\t-inherited methods: ");
        stringBuffer.append((Object) this.inheritedMethods);
        return stringBuffer.toString();
    }

    public void verify() {
        computeMethods();
        computeInheritedMethods();
        checkMethods();
        if (this.type.isClass()) {
            checkForMissingHashCodeMethod();
        }
    }

    public static boolean areMethodsCompatible(MethodBinding methodBinding, MethodBinding methodBinding2, LookupEnvironment lookupEnvironment) {
        MethodBinding original = methodBinding.original();
        MethodBinding findOriginalInheritedMethod = original.findOriginalInheritedMethod(methodBinding2);
        if (findOriginalInheritedMethod == null) {
            return false;
        }
        return isParameterSubsignature(original, findOriginalInheritedMethod, lookupEnvironment);
    }

    public static boolean areReturnTypesCompatible(MethodBinding methodBinding, MethodBinding methodBinding2, LookupEnvironment lookupEnvironment) {
        if (TypeBinding.equalsEquals(methodBinding.returnType, methodBinding2.returnType)) {
            return true;
        }
        if (lookupEnvironment.globalOptions.sourceLevel >= ClassFileConstants.JDK1_5) {
            if (methodBinding.returnType.isBaseType()) {
                return false;
            }
            if (!methodBinding.declaringClass.isInterface() && methodBinding.declaringClass.f102482id == 1) {
                return methodBinding2.returnType.isCompatibleWith(methodBinding.returnType);
            }
            return methodBinding.returnType.isCompatibleWith(methodBinding2.returnType);
        }
        return ImplicitNullAnnotationVerifier.areTypesEqual(methodBinding.returnType.erasure(), methodBinding2.returnType.erasure());
    }

    /* JADX WARN: Code restructure failed: missing block: B:41:0x00a0, code lost:
    
        r7 = r7 + 1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static MethodBinding computeSubstituteMethod(MethodBinding methodBinding, MethodBinding methodBinding2, LookupEnvironment lookupEnvironment) {
        if (methodBinding == null || methodBinding2.parameters.length != methodBinding.parameters.length) {
            return null;
        }
        ReferenceBinding referenceBinding = methodBinding2.declaringClass;
        if (referenceBinding instanceof BinaryTypeBinding) {
            ((BinaryTypeBinding) referenceBinding).resolveTypesFor(methodBinding2);
        }
        ReferenceBinding referenceBinding2 = methodBinding.declaringClass;
        if (referenceBinding2 instanceof BinaryTypeBinding) {
            ((BinaryTypeBinding) referenceBinding2).resolveTypesFor(methodBinding);
        }
        TypeVariableBinding[] typeVariableBindingArr = methodBinding.typeVariables;
        int length = typeVariableBindingArr.length;
        if (length == 0) {
            return methodBinding;
        }
        TypeVariableBinding[] typeVariableBindingArr2 = methodBinding2.typeVariables;
        int length2 = typeVariableBindingArr2.length;
        if (length2 == 0) {
            return methodBinding.asRawMethod(lookupEnvironment);
        }
        if (length2 != length) {
            return methodBinding;
        }
        TypeBinding[] typeBindingArr = new TypeBinding[length2];
        System.arraycopy(typeVariableBindingArr2, 0, typeBindingArr, 0, length2);
        ParameterizedGenericMethodBinding createParameterizedGenericMethod = lookupEnvironment.createParameterizedGenericMethod(methodBinding, typeBindingArr);
        for (int i10 = 0; i10 < length; i10++) {
            TypeVariableBinding typeVariableBinding = typeVariableBindingArr[i10];
            TypeVariableBinding typeVariableBinding2 = (TypeVariableBinding) typeBindingArr[i10];
            if (TypeBinding.equalsEquals(typeVariableBinding2.firstBound, typeVariableBinding.firstBound)) {
                if (typeVariableBinding2.firstBound == null) {
                    continue;
                }
            } else {
                TypeBinding typeBinding = typeVariableBinding2.firstBound;
                if (typeBinding != null && typeVariableBinding.firstBound != null && typeBinding.isClass() != typeVariableBinding.firstBound.isClass()) {
                    return methodBinding;
                }
            }
            if (TypeBinding.notEquals(Scope.substitute(createParameterizedGenericMethod, typeVariableBinding.superclass), typeVariableBinding2.superclass)) {
                return methodBinding;
            }
            int length3 = typeVariableBinding.superInterfaces.length;
            ReferenceBinding[] referenceBindingArr = typeVariableBinding2.superInterfaces;
            if (length3 != referenceBindingArr.length) {
                return methodBinding;
            }
            int i11 = 0;
            while (i11 < length3) {
                TypeBinding substitute = Scope.substitute(createParameterizedGenericMethod, typeVariableBinding.superInterfaces[i11]);
                for (int i12 = 0; i12 < length3; i12++) {
                    if (TypeBinding.equalsEquals(substitute, referenceBindingArr[i12])) {
                        break;
                    }
                }
                return methodBinding;
            }
        }
        return createParameterizedGenericMethod;
    }

    public static boolean doesMethodOverride(MethodBinding methodBinding, MethodBinding methodBinding2, LookupEnvironment lookupEnvironment) {
        return couldMethodOverride(methodBinding, methodBinding2) && areMethodsCompatible(methodBinding, methodBinding2, lookupEnvironment);
    }

    public static boolean isParameterSubsignature(MethodBinding methodBinding, MethodBinding methodBinding2, LookupEnvironment lookupEnvironment) {
        MethodBinding computeSubstituteMethod = computeSubstituteMethod(methodBinding2, methodBinding, lookupEnvironment);
        return computeSubstituteMethod != null && isSubstituteParameterSubsignature(methodBinding, computeSubstituteMethod, lookupEnvironment);
    }

    public static boolean isSubstituteParameterSubsignature(MethodBinding methodBinding, MethodBinding methodBinding2, LookupEnvironment lookupEnvironment) {
        if (!ImplicitNullAnnotationVerifier.areParametersEqual(methodBinding, methodBinding2)) {
            if (methodBinding2.hasSubstitutedParameters() && methodBinding.areParameterErasuresEqual(methodBinding2)) {
                return methodBinding.typeVariables == Binding.NO_TYPE_VARIABLES && !hasGenericParameter(methodBinding);
            }
            if (methodBinding.declaringClass.isRawType() && methodBinding2.declaringClass.isRawType() && methodBinding.hasSubstitutedParameters() && methodBinding2.hasSubstitutedParameters()) {
                return areMethodsCompatible(methodBinding, methodBinding2, lookupEnvironment);
            }
            return false;
        }
        if (!(methodBinding2 instanceof ParameterizedGenericMethodBinding)) {
            return methodBinding.typeVariables == Binding.NO_TYPE_VARIABLES;
        }
        if (methodBinding.typeVariables != Binding.NO_TYPE_VARIABLES) {
            return !((ParameterizedGenericMethodBinding) methodBinding2).isRaw;
        }
        return !hasGenericParameter(methodBinding);
    }

    public ProblemReporter problemReporter(MethodBinding methodBinding) {
        ProblemReporter problemReporter = problemReporter();
        if (TypeBinding.equalsEquals(methodBinding.declaringClass, this.type) && methodBinding.sourceMethod() != null) {
            problemReporter.referenceContext = methodBinding.sourceMethod();
        }
        return problemReporter;
    }

    public boolean canSkipInheritedMethods(MethodBinding methodBinding, MethodBinding methodBinding2) {
        return methodBinding2 == null || TypeBinding.equalsEquals(methodBinding.declaringClass, methodBinding2.declaringClass);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void computeInheritedMethods(ReferenceBinding referenceBinding, ReferenceBinding[] referenceBindingArr) {
        ReferenceBinding[] sortTypes;
        MethodBinding[] methodBindingArr;
        MethodBinding[] methodBindingArr2;
        MethodBinding[] methodBindingArr3;
        this.inheritedMethods = new HashtableOfObject(51);
        this.inheritedOverriddenMethods = new HashtableOfObject(11);
        HashtableOfObject hashtableOfObject = new HashtableOfObject(3);
        for (ReferenceBinding referenceBinding2 = referenceBinding; referenceBinding2 != null && referenceBinding2.isValidBinding(); referenceBinding2 = referenceBinding2.superclass()) {
            MethodBinding[] unResolvedMethods = referenceBinding2.unResolvedMethods();
            int length = unResolvedMethods.length;
            while (true) {
                length--;
                if (length < 0) {
                    break;
                }
                MethodBinding methodBinding = unResolvedMethods[length];
                if (!methodBinding.isPrivate() && !methodBinding.isConstructor() && !methodBinding.isDefaultAbstract()) {
                    MethodBinding[] methodBindingArr4 = (MethodBinding[]) this.inheritedMethods.get(methodBinding.selector);
                    if (methodBindingArr4 != null) {
                        for (MethodBinding methodBinding2 : methodBindingArr4) {
                            if (TypeBinding.notEquals(methodBinding2.declaringClass, methodBinding.declaringClass) && areMethodsCompatible(methodBinding2, methodBinding) && !canOverridingMethodDifferInErasure(methodBinding2, methodBinding)) {
                                if (methodBinding.isDefault()) {
                                    if (methodBinding.isAbstract()) {
                                        checkPackagePrivateAbstractMethod(methodBinding);
                                    } else {
                                        PackageBinding packageBinding = methodBinding2.declaringClass.fPackage;
                                        PackageBinding packageBinding2 = methodBinding.declaringClass.fPackage;
                                        if (packageBinding != packageBinding2 && this.type.fPackage == packageBinding2 && !areReturnTypesCompatible(methodBinding, methodBinding2)) {
                                        }
                                    }
                                }
                                if (TypeBinding.notEquals(methodBinding.returnType.erasure(), methodBinding2.returnType.erasure()) && areReturnTypesCompatible(methodBinding2, methodBinding)) {
                                    addBridgeMethodCandidate(methodBinding);
                                }
                            }
                        }
                    }
                    if (methodBinding.isDefault() && methodBinding.declaringClass.fPackage != this.type.fPackage) {
                        MethodBinding[] methodBindingArr5 = (MethodBinding[]) hashtableOfObject.get(methodBinding.selector);
                        if (methodBindingArr5 != null && methodBinding.isAbstract()) {
                            for (MethodBinding methodBinding3 : methodBindingArr5) {
                                if (areMethodsCompatible(methodBinding3, methodBinding)) {
                                    break;
                                }
                            }
                        }
                        if (methodBindingArr5 == null) {
                            methodBindingArr3 = new MethodBinding[]{methodBinding};
                        } else {
                            int length2 = methodBindingArr5.length;
                            MethodBinding[] methodBindingArr6 = new MethodBinding[length2 + 1];
                            System.arraycopy(methodBindingArr5, 0, methodBindingArr6, 0, length2);
                            methodBindingArr6[length2] = methodBinding;
                            methodBindingArr3 = methodBindingArr6;
                        }
                        hashtableOfObject.put(methodBinding.selector, methodBindingArr3);
                        if (methodBinding.isAbstract() && !this.type.isAbstract()) {
                            problemReporter().abstractMethodCannotBeOverridden(this.type, methodBinding);
                        }
                        MethodBinding[] methodBindingArr7 = (MethodBinding[]) this.currentMethods.get(methodBinding.selector);
                        if (methodBindingArr7 != null && !methodBinding.isStatic()) {
                            int length3 = methodBindingArr7.length;
                            int i10 = 0;
                            while (true) {
                                if (i10 < length3) {
                                    if (!methodBindingArr7[i10].isStatic() && areMethodsCompatible(methodBindingArr7[i10], methodBinding)) {
                                        problemReporter().overridesPackageDefaultMethod(methodBindingArr7[i10], methodBinding);
                                        break;
                                    }
                                    i10++;
                                }
                            }
                        }
                    } else {
                        if (methodBindingArr4 == null) {
                            methodBindingArr2 = new MethodBinding[]{methodBinding};
                        } else {
                            int length4 = methodBindingArr4.length;
                            MethodBinding[] methodBindingArr8 = new MethodBinding[length4 + 1];
                            System.arraycopy(methodBindingArr4, 0, methodBindingArr8, 0, length4);
                            methodBindingArr8[length4] = methodBinding;
                            methodBindingArr2 = methodBindingArr8;
                        }
                        this.inheritedMethods.put(methodBinding.selector, methodBindingArr2);
                    }
                }
            }
        }
        ArrayList arrayList = new ArrayList();
        HashSet hashSet = new HashSet();
        collectAllDistinctSuperInterfaces(referenceBindingArr, hashSet, arrayList);
        for (ReferenceBinding referenceBinding3 = referenceBinding; referenceBinding3 != null && referenceBinding3.f102482id != 1; referenceBinding3 = referenceBinding3.superclass()) {
            collectAllDistinctSuperInterfaces(referenceBinding3.superInterfaces(), hashSet, arrayList);
        }
        if (arrayList.size() == 0) {
            return;
        }
        if (arrayList.size() == 1) {
            sortTypes = new ReferenceBinding[]{(ReferenceBinding) arrayList.get(0)};
        } else {
            sortTypes = Sorting.sortTypes((ReferenceBinding[]) arrayList.toArray(new ReferenceBinding[arrayList.size()]));
        }
        SimpleSet findSuperinterfaceCollisions = findSuperinterfaceCollisions(referenceBinding, sortTypes);
        for (int length5 = sortTypes.length - 1; length5 >= 0; length5--) {
            ReferenceBinding referenceBinding4 = sortTypes[length5];
            if (referenceBinding4.isValidBinding() && (findSuperinterfaceCollisions == null || !findSuperinterfaceCollisions.includes(referenceBinding4))) {
                MethodBinding[] unResolvedMethods2 = referenceBinding4.unResolvedMethods();
                int length6 = unResolvedMethods2.length;
                while (true) {
                    length6--;
                    if (length6 < 0) {
                        break;
                    }
                    MethodBinding methodBinding4 = unResolvedMethods2[length6];
                    if (!methodBinding4.isStatic() && !methodBinding4.isPrivate()) {
                        MethodBinding[] methodBindingArr9 = (MethodBinding[]) this.inheritedMethods.get(methodBinding4.selector);
                        if (methodBindingArr9 == null) {
                            methodBindingArr = new MethodBinding[]{methodBinding4};
                        } else {
                            int length7 = methodBindingArr9.length;
                            for (int i11 = 0; i11 < length7; i11++) {
                                if (isInterfaceMethodImplemented(methodBinding4, methodBindingArr9[i11], referenceBinding4)) {
                                    if (TypeBinding.notEquals(methodBinding4.returnType.erasure(), methodBindingArr9[i11].returnType.erasure())) {
                                        addBridgeMethodCandidate(methodBinding4);
                                    }
                                    if (!canOverridingMethodDifferInErasure(methodBindingArr9[i11], methodBinding4)) {
                                        break;
                                    }
                                }
                            }
                            MethodBinding[] methodBindingArr10 = new MethodBinding[length7 + 1];
                            System.arraycopy(methodBindingArr9, 0, methodBindingArr10, 0, length7);
                            methodBindingArr10[length7] = methodBinding4;
                            methodBindingArr = methodBindingArr10;
                        }
                        this.inheritedMethods.put(methodBinding4.selector, methodBindingArr);
                    }
                }
            }
        }
    }

    public void verify(SourceTypeBinding sourceTypeBinding) {
        if (this.type == null) {
            try {
                this.type = sourceTypeBinding;
                verify();
                return;
            } finally {
                this.type = null;
            }
        }
        this.environment.newMethodVerifier().verify(sourceTypeBinding);
    }
}
