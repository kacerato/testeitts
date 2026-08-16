package org.eclipse.jdt.internal.compiler.lookup;

import android.content.IntentFilter;
import java.util.List;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.ClassFile;
import org.eclipse.jdt.internal.compiler.ast.ASTNode;
import org.eclipse.jdt.internal.compiler.ast.AbstractMethodDeclaration;
import org.eclipse.jdt.internal.compiler.ast.Annotation;
import org.eclipse.jdt.internal.compiler.ast.Argument;
import org.eclipse.jdt.internal.compiler.ast.LambdaExpression;
import org.eclipse.jdt.internal.compiler.ast.MethodDeclaration;
import org.eclipse.jdt.internal.compiler.ast.TypeDeclaration;
import org.eclipse.jdt.internal.compiler.ast.TypeReference;
import org.eclipse.jdt.internal.compiler.classfmt.ClassFileConstants;
import org.eclipse.jdt.internal.compiler.codegen.ConstantPool;
import org.eclipse.jdt.internal.compiler.lookup.ParameterNonNullDefaultProvider;
import org.eclipse.jdt.internal.compiler.util.Util;
import org.luaj.vm2.Lua;

public class MethodBinding extends Binding {
    public ReferenceBinding declaringClass;
    public int defaultNullness;
    public int modifiers;
    public char[][] parameterNames;
    public Boolean[] parameterNonNullness;
    public TypeBinding[] parameters;
    public TypeBinding receiver;
    public TypeBinding returnType;
    public char[] selector;
    char[] signature;
    public long tagBits;
    public ReferenceBinding[] thrownExceptions;
    protected AnnotationBinding[] typeAnnotations;
    public TypeVariableBinding[] typeVariables;

    public MethodBinding() {
        this.typeVariables = Binding.NO_TYPE_VARIABLES;
        this.typeAnnotations = Binding.NO_ANNOTATIONS;
        this.parameterNames = Binding.NO_PARAMETER_NAMES;
    }

    public static int getNonNullByDefaultValue(AnnotationBinding annotationBinding) {
        ElementValuePair[] elementValuePairs = annotationBinding.getElementValuePairs();
        if (elementValuePairs != null && elementValuePairs.length != 0) {
            if (elementValuePairs.length <= 0) {
                return 2;
            }
            int i10 = 0;
            for (ElementValuePair elementValuePair : elementValuePairs) {
                i10 |= Annotation.nullLocationBitsFromAnnotationValue(elementValuePair.getValue());
            }
            return i10;
        }
        ReferenceBinding annotationType = annotationBinding.getAnnotationType();
        if (annotationType == null) {
            return 0;
        }
        MethodBinding[] methods = annotationType.methods();
        if (methods == null || methods.length != 1) {
            return 56;
        }
        return Annotation.nullLocationBitsFromAnnotationValue(methods[0].getDefaultValue());
    }

    private boolean hasNonNullDefaultFor(int i10, AbstractMethodDeclaration abstractMethodDeclaration, int i11) {
        if ((this.modifiers & 67108864) != 0) {
            return false;
        }
        int i12 = this.defaultNullness;
        return i12 != 0 ? (i10 & i12) != 0 : this.declaringClass.hasNonNullDefaultFor(i10, i11);
    }

    private TypeBinding makeRawArgument(LookupEnvironment lookupEnvironment, TypeVariableBinding typeVariableBinding) {
        TypeBinding convertToRawType;
        TypeBinding[] typeBindingArr;
        if (typeVariableBinding.boundsCount() <= 1) {
            TypeBinding upperBound = typeVariableBinding.upperBound();
            return upperBound.isTypeVariable() ? makeRawArgument(lookupEnvironment, (TypeVariableBinding) upperBound) : lookupEnvironment.convertToRawType(upperBound, false);
        }
        ReferenceBinding[] superInterfaces = typeVariableBinding.superInterfaces();
        int length = superInterfaces.length;
        if (typeVariableBinding.boundsCount() == length) {
            convertToRawType = lookupEnvironment.convertToRawType(superInterfaces[0], false);
            typeBindingArr = new TypeBinding[length - 1];
            for (int i10 = 1; i10 < length; i10++) {
                typeBindingArr[i10 - 1] = lookupEnvironment.convertToRawType(superInterfaces[i10], false);
            }
        } else {
            convertToRawType = lookupEnvironment.convertToRawType(typeVariableBinding.superclass(), false);
            typeBindingArr = new TypeBinding[length];
            for (int i11 = 0; i11 < length; i11++) {
                typeBindingArr[i11] = lookupEnvironment.convertToRawType(superInterfaces[i11], false);
            }
        }
        return lookupEnvironment.createWildcard(null, 0, convertToRawType, typeBindingArr, 1);
    }

    public final boolean areParameterErasuresEqual(MethodBinding methodBinding) {
        TypeBinding[] typeBindingArr = methodBinding.parameters;
        TypeBinding[] typeBindingArr2 = this.parameters;
        if (typeBindingArr2 == typeBindingArr) {
            return true;
        }
        int length = typeBindingArr2.length;
        if (length != typeBindingArr.length) {
            return false;
        }
        for (int i10 = 0; i10 < length; i10++) {
            if (TypeBinding.notEquals(this.parameters[i10], typeBindingArr[i10]) && TypeBinding.notEquals(this.parameters[i10].erasure(), typeBindingArr[i10].erasure())) {
                return false;
            }
        }
        return true;
    }

    public final boolean areParametersCompatibleWith(TypeBinding[] typeBindingArr) {
        int length = this.parameters.length;
        int length2 = typeBindingArr.length;
        if (isVarargs()) {
            int i10 = length - 1;
            if (length == length2) {
                TypeBinding typeBinding = this.parameters[i10];
                TypeBinding typeBinding2 = typeBindingArr[i10];
                if (TypeBinding.notEquals(typeBinding, typeBinding2) && !typeBinding2.isCompatibleWith(typeBinding)) {
                    return false;
                }
            } else if (length < length2) {
                TypeBinding elementsType = ((ArrayBinding) this.parameters[i10]).elementsType();
                for (int i11 = i10; i11 < length2; i11++) {
                    if (TypeBinding.notEquals(elementsType, typeBindingArr[i11]) && !typeBindingArr[i11].isCompatibleWith(elementsType)) {
                        return false;
                    }
                }
            } else if (i10 != length2) {
                return false;
            }
            length2 = i10;
        }
        for (int i12 = 0; i12 < length2; i12++) {
            if (TypeBinding.notEquals(this.parameters[i12], typeBindingArr[i12]) && !typeBindingArr[i12].isCompatibleWith(this.parameters[i12])) {
                return false;
            }
        }
        return true;
    }

