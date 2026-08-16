package org.eclipse.jdt.internal.compiler.lookup;

import java.util.Arrays;
import java.util.List;
import java.util.Set;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.core.compiler.InvalidInputException;
import org.eclipse.jdt.internal.compiler.ast.CompilationUnitDeclaration;
import org.eclipse.jdt.internal.compiler.ast.NullAnnotationMatching;
import org.eclipse.jdt.internal.compiler.ast.ParameterizedSingleTypeReference;
import org.eclipse.jdt.internal.compiler.ast.TypeReference;
import org.eclipse.jdt.internal.compiler.classfmt.ClassFileConstants;
import org.eclipse.jdt.internal.compiler.classfmt.ExternalAnnotationProvider;
import org.eclipse.jdt.internal.compiler.impl.CompilerOptions;
import org.eclipse.jdt.internal.compiler.lookup.TypeConstants;
import org.eclipse.jdt.internal.core.search.indexing.IIndexConstants;

public class ParameterizedTypeBinding extends ReferenceBinding implements Substitution {
    public TypeBinding[] arguments;
    protected ReferenceBinding enclosingType;
    public LookupEnvironment environment;
    public FieldBinding[] fields;
    public char[] genericTypeSignature;
    public ReferenceBinding[] memberTypes;
    public MethodBinding[] methods;
    public ReferenceBinding[] superInterfaces;
    public ReferenceBinding superclass;
    protected ReferenceBinding type;

    public ParameterizedTypeBinding(ReferenceBinding referenceBinding, TypeBinding[] typeBindingArr, ReferenceBinding referenceBinding2, LookupEnvironment lookupEnvironment) {
        this.environment = lookupEnvironment;
        this.enclosingType = referenceBinding2;
        if (!referenceBinding.hasEnclosingInstanceContext() && typeBindingArr == null && !(this instanceof RawTypeBinding)) {
            throw new IllegalStateException();
        }
        initialize(referenceBinding, typeBindingArr);
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
        if (referenceBinding2 != null && referenceBinding2.hasNullTypeAnnotations()) {
            this.tagBits |= TagBits.HasNullTypeAnnotation;
        }
        this.tagBits |= 16777216;
        this.typeBits = referenceBinding.typeBits;
    }

    @Override
    public ReferenceBinding actualType() {
        return this.type;
    }

    @Override
    public String annotatedDebugName() {
        StringBuffer stringBuffer = new StringBuffer(super.annotatedDebugName());
        TypeBinding[] typeBindingArr = this.arguments;
        if (typeBindingArr != null && typeBindingArr.length > 0) {
            stringBuffer.append('<');
            int length = this.arguments.length;
            for (int i10 = 0; i10 < length; i10++) {
                if (i10 > 0) {
                    stringBuffer.append(IIndexConstants.PARAMETER_SEPARATOR);
                }
                stringBuffer.append(this.arguments[i10].annotatedDebugName());
            }
            stringBuffer.append('>');
        }
        return stringBuffer.toString();
    }

    public void boundCheck(Scope scope, TypeReference[] typeReferenceArr) {
        if ((this.tagBits & TagBits.PassedBoundCheck) == 0) {
            TypeVariableBinding[] typeVariables = this.type.typeVariables();
            boolean z10 = false;
            if (this.arguments != null && typeVariables != null) {
                int length = typeVariables.length;
                boolean z11 = false;
                for (int i10 = 0; i10 < length; i10++) {
                    TypeConstants.BoundCheckStatus boundCheck = typeVariables[i10].boundCheck(this, this.arguments[i10], scope, typeReferenceArr[i10]);
                    z11 |= boundCheck != TypeConstants.BoundCheckStatus.OK;
                    if (!boundCheck.isOKbyJLS() && (this.arguments[i10].tagBits & 128) == 0) {
                        scope.problemReporter().typeMismatchError(this.arguments[i10], typeVariables[i10], this.type, typeReferenceArr[i10]);
                    }
                }
                z10 = z11;
            }
            if (z10) {
                return;
            }
            this.tagBits |= TagBits.PassedBoundCheck;
        }
    }

    @Override
    public boolean canBeInstantiated() {
        return (this.tagBits & TagBits.HasDirectWildcard) == 0 && super.canBeInstantiated();
    }

    @Override
    public TypeBinding clone(TypeBinding typeBinding) {
        return new ParameterizedTypeBinding(this.type, this.arguments, (ReferenceBinding) typeBinding, this.environment);
    }

    @Override
    public void collectInferenceVariables(Set<InferenceVariable> set) {
        ReferenceBinding referenceBinding;
        TypeBinding[] typeBindingArr = this.arguments;
        if (typeBindingArr != null) {
            int length = typeBindingArr.length;
            for (int i10 = 0; i10 < length; i10++) {
                if (TypeBinding.notEquals(this.arguments[i10], this)) {
                    this.arguments[i10].collectInferenceVariables(set);
                }
            }
        }
        if (isStatic() || (referenceBinding = this.enclosingType) == null) {
            return;
        }
        referenceBinding.collectInferenceVariables(set);
    }

    @Override
    public List<TypeBinding> collectMissingTypes(List<TypeBinding> list) {
        if ((this.tagBits & 128) != 0) {
            ReferenceBinding referenceBinding = this.enclosingType;
            if (referenceBinding != null) {
                list = referenceBinding.collectMissingTypes(list);
            }
            list = genericType().collectMissingTypes(list);
            TypeBinding[] typeBindingArr = this.arguments;
            if (typeBindingArr != null) {
                int length = typeBindingArr.length;
                for (int i10 = 0; i10 < length; i10++) {
                    list = this.arguments[i10].collectMissingTypes(list);
                }
            }
        }
        return list;
    }

    @Override
    public void collectSubstitutes(Scope scope, TypeBinding typeBinding, InferenceContext inferenceContext, int i10) {
        TypeBinding typeBinding2;
        TypeBinding[] typeBindingArr;
        TypeBinding[] typeBindingArr2;
        if ((this.tagBits & TagBits.HasTypeVariable) == 0) {
            TypeBinding findSuperTypeOriginatingFrom = typeBinding.findSuperTypeOriginatingFrom(this.type);
            if (findSuperTypeOriginatingFrom == null || !findSuperTypeOriginatingFrom.isRawType()) {
                return;
            }
            inferenceContext.isUnchecked = true;
            return;
        }
        if (typeBinding == TypeBinding.NULL || typeBinding.kind() == 65540 || !(typeBinding instanceof ReferenceBinding)) {
            return;
        }
        if (i10 == 0 || i10 == 1) {
            typeBinding = typeBinding.findSuperTypeOriginatingFrom(this.type);
            if (typeBinding == null) {
                return;
            } else {
                typeBinding2 = this;
            }
        } else {
            typeBinding2 = findSuperTypeOriginatingFrom(typeBinding);
            if (typeBinding2 == null) {
                return;
            }
        }
        ReferenceBinding enclosingType = typeBinding2.enclosingType();
        if (enclosingType != null) {
            enclosingType.collectSubstitutes(scope, typeBinding.enclosingType(), inferenceContext, i10);
        }
        if (this.arguments == null) {
            return;
        }
        int kind = typeBinding2.kind();
        if (kind == 260) {
            typeBindingArr = ((ParameterizedTypeBinding) typeBinding2).arguments;
        } else if (kind == 1028) {
            if (inferenceContext.depth > 0) {
                inferenceContext.status = 1;
                return;
            }
            return;
        } else if (kind != 2052) {
            return;
        } else {
            typeBindingArr = typeBinding2.typeVariables();
        }
        int kind2 = typeBinding.kind();
        if (kind2 == 260) {
            typeBindingArr2 = ((ParameterizedTypeBinding) typeBinding).arguments;
        } else {
            if (kind2 == 1028) {
                if (inferenceContext.depth > 0) {
                    inferenceContext.status = 1;
                    return;
                } else {
                    inferenceContext.isUnchecked = true;
                    return;
                }
            }
            if (kind2 != 2052) {
                return;
            } else {
                typeBindingArr2 = typeBinding.typeVariables();
            }
        }
        inferenceContext.depth++;
        int length = typeBindingArr.length;
        for (int i11 = 0; i11 < length; i11++) {
            TypeBinding typeBinding3 = typeBindingArr[i11];
            TypeBinding typeBinding4 = typeBindingArr2[i11];
            if (typeBinding3.isWildcard()) {
                typeBinding3.collectSubstitutes(scope, typeBinding4, inferenceContext, i10);
            } else {
                if (typeBinding4.isWildcard()) {
                    WildcardBinding wildcardBinding = (WildcardBinding) typeBinding4;
                    if (wildcardBinding.otherBounds == null) {
                        if (i10 == 2) {
                            int i12 = wildcardBinding.boundKind;
                            if (i12 == 1) {
                                typeBinding3.collectSubstitutes(scope, wildcardBinding.bound, inferenceContext, 2);
                            } else if (i12 == 2) {
                                typeBinding3.collectSubstitutes(scope, wildcardBinding.bound, inferenceContext, 1);
                            }
                        }
                    }
                }
                typeBinding3.collectSubstitutes(scope, typeBinding4, inferenceContext, 0);
            }
        }
        inferenceContext.depth--;
    }

