package org.eclipse.jdt.internal.compiler.lookup;

import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.ast.ASTNode;
import org.eclipse.jdt.internal.compiler.classfmt.ClassFileConstants;
import org.eclipse.jdt.internal.compiler.impl.CompilerOptions;
import w2.C15883c;

public class CaptureBinding extends TypeVariableBinding {
    public int captureID;
    public ASTNode cud;
    public int end;
    public TypeBinding lowerBound;
    TypeBinding pendingSubstitute;
    public ReferenceBinding sourceType;
    public int start;
    public WildcardBinding wildcard;

    public CaptureBinding(WildcardBinding wildcardBinding, ReferenceBinding referenceBinding, int i10, int i11, ASTNode aSTNode, int i12) {
        super(TypeConstants.WILDCARD_CAPTURE_NAME_PREFIX, wildcardBinding.environment);
        this.wildcard = wildcardBinding;
        this.modifiers = CompilerOptions.ShouldImplementHashcode;
        this.fPackage = wildcardBinding.fPackage;
        this.sourceType = referenceBinding;
        this.start = i10;
        this.end = i11;
        this.captureID = i12;
        this.tagBits |= 2305843009213693952L;
        this.cud = aSTNode;
        if (wildcardBinding.hasTypeAnnotations()) {
            CaptureBinding captureBinding = (CaptureBinding) clone(null);
            captureBinding.wildcard = (WildcardBinding) this.wildcard.unannotated();
            this.environment.getUnannotatedType(captureBinding);
            this.f102482id = captureBinding.f102482id;
            this.environment.typeSystem.cacheDerivedType(this, captureBinding, this);
            super.setTypeAnnotations(wildcardBinding.getTypeAnnotations(), wildcardBinding.environment.globalOptions.isAnnotationBasedNullAnalysisEnabled);
            if (wildcardBinding.hasNullTypeAnnotations()) {
                this.tagBits |= TagBits.HasNullTypeAnnotation;
                return;
            }
            return;
        }
        computeId(this.environment);
        if (wildcardBinding.hasNullTypeAnnotations()) {
            this.tagBits = (wildcardBinding.tagBits & TagBits.AnnotationNullMASK) | TagBits.HasNullTypeAnnotation | this.tagBits;
        }
    }

    @Override
    public TypeBinding clone(TypeBinding typeBinding) {
        return new CaptureBinding(this);
    }

    @Override
    public char[] computeUniqueKey(boolean z10) {
        StringBuffer stringBuffer = new StringBuffer();
        if (z10) {
            stringBuffer.append(this.sourceType.computeUniqueKey(false));
            stringBuffer.append('&');
        }
        stringBuffer.append(TypeConstants.WILDCARD_CAPTURE);
        stringBuffer.append(this.wildcard.computeUniqueKey(false));
        stringBuffer.append(this.end);
        stringBuffer.append(';');
        int length = stringBuffer.length();
        char[] cArr = new char[length];
        stringBuffer.getChars(0, length, cArr, 0);
        return cArr;
    }

    @Override
    public String debugName() {
        if (this.wildcard == null) {
            return super.debugName();
        }
        StringBuffer stringBuffer = new StringBuffer(10);
        AnnotationBinding[] typeAnnotations = getTypeAnnotations();
        int length = typeAnnotations == null ? 0 : typeAnnotations.length;
        for (int i10 = 0; i10 < length; i10++) {
            stringBuffer.append((Object) typeAnnotations[i10]);
            stringBuffer.append(C15883c.f126249O);
        }
        stringBuffer.append(TypeConstants.WILDCARD_CAPTURE_NAME_PREFIX);
        stringBuffer.append(this.captureID);
        stringBuffer.append(TypeConstants.WILDCARD_CAPTURE_NAME_SUFFIX);
        stringBuffer.append(this.wildcard.debugName());
        return stringBuffer.toString();
    }

    @Override
    public char[] genericTypeSignature() {
        if (this.inRecursiveFunction) {
            return CharOperation.concat(new char[]{'L'}, CharOperation.concatWith(TypeConstants.JAVA_LANG_OBJECT, '.'), new char[]{';'});
        }
        this.inRecursiveFunction = true;
        try {
            return erasure().genericTypeSignature();
        } finally {
            this.inRecursiveFunction = false;
        }
    }