    public final boolean areParametersEqual(MethodBinding methodBinding) {
        TypeBinding[] typeBindingArr = methodBinding.parameters;
        TypeBinding[] typeBindingArr2 = this.parameters;
        if (typeBindingArr2 == typeBindingArr) {
            return true;
        }
        int length = typeBindingArr2.length;
        if (length != typeBindingArr.length) {
            return false;
        }
        for (int i10 = 0; i10 < length; i10++) {
            if (TypeBinding.notEquals(this.parameters[i10], typeBindingArr[i10])) {
                return false;
            }
        }
        return true;
    }

    public final boolean areTypeVariableErasuresEqual(MethodBinding methodBinding) {
        TypeVariableBinding[] typeVariableBindingArr = methodBinding.typeVariables;
        TypeVariableBinding[] typeVariableBindingArr2 = this.typeVariables;
        if (typeVariableBindingArr2 == typeVariableBindingArr) {
            return true;
        }
        int length = typeVariableBindingArr2.length;
        if (length != typeVariableBindingArr.length) {
            return false;
        }
        for (int i10 = 0; i10 < length; i10++) {
            if (TypeBinding.notEquals(this.typeVariables[i10], typeVariableBindingArr[i10]) && TypeBinding.notEquals(this.typeVariables[i10].erasure(), typeVariableBindingArr[i10].erasure())) {
                return false;
            }
        }
        return true;
    }

    public MethodBinding asRawMethod(LookupEnvironment lookupEnvironment) {
        TypeVariableBinding[] typeVariableBindingArr = this.typeVariables;
        if (typeVariableBindingArr == Binding.NO_TYPE_VARIABLES) {
            return this;
        }
        int length = typeVariableBindingArr.length;
        TypeBinding[] typeBindingArr = new TypeBinding[length];
        for (int i10 = 0; i10 < length; i10++) {
            typeBindingArr[i10] = makeRawArgument(lookupEnvironment, this.typeVariables[i10]);
        }
        return lookupEnvironment.createParameterizedGenericMethod(this, typeBindingArr);
    }

    public final boolean canBeSeenBy(InvocationSite invocationSite, Scope scope) {
        ReferenceBinding referenceBinding;
        if (isPublic()) {
            return true;
        }
        ReferenceBinding enclosingSourceType = scope.enclosingSourceType();
        if (TypeBinding.equalsEquals(enclosingSourceType, this.declaringClass)) {
            return true;
        }
        if (isProtected()) {
            if (enclosingSourceType.fPackage == this.declaringClass.fPackage) {
                return true;
            }
            return invocationSite.isSuperAccess();
        }
        if (!isPrivate()) {
            return enclosingSourceType.fPackage == this.declaringClass.fPackage;
        }
        ReferenceBinding enclosingType = enclosingSourceType.enclosingType();
        while (true) {
            referenceBinding = enclosingSourceType;
            enclosingSourceType = enclosingType;
            if (enclosingSourceType == null) {
                break;
            }
            enclosingType = enclosingSourceType.enclosingType();
        }
        ReferenceBinding referenceBinding2 = (ReferenceBinding) this.declaringClass.erasure();
        ReferenceBinding enclosingType2 = referenceBinding2.enclosingType();
        while (true) {
            ReferenceBinding referenceBinding3 = enclosingType2;
            ReferenceBinding referenceBinding4 = referenceBinding2;
            referenceBinding2 = referenceBinding3;
            if (referenceBinding2 == null) {
                return TypeBinding.equalsEquals(referenceBinding, referenceBinding4);
            }
            enclosingType2 = referenceBinding2.enclosingType();
        }
    }

    public List<TypeBinding> collectMissingTypes(List<TypeBinding> list) {
        if ((this.tagBits & 128) != 0) {
            list = this.returnType.collectMissingTypes(list);
            int length = this.parameters.length;
            for (int i10 = 0; i10 < length; i10++) {
                list = this.parameters[i10].collectMissingTypes(list);
            }
            int length2 = this.thrownExceptions.length;
            for (int i11 = 0; i11 < length2; i11++) {
                list = this.thrownExceptions[i11].collectMissingTypes(list);
            }
            int length3 = this.typeVariables.length;
            for (int i12 = 0; i12 < length3; i12++) {
                TypeVariableBinding typeVariableBinding = this.typeVariables[i12];
                list = typeVariableBinding.superclass().collectMissingTypes(list);
                ReferenceBinding[] superInterfaces = typeVariableBinding.superInterfaces();
                for (ReferenceBinding referenceBinding : superInterfaces) {
                    list = referenceBinding.collectMissingTypes(list);
                }
            }
        }
        return list;
    }

    public MethodBinding computeSubstitutedMethod(MethodBinding methodBinding, LookupEnvironment lookupEnvironment) {
        TypeVariableBinding[] typeVariableBindingArr = this.typeVariables;
        int length = typeVariableBindingArr.length;
        TypeVariableBinding[] typeVariableBindingArr2 = methodBinding.typeVariables;
        if (length != typeVariableBindingArr2.length) {
            return null;
        }
        ParameterizedGenericMethodBinding createParameterizedGenericMethod = lookupEnvironment.createParameterizedGenericMethod(methodBinding, typeVariableBindingArr);
        for (int i10 = 0; i10 < length; i10++) {
            if (!this.typeVariables[i10].isInterchangeableWith(typeVariableBindingArr2[i10], createParameterizedGenericMethod)) {
                return null;
            }
        }
        return createParameterizedGenericMethod;
    }

    @Override
    public char[] computeUniqueKey(boolean z10) {
        char[][] cArr;
        int i10;
        char[] computeUniqueKey = this.declaringClass.computeUniqueKey(false);
        int length = computeUniqueKey.length;
        char[] cArr2 = this.selector;
        int length2 = cArr2 == TypeConstants.INIT ? 0 : cArr2.length;
        char[] genericSignature = genericSignature();
        boolean z11 = genericSignature != null;
        if (!z11) {
            genericSignature = signature();
        }
        int length3 = genericSignature.length;
        int length4 = this.thrownExceptions.length;
        if (length4 <= 0 || (z11 && CharOperation.lastIndexOf('^', genericSignature) >= 0)) {
            cArr = null;
            i10 = 0;
        } else {
            cArr = new char[length4];
            i10 = 0;
            for (int i11 = 0; i11 < length4; i11++) {
                ReferenceBinding referenceBinding = this.thrownExceptions[i11];
                if (referenceBinding != null) {
                    char[] signature = referenceBinding.signature();
                    cArr[i11] = signature;
                    i10 += signature.length + 1;
                }
            }
        }
        int i12 = length + 1;
        int i13 = i12 + length2;
        int i14 = i13 + length3;
        char[] cArr3 = new char[i14 + i10];
        System.arraycopy(computeUniqueKey, 0, cArr3, 0, length);
        cArr3[length] = '.';
        System.arraycopy(this.selector, 0, cArr3, i12, length2);
        System.arraycopy(genericSignature, 0, cArr3, i13, length3);
        if (i10 > 0) {
            for (int i15 = 0; i15 < length4; i15++) {
                char[] cArr4 = cArr[i15];
                if (cArr4 != null) {
                    int i16 = i14 + 1;
                    cArr3[i14] = '|';
                    int length5 = cArr4.length;
                    System.arraycopy(cArr4, 0, cArr3, i16, length5);
                    i14 = i16 + length5;
                }
            }
        }
        return cArr3;
    }