    @Override
    public void computeId() {
        this.f102482id = Integer.MAX_VALUE;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0073  */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public char[] computeUniqueKey(boolean z10) {
        ReferenceBinding referenceBinding;
        StringBuffer stringBuffer = new StringBuffer(10);
        if (isMemberType()) {
            ReferenceBinding enclosingType = enclosingType();
            if (enclosingType.isParameterizedType() || enclosingType.isRawType()) {
                stringBuffer.append(enclosingType.computeUniqueKey(false), 0, r0.length - 1);
                stringBuffer.append('.');
                stringBuffer.append(sourceName());
                referenceBinding = null;
                if (this.arguments != null) {
                    stringBuffer.append('<');
                    int length = this.arguments.length;
                    for (int i10 = 0; i10 < length; i10++) {
                        TypeBinding typeBinding = this.arguments[i10];
                        stringBuffer.append(typeBinding.computeUniqueKey(false));
                        if (typeBinding instanceof CaptureBinding) {
                            referenceBinding = ((CaptureBinding) typeBinding).sourceType;
                        }
                    }
                    stringBuffer.append('>');
                }
                stringBuffer.append(';');
                if (referenceBinding != null && TypeBinding.notEquals(referenceBinding, this.type)) {
                    stringBuffer.insert(0, "&");
                    stringBuffer.insert(0, referenceBinding.computeUniqueKey(false));
                }
                int length2 = stringBuffer.length();
                char[] cArr = new char[length2];
                stringBuffer.getChars(0, length2, cArr, 0);
                return cArr;
            }
        }
        if (this.type.isLocalType()) {
            LocalTypeBinding localTypeBinding = (LocalTypeBinding) this.type;
            ReferenceBinding enclosingType2 = localTypeBinding.enclosingType();
            while (true) {
                ReferenceBinding enclosingType3 = enclosingType2.enclosingType();
                if (enclosingType3 == null) {
                    break;
                }
                enclosingType2 = enclosingType3;
            }
            stringBuffer.append(enclosingType2.computeUniqueKey(false), 0, r2.length - 1);
            stringBuffer.append('$');
            stringBuffer.append(localTypeBinding.sourceStart);
        } else {
            stringBuffer.append(this.type.computeUniqueKey(false), 0, r0.length - 1);
        }
        referenceBinding = null;
        if (this.arguments != null) {
        }
        stringBuffer.append(';');
        if (referenceBinding != null) {
            stringBuffer.insert(0, "&");
            stringBuffer.insert(0, referenceBinding.computeUniqueKey(false));
        }
        int length22 = stringBuffer.length();
        char[] cArr2 = new char[length22];
        stringBuffer.getChars(0, length22, cArr2, 0);
        return cArr2;
    }

    @Override
    public char[] constantPoolName() {
        return this.type.constantPoolName();
    }

    public ParameterizedMethodBinding createParameterizedMethod(MethodBinding methodBinding) {
        return new ParameterizedMethodBinding(this, methodBinding);
    }

    @Override
    public String debugName() {
        if (hasTypeAnnotations()) {
            return annotatedDebugName();
        }
        StringBuffer stringBuffer = new StringBuffer(10);
        ReferenceBinding referenceBinding = this.type;
        if (referenceBinding instanceof UnresolvedReferenceBinding) {
            stringBuffer.append((Object) referenceBinding);
        } else {
            stringBuffer.append(referenceBinding.sourceName());
        }
        TypeBinding[] typeBindingArr = this.arguments;
        if (typeBindingArr != null && typeBindingArr.length > 0) {
            stringBuffer.append('<');
            int length = this.arguments.length;
            for (int i10 = 0; i10 < length; i10++) {
                if (i10 > 0) {
                    stringBuffer.append(IIndexConstants.PARAMETER_SEPARATOR);
                }
                stringBuffer.append(this.arguments[i10].debugName());
            }
            stringBuffer.append('>');
        }
        return stringBuffer.toString();
    }

    @Override
    public ReferenceBinding enclosingType() {
        ReferenceBinding referenceBinding = this.type;
        if ((referenceBinding instanceof UnresolvedReferenceBinding) && ((UnresolvedReferenceBinding) referenceBinding).depth() > 0) {
            ((UnresolvedReferenceBinding) this.type).resolve(this.environment, false);
        }
        return this.enclosingType;
    }

    @Override
    public LookupEnvironment environment() {
        return this.environment;
    }

    @Override
    public TypeBinding erasure() {
        return this.type.erasure();
    }

    @Override
    public int fieldCount() {
        return this.type.fieldCount();
    }

    @Override
    public FieldBinding[] fields() {
        if ((this.tagBits & 8192) != 0) {
            return this.fields;
        }
        try {
            FieldBinding[] fields = this.type.fields();
            int length = fields.length;
            FieldBinding[] fieldBindingArr = new FieldBinding[length];
            for (int i10 = 0; i10 < length; i10++) {
                fieldBindingArr[i10] = new ParameterizedFieldBinding(this, fields[i10]);
            }
            this.fields = fieldBindingArr;
            this.tagBits |= 8192;
            return this.fields;
        } catch (Throwable th2) {
            if (this.fields == null) {
                this.fields = Binding.NO_FIELDS;
            }
            this.tagBits |= 8192;
            throw th2;
        }
    }

    public ReferenceBinding genericType() {
        ReferenceBinding referenceBinding = this.type;
        if (referenceBinding instanceof UnresolvedReferenceBinding) {
            ((UnresolvedReferenceBinding) referenceBinding).resolve(this.environment, false);
        }
        return this.type;
    }

    @Override
    public char[] genericTypeSignature() {
        if (this.genericTypeSignature == null) {
            if ((this.modifiers & 1073741824) == 0) {
                this.genericTypeSignature = this.type.signature();
            } else {
                StringBuffer stringBuffer = new StringBuffer(10);
                if (!isMemberType() || isStatic()) {
                    stringBuffer.append(this.type.signature(), 0, r1.length - 1);
                } else {
                    ReferenceBinding enclosingType = enclosingType();
                    stringBuffer.append(enclosingType.genericTypeSignature(), 0, r4.length - 1);
                    if ((1073741824 & enclosingType.modifiers) != 0) {
                        stringBuffer.append('.');
                    } else {
                        stringBuffer.append('$');
                    }
                    stringBuffer.append(sourceName());
                }
                if (this.arguments != null) {
                    stringBuffer.append('<');
                    int length = this.arguments.length;
                    for (int i10 = 0; i10 < length; i10++) {
                        stringBuffer.append(this.arguments[i10].genericTypeSignature());
                    }
                    stringBuffer.append('>');
                }
                stringBuffer.append(';');
                int length2 = stringBuffer.length();
                char[] cArr = new char[length2];
                this.genericTypeSignature = cArr;
                stringBuffer.getChars(0, length2, cArr, 0);
            }
        }
        return this.genericTypeSignature;
    }

    @Override
    public long getAnnotationTagBits() {
        return this.type.getAnnotationTagBits();
    }

    @Override
    public int getEnclosingInstancesSlotSize() {
        return genericType().getEnclosingInstancesSlotSize();
    }

    @Override
    public MethodBinding getExactConstructor(TypeBinding[] typeBindingArr) {
        MethodBinding methodBinding;
        int length = typeBindingArr.length;
        if ((this.tagBits & 32768) != 0) {
            long binarySearch = ReferenceBinding.binarySearch(TypeConstants.INIT, this.methods);
            if (binarySearch < 0) {
                return null;
            }
            int i10 = (int) (binarySearch >> 32);
            methodBinding = null;
            for (int i11 = (int) binarySearch; i11 <= i10; i11++) {
                MethodBinding methodBinding2 = this.methods[i11];
                TypeBinding[] typeBindingArr2 = methodBinding2.parameters;
                if (typeBindingArr2.length == length) {
                    int i12 = 0;
                    while (true) {
                        if (i12 >= length) {
                            if (methodBinding != null) {
                                return null;
                            }
                            methodBinding = methodBinding2;
                        } else {
                            if (TypeBinding.notEquals(typeBindingArr2[i12], typeBindingArr[i12])) {
                                break;
                            }
                            i12++;
                        }
                    }
                }
            }
        } else {
            MethodBinding[] methods = getMethods(TypeConstants.INIT);
            int length2 = methods.length;
            methodBinding = null;
            while (true) {
                length2--;
                if (length2 < 0) {
                    break;
                }
                MethodBinding methodBinding3 = methods[length2];
                TypeBinding[] typeBindingArr3 = methodBinding3.parameters;
                if (typeBindingArr3.length == length) {
                    int i13 = 0;
                    while (true) {
                        if (i13 >= length) {
                            if (methodBinding != null) {
                                return null;
                            }
                            methodBinding = methodBinding3;
                        } else {
                            if (TypeBinding.notEquals(typeBindingArr3[i13], typeBindingArr[i13])) {
                                break;
                            }
                            i13++;
                        }
                    }
                }
            }
        }
        return methodBinding;
    }

    @Override
    public MethodBinding getExactMethod(char[] cArr, TypeBinding[] typeBindingArr, CompilationUnitScope compilationUnitScope) {
        boolean z10;
        MethodBinding methodBinding;
        TypeBinding[] typeBindingArr2;
        int length = typeBindingArr.length;
        int i10 = 0;
        if ((this.tagBits & 32768) != 0) {
            long binarySearch = ReferenceBinding.binarySearch(cArr, this.methods);
            if (binarySearch >= 0) {
                int i11 = (int) binarySearch;
                int i12 = (int) (binarySearch >> 32);
                z10 = true;
                methodBinding = null;
                while (i11 <= i12) {
                    MethodBinding methodBinding2 = this.methods[i11];
                    TypeBinding[] typeBindingArr3 = methodBinding2.parameters;
                    if (typeBindingArr3.length == length) {
                        int i13 = 0;
                        while (true) {
                            if (i13 >= length) {
                                if (methodBinding != null) {
                                    return null;
                                }
                                methodBinding = methodBinding2;
                            } else {
                                if (TypeBinding.notEquals(typeBindingArr3[i13], typeBindingArr[i13])) {
                                    break;
                                }
                                i13++;
                            }
                        }
                    }
                    i11++;
                    z10 = false;
                }
            } else {
                z10 = true;
                methodBinding = null;
            }
        } else {
            MethodBinding[] methods = getMethods(cArr);
            z10 = methods == Binding.NO_METHODS;
            int length2 = methods.length;
            methodBinding = null;
            while (true) {
                length2--;
                if (length2 < 0) {
                    break;
                }
                MethodBinding methodBinding3 = methods[length2];
                TypeBinding[] typeBindingArr4 = methodBinding3.parameters;
                if (typeBindingArr4.length == length) {
                    int i14 = i10;
                    while (i14 < length) {
                        if (!TypeBinding.notEquals(typeBindingArr4[i14], typeBindingArr[i14])) {
                            i14++;
                            i10 = 0;
                        }
                    }
                    if (methodBinding != null) {
                        return null;
                    }
                    methodBinding = methodBinding3;
                }
                i10 = 0;
            }
        }
        if (methodBinding != null) {
            if (methodBinding.hasSubstitutedParameters()) {
                return null;
            }
            return methodBinding;
        }
        if (z10 && ((typeBindingArr2 = this.arguments) == null || typeBindingArr2.length <= 1)) {
            if (isInterface()) {
                if (superInterfaces().length == 1) {
                    if (compilationUnitScope != null) {
                        compilationUnitScope.recordTypeReference(this.superInterfaces[i10]);
                    }
                    return this.superInterfaces[i10].getExactMethod(cArr, typeBindingArr, compilationUnitScope);
                }
            } else if (superclass() != null) {
                if (compilationUnitScope != null) {
                    compilationUnitScope.recordTypeReference(this.superclass);
                }
                return this.superclass.getExactMethod(cArr, typeBindingArr, compilationUnitScope);
            }
        }
        return null;
    }

    @Override
    public FieldBinding getField(char[] cArr, boolean z10) {
        fields();
        return ReferenceBinding.binarySearch(cArr, this.fields);
    }

    @Override
    public MethodBinding[] getInterfaceAbstractContracts(Scope scope, boolean z10, boolean z11) throws InvalidInputException {
        if (z10) {
            TypeBinding[] nonWildcardParameterization = getNonWildcardParameterization(scope);
            if (nonWildcardParameterization == null) {
                return new MethodBinding[]{new ProblemMethodBinding(TypeConstants.ANONYMOUS_METHOD, null, 18)};
            }
            for (int i10 = 0; i10 < nonWildcardParameterization.length; i10++) {
                if (TypeBinding.notEquals(nonWildcardParameterization[i10], this.arguments[i10])) {
                    LookupEnvironment environment = scope.environment();
                    ReferenceBinding referenceBinding = this.type;
                    ParameterizedTypeBinding createParameterizedType = environment.createParameterizedType(referenceBinding, nonWildcardParameterization, referenceBinding.enclosingType());
                    TypeVariableBinding[] typeVariables = this.type.typeVariables();
                    int length = typeVariables.length;
                    for (int i11 = 0; i11 < length; i11++) {
                        if (!typeVariables[i11].boundCheck(createParameterizedType, nonWildcardParameterization[i11], scope, null).isOKbyJLS()) {
                            return new MethodBinding[]{new ProblemMethodBinding(TypeConstants.ANONYMOUS_METHOD, null, 18)};
                        }
                    }
                    return createParameterizedType.getInterfaceAbstractContracts(scope, z10, z11);
                }
            }
        }
        return super.getInterfaceAbstractContracts(scope, z10, z11);
    }

    @Override
    public MethodBinding[] getMethods(char[] cArr) {
        MethodBinding[] methodBindingArr = this.methods;
        if (methodBindingArr != null) {
            long binarySearch = ReferenceBinding.binarySearch(cArr, methodBindingArr);
            if (binarySearch >= 0) {
                int i10 = (int) binarySearch;
                int i11 = (((int) (binarySearch >> 32)) - i10) + 1;
                MethodBinding[] methodBindingArr2 = new MethodBinding[i11];
                System.arraycopy(this.methods, i10, methodBindingArr2, 0, i11);
                return methodBindingArr2;
            }
        }
        if ((this.tagBits & 32768) != 0) {
            return Binding.NO_METHODS;
        }
        MethodBinding[] methodBindingArr3 = null;
        try {
            MethodBinding[] methods = this.type.getMethods(cArr);
            int length = methods.length;
            if (length == 0) {
                MethodBinding[] methodBindingArr4 = Binding.NO_METHODS;
                this.methods = methodBindingArr4;
                return methodBindingArr4;
            }
            MethodBinding[] methodBindingArr5 = new MethodBinding[length];
            try {
                boolean usesNullTypeAnnotations = this.environment.usesNullTypeAnnotations();
                for (int i12 = 0; i12 < length; i12++) {
                    ParameterizedMethodBinding createParameterizedMethod = createParameterizedMethod(methods[i12]);
                    methodBindingArr5[i12] = createParameterizedMethod;
                    if (usesNullTypeAnnotations) {
                        methodBindingArr5[i12] = NullAnnotationMatching.checkForContradictions(createParameterizedMethod, null, null);
                    }
                }
                MethodBinding[] methodBindingArr6 = this.methods;
                if (methodBindingArr6 == null) {
                    MethodBinding[] methodBindingArr7 = new MethodBinding[length];
                    System.arraycopy(methodBindingArr5, 0, methodBindingArr7, 0, length);
                    this.methods = methodBindingArr7;
                } else {
                    int length2 = methodBindingArr6.length + length;
                    MethodBinding[] methodBindingArr8 = new MethodBinding[length2];
                    System.arraycopy(methodBindingArr5, 0, methodBindingArr8, 0, length);
                    MethodBinding[] methodBindingArr9 = this.methods;
                    System.arraycopy(methodBindingArr9, 0, methodBindingArr8, length, methodBindingArr9.length);
                    if (length2 > 1) {
                        ReferenceBinding.sortMethods(methodBindingArr8, 0, length2);
                    }
                    this.methods = methodBindingArr8;
                }
                return methodBindingArr5;
            } catch (Throwable th2) {
                th = th2;
                methodBindingArr3 = methodBindingArr5;
                if (methodBindingArr3 == null) {
                    this.methods = Binding.NO_METHODS;
                }
                throw th;
            }
        } catch (Throwable th3) {
            th = th3;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public TypeBinding[] getNonWildcardParameterization(Scope scope) {
        int i10;
        TypeBinding[] typeBindingArr = this.arguments;
        if (typeBindingArr == null) {
            return Binding.NO_TYPES;
        }
        TypeVariableBinding[] typeVariables = genericType().typeVariables();
        TypeBinding[] typeBindingArr2 = new TypeBinding[typeBindingArr.length];
        int length = typeBindingArr.length;
        for (int i11 = 0; i11 < length; i11++) {
            TypeBinding typeBinding = typeBindingArr[i11];
            if (typeBinding.kind() != 516) {
                typeBindingArr2[i11] = typeBinding;
            } else {
                if (typeVariables[i11].mentionsAny(typeVariables, i11)) {
                    return null;
                }
                WildcardBinding wildcardBinding = (WildcardBinding) typeBinding;
                int i12 = wildcardBinding.boundKind;
                if (i12 == 0) {
                    TypeBinding typeBinding2 = typeVariables[i11].firstBound;
                    typeBindingArr2[i11] = typeBinding2;
                    if (typeBinding2 == null) {
                        typeBindingArr2[i11] = typeVariables[i11].superclass;
                    }
                } else {
                    if (i12 == 1) {
                        TypeBinding[] typeBindingArr3 = wildcardBinding.otherBounds;
                        TypeBinding[] otherUpperBounds = typeVariables[i11].otherUpperBounds();
                        int length2 = (typeBindingArr3 != null ? typeBindingArr3.length : 0) + 1 + otherUpperBounds.length;
                        if (typeVariables[i11].firstBound != null) {
                            length2++;
                        }
                        TypeBinding[] typeBindingArr4 = new TypeBinding[length2];
                        typeBindingArr4[0] = wildcardBinding.bound;
                        if (typeBindingArr3 != null) {
                            int i13 = 0;
                            i10 = 1;
                            while (i13 < typeBindingArr3.length) {
                                typeBindingArr4[i10] = typeBindingArr3[i13];
                                i13++;
                                i10++;
                            }
                        } else {
                            i10 = 1;
                        }
                        TypeBinding typeBinding3 = typeVariables[i11].firstBound;
                        if (typeBinding3 != null) {
                            typeBindingArr4[i10] = typeBinding3;
                            i10++;
                        }
                        int i14 = 0;
                        while (i14 < otherUpperBounds.length) {
                            typeBindingArr4[i10] = otherUpperBounds[i14];
                            i14++;
                            i10++;
                        }
                        TypeBinding[] greaterLowerBound = Scope.greaterLowerBound(typeBindingArr4, null, this.environment);
                        if (greaterLowerBound != null && greaterLowerBound.length != 0) {
                            if (greaterLowerBound.length == 1) {
                                typeBindingArr2[i11] = greaterLowerBound[0];
                            } else {
                                try {
                                    ReferenceBinding[] referenceBindingArr = new ReferenceBinding[greaterLowerBound.length];
                                    System.arraycopy(greaterLowerBound, 0, referenceBindingArr, 0, greaterLowerBound.length);
                                    typeBindingArr2[i11] = this.environment.createIntersectionType18(referenceBindingArr);
                                } catch (ArrayStoreException unused) {
                                    scope.problemReporter().genericInferenceError("Cannot compute glb of " + Arrays.toString(greaterLowerBound), null);
                                }
                            }
                        }
                        return null;
                    }
                    if (i12 == 2) {
                        typeBindingArr2[i11] = wildcardBinding.bound;
                    }
                }
            }
        }
        return typeBindingArr2;
    }

    @Override
    public int getOuterLocalVariablesSlotSize() {
        return genericType().getOuterLocalVariablesSlotSize();
    }

    @Override
    public MethodBinding getSingleAbstractMethod(Scope scope, boolean z10) {
        return getSingleAbstractMethod(scope, z10, -1, -1);
    }

    @Override
    public boolean hasMemberTypes() {
        return this.type.hasMemberTypes();
    }

    @Override
    public boolean hasTypeBit(int i10) {
        TypeBinding erasure = erasure();
        if (erasure instanceof ReferenceBinding) {
            return ((ReferenceBinding) erasure).hasTypeBit(i10);
        }
        return false;
    }

    @Override
    public boolean implementsMethod(MethodBinding methodBinding) {
        return this.type.implementsMethod(methodBinding);
    }

    public void initialize(ReferenceBinding referenceBinding, TypeBinding[] typeBindingArr) {
        this.type = referenceBinding;
        this.sourceName = referenceBinding.sourceName;
        this.compoundName = referenceBinding.compoundName;
        this.fPackage = referenceBinding.fPackage;
        this.fileName = referenceBinding.fileName;
        int i10 = referenceBinding.modifiers & (-1073741825);
        this.modifiers = i10;
        if (typeBindingArr != null) {
            this.modifiers = i10 | 1073741824;
        } else {
            ReferenceBinding referenceBinding2 = this.enclosingType;
            if (referenceBinding2 != null) {
                this.modifiers = i10 | (1073741824 & referenceBinding2.modifiers);
                this.tagBits |= referenceBinding2.tagBits & 2305843009750564992L;
            }
        }
        if (typeBindingArr != null) {
            this.arguments = typeBindingArr;
            for (TypeBinding typeBinding : typeBindingArr) {
                int kind = typeBinding.kind();
                if (kind == 516) {
                    long j10 = this.tagBits;
                    this.tagBits = TagBits.HasDirectWildcard | j10;
                    if (((WildcardBinding) typeBinding).boundKind != 0) {
                        this.tagBits = j10 | 1082130432;
                    }
                } else if (kind != 8196) {
                    this.tagBits |= 8388608;
                } else {
                    this.tagBits |= 1082130432;
                }
                this.tagBits |= typeBinding.tagBits & 2305843009750567040L;
            }
        }
        this.tagBits = ((referenceBinding.tagBits & 2413929400270588060L) | this.tagBits) & (-40961);
    }

    public void initializeArguments() {
    }

    @Override
    public void initializeForStaticImports() {
        this.type.initializeForStaticImports();
    }

    @Override
    public boolean isBoundParameterizedType() {
        return (this.tagBits & 8388608) != 0;
    }

    @Override
    public boolean isEquivalentTo(TypeBinding typeBinding) {
        ReferenceBinding enclosingType;
        if (TypeBinding.equalsEquals(this, typeBinding)) {
            return true;
        }
        if (typeBinding == null) {
            return false;
        }
        int kind = typeBinding.kind();
        if (kind != 260) {
            if (kind != 516) {
                if (kind == 1028) {
                    return TypeBinding.equalsEquals(erasure(), typeBinding.erasure());
                }
                if (kind != 8196) {
                    return TypeBinding.equalsEquals(erasure(), typeBinding);
                }
            }
            return ((WildcardBinding) typeBinding).boundCheck(this);
        }
        ParameterizedTypeBinding parameterizedTypeBinding = (ParameterizedTypeBinding) typeBinding;
        if (TypeBinding.notEquals(this.type, parameterizedTypeBinding.type)) {
            return false;
        }
        if (!isStatic() && (enclosingType = enclosingType()) != null) {
            ReferenceBinding enclosingType2 = parameterizedTypeBinding.enclosingType();
            if (enclosingType2 == null) {
                return false;
            }
            if ((enclosingType2.tagBits & TagBits.HasDirectWildcard) == 0) {
                if (TypeBinding.notEquals(enclosingType, enclosingType2)) {
                    return false;
                }
            } else if (!enclosingType.isEquivalentTo(parameterizedTypeBinding.enclosingType())) {
                return false;
            }
        }
        TypeBinding[] typeBindingArr = this.arguments;
        if (typeBindingArr != ParameterizedSingleTypeReference.DIAMOND_TYPE_ARGUMENTS) {
            if (typeBindingArr == null) {
                return parameterizedTypeBinding.arguments == null;
            }
            int length = typeBindingArr.length;
            TypeBinding[] typeBindingArr2 = parameterizedTypeBinding.arguments;
            if (typeBindingArr2 == null || typeBindingArr2.length != length) {
                return false;
            }
            for (int i10 = 0; i10 < length; i10++) {
                if (!this.arguments[i10].isTypeArgumentContainedBy(typeBindingArr2[i10])) {
                    return false;
                }
            }
        }
        return true;
    }

    @Override
    public boolean isHierarchyConnected() {
        return (this.superclass == null || this.superInterfaces == null) ? false : true;
    }

    @Override
    public boolean isParameterizedType() {
        return true;
    }

    @Override
    public boolean isProperType(boolean z10) {
        if (this.arguments != null) {
            int i10 = 0;
            while (true) {
                TypeBinding[] typeBindingArr = this.arguments;
                if (i10 >= typeBindingArr.length) {
                    break;
                }
                if (!typeBindingArr[i10].isProperType(z10)) {
                    return false;
                }
                i10++;
            }
        }
        return super.isProperType(z10);
    }

    @Override
    public boolean isRawSubstitution() {
        return isRawType();
    }

    @Override
    public int kind() {
        return 260;
    }

    @Override
    public ReferenceBinding[] memberTypes() {
        if (this.memberTypes == null) {
            try {
                ReferenceBinding[] memberTypes = this.type.memberTypes();
                int length = memberTypes.length;
                ReferenceBinding[] referenceBindingArr = new ReferenceBinding[length];
                for (int i10 = 0; i10 < length; i10++) {
                    referenceBindingArr[i10] = memberTypes[i10].isStatic() ? memberTypes[i10] : this.environment.createParameterizedType(memberTypes[i10], null, this);
                }
                this.memberTypes = referenceBindingArr;
            } catch (Throwable th2) {
                if (this.memberTypes == null) {
                    this.memberTypes = Binding.NO_MEMBER_TYPES;
                }
                throw th2;
            }
        }
        return this.memberTypes;
    }

    @Override
    public boolean mentionsAny(TypeBinding[] typeBindingArr, int i10) {
        if (super.mentionsAny(typeBindingArr, i10)) {
            return true;
        }
        TypeBinding[] typeBindingArr2 = this.arguments;
        if (typeBindingArr2 != null) {
            int length = typeBindingArr2.length;
            for (int i11 = 0; i11 < length; i11++) {
                if (TypeBinding.notEquals(this.arguments[i11], this) && this.arguments[i11].mentionsAny(typeBindingArr, i10)) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override
    public MethodBinding[] methods() {
        if ((this.tagBits & 32768) != 0) {
            return this.methods;
        }
        try {
            MethodBinding[] methods = this.type.methods();
            int length = methods.length;
            MethodBinding[] methodBindingArr = new MethodBinding[length];
            boolean usesNullTypeAnnotations = this.environment.usesNullTypeAnnotations();
            for (int i10 = 0; i10 < length; i10++) {
                ParameterizedMethodBinding createParameterizedMethod = createParameterizedMethod(methods[i10]);
                methodBindingArr[i10] = createParameterizedMethod;
                if (usesNullTypeAnnotations) {
                    methodBindingArr[i10] = NullAnnotationMatching.checkForContradictions(createParameterizedMethod, null, null);
                }
            }
            this.methods = methodBindingArr;
            this.tagBits |= 32768;
            return this.methods;
        } catch (Throwable th2) {
            if (this.methods == null) {
                this.methods = Binding.NO_METHODS;
            }
            this.tagBits |= 32768;
            throw th2;
        }
    }

    @Override
    public char[] nullAnnotatedReadableName(CompilerOptions compilerOptions, boolean z10) {
        if (z10) {
            return nullAnnotatedShortReadableName(compilerOptions);
        }
        return nullAnnotatedReadableName(compilerOptions);
    }

    @Override
    public char[] nullAnnotatedShortReadableName(CompilerOptions compilerOptions) {
        StringBuffer stringBuffer = new StringBuffer(10);
        if (isMemberType()) {
            stringBuffer.append(enclosingType().nullAnnotatedReadableName(compilerOptions, true));
            stringBuffer.append('.');
            appendNullAnnotation(stringBuffer, compilerOptions);
            stringBuffer.append(this.sourceName);
        } else {
            appendNullAnnotation(stringBuffer, compilerOptions);
            ReferenceBinding referenceBinding = this.type;
            char[] cArr = referenceBinding.sourceName;
            if (cArr != null) {
                stringBuffer.append(cArr);
            } else {
                stringBuffer.append(referenceBinding.shortReadableName());
            }
        }
        TypeBinding[] typeBindingArr = this.arguments;
        if (typeBindingArr != null && typeBindingArr.length > 0 && !isRawType()) {
            stringBuffer.append('<');
            int length = this.arguments.length;
            for (int i10 = 0; i10 < length; i10++) {
                if (i10 > 0) {
                    stringBuffer.append(IIndexConstants.PARAMETER_SEPARATOR);
                }
                stringBuffer.append(this.arguments[i10].nullAnnotatedReadableName(compilerOptions, true));
            }
            stringBuffer.append('>');
        }
        int length2 = stringBuffer.length();
        char[] cArr2 = new char[length2];
        stringBuffer.getChars(0, length2, cArr2, 0);
        return cArr2;
    }

    @Override
    public int problemId() {
        return this.type.problemId();
    }

    @Override
    public char[] qualifiedPackageName() {
        return this.type.qualifiedPackageName();
    }

    @Override
    public char[] qualifiedSourceName() {
        return this.type.qualifiedSourceName();
    }

    @Override
    public char[] readableName() {
        return readableName(true);
    }

    public ReferenceBinding resolve() {
        long j10 = this.tagBits;
        if ((16777216 & j10) == 0) {
            return this;
        }
        this.tagBits = j10 & (-16777217);
        ReferenceBinding referenceBinding = (ReferenceBinding) BinaryTypeBinding.resolveType(this.type, this.environment, false);
        long j11 = (referenceBinding.tagBits & 2048) | this.tagBits;
        this.tagBits = j11;
        TypeBinding[] typeBindingArr = this.arguments;
        if (typeBindingArr != null) {
            int length = typeBindingArr.length;
            if ((this.type.tagBits & 128) == 0) {
                long j12 = j11 & (-129);
                this.tagBits = j12;
                ReferenceBinding referenceBinding2 = this.enclosingType;
                if (referenceBinding2 != null) {
                    this.tagBits = j12 | (referenceBinding2.tagBits & 128);
                }
            }
            for (int i10 = 0; i10 < length; i10++) {
                TypeBinding resolveType = BinaryTypeBinding.resolveType(this.arguments[i10], this.environment, true);
                this.arguments[i10] = resolveType;
                this.tagBits = (resolveType.tagBits & 2176) | this.tagBits;
            }
        }
        return this;
    }

    @Override
    public char[] shortReadableName() {
        return shortReadableName(true);
    }

    @Override
    public char[] signature() {
        if (this.signature == null) {
            this.signature = this.type.signature();
        }
        return this.signature;
    }

    @Override
    public char[] sourceName() {
        return this.type.sourceName();
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x003b, code lost:
    
        return r5;
     */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public TypeBinding substitute(TypeVariableBinding typeVariableBinding) {
        ParameterizedTypeBinding parameterizedTypeBinding = this;
        while (true) {
            TypeVariableBinding[] typeVariables = parameterizedTypeBinding.type.typeVariables();
            int length = typeVariables.length;
            int i10 = typeVariableBinding.rank;
            if (i10 < length && TypeBinding.equalsEquals(typeVariables[i10], typeVariableBinding)) {
                if (parameterizedTypeBinding.arguments == null) {
                    parameterizedTypeBinding.initializeArguments();
                }
                TypeBinding[] typeBindingArr = parameterizedTypeBinding.arguments;
                if (typeBindingArr != null) {
                    return typeBindingArr.length == 0 ? typeVariableBinding : typeVariableBinding.combineTypeAnnotations(typeBindingArr[typeVariableBinding.rank]);
                }
            }
            if (parameterizedTypeBinding.isStatic()) {
                break;
            }
            ReferenceBinding enclosingType = parameterizedTypeBinding.enclosingType();
            if (!(enclosingType instanceof ParameterizedTypeBinding)) {
                break;
            }
            parameterizedTypeBinding = (ParameterizedTypeBinding) enclosingType;
        }
    }

    @Override
    public TypeBinding substituteInferenceVariable(InferenceVariable inferenceVariable, TypeBinding typeBinding) {
        ReferenceBinding referenceBinding;
        ReferenceBinding referenceBinding2 = this.enclosingType;
        if (!isStatic() && (referenceBinding = this.enclosingType) != null) {
            referenceBinding2 = (ReferenceBinding) referenceBinding.substituteInferenceVariable(inferenceVariable, typeBinding);
        }
        TypeBinding[] typeBindingArr = this.arguments;
        if (typeBindingArr != null) {
            int length = typeBindingArr.length;
            TypeBinding[] typeBindingArr2 = null;
            for (int i10 = 0; i10 < length; i10++) {
                TypeBinding typeBinding2 = this.arguments[i10];
                TypeBinding substituteInferenceVariable = typeBinding2.substituteInferenceVariable(inferenceVariable, typeBinding);
                if (TypeBinding.notEquals(substituteInferenceVariable, typeBinding2)) {
                    if (typeBindingArr2 == null) {
                        TypeBinding[] typeBindingArr3 = new TypeBinding[length];
                        System.arraycopy(this.arguments, 0, typeBindingArr3, 0, length);
                        typeBindingArr2 = typeBindingArr3;
                    }
                    typeBindingArr2[i10] = substituteInferenceVariable;
                }
            }
            if (typeBindingArr2 != null) {
                return this.environment.createParameterizedType(this.type, typeBindingArr2, referenceBinding2);
            }
        } else if (TypeBinding.notEquals(referenceBinding2, this.enclosingType)) {
            return this.environment.createParameterizedType(this.type, this.arguments, referenceBinding2);
        }
        return this;
    }

    @Override
    public ReferenceBinding[] superInterfaces() {
        if (this.superInterfaces == null) {
            if (this.type.isHierarchyBeingConnected()) {
                return Binding.NO_SUPERINTERFACES;
            }
            ReferenceBinding[] substitute = Scope.substitute((Substitution) this, this.type.superInterfaces());
            this.superInterfaces = substitute;
            if (substitute != null) {
                int length = substitute.length;
                while (true) {
                    length--;
                    if (length < 0) {
                        break;
                    }
                    int i10 = this.typeBits | (this.superInterfaces[length].typeBits & TypeIds.InheritableBits);
                    this.typeBits = i10;
                    if ((i10 & 3) != 0) {
                        this.typeBits = i10 | applyCloseableInterfaceWhitelists();
                    }
                }
            }
        }
        return this.superInterfaces;
    }

    @Override
    public ReferenceBinding superclass() {
        if (this.superclass == null) {
            ReferenceBinding superclass = this.type.superclass();
            if (superclass == null) {
                return null;
            }
            ReferenceBinding referenceBinding = (ReferenceBinding) Scope.substitute(this, superclass);
            this.superclass = referenceBinding;
            int i10 = (referenceBinding.typeBits & TypeIds.InheritableBits) | this.typeBits;
            this.typeBits = i10;
            if ((i10 & 3) != 0) {
                this.typeBits = i10 | applyCloseableClassWhitelists();
            }
        }
        return this.superclass;
    }

    @Override
    public void swapUnresolved(UnresolvedReferenceBinding unresolvedReferenceBinding, ReferenceBinding referenceBinding, LookupEnvironment lookupEnvironment) {
        boolean z10;
        if (this.type == unresolvedReferenceBinding) {
            this.type = referenceBinding;
            ReferenceBinding enclosingType = referenceBinding.enclosingType();
            if (enclosingType != null) {
                if (!referenceBinding.isStatic()) {
                    enclosingType = (ReferenceBinding) lookupEnvironment.convertUnresolvedBinaryToRawType(enclosingType);
                }
                this.enclosingType = enclosingType;
            }
            z10 = true;
        } else {
            z10 = false;
        }
        TypeBinding[] typeBindingArr = this.arguments;
        if (typeBindingArr != null) {
            int length = typeBindingArr.length;
            for (int i10 = 0; i10 < length; i10++) {
                TypeBinding[] typeBindingArr2 = this.arguments;
                if (typeBindingArr2[i10] == unresolvedReferenceBinding) {
                    typeBindingArr2[i10] = lookupEnvironment.convertUnresolvedBinaryToRawType(referenceBinding);
                    z10 = true;
                }
            }
        }
        if (z10) {
            initialize(this.type, this.arguments);
        }
    }

    @Override
    public ReferenceBinding[] syntheticEnclosingInstanceTypes() {
        return genericType().syntheticEnclosingInstanceTypes();
    }

    @Override
    public SyntheticArgumentBinding[] syntheticOuterLocalVariables() {
        return genericType().syntheticOuterLocalVariables();
    }

    public String toString() {
        if (hasTypeAnnotations()) {
            return annotatedDebugName();
        }
        StringBuffer stringBuffer = new StringBuffer(30);
        if (this.type instanceof UnresolvedReferenceBinding) {
            stringBuffer.append(debugName());
        } else {
            if (isDeprecated()) {
                stringBuffer.append("deprecated ");
            }
            if (isPublic()) {
                stringBuffer.append("public ");
            }
            if (isProtected()) {
                stringBuffer.append("protected ");
            }
            if (isPrivate()) {
                stringBuffer.append("private ");
            }
            if (isAbstract() && isClass()) {
                stringBuffer.append("abstract ");
            }
            if (isStatic() && isNestedType()) {
                stringBuffer.append("static ");
            }
            if (isFinal()) {
                stringBuffer.append("final ");
            }
            if (isEnum()) {
                stringBuffer.append("enum ");
            } else if (isAnnotationType()) {
                stringBuffer.append("@interface ");
            } else if (isClass()) {
                stringBuffer.append(ExternalAnnotationProvider.CLASS_PREFIX);
            } else {
                stringBuffer.append("interface ");
            }
            stringBuffer.append(debugName());
            stringBuffer.append("\n\textends ");
            ReferenceBinding referenceBinding = this.superclass;
            stringBuffer.append(referenceBinding != null ? referenceBinding.debugName() : "NULL TYPE");
            ReferenceBinding[] referenceBindingArr = this.superInterfaces;
            if (referenceBindingArr == null) {
                stringBuffer.append("NULL SUPERINTERFACES");
            } else if (referenceBindingArr != Binding.NO_SUPERINTERFACES) {
                stringBuffer.append("\n\timplements : ");
                int length = this.superInterfaces.length;
                for (int i10 = 0; i10 < length; i10++) {
                    if (i10 > 0) {
                        stringBuffer.append(", ");
                    }
                    ReferenceBinding referenceBinding2 = this.superInterfaces[i10];
                    stringBuffer.append(referenceBinding2 != null ? referenceBinding2.debugName() : "NULL TYPE");
                }
            }
            if (enclosingType() != null) {
                stringBuffer.append("\n\tenclosing type : ");
                stringBuffer.append(enclosingType().debugName());
            }
            FieldBinding[] fieldBindingArr = this.fields;
            if (fieldBindingArr == null) {
                stringBuffer.append("NULL FIELDS");
            } else if (fieldBindingArr != Binding.NO_FIELDS) {
                stringBuffer.append("\n/*   fields   */");
                int length2 = this.fields.length;
                for (int i11 = 0; i11 < length2; i11++) {
                    stringBuffer.append('\n');
                    FieldBinding fieldBinding = this.fields[i11];
                    stringBuffer.append(fieldBinding != null ? fieldBinding.toString() : "NULL FIELD");
                }
            }
            MethodBinding[] methodBindingArr = this.methods;
            if (methodBindingArr == null) {
                stringBuffer.append("NULL METHODS");
            } else if (methodBindingArr != Binding.NO_METHODS) {
                stringBuffer.append("\n/*   methods   */");
                int length3 = this.methods.length;
                for (int i12 = 0; i12 < length3; i12++) {
                    stringBuffer.append('\n');
                    MethodBinding methodBinding = this.methods[i12];
                    stringBuffer.append(methodBinding != null ? methodBinding.toString() : "NULL METHOD");
                }
            }
            stringBuffer.append("\n\n");
        }
        return stringBuffer.toString();
    }

    @Override
    public TypeBinding[] typeArguments() {
        return this.arguments;
    }

    @Override
    public TypeVariableBinding[] typeVariables() {
        return this.arguments == null ? this.type.typeVariables() : Binding.NO_TYPE_VARIABLES;
    }

    @Override
    public FieldBinding[] unResolvedFields() {
        return this.fields;
    }

    @Override
    public TypeBinding unannotated() {
        return hasTypeAnnotations() ? this.environment.getUnannotatedType(this) : this;
    }

    @Override
    public TypeBinding uncapture(Scope scope) {
        if ((this.tagBits & 2305843009213693952L) == 0) {
            return this;
        }
        TypeBinding[] typeBindingArr = this.arguments;
        int length = typeBindingArr == null ? 0 : typeBindingArr.length;
        TypeBinding[] typeBindingArr2 = new TypeBinding[length];
        for (int i10 = 0; i10 < length; i10++) {
            typeBindingArr2[i10] = this.arguments[i10].uncapture(scope);
        }
        LookupEnvironment environment = scope.environment();
        ReferenceBinding referenceBinding = this.type;
        ReferenceBinding referenceBinding2 = this.enclosingType;
        return environment.createParameterizedType(referenceBinding, typeBindingArr2, (ReferenceBinding) (referenceBinding2 != null ? referenceBinding2.uncapture(scope) : null), this.typeAnnotations);
    }

    @Override
    public long updateTagBits() {
        TypeBinding[] typeBindingArr = this.arguments;
        if (typeBindingArr != null) {
            for (TypeBinding typeBinding : typeBindingArr) {
                this.tagBits |= typeBinding.updateTagBits();
            }
        }
        return super.updateTagBits();
    }

    @Override
    public TypeBinding withoutToplevelNullAnnotation() {
        if (!hasNullTypeAnnotations()) {
            return this;
        }
        return this.environment.createParameterizedType((ReferenceBinding) this.environment.getUnannotatedType(this.type), this.arguments, this.enclosingType, this.environment.filterNullTypeAnnotations(this.typeAnnotations));
    }

    @Override
    public ParameterizedTypeBinding capture(Scope scope, int i10, int i11) {
        int i12;
        if ((this.tagBits & TagBits.HasDirectWildcard) == 0) {
            return this;
        }
        TypeBinding[] typeBindingArr = this.arguments;
        int length = typeBindingArr.length;
        TypeBinding[] typeBindingArr2 = new TypeBinding[length];
        ReferenceBinding enclosingSourceType = scope.enclosingSourceType();
        if (enclosingSourceType != null) {
            enclosingSourceType = enclosingSourceType.outermostEnclosingType();
        }
        CompilationUnitScope compilationUnitScope = scope.compilationUnitScope();
        CompilationUnitDeclaration compilationUnitDeclaration = compilationUnitScope.referenceContext;
        boolean z10 = this.environment.globalOptions.sourceLevel >= ClassFileConstants.JDK1_8;
        int i13 = 0;
        while (i13 < length) {
            TypeBinding typeBinding = typeBindingArr[i13];
            if (typeBinding.kind() == 516) {
                WildcardBinding wildcardBinding = (WildcardBinding) typeBinding;
                if (wildcardBinding.boundKind == 2) {
                    TypeBinding typeBinding2 = wildcardBinding.bound;
                    if (typeBinding2.f102482id == 1) {
                        typeBindingArr2[i13] = typeBinding2;
                        i12 = i13;
                    }
                }
                if (z10) {
                    i12 = i13;
                    typeBindingArr2[i12] = this.environment.createCapturedWildcard(wildcardBinding, enclosingSourceType, i10, i11, compilationUnitDeclaration, compilationUnitScope.nextCaptureID());
                } else {
                    i12 = i13;
                    typeBindingArr2[i12] = new CaptureBinding(wildcardBinding, enclosingSourceType, i10, i11, compilationUnitDeclaration, compilationUnitScope.nextCaptureID());
                }
            } else {
                i12 = i13;
                typeBindingArr2[i12] = typeBinding;
            }
            i13 = i12 + 1;
        }
        ParameterizedTypeBinding createParameterizedType = this.environment.createParameterizedType(this.type, typeBindingArr2, enclosingType(), this.typeAnnotations);
        for (int i14 = 0; i14 < length; i14++) {
            TypeBinding typeBinding3 = typeBindingArr2[i14];
            if (typeBinding3.isCapture()) {
                ((CaptureBinding) typeBinding3).initializeBounds(scope, createParameterizedType);
            }
        }
        return createParameterizedType;
    }

    @Override
    public ReferenceBinding downwardsProjection(Scope scope, TypeBinding[] typeBindingArr) {
        TypeBinding[] typeBindingArr2 = this.arguments;
        if (typeBindingArr2 == null) {
            return this;
        }
        TypeBinding[] typeBindingArr3 = new TypeBinding[typeBindingArr2.length];
        int length = typeBindingArr2.length;
        for (int i10 = 0; i10 < length; i10++) {
            TypeBinding typeBinding = typeBindingArr2[i10];
            int kind = typeBinding.kind();
            if (!typeBinding.mentionsAny(typeBindingArr, -1)) {
                typeBindingArr3[i10] = typeBinding;
            } else {
                if (kind != 516) {
                    return null;
                }
                WildcardBinding wildcardBinding = (WildcardBinding) typeBinding;
                if (wildcardBinding.boundKind() == 1) {
                    TypeBinding downwardsProjection = wildcardBinding.bound().downwardsProjection(scope, typeBindingArr);
                    if (downwardsProjection == null) {
                        return null;
                    }
                    typeBindingArr3[i10] = environment().createWildcard(null, 0, downwardsProjection, null, 1);
                } else {
                    if (wildcardBinding.boundKind() != 2) {
                        return null;
                    }
                    typeBindingArr3[i10] = environment().createWildcard(null, 0, wildcardBinding.bound().upwardsProjection(scope, typeBindingArr), null, 2);
                }
            }
        }
        return this.environment.createParameterizedType(this.type, typeBindingArr3, this.enclosingType);
    }

    public MethodBinding getSingleAbstractMethod(Scope scope, boolean z10, int i10, int i11) {
        int i12 = 0;
        char c10 = z10 ? i11 < 0 ? (char) 0 : (char) 1 : (char) 2;
        MethodBinding[] methodBindingArr = this.singleAbstractMethod;
        if (methodBindingArr != null) {
            MethodBinding methodBinding = methodBindingArr[c10];
            if (methodBinding != null) {
                return methodBinding;
            }
        } else {
            this.singleAbstractMethod = new MethodBinding[3];
        }
        if (!isValidBinding()) {
            return null;
        }
        ReferenceBinding genericType = genericType();
        MethodBinding singleAbstractMethod = genericType.getSingleAbstractMethod(scope, z10);
        if (singleAbstractMethod != null && singleAbstractMethod.isValidBinding()) {
            TypeBinding[] typeBindingArr = this.arguments;
            if (z10) {
                typeBindingArr = getNonWildcardParameterization(scope);
                if (typeBindingArr == null) {
                    MethodBinding[] methodBindingArr2 = this.singleAbstractMethod;
                    ProblemMethodBinding problemMethodBinding = new ProblemMethodBinding(TypeConstants.ANONYMOUS_METHOD, null, 18);
                    methodBindingArr2[c10] = problemMethodBinding;
                    return problemMethodBinding;
                }
            } else if (typeBindingArr == null) {
                typeBindingArr = Binding.NO_TYPES;
            }
            if (i11 >= 0) {
                int length = typeBindingArr.length;
                for (int i13 = 0; i13 < length; i13++) {
                    typeBindingArr[i13] = typeBindingArr[i13].capture(scope, i10, i11);
                }
            }
            ParameterizedTypeBinding createParameterizedType = scope.environment().createParameterizedType(genericType, typeBindingArr, genericType.enclosingType());
            TypeVariableBinding[] typeVariables = genericType.typeVariables();
            int length2 = typeVariables.length;
            for (int i14 = 0; i14 < length2; i14++) {
                if (!typeVariables[i14].boundCheck(createParameterizedType, typeBindingArr[i14], scope, null).isOKbyJLS()) {
                    MethodBinding[] methodBindingArr3 = this.singleAbstractMethod;
                    ProblemMethodBinding problemMethodBinding2 = new ProblemMethodBinding(TypeConstants.ANONYMOUS_METHOD, null, 18);
                    methodBindingArr3[c10] = problemMethodBinding2;
                    return problemMethodBinding2;
                }
            }
            MethodBinding[] methods = ((ReferenceBinding) createParameterizedType.findSuperTypeOriginatingFrom(singleAbstractMethod.declaringClass)).getMethods(singleAbstractMethod.selector);
            int length3 = methods.length;
            while (true) {
                if (i12 >= length3) {
                    break;
                }
                MethodBinding methodBinding2 = methods[i12];
                if (!methodBinding2.isAbstract() || methodBinding2.redeclaresPublicObjectMethod(scope)) {
                    i12++;
                } else {
                    if (methodBinding2.problemId() == 25) {
                        methodBinding2 = ((ProblemMethodBinding) methodBinding2).closestMatch;
                    }
                    this.singleAbstractMethod[c10] = methodBinding2;
                }
            }
            return this.singleAbstractMethod[c10];
        }
        this.singleAbstractMethod[c10] = singleAbstractMethod;
        return singleAbstractMethod;
    }

    @Override
    public char[] readableName(boolean z10) {
        TypeBinding[] typeBindingArr;
        StringBuffer stringBuffer = new StringBuffer(10);
        if (isMemberType()) {
            stringBuffer.append(CharOperation.concat(enclosingType().readableName(z10 && !isStatic()), this.sourceName, '.'));
        } else {
            stringBuffer.append(CharOperation.concatWith(this.type.compoundName, '.'));
        }
        if (z10 && (typeBindingArr = this.arguments) != null && typeBindingArr.length > 0) {
            stringBuffer.append('<');
            int length = this.arguments.length;
            for (int i10 = 0; i10 < length; i10++) {
                if (i10 > 0) {
                    stringBuffer.append(IIndexConstants.PARAMETER_SEPARATOR);
                }
                stringBuffer.append(this.arguments[i10].readableName());
            }
            stringBuffer.append('>');
        }
        int length2 = stringBuffer.length();
        char[] cArr = new char[length2];
        stringBuffer.getChars(0, length2, cArr, 0);
        return cArr;
    }

    @Override
    public char[] shortReadableName(boolean z10) {
        TypeBinding[] typeBindingArr;
        StringBuffer stringBuffer = new StringBuffer(10);
        if (isMemberType()) {
            stringBuffer.append(CharOperation.concat(enclosingType().shortReadableName(z10 && !isStatic()), this.sourceName, '.'));
        } else {
            stringBuffer.append(this.type.sourceName);
        }
        if (z10 && (typeBindingArr = this.arguments) != null && typeBindingArr.length > 0) {
            stringBuffer.append('<');
            int length = this.arguments.length;
            for (int i10 = 0; i10 < length; i10++) {
                if (i10 > 0) {
                    stringBuffer.append(IIndexConstants.PARAMETER_SEPARATOR);
                }
                stringBuffer.append(this.arguments[i10].shortReadableName());
            }
            stringBuffer.append('>');
        }
        int length2 = stringBuffer.length();
        char[] cArr = new char[length2];
        stringBuffer.getChars(0, length2, cArr, 0);
        return cArr;
    }

    @Override
    public ReferenceBinding upwardsProjection(Scope scope, TypeBinding[] typeBindingArr) {
        TypeBinding[] typeBindingArr2 = this.arguments;
        if (typeBindingArr2 == null) {
            return this;
        }
        TypeBinding[] typeBindingArr3 = new TypeBinding[typeBindingArr2.length];
        int length = typeBindingArr2.length;
        for (int i10 = 0; i10 < length; i10++) {
            TypeBinding typeBinding = typeBindingArr2[i10];
            int kind = typeBinding.kind();
            if (!typeBinding.mentionsAny(typeBindingArr, -1)) {
                typeBindingArr3[i10] = typeBinding;
            } else if (kind != 516) {
                TypeBinding upwardsProjection = typeBinding.upwardsProjection(scope, typeBindingArr);
                TypeVariableBinding[] typeVariables = this.type.typeVariables();
                if (typeVariables == null || typeVariables.length == 0) {
                    return this;
                }
                TypeBinding upperBound = typeVariables[i10].upperBound();
                if (upwardsProjection.f102482id != 1 && (upperBound.mentionsAny(typeBindingArr2, -1) || !upperBound.isSubtypeOf(upwardsProjection, false))) {
                    typeBindingArr3[i10] = environment().createWildcard(genericType(), i10, upwardsProjection, null, 1);
                } else {
                    TypeBinding downwardsProjection = typeBinding.downwardsProjection(scope, typeBindingArr);
                    if (downwardsProjection != null) {
                        typeBindingArr3[i10] = environment().createWildcard(genericType(), i10, downwardsProjection, null, 2);
                    } else {
                        typeBindingArr3[i10] = environment().createWildcard(genericType(), i10, null, null, 0);
                    }
                }
            } else {
                WildcardBinding wildcardBinding = (WildcardBinding) typeBinding;
                if (wildcardBinding.boundKind() == 1) {
                    typeBindingArr3[i10] = environment().createWildcard(null, 0, wildcardBinding.bound().upwardsProjection(scope, typeBindingArr), null, 1);
                } else if (wildcardBinding.boundKind() == 2) {
                    TypeBinding downwardsProjection2 = wildcardBinding.bound().downwardsProjection(scope, typeBindingArr);
                    if (downwardsProjection2 != null) {
                        typeBindingArr3[i10] = environment().createWildcard(null, 0, downwardsProjection2, null, 2);
                    } else {
                        typeBindingArr3[i10] = environment().createWildcard(null, 0, null, null, 0);
                    }
                }
            }
        }
        return this.environment.createParameterizedType(this.type, typeBindingArr3, this.enclosingType);
    }

    @Override
    public char[] nullAnnotatedReadableName(CompilerOptions compilerOptions) {
        StringBuffer stringBuffer = new StringBuffer(10);
        if (isMemberType()) {
            stringBuffer.append(enclosingType().nullAnnotatedReadableName(compilerOptions, false));
            stringBuffer.append('.');
            appendNullAnnotation(stringBuffer, compilerOptions);
            stringBuffer.append(this.sourceName);
        } else {
            char[][] cArr = this.type.compoundName;
            if (cArr != null) {
                int length = cArr.length;
                int i10 = 0;
                while (i10 < length - 1) {
                    stringBuffer.append(this.type.compoundName[i10]);
                    stringBuffer.append('.');
                    i10++;
                }
                appendNullAnnotation(stringBuffer, compilerOptions);
                stringBuffer.append(this.type.compoundName[i10]);
            } else {
                appendNullAnnotation(stringBuffer, compilerOptions);
                ReferenceBinding referenceBinding = this.type;
                char[] cArr2 = referenceBinding.sourceName;
                if (cArr2 != null) {
                    stringBuffer.append(cArr2);
                } else {
                    stringBuffer.append(referenceBinding.readableName());
                }
            }
        }
        TypeBinding[] typeBindingArr = this.arguments;
        if (typeBindingArr != null && typeBindingArr.length > 0 && !isRawType()) {
            stringBuffer.append('<');
            int length2 = this.arguments.length;
            for (int i11 = 0; i11 < length2; i11++) {
                if (i11 > 0) {
                    stringBuffer.append(IIndexConstants.PARAMETER_SEPARATOR);
                }
                stringBuffer.append(this.arguments[i11].nullAnnotatedReadableName(compilerOptions, false));
            }
            stringBuffer.append('>');
        }
        int length3 = stringBuffer.length();
        char[] cArr3 = new char[length3];
        stringBuffer.getChars(0, length3, cArr3, 0);
        return cArr3;
    }
}