    @Override
    public TypeBinding[] getDerivedTypesForDeferredInitialization() {
        TypeBinding[] derivedTypes = this.environment.typeSystem.getDerivedTypes(this);
        if (derivedTypes.length <= 0) {
            return derivedTypes;
        }
        int i10 = 0;
        for (TypeBinding typeBinding : derivedTypes) {
            if (typeBinding != null && typeBinding.f102482id == this.f102482id) {
                derivedTypes[i10] = typeBinding;
                i10++;
            }
        }
        if (i10 >= derivedTypes.length) {
            return derivedTypes;
        }
        TypeBinding[] typeBindingArr = new TypeBinding[i10];
        System.arraycopy(derivedTypes, 0, typeBindingArr, 0, i10);
        return typeBindingArr;
    }

    public void initializeBounds(Scope scope, ParameterizedTypeBinding parameterizedTypeBinding) {
        boolean z10 = scope.compilerOptions().complianceLevel >= ClassFileConstants.JDK1_8;
        TypeVariableBinding typeVariable = this.wildcard.typeVariable();
        if (typeVariable == null) {
            WildcardBinding wildcardBinding = this.wildcard;
            TypeBinding typeBinding = wildcardBinding.bound;
            int i10 = wildcardBinding.boundKind;
            if (i10 == 0) {
                setSuperClass(scope.getJavaLangObject());
                setSuperInterfaces(Binding.NO_SUPERINTERFACES);
                this.tagBits &= -536870913;
                return;
            }
            if (i10 != 1) {
                if (i10 != 2) {
                    return;
                }
                setSuperClass(scope.getJavaLangObject());
                setSuperInterfaces(Binding.NO_SUPERINTERFACES);
                this.lowerBound = this.wildcard.bound;
                if ((typeBinding.tagBits & TagBits.HasTypeVariable) == 0) {
                    this.tagBits &= -536870913;
                    return;
                }
                return;
            }
            TypeBinding capture = z10 ? typeBinding : typeBinding.capture(scope, this.start, this.end);
            if (typeBinding.isInterface()) {
                setSuperClass(scope.getJavaLangObject());
                setSuperInterfaces(new ReferenceBinding[]{(ReferenceBinding) capture});
            } else {
                if (capture.isArrayType() || TypeBinding.equalsEquals(capture, this)) {
                    setSuperClass(scope.getJavaLangObject());
                } else {
                    setSuperClass(capture);
                }
                setSuperInterfaces(Binding.NO_SUPERINTERFACES);
            }
            setFirstBound(capture);
            if ((capture.tagBits & TagBits.HasTypeVariable) == 0) {
                this.tagBits &= -536870913;
                return;
            }
            return;
        }
        ReferenceBinding referenceBinding = typeVariable.superclass;
        ReferenceBinding referenceBinding2 = (ReferenceBinding) Scope.substitute(parameterizedTypeBinding, referenceBinding);
        if (!TypeBinding.equalsEquals(referenceBinding2, this)) {
            referenceBinding = referenceBinding2;
        }
        ReferenceBinding[] superInterfaces = typeVariable.superInterfaces();
        ReferenceBinding[] substitute = Scope.substitute((Substitution) parameterizedTypeBinding, superInterfaces);
        if (substitute != superInterfaces) {
            int length = substitute.length;
            for (int i11 = 0; i11 < length; i11++) {
                if (TypeBinding.equalsEquals(substitute[i11], this)) {
                    substitute[i11] = superInterfaces[i11];
                }
            }
        }
        WildcardBinding wildcardBinding2 = this.wildcard;
        TypeBinding typeBinding2 = wildcardBinding2.bound;
        int i12 = wildcardBinding2.boundKind;
        if (i12 == 0) {
            setSuperClass(referenceBinding);
            setSuperInterfaces(substitute);
            this.tagBits &= -536870913;
        } else if (i12 == 1) {
            TypeBinding capture2 = z10 ? typeBinding2 : typeBinding2.capture(scope, this.start, this.end);
            if (typeBinding2.isInterface()) {
                setSuperClass(referenceBinding);
                if (substitute == Binding.NO_SUPERINTERFACES) {
                    setSuperInterfaces(new ReferenceBinding[]{(ReferenceBinding) capture2});
                } else {
                    int length2 = substitute.length;
                    ReferenceBinding[] referenceBindingArr = new ReferenceBinding[length2 + 1];
                    System.arraycopy(substitute, 0, referenceBindingArr, 1, length2);
                    referenceBindingArr[0] = (ReferenceBinding) capture2;
                    setSuperInterfaces(Scope.greaterLowerBound(referenceBindingArr));
                }
            } else {
                if (capture2.isArrayType() || TypeBinding.equalsEquals(capture2, this)) {
                    setSuperClass(referenceBinding);
                } else {
                    setSuperClass(capture2);
                    if (this.superclass.isSuperclassOf(referenceBinding)) {
                        setSuperClass(referenceBinding);
                    }
                }
                setSuperInterfaces(substitute);
            }
            setFirstBound(capture2);
            if ((capture2.tagBits & TagBits.HasTypeVariable) == 0) {
                this.tagBits &= -536870913;
            }
        } else if (i12 == 2) {
            setSuperClass(referenceBinding);
            if (TypeBinding.equalsEquals(typeVariable.firstBound, referenceBinding) || TypeBinding.equalsEquals(typeBinding2, referenceBinding)) {
                setFirstBound(referenceBinding);
            }
            setSuperInterfaces(substitute);
            this.lowerBound = typeBinding2;
            if ((typeBinding2.tagBits & TagBits.HasTypeVariable) == 0) {
                this.tagBits &= -536870913;
            }
        }
        if (scope.environment().usesNullTypeAnnotations()) {
            evaluateNullAnnotations(scope, null);
        }
    }