    public final char[] constantPoolName() {
        return this.selector;
    }

    public boolean doesParameterLengthMatch(int i10) {
        int length = this.parameters.length;
        return length <= i10 || (isVarargs() && length == i10 + 1);
    }

    public void fillInDefaultNonNullness(AbstractMethodDeclaration abstractMethodDeclaration, boolean z10, ParameterNonNullDefaultProvider parameterNonNullDefaultProvider) {
        if (this.parameterNonNullness == null) {
            this.parameterNonNullness = new Boolean[this.parameters.length];
        }
        int length = this.parameterNonNullness.length;
        boolean z11 = false;
        for (int i10 = 0; i10 < length; i10++) {
            if (parameterNonNullDefaultProvider.hasNonNullDefaultForParam(i10) && !this.parameters[i10].isBaseType()) {
                Boolean[] boolArr = this.parameterNonNullness;
                Boolean bool = boolArr[i10];
                if (bool == null) {
                    boolArr[i10] = Boolean.TRUE;
                    if (abstractMethodDeclaration != null) {
                        LocalVariableBinding localVariableBinding = abstractMethodDeclaration.arguments[i10].binding;
                        localVariableBinding.tagBits = 72057594037927936L | localVariableBinding.tagBits;
                    }
                    z11 = true;
                } else if (abstractMethodDeclaration != null && bool.booleanValue()) {
                    abstractMethodDeclaration.scope.problemReporter().nullAnnotationIsRedundant(abstractMethodDeclaration, i10);
                }
            }
        }
        if (z11) {
            this.tagBits |= 1024;
        }
        if (z10) {
            TypeBinding typeBinding = this.returnType;
            if (typeBinding != null && !typeBinding.isBaseType()) {
                long j10 = this.tagBits;
                if ((TagBits.AnnotationNullMASK & j10) == 0) {
                    this.tagBits = j10 | 72057594037927936L;
                    return;
                }
            }
            if (abstractMethodDeclaration == null || (this.tagBits & 72057594037927936L) == 0) {
                return;
            }
            abstractMethodDeclaration.scope.problemReporter().nullAnnotationIsRedundant(abstractMethodDeclaration, -1);
        }
    }

    public void fillInDefaultNonNullness18(AbstractMethodDeclaration abstractMethodDeclaration, LookupEnvironment lookupEnvironment) {
        MethodBinding original = original();
        if (original == null) {
            return;
        }
        ParameterNonNullDefaultProvider hasNonNullDefaultForParameter = hasNonNullDefaultForParameter(abstractMethodDeclaration);
        if (hasNonNullDefaultForParameter.hasAnyNonNullDefault()) {
            int length = this.parameters.length;
            boolean z10 = false;
            for (int i10 = 0; i10 < length; i10++) {
                if (hasNonNullDefaultForParameter.hasNonNullDefaultForParam(i10)) {
                    TypeBinding typeBinding = this.parameters[i10];
                    if (original.parameters[i10].acceptsNonNullDefault()) {
                        long j10 = typeBinding.tagBits;
                        if ((j10 & TagBits.AnnotationNullMASK) == 0) {
                            if (!typeBinding.isBaseType()) {
                                this.parameters[i10] = lookupEnvironment.createAnnotatedType(typeBinding, new AnnotationBinding[]{lookupEnvironment.getNonNullAnnotation()});
                                if (abstractMethodDeclaration != null) {
                                    abstractMethodDeclaration.arguments[i10].binding.type = this.parameters[i10];
                                }
                            }
                            z10 = true;
                        } else if (abstractMethodDeclaration != null && (j10 & 72057594037927936L) != 0 && abstractMethodDeclaration.arguments[i10].hasNullTypeAnnotation(TypeReference.AnnotationPosition.MAIN_TYPE)) {
                            abstractMethodDeclaration.scope.problemReporter().nullAnnotationIsRedundant(abstractMethodDeclaration, i10);
                        }
                    }
                }
            }
            if (z10) {
                this.tagBits |= 1024;
            }
        }
        if (original.returnType != null && hasNonNullDefaultForReturnType(abstractMethodDeclaration) && original.returnType.acceptsNonNullDefault()) {
            TypeBinding typeBinding2 = this.returnType;
            long j11 = typeBinding2.tagBits;
            if ((j11 & TagBits.AnnotationNullMASK) == 0) {
                this.returnType = lookupEnvironment.createAnnotatedType(typeBinding2, new AnnotationBinding[]{lookupEnvironment.getNonNullAnnotation()});
            } else if ((abstractMethodDeclaration instanceof MethodDeclaration) && (72057594037927936L & j11) != 0 && ((MethodDeclaration) abstractMethodDeclaration).hasNullTypeAnnotation(TypeReference.AnnotationPosition.MAIN_TYPE)) {
                abstractMethodDeclaration.scope.problemReporter().nullAnnotationIsRedundant(abstractMethodDeclaration, -1);
            }
        }
    }

    public MethodBinding findOriginalInheritedMethod(MethodBinding methodBinding) {
        MethodBinding original = methodBinding.original();
        TypeBinding findSuperTypeOriginatingFrom = this.declaringClass.findSuperTypeOriginatingFrom(original.declaringClass);
        if (findSuperTypeOriginatingFrom == null || !(findSuperTypeOriginatingFrom instanceof ReferenceBinding)) {
            return null;
        }
        if (TypeBinding.notEquals(original.declaringClass, findSuperTypeOriginatingFrom)) {
            MethodBinding[] methods = ((ReferenceBinding) findSuperTypeOriginatingFrom).getMethods(original.selector, original.parameters.length);
            int length = methods.length;
            for (int i10 = 0; i10 < length; i10++) {
                if (methods[i10].original() == original) {
                    return methods[i10];
                }
            }
        }
        return original;
    }

    public MethodBinding genericMethod() {
        return this;
    }

    public char[] genericSignature() {
        if ((this.modifiers & 1073741824) == 0) {
            return null;
        }
        StringBuffer stringBuffer = new StringBuffer(10);
        if (this.typeVariables != Binding.NO_TYPE_VARIABLES) {
            stringBuffer.append('<');
            int length = this.typeVariables.length;
            for (int i10 = 0; i10 < length; i10++) {
                stringBuffer.append(this.typeVariables[i10].genericSignature());
            }
            stringBuffer.append('>');
        }
        stringBuffer.append('(');
        int length2 = this.parameters.length;
        for (int i11 = 0; i11 < length2; i11++) {
            stringBuffer.append(this.parameters[i11].genericTypeSignature());
        }
        stringBuffer.append(')');
        TypeBinding typeBinding = this.returnType;
        if (typeBinding != null) {
            stringBuffer.append(typeBinding.genericTypeSignature());
        }
        int length3 = this.thrownExceptions.length;
        int i12 = 0;
        while (true) {
            if (i12 >= length3) {
                break;
            }
            if ((this.thrownExceptions[i12].modifiers & 1073741824) != 0) {
                for (int i13 = 0; i13 < length3; i13++) {
                    stringBuffer.append('^');
                    stringBuffer.append(this.thrownExceptions[i13].genericTypeSignature());
                }
            } else {
                i12++;
            }
        }
        int length4 = stringBuffer.length();
        char[] cArr = new char[length4];
        stringBuffer.getChars(0, length4, cArr, 0);
        return cArr;
    }