    @Override
    public boolean isCapture() {
        return true;
    }

    @Override
    public boolean isEquivalentTo(TypeBinding typeBinding) {
        if (TypeBinding.equalsEquals(this, typeBinding)) {
            return true;
        }
        if (typeBinding == null) {
            return false;
        }
        TypeBinding typeBinding2 = this.firstBound;
        if (typeBinding2 != null && typeBinding2.isArrayType() && this.firstBound.isCompatibleWith(typeBinding)) {
            return true;
        }
        int kind = typeBinding.kind();
        if (kind == 516 || kind == 8196) {
            return ((WildcardBinding) typeBinding).boundCheck(this);
        }
        return false;
    }

    @Override
    public boolean isProperType(boolean z10) {
        TypeBinding typeBinding = this.lowerBound;
        if (typeBinding != null && !typeBinding.isProperType(z10)) {
            return false;
        }
        WildcardBinding wildcardBinding = this.wildcard;
        if (wildcardBinding == null || wildcardBinding.isProperType(z10)) {
            return super.isProperType(z10);
        }
        return false;
    }

    @Override
    public char[] nullAnnotatedReadableName(CompilerOptions compilerOptions, boolean z10) {
        StringBuffer stringBuffer = new StringBuffer(10);
        appendNullAnnotation(stringBuffer, compilerOptions);
        stringBuffer.append(sourceName());
        if (!this.inRecursiveFunction) {
            this.inRecursiveFunction = true;
            try {
                if (this.wildcard != null) {
                    stringBuffer.append("of ");
                    stringBuffer.append(this.wildcard.withoutToplevelNullAnnotation().nullAnnotatedReadableName(compilerOptions, z10));
                } else if (this.lowerBound != null) {
                    stringBuffer.append(" super ");
                    stringBuffer.append(this.lowerBound.nullAnnotatedReadableName(compilerOptions, z10));
                } else if (this.firstBound != null) {
                    stringBuffer.append(" extends ");
                    stringBuffer.append(this.firstBound.nullAnnotatedReadableName(compilerOptions, z10));
                    if (otherUpperBounds() != Binding.NO_TYPES) {
                        stringBuffer.append(" & ...");
                    }
                }
                this.inRecursiveFunction = false;
            } catch (Throwable th2) {
                this.inRecursiveFunction = false;
                throw th2;
            }
        }
        int length = stringBuffer.length();
        char[] cArr = new char[length];
        stringBuffer.getChars(0, length, cArr, 0);
        return cArr;
    }

    @Override
    public char[] readableName() {
        if (this.wildcard == null) {
            return super.readableName();
        }
        StringBuffer stringBuffer = new StringBuffer(10);
        stringBuffer.append(TypeConstants.WILDCARD_CAPTURE_NAME_PREFIX);
        stringBuffer.append(this.captureID);
        stringBuffer.append(TypeConstants.WILDCARD_CAPTURE_NAME_SUFFIX);
        stringBuffer.append(this.wildcard.readableName());
        int length = stringBuffer.length();
        char[] cArr = new char[length];
        stringBuffer.getChars(0, length, cArr, 0);
        return cArr;
    }

    @Override
    public void setTypeAnnotations(AnnotationBinding[] annotationBindingArr, boolean z10) {
        WildcardBinding wildcardBinding;
        super.setTypeAnnotations(annotationBindingArr, z10);
        if (annotationBindingArr == Binding.NO_ANNOTATIONS || (wildcardBinding = this.wildcard) == null) {
            return;
        }
        this.wildcard = (WildcardBinding) wildcardBinding.environment.createAnnotatedType(wildcardBinding, annotationBindingArr);
    }

    @Override
    public char[] shortReadableName() {
        if (this.wildcard == null) {
            return super.shortReadableName();
        }
        StringBuffer stringBuffer = new StringBuffer(10);
        stringBuffer.append(TypeConstants.WILDCARD_CAPTURE_NAME_PREFIX);
        stringBuffer.append(this.captureID);
        stringBuffer.append(TypeConstants.WILDCARD_CAPTURE_NAME_SUFFIX);
        stringBuffer.append(this.wildcard.shortReadableName());
        int length = stringBuffer.length();
        char[] cArr = new char[length];
        stringBuffer.getChars(0, length, cArr, 0);
        return cArr;
    }

    @Override
    public char[] signableName() {
        if (this.wildcard == null) {
            return super.readableName();
        }
        StringBuffer stringBuffer = new StringBuffer(10);
        stringBuffer.append(TypeConstants.WILDCARD_CAPTURE_SIGNABLE_NAME_SUFFIX);
        stringBuffer.append(this.wildcard.readableName());
        int length = stringBuffer.length();
        char[] cArr = new char[length];
        stringBuffer.getChars(0, length, cArr, 0);
        return cArr;
    }

    @Override
    public TypeBinding substituteInferenceVariable(InferenceVariable inferenceVariable, TypeBinding typeBinding) {
        TypeBinding typeBinding2 = this.pendingSubstitute;
        if (typeBinding2 != null) {
            return typeBinding2;
        }
        try {
            TypeBinding substituteInferenceVariable = this.wildcard.substituteInferenceVariable(inferenceVariable, typeBinding);
            if (substituteInferenceVariable == this.wildcard) {
                this.pendingSubstitute = null;
                return this;
            }
            CaptureBinding captureBinding = (CaptureBinding) clone(enclosingType());
            captureBinding.wildcard = (WildcardBinding) substituteInferenceVariable;
            this.pendingSubstitute = captureBinding;
            TypeBinding typeBinding3 = this.lowerBound;
            if (typeBinding3 != null) {
                captureBinding.lowerBound = typeBinding3.substituteInferenceVariable(inferenceVariable, typeBinding);
            }
            TypeBinding typeBinding4 = this.firstBound;
            if (typeBinding4 != null) {
                captureBinding.firstBound = typeBinding4.substituteInferenceVariable(inferenceVariable, typeBinding);
            }
            ReferenceBinding referenceBinding = this.superclass;
            if (referenceBinding != null) {
                captureBinding.superclass = (ReferenceBinding) referenceBinding.substituteInferenceVariable(inferenceVariable, typeBinding);
            }
            ReferenceBinding[] referenceBindingArr = this.superInterfaces;
            if (referenceBindingArr != null) {
                int length = referenceBindingArr.length;
                captureBinding.superInterfaces = new ReferenceBinding[length];
                for (int i10 = 0; i10 < length; i10++) {
                    captureBinding.superInterfaces[i10] = (ReferenceBinding) this.superInterfaces[i10].substituteInferenceVariable(inferenceVariable, typeBinding);
                }
            }
            return captureBinding;
        } finally {
            this.pendingSubstitute = null;
        }
    }

    @Override
    public String toString() {
        if (this.wildcard == null) {
            return super.toString();
        }
        StringBuffer stringBuffer = new StringBuffer(10);
        AnnotationBinding[] typeAnnotations = getTypeAnnotations();
        int length = typeAnnotations == null ? 0 : typeAnnotations.length;
        for (int i10 = 0; i10 < length; i10++) {
            stringBuffer.append((Object) typeAnnotations[i10]);
            stringBuffer.append(C15883c.f126249O);
        }
        stringBuffer.append(TypeConstants.WILDCARD_CAPTURE_NAME_PREFIX);
        stringBuffer.append(this.captureID);
        stringBuffer.append(TypeConstants.WILDCARD_CAPTURE_NAME_SUFFIX);
        stringBuffer.append((Object) this.wildcard);
        return stringBuffer.toString();
    }

    @Override
    public TypeBinding uncapture(Scope scope) {
        return this.wildcard;
    }