    public final int getAccessFlags() {
        return this.modifiers & Lua.MAXARG_sBx;
    }

    public TypeVariableBinding[] getAllTypeVariables(boolean z10) {
        TypeVariableBinding[] typeVariableBindingArr = this.typeVariables;
        if (!z10) {
            return typeVariableBindingArr;
        }
        TypeVariableBinding[] typeVariables = this.declaringClass.typeVariables();
        int length = typeVariableBindingArr.length;
        int length2 = typeVariables.length;
        if (length == 0) {
            return typeVariables;
        }
        if (length2 == 0) {
            return typeVariableBindingArr;
        }
        TypeVariableBinding[] typeVariableBindingArr2 = new TypeVariableBinding[length + length2];
        System.arraycopy(typeVariableBindingArr, 0, typeVariableBindingArr2, 0, length);
        System.arraycopy(typeVariables, 0, typeVariableBindingArr2, length, length2);
        return typeVariableBindingArr2;
    }

    @Override
    public long getAnnotationTagBits() {
        ClassScope classScope;
        Binding checkRedundantDefaultNullness;
        MethodBinding original = original();
        if ((original.tagBits & 8589934592L) == 0) {
            ReferenceBinding referenceBinding = original.declaringClass;
            if ((referenceBinding instanceof SourceTypeBinding) && (classScope = ((SourceTypeBinding) referenceBinding).scope) != null) {
                TypeDeclaration typeDeclaration = classScope.referenceContext;
                AbstractMethodDeclaration declarationOf = typeDeclaration.declarationOf(original);
                if (declarationOf != null) {
                    ASTNode.resolveAnnotations(declarationOf.scope, declarationOf.annotations, original);
                }
                if (classScope.compilerOptions().isAnnotationBasedNullAnalysisEnabled) {
                    int i10 = this.defaultNullness;
                    if (i10 != 0 && (this.declaringClass instanceof SourceTypeBinding) && (checkRedundantDefaultNullness = classScope.checkRedundantDefaultNullness(i10, typeDeclaration.declarationSourceStart)) != null) {
                        declarationOf.scope.problemReporter().nullDefaultAnnotationIsRedundant(declarationOf, declarationOf.annotations, checkRedundantDefaultNullness);
                    }
                }
            }
        }
        return original.tagBits;
    }

    @Override
    public AnnotationBinding[] getAnnotations() {
        MethodBinding original = original();
        return original.declaringClass.retrieveAnnotations(original);
    }

    public Object getDefaultValue() {
        AbstractMethodDeclaration sourceMethod;
        MethodBinding original = original();
        if ((original.tagBits & 576460752303423488L) == 0) {
            ReferenceBinding referenceBinding = original.declaringClass;
            if (referenceBinding instanceof SourceTypeBinding) {
                SourceTypeBinding sourceTypeBinding = (SourceTypeBinding) referenceBinding;
                if (sourceTypeBinding.scope != null && (sourceMethod = original.sourceMethod()) != null && sourceMethod.isAnnotationMethod()) {
                    sourceMethod.resolve(sourceTypeBinding.scope);
                }
            }
            original.tagBits |= 576460752303423488L;
        }
        AnnotationHolder retrieveAnnotationHolder = original.declaringClass.retrieveAnnotationHolder(original, true);
        if (retrieveAnnotationHolder == null) {
            return null;
        }
        return retrieveAnnotationHolder.getDefaultValue();
    }

    public AnnotationBinding[][] getParameterAnnotations() {
        int length = this.parameters.length;
        if (length == 0) {
            return null;
        }
        MethodBinding original = original();
        AnnotationHolder retrieveAnnotationHolder = original.declaringClass.retrieveAnnotationHolder(original, true);
        AnnotationBinding[][] parameterAnnotations = retrieveAnnotationHolder != null ? retrieveAnnotationHolder.getParameterAnnotations() : null;
        if (parameterAnnotations != null || (this.tagBits & 1024) == 0) {
            return parameterAnnotations;
        }
        AnnotationBinding[][] annotationBindingArr = new AnnotationBinding[length];
        ReferenceBinding referenceBinding = this.declaringClass;
        int i10 = 0;
        if (referenceBinding instanceof SourceTypeBinding) {
            ClassScope classScope = ((SourceTypeBinding) referenceBinding).scope;
            if (classScope != null) {
                AbstractMethodDeclaration declarationOf = classScope.referenceType().declarationOf(original);
                while (i10 < length) {
                    Argument argument = declarationOf.arguments[i10];
                    Annotation[] annotationArr = argument.annotations;
                    if (annotationArr != null) {
                        ASTNode.resolveAnnotations(declarationOf.scope, annotationArr, argument.binding);
                        annotationBindingArr[i10] = argument.binding.getAnnotations();
                    } else {
                        annotationBindingArr[i10] = Binding.NO_ANNOTATIONS;
                    }
                    i10++;
                }
            } else {
                while (i10 < length) {
                    annotationBindingArr[i10] = Binding.NO_ANNOTATIONS;
                    i10++;
                }
            }
        } else {
            while (i10 < length) {
                annotationBindingArr[i10] = Binding.NO_ANNOTATIONS;
                i10++;
            }
        }
        setParameterAnnotations(annotationBindingArr);
        return annotationBindingArr;
    }

    public final AnnotationBinding[] getTypeAnnotations() {
        return this.typeAnnotations;
    }

    public TypeVariableBinding getTypeVariable(char[] cArr) {
        int length = this.typeVariables.length;
        do {
            length--;
            if (length < 0) {
                return null;
            }
        } while (!CharOperation.equals(this.typeVariables[length].sourceName, cArr));
        return this.typeVariables[length];
    }

    public ParameterNonNullDefaultProvider hasNonNullDefaultForParameter(AbstractMethodDeclaration abstractMethodDeclaration) {
        AnnotationBinding[][] parameterAnnotations;
        Argument[] argumentArr;
        int length = this.parameters.length;
        boolean[] zArr = new boolean[length];
        boolean z10 = false;
        boolean z11 = false;
        for (int i10 = 0; i10 < length; i10++) {
            int i11 = (abstractMethodDeclaration == null || (argumentArr = abstractMethodDeclaration.arguments) == null || argumentArr.length == 0) ? -1 : argumentArr[i10].declarationSourceStart;
            int localNonNullByDefaultValue = (abstractMethodDeclaration == null || i11 < 0) ? 0 : abstractMethodDeclaration.scope.localNonNullByDefaultValue(i11);
            if (localNonNullByDefaultValue == 0 && (parameterAnnotations = getParameterAnnotations()) != null) {
                for (AnnotationBinding annotationBinding : parameterAnnotations[i10]) {
                    if (annotationBinding.getAnnotationType().hasNullBit(128)) {
                        localNonNullByDefaultValue |= getNonNullByDefaultValue(annotationBinding);
                    }
                }
            }
            boolean hasNonNullDefaultFor = localNonNullByDefaultValue != 0 ? (localNonNullByDefaultValue & 8) != 0 : hasNonNullDefaultFor(8, abstractMethodDeclaration, i11);
            if (hasNonNullDefaultFor) {
                z10 = true;
            } else {
                z11 = true;
            }
            zArr[i10] = hasNonNullDefaultFor;
        }
        return (z10 && z11) ? new ParameterNonNullDefaultProvider.MixedProvider(zArr) : z10 ? ParameterNonNullDefaultProvider.TRUE_PROVIDER : ParameterNonNullDefaultProvider.FALSE_PROVIDER;
    }

    public boolean hasNonNullDefaultForReturnType(AbstractMethodDeclaration abstractMethodDeclaration) {
        return hasNonNullDefaultFor(16, abstractMethodDeclaration, abstractMethodDeclaration == null ? -1 : abstractMethodDeclaration.declarationSourceStart);
    }

    public boolean hasSubstitutedParameters() {
        return false;
    }

    public boolean hasSubstitutedReturnType() {
        return false;
    }

    public final boolean isAbstract() {
        return (this.modifiers & 1024) != 0;
    }

    public final boolean isBridge() {
        return (this.modifiers & 64) != 0;
    }

    public final boolean isConstructor() {
        return this.selector == TypeConstants.INIT;
    }

    public final boolean isDefault() {
        return (isPublic() || isProtected() || isPrivate()) ? false : true;
    }

    public final boolean isDefaultAbstract() {
        return (this.modifiers & 524288) != 0;
    }

    public boolean isDefaultMethod() {
        return (this.modifiers & 65536) != 0;
    }

    public final boolean isDeprecated() {
        return (this.modifiers & 1048576) != 0;
    }

    public final boolean isFinal() {
        return (this.modifiers & 16) != 0;
    }

    public final boolean isImplementing() {
        return (this.modifiers & 536870912) != 0;
    }

    public final boolean isMain() {
        char[] cArr = this.selector;
        if (cArr.length == 4 && CharOperation.equals(cArr, TypeConstants.MAIN) && (this.modifiers & 9) != 0 && TypeBinding.VOID == this.returnType) {
            TypeBinding[] typeBindingArr = this.parameters;
            if (typeBindingArr.length == 1) {
                TypeBinding typeBinding = typeBindingArr[0];
                if (typeBinding.dimensions() == 1 && typeBinding.leafComponentType().f102482id == 11) {
                    return true;
                }
            }
        }
        return false;
    }

    public final boolean isNative() {
        return (this.modifiers & 256) != 0;
    }

    public final boolean isOrEnclosedByPrivateType() {
        if ((this.modifiers & 2) != 0) {
            return true;
        }
        ReferenceBinding referenceBinding = this.declaringClass;
        return referenceBinding != null && referenceBinding.isOrEnclosedByPrivateType();
    }

    public final boolean isOverriding() {
        return (this.modifiers & 268435456) != 0;
    }

    public boolean isParameterizedGeneric() {
        return false;
    }

    public boolean isPolymorphic() {
        return false;
    }

    public final boolean isPrivate() {
        return (this.modifiers & 2) != 0;
    }

    public final boolean isProtected() {
        return (this.modifiers & 4) != 0;
    }

    public final boolean isPublic() {
        return (this.modifiers & 1) != 0;
    }

    public final boolean isStatic() {
        return (this.modifiers & 8) != 0;
    }

    public final boolean isStrictfp() {
        return (this.modifiers & 2048) != 0;
    }

    public final boolean isSynchronized() {
        return (this.modifiers & 32) != 0;
    }

    public final boolean isSynthetic() {
        return (this.modifiers & 4096) != 0;
    }

    public final boolean isUsed() {
        return (this.modifiers & 134217728) != 0;
    }

    public boolean isVarargs() {
        return (this.modifiers & 128) != 0;
    }

    public final boolean isViewedAsDeprecated() {
        return (this.modifiers & IntentFilter.MATCH_CATEGORY_HOST) != 0;
    }

    public boolean isVoidMethod() {
        return this.returnType == TypeBinding.VOID;
    }

    @Override
    public final int kind() {
        return 8;
    }

    public MethodBinding original() {
        return this;
    }

    @Override
    public char[] readableName() {
        StringBuffer stringBuffer = new StringBuffer(this.parameters.length + 20);
        if (isConstructor()) {
            stringBuffer.append(this.declaringClass.sourceName());
        } else {
            stringBuffer.append(this.selector);
        }
        stringBuffer.append('(');
        TypeBinding[] typeBindingArr = this.parameters;
        if (typeBindingArr != Binding.NO_PARAMETERS) {
            int length = typeBindingArr.length;
            for (int i10 = 0; i10 < length; i10++) {
                if (i10 > 0) {
                    stringBuffer.append(", ");
                }
                stringBuffer.append(this.parameters[i10].sourceName());
            }
        }
        stringBuffer.append(')');
        return stringBuffer.toString().toCharArray();
    }

    public boolean redeclaresPublicObjectMethod(Scope scope) {
        MethodBinding[] methods = scope.getJavaLangObject().getMethods(this.selector);
        int length = methods == null ? 0 : methods.length;
        for (int i10 = 0; i10 < length; i10++) {
            MethodBinding methodBinding = methods[i10];
            if (methodBinding.isPublic() && !methodBinding.isStatic() && methodBinding.parameters.length == this.parameters.length && MethodVerifier.doesMethodOverride(this, methodBinding, scope.environment())) {
                return true;
            }
        }
        return false;
    }

    @Override
    public void setAnnotations(AnnotationBinding[] annotationBindingArr, boolean z10) {
        this.declaringClass.storeAnnotations(this, annotationBindingArr, z10);
    }

    public void setDefaultValue(Object obj) {
        original().tagBits |= 576460752303423488L;
        AnnotationHolder retrieveAnnotationHolder = this.declaringClass.retrieveAnnotationHolder(this, false);
        if (retrieveAnnotationHolder == null) {
            setAnnotations(null, null, obj, null);
        } else {
            setAnnotations(retrieveAnnotationHolder.getAnnotations(), retrieveAnnotationHolder.getParameterAnnotations(), obj, null);
        }
    }