    public TypeBinding upperBoundForProjection() {
        if (this.wildcard == null) {
            return super.upperBound();
        }
        ReferenceBinding[] superInterfaces = superInterfaces();
        if (this.wildcard.boundKind == 1) {
            if (superInterfaces.length <= 0) {
                return this.superclass;
            }
            ReferenceBinding[] referenceBindingArr = new ReferenceBinding[superInterfaces.length + 1];
            System.arraycopy(superInterfaces, 0, referenceBindingArr, 1, superInterfaces.length);
            referenceBindingArr[0] = superclass();
            ReferenceBinding[] greaterLowerBound = Scope.greaterLowerBound(referenceBindingArr);
            return greaterLowerBound == null ? new ProblemReferenceBinding(null, null, 10) : greaterLowerBound.length == 1 ? greaterLowerBound[0] : this.environment.createIntersectionType18(greaterLowerBound);
        }
        boolean equalsEquals = TypeBinding.equalsEquals(superclass(), this.environment.getResolvedJavaBaseType(TypeConstants.JAVA_LANG_OBJECT, null));
        if (superInterfaces.length == 0) {
            return superclass();
        }
        if (superInterfaces.length == 1) {
            return equalsEquals ? superInterfaces[0] : this.environment.createIntersectionType18(new ReferenceBinding[]{superclass(), superInterfaces[0]});
        }
        if (equalsEquals) {
            return this.environment.createIntersectionType18(superInterfaces);
        }
        ReferenceBinding[] referenceBindingArr2 = new ReferenceBinding[superInterfaces.length + 1];
        System.arraycopy(superInterfaces, 0, referenceBindingArr2, 1, superInterfaces.length);
        referenceBindingArr2[0] = superclass();
        return this.environment.createIntersectionType18(referenceBindingArr2);
    }

    @Override
    public TypeBinding withoutToplevelNullAnnotation() {
        WildcardBinding wildcardBinding;
        if (!hasNullTypeAnnotations()) {
            return this;
        }
        WildcardBinding wildcardBinding2 = this.wildcard;
        if (wildcardBinding2 == null || !wildcardBinding2.hasNullTypeAnnotations() || (wildcardBinding = (WildcardBinding) this.wildcard.withoutToplevelNullAnnotation()) == this.wildcard) {
            return super.withoutToplevelNullAnnotation();
        }
        CaptureBinding captureBinding = (CaptureBinding) this.environment.getUnannotatedType(this).clone(null);
        if (wildcardBinding.hasTypeAnnotations()) {
            captureBinding.tagBits |= 2097152;
        }
        captureBinding.wildcard = wildcardBinding;
        captureBinding.superclass = this.superclass;
        captureBinding.superInterfaces = this.superInterfaces;
        return this.environment.createAnnotatedType(captureBinding, this.environment.filterNullTypeAnnotations(this.typeAnnotations));
    }

    @Override
    public ReferenceBinding downwardsProjection(Scope scope, TypeBinding[] typeBindingArr) {
        ReferenceBinding referenceBinding = null;
        if (enterRecursiveProjectionFunction()) {
            int i10 = 0;
            while (true) {
                if (i10 >= typeBindingArr.length) {
                    break;
                }
                if (TypeBinding.equalsEquals(this, typeBindingArr[i10])) {
                    TypeBinding typeBinding = this.lowerBound;
                    if (typeBinding != null) {
                        referenceBinding = (ReferenceBinding) typeBinding.downwardsProjection(scope, typeBindingArr);
                    }
                } else {
                    i10++;
                }
            }
            exitRecursiveProjectionFunction();
        }
        return referenceBinding;
    }

    @Override
    public ReferenceBinding upwardsProjection(Scope scope, TypeBinding[] typeBindingArr) {
        if (enterRecursiveProjectionFunction()) {
            for (TypeBinding typeBinding : typeBindingArr) {
                try {
                    if (TypeBinding.equalsEquals(this, typeBinding)) {
                        return ((ReferenceBinding) upperBoundForProjection()).upwardsProjection(scope, typeBindingArr);
                    }
                } finally {
                    exitRecursiveProjectionFunction();
                }
            }
            return this;
        }
        return scope.getJavaLangObject();
    }

    public CaptureBinding(ReferenceBinding referenceBinding, char[] cArr, int i10, int i11, int i12, LookupEnvironment lookupEnvironment) {
        super(cArr, null, 0, lookupEnvironment);
        this.modifiers = CompilerOptions.ShouldImplementHashcode;
        this.sourceType = referenceBinding;
        this.start = i10;
        this.end = i11;
        this.captureID = i12;
    }

    public CaptureBinding(CaptureBinding captureBinding) {
        super(captureBinding);
        this.wildcard = captureBinding.wildcard;
        this.sourceType = captureBinding.sourceType;
        this.start = captureBinding.start;
        this.end = captureBinding.end;
        this.captureID = captureBinding.captureID;
        this.lowerBound = captureBinding.lowerBound;
        this.tagBits |= captureBinding.tagBits & 2305843009213693952L;
        this.cud = captureBinding.cud;
    }
}