    public void setParameterAnnotations(AnnotationBinding[][] annotationBindingArr) {
        AnnotationHolder retrieveAnnotationHolder = this.declaringClass.retrieveAnnotationHolder(this, false);
        if (retrieveAnnotationHolder == null) {
            setAnnotations(null, annotationBindingArr, null, null);
        } else {
            setAnnotations(retrieveAnnotationHolder.getAnnotations(), annotationBindingArr, retrieveAnnotationHolder.getDefaultValue(), null);
        }
    }

    public final void setSelector(char[] cArr) {
        this.selector = cArr;
        this.signature = null;
    }

    public void setTypeAnnotations(AnnotationBinding[] annotationBindingArr) {
        this.typeAnnotations = annotationBindingArr;
    }

    public MethodBinding shallowOriginal() {
        return original();
    }

    @Override
    public char[] shortReadableName() {
        StringBuffer stringBuffer = new StringBuffer(this.parameters.length + 20);
        if (isConstructor()) {
            stringBuffer.append(this.declaringClass.shortReadableName());
        } else {
            stringBuffer.append(this.selector);
        }
        stringBuffer.append('(');
        TypeBinding[] typeBindingArr = this.parameters;
        if (typeBindingArr != Binding.NO_PARAMETERS) {
            int length = typeBindingArr.length;
            for (int i10 = 0; i10 < length; i10++) {
                if (i10 > 0) {
                    stringBuffer.append(", ");
                }
                stringBuffer.append(this.parameters[i10].shortReadableName());
            }
        }
        stringBuffer.append(')');
        int length2 = stringBuffer.length();
        char[] cArr = new char[length2];
        stringBuffer.getChars(0, length2, cArr, 0);
        return cArr;
    }

    public final char[] signature() {
        char[] cArr = this.signature;
        if (cArr != null) {
            return cArr;
        }
        StringBuffer stringBuffer = new StringBuffer(this.parameters.length + 20);
        stringBuffer.append('(');
        TypeBinding[] typeBindingArr = this.parameters;
        boolean isConstructor = isConstructor();
        if (isConstructor && this.declaringClass.isEnum()) {
            stringBuffer.append(ConstantPool.JavaLangStringSignature);
            stringBuffer.append(TypeBinding.INT.signature());
        }
        boolean z10 = isConstructor && this.declaringClass.isNestedType();
        if (z10) {
            ReferenceBinding[] syntheticEnclosingInstanceTypes = this.declaringClass.syntheticEnclosingInstanceTypes();
            if (syntheticEnclosingInstanceTypes != null) {
                for (ReferenceBinding referenceBinding : syntheticEnclosingInstanceTypes) {
                    stringBuffer.append(referenceBinding.signature());
                }
            }
            if (this instanceof SyntheticMethodBinding) {
                typeBindingArr = ((SyntheticMethodBinding) this).targetMethod.parameters;
            }
        }
        if (typeBindingArr != Binding.NO_PARAMETERS) {
            for (TypeBinding typeBinding : typeBindingArr) {
                stringBuffer.append(typeBinding.signature());
            }
        }
        if (z10) {
            SyntheticArgumentBinding[] syntheticOuterLocalVariables = this.declaringClass.syntheticOuterLocalVariables();
            int length = syntheticOuterLocalVariables == null ? 0 : syntheticOuterLocalVariables.length;
            for (int i10 = 0; i10 < length; i10++) {
                stringBuffer.append(syntheticOuterLocalVariables[i10].type.signature());
            }
            int length2 = this.parameters.length;
            for (int length3 = typeBindingArr.length; length3 < length2; length3++) {
                stringBuffer.append(this.parameters[length3].signature());
            }
        }
        stringBuffer.append(')');
        TypeBinding typeBinding2 = this.returnType;
        if (typeBinding2 != null) {
            stringBuffer.append(typeBinding2.signature());
        }
        int length4 = stringBuffer.length();
        char[] cArr2 = new char[length4];
        this.signature = cArr2;
        stringBuffer.getChars(0, length4, cArr2, 0);
        return this.signature;
    }

    public final int sourceEnd() {
        AbstractMethodDeclaration sourceMethod = sourceMethod();
        if (sourceMethod != null) {
            return sourceMethod.sourceEnd;
        }
        ReferenceBinding referenceBinding = this.declaringClass;
        if (referenceBinding instanceof SourceTypeBinding) {
            return ((SourceTypeBinding) referenceBinding).sourceEnd();
        }
        return 0;
    }

    public LambdaExpression sourceLambda() {
        return null;
    }

    public AbstractMethodDeclaration sourceMethod() {
        AbstractMethodDeclaration abstractMethodDeclaration;
        if (isSynthetic()) {
            return null;
        }
        try {
            ClassScope classScope = ((SourceTypeBinding) this.declaringClass).scope;
            AbstractMethodDeclaration[] abstractMethodDeclarationArr = classScope != null ? classScope.referenceContext.methods : null;
            if (abstractMethodDeclarationArr != null) {
                int length = abstractMethodDeclarationArr.length;
                do {
                    length--;
                    if (length >= 0) {
                        abstractMethodDeclaration = abstractMethodDeclarationArr[length];
                    }
                } while (this != abstractMethodDeclaration.binding);
                return abstractMethodDeclaration;
            }
        } catch (ClassCastException unused) {
        }
        return null;
    }

    public final int sourceStart() {
        AbstractMethodDeclaration sourceMethod = sourceMethod();
        if (sourceMethod != null) {
            return sourceMethod.sourceStart;
        }
        ReferenceBinding referenceBinding = this.declaringClass;
        if (referenceBinding instanceof SourceTypeBinding) {
            return ((SourceTypeBinding) referenceBinding).sourceStart();
        }
        return 0;
    }

    public MethodBinding tiebreakMethod() {
        return this;
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer(10);
        if ((this.modifiers & 33554432) != 0) {
            stringBuffer.append("[unresolved] ");
        }
        ASTNode.printModifiers(this.modifiers, stringBuffer);
        TypeBinding typeBinding = this.returnType;
        stringBuffer.append(typeBinding != null ? typeBinding.debugName() : "<no type>");
        stringBuffer.append(" ");
        char[] cArr = this.selector;
        stringBuffer.append(cArr != null ? new String(cArr) : "<no selector>");
        stringBuffer.append("(");
        TypeBinding[] typeBindingArr = this.parameters;
        if (typeBindingArr == null) {
            stringBuffer.append("<no argument types>");
        } else if (typeBindingArr != Binding.NO_PARAMETERS) {
            int length = typeBindingArr.length;
            for (int i10 = 0; i10 < length; i10++) {
                if (i10 > 0) {
                    stringBuffer.append(", ");
                }
                TypeBinding typeBinding2 = this.parameters[i10];
                stringBuffer.append(typeBinding2 != null ? typeBinding2.debugName() : "<no argument type>");
            }
        }
        stringBuffer.append(") ");
        ReferenceBinding[] referenceBindingArr = this.thrownExceptions;
        if (referenceBindingArr == null) {
            stringBuffer.append("<no exception types>");
        } else if (referenceBindingArr != Binding.NO_EXCEPTIONS) {
            stringBuffer.append("throws ");
            int length2 = this.thrownExceptions.length;
            for (int i11 = 0; i11 < length2; i11++) {
                if (i11 > 0) {
                    stringBuffer.append(", ");
                }
                ReferenceBinding referenceBinding = this.thrownExceptions[i11];
                stringBuffer.append(referenceBinding != null ? referenceBinding.debugName() : "<no exception type>");
            }
        }
        return stringBuffer.toString();
    }

    public TypeVariableBinding[] typeVariables() {
        return this.typeVariables;
    }

    public void updateTypeVariableBinding(TypeVariableBinding typeVariableBinding, TypeVariableBinding typeVariableBinding2) {
        TypeVariableBinding[] typeVariableBindingArr = this.typeVariables;
        if (typeVariableBindingArr != null) {
            for (int i10 = 0; i10 < typeVariableBindingArr.length; i10++) {
                if (typeVariableBindingArr[i10] == typeVariableBinding) {
                    typeVariableBindingArr[i10] = typeVariableBinding2;
                }
            }
        }
    }

    public void setAnnotations(AnnotationBinding[] annotationBindingArr, AnnotationBinding[][] annotationBindingArr2, Object obj, LookupEnvironment lookupEnvironment) {
        this.declaringClass.storeAnnotationHolder(this, AnnotationHolder.storeAnnotations(annotationBindingArr, annotationBindingArr2, obj, lookupEnvironment));
    }

    public MethodBinding(int i10, char[] cArr, TypeBinding typeBinding, TypeBinding[] typeBindingArr, ReferenceBinding[] referenceBindingArr, ReferenceBinding referenceBinding) {
        this.typeVariables = Binding.NO_TYPE_VARIABLES;
        this.typeAnnotations = Binding.NO_ANNOTATIONS;
        this.parameterNames = Binding.NO_PARAMETER_NAMES;
        this.modifiers = i10;
        this.selector = cArr;
        this.returnType = typeBinding;
        this.parameters = (typeBindingArr == null || typeBindingArr.length == 0) ? Binding.NO_PARAMETERS : typeBindingArr;
        this.thrownExceptions = (referenceBindingArr == null || referenceBindingArr.length == 0) ? Binding.NO_EXCEPTIONS : referenceBindingArr;
        this.declaringClass = referenceBinding;
        if (referenceBinding == null || !referenceBinding.isStrictfp() || isNative() || isAbstract()) {
            return;
        }
        this.modifiers |= 2048;
    }

    public final boolean canBeSeenBy(PackageBinding packageBinding) {
        if (isPublic()) {
            return true;
        }
        return !isPrivate() && packageBinding == this.declaringClass.getPackage();
    }

    public MethodBinding(int i10, TypeBinding[] typeBindingArr, ReferenceBinding[] referenceBindingArr, ReferenceBinding referenceBinding) {
        this(i10, TypeConstants.INIT, TypeBinding.VOID, typeBindingArr, referenceBindingArr, referenceBinding);
    }

    public final boolean canBeSeenBy(TypeBinding typeBinding, InvocationSite invocationSite, Scope scope) {
        ReferenceBinding referenceBinding;
        ReferenceBinding referenceBinding2;
        ReferenceBinding enclosingSourceType = scope.enclosingSourceType();
        if (this.declaringClass.isInterface() && isStatic() && !isPrivate()) {
            if (scope.compilerOptions().sourceLevel < ClassFileConstants.JDK1_8) {
                return false;
            }
            return (invocationSite.isTypeAccess() || invocationSite.receiverIsImplicitThis()) && TypeBinding.equalsEquals(typeBinding, this.declaringClass);
        }
        if (isPublic()) {
            return true;
        }
        if (TypeBinding.equalsEquals(enclosingSourceType, this.declaringClass) && TypeBinding.equalsEquals(enclosingSourceType, typeBinding)) {
            return true;
        }
        if (enclosingSourceType == null) {
            return !isPrivate() && scope.getCurrentPackage() == this.declaringClass.fPackage;
        }
        if (isProtected()) {
            if (TypeBinding.equalsEquals(enclosingSourceType, this.declaringClass) || enclosingSourceType.fPackage == this.declaringClass.fPackage) {
                return true;
            }
            TypeBinding erasure = typeBinding.erasure();
            ReferenceBinding referenceBinding3 = (ReferenceBinding) this.declaringClass.erasure();
            int i10 = 0;
            do {
                if (enclosingSourceType.findSuperTypeOriginatingFrom(referenceBinding3) != null) {
                    if (invocationSite.isSuperAccess()) {
                        return true;
                    }
                    if (typeBinding instanceof ArrayBinding) {
                        return false;
                    }
                    if (isStatic()) {
                        if (i10 > 0) {
                            invocationSite.setDepth(i10);
                        }
                        return true;
                    }
                    if (TypeBinding.equalsEquals(enclosingSourceType, erasure) || erasure.findSuperTypeOriginatingFrom(enclosingSourceType) != null) {
                        if (i10 > 0) {
                            invocationSite.setDepth(i10);
                        }
                        return true;
                    }
                }
                i10++;
                enclosingSourceType = enclosingSourceType.enclosingType();
            } while (enclosingSourceType != null);
            return false;
        }
        if (isPrivate()) {
            if (TypeBinding.notEquals(typeBinding, this.declaringClass) && (scope.compilerOptions().complianceLevel > ClassFileConstants.JDK1_6 || !typeBinding.isTypeVariable() || !((TypeVariableBinding) typeBinding).isErasureBoundTo(this.declaringClass.erasure()))) {
                return false;
            }
            if (TypeBinding.notEquals(enclosingSourceType, this.declaringClass)) {
                ReferenceBinding enclosingType = enclosingSourceType.enclosingType();
                while (true) {
                    referenceBinding = enclosingSourceType;
                    enclosingSourceType = enclosingType;
                    if (enclosingSourceType == null) {
                        break;
                    }
                    enclosingType = enclosingSourceType.enclosingType();
                }
                ReferenceBinding referenceBinding4 = (ReferenceBinding) this.declaringClass.erasure();
                ReferenceBinding enclosingType2 = referenceBinding4.enclosingType();
                while (true) {
                    ReferenceBinding referenceBinding5 = enclosingType2;
                    referenceBinding2 = referenceBinding4;
                    referenceBinding4 = referenceBinding5;
                    if (referenceBinding4 == null) {
                        break;
                    }
                    enclosingType2 = referenceBinding4.enclosingType();
                }
                if (TypeBinding.notEquals(referenceBinding, referenceBinding2)) {
                    return false;
                }
            }
            return true;
        }
        ReferenceBinding referenceBinding6 = this.declaringClass;
        PackageBinding packageBinding = referenceBinding6.fPackage;
        if (enclosingSourceType.fPackage != packageBinding || (typeBinding instanceof ArrayBinding)) {
            return false;
        }
        TypeBinding original = referenceBinding6.original();
        ReferenceBinding referenceBinding7 = (ReferenceBinding) typeBinding;
        do {
            if (referenceBinding7.isCapture()) {
                if (TypeBinding.equalsEquals(original, referenceBinding7.erasure().original())) {
                    return true;
                }
            } else if (TypeBinding.equalsEquals(original, referenceBinding7.original())) {
                return true;
            }
            PackageBinding packageBinding2 = referenceBinding7.fPackage;
            if (!referenceBinding7.isCapture() && packageBinding2 != null && packageBinding2 != packageBinding) {
                return false;
            }
            referenceBinding7 = referenceBinding7.superclass();
        } while (referenceBinding7 != null);
        return false;
    }

    public MethodBinding(MethodBinding methodBinding, ReferenceBinding referenceBinding) {
        this.typeVariables = Binding.NO_TYPE_VARIABLES;
        this.typeAnnotations = Binding.NO_ANNOTATIONS;
        this.parameterNames = Binding.NO_PARAMETER_NAMES;
        this.modifiers = methodBinding.modifiers;
        this.selector = methodBinding.selector;
        this.returnType = methodBinding.returnType;
        this.parameters = methodBinding.parameters;
        this.thrownExceptions = methodBinding.thrownExceptions;
        this.declaringClass = referenceBinding;
        referenceBinding.storeAnnotationHolder(this, methodBinding.declaringClass.retrieveAnnotationHolder(methodBinding, true));
    }

    public char[] signature(ClassFile classFile) {
        boolean z10;
        if (this.signature != null) {
            if ((this.tagBits & 2048) != 0) {
                boolean isConstructor = isConstructor();
                TypeBinding[] typeBindingArr = this.parameters;
                z10 = isConstructor && this.declaringClass.isNestedType();
                if (z10) {
                    ReferenceBinding[] syntheticEnclosingInstanceTypes = this.declaringClass.syntheticEnclosingInstanceTypes();
                    if (syntheticEnclosingInstanceTypes != null) {
                        for (ReferenceBinding referenceBinding : syntheticEnclosingInstanceTypes) {
                            if ((referenceBinding.tagBits & 2048) != 0) {
                                Util.recordNestedType(classFile, referenceBinding);
                            }
                        }
                    }
                    if (this instanceof SyntheticMethodBinding) {
                        typeBindingArr = ((SyntheticMethodBinding) this).targetMethod.parameters;
                    }
                }
                if (typeBindingArr != Binding.NO_PARAMETERS) {
                    for (TypeBinding typeBinding : typeBindingArr) {
                        TypeBinding leafComponentType = typeBinding.leafComponentType();
                        if ((leafComponentType.tagBits & 2048) != 0) {
                            Util.recordNestedType(classFile, leafComponentType);
                        }
                    }
                }
                if (z10) {
                    int length = this.parameters.length;
                    for (int length2 = typeBindingArr.length; length2 < length; length2++) {
                        TypeBinding leafComponentType2 = this.parameters[length2].leafComponentType();
                        if ((leafComponentType2.tagBits & 2048) != 0) {
                            Util.recordNestedType(classFile, leafComponentType2);
                        }
                    }
                }
                TypeBinding typeBinding2 = this.returnType;
                if (typeBinding2 != null) {
                    TypeBinding leafComponentType3 = typeBinding2.leafComponentType();
                    if ((leafComponentType3.tagBits & 2048) != 0) {
                        Util.recordNestedType(classFile, leafComponentType3);
                    }
                }
            }
            return this.signature;
        }
        StringBuffer stringBuffer = new StringBuffer((this.parameters.length + 1) * 20);
        stringBuffer.append('(');
        TypeBinding[] typeBindingArr2 = this.parameters;
        boolean isConstructor2 = isConstructor();
        if (isConstructor2 && this.declaringClass.isEnum()) {
            stringBuffer.append(ConstantPool.JavaLangStringSignature);
            stringBuffer.append(TypeBinding.INT.signature());
        }
        z10 = isConstructor2 && this.declaringClass.isNestedType();
        if (z10) {
            ReferenceBinding[] syntheticEnclosingInstanceTypes2 = this.declaringClass.syntheticEnclosingInstanceTypes();
            if (syntheticEnclosingInstanceTypes2 != null) {
                for (ReferenceBinding referenceBinding2 : syntheticEnclosingInstanceTypes2) {
                    if ((referenceBinding2.tagBits & 2048) != 0) {
                        this.tagBits |= 2048;
                        Util.recordNestedType(classFile, referenceBinding2);
                    }
                    stringBuffer.append(referenceBinding2.signature());
                }
            }
            if (this instanceof SyntheticMethodBinding) {
                typeBindingArr2 = ((SyntheticMethodBinding) this).targetMethod.parameters;
            }
        }
        if (typeBindingArr2 != Binding.NO_PARAMETERS) {
            for (TypeBinding typeBinding3 : typeBindingArr2) {
                TypeBinding leafComponentType4 = typeBinding3.leafComponentType();
                if ((leafComponentType4.tagBits & 2048) != 0) {
                    this.tagBits |= 2048;
                    Util.recordNestedType(classFile, leafComponentType4);
                }
                stringBuffer.append(typeBinding3.signature());
            }
        }
        if (z10) {
            SyntheticArgumentBinding[] syntheticOuterLocalVariables = this.declaringClass.syntheticOuterLocalVariables();
            int length3 = syntheticOuterLocalVariables == null ? 0 : syntheticOuterLocalVariables.length;
            for (int i10 = 0; i10 < length3; i10++) {
                stringBuffer.append(syntheticOuterLocalVariables[i10].type.signature());
            }
            int length4 = this.parameters.length;
            for (int length5 = typeBindingArr2.length; length5 < length4; length5++) {
                TypeBinding typeBinding4 = this.parameters[length5];
                TypeBinding leafComponentType5 = typeBinding4.leafComponentType();
                if ((leafComponentType5.tagBits & 2048) != 0) {
                    this.tagBits |= 2048;
                    Util.recordNestedType(classFile, leafComponentType5);
                }
                stringBuffer.append(typeBinding4.signature());
            }
        }
        stringBuffer.append(')');
        TypeBinding typeBinding5 = this.returnType;
        if (typeBinding5 != null) {
            TypeBinding leafComponentType6 = typeBinding5.leafComponentType();
            if ((leafComponentType6.tagBits & 2048) != 0) {
                this.tagBits |= 2048;
                Util.recordNestedType(classFile, leafComponentType6);
            }
            stringBuffer.append(this.returnType.signature());
        }
        int length6 = stringBuffer.length();
        char[] cArr = new char[length6];
        this.signature = cArr;
        stringBuffer.getChars(0, length6, cArr, 0);
        return this.signature;
    }
}
