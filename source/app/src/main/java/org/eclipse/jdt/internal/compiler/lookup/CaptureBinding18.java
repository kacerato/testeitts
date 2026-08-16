package org.eclipse.jdt.internal.compiler.lookup;

import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.core.JavaElement;

public class CaptureBinding18 extends CaptureBinding {
    private char[] originalName;
    private CaptureBinding18 prototype;
    int recursionLevel;
    TypeBinding[] upperBounds;

    public CaptureBinding18(ReferenceBinding referenceBinding, char[] cArr, char[] cArr2, int i10, int i11, int i12, LookupEnvironment lookupEnvironment) {
        super(referenceBinding, cArr, i10, i11, i12, lookupEnvironment);
        this.recursionLevel = 0;
        this.originalName = cArr2;
        this.prototype = this;
    }

    @Override
    public TypeBinding clone(TypeBinding typeBinding) {
        return new CaptureBinding18(this);
    }

    @Override
    public char[] computeUniqueKey(boolean z10) {
        StringBuffer stringBuffer = new StringBuffer();
        stringBuffer.append(TypeConstants.CAPTURE18);
        stringBuffer.append(JavaElement.JEM_COMPILATIONUNIT);
        stringBuffer.append(this.end);
        stringBuffer.append(JavaElement.JEM_IMPORTDECLARATION);
        stringBuffer.append(this.captureID);
        stringBuffer.append(JavaElement.JEM_ANNOTATION);
        stringBuffer.append(';');
        int length = stringBuffer.length();
        char[] cArr = new char[length];
        stringBuffer.getChars(0, length, cArr, 0);
        return cArr;
    }

    @Override
    public TypeBinding erasure() {
        TypeBinding[] typeBindingArr = this.upperBounds;
        if (typeBindingArr == null || typeBindingArr.length <= 1) {
            return this.superclass == null ? this.environment.getType(TypeConstants.JAVA_LANG_OBJECT) : super.erasure();
        }
        ReferenceBinding[] referenceBindingArr = new ReferenceBinding[typeBindingArr.length];
        int i10 = 0;
        boolean z10 = false;
        while (true) {
            TypeBinding[] typeBindingArr2 = this.upperBounds;
            if (i10 >= typeBindingArr2.length) {
                break;
            }
            ReferenceBinding referenceBinding = (ReferenceBinding) typeBindingArr2[i10].erasure();
            referenceBindingArr[i10] = referenceBinding;
            if (i10 > 0 && TypeBinding.notEquals(referenceBindingArr[0], referenceBinding)) {
                z10 = true;
            }
            i10++;
        }
        return !z10 ? referenceBindingArr[0] : this.environment.createIntersectionType18(referenceBindingArr);
    }

    @Override
    public TypeBinding findSuperTypeOriginatingFrom(TypeBinding typeBinding) {
        TypeBinding[] typeBindingArr = this.upperBounds;
        if (typeBindingArr != null && typeBindingArr.length > 1) {
            int i10 = 0;
            while (true) {
                TypeBinding[] typeBindingArr2 = this.upperBounds;
                if (i10 >= typeBindingArr2.length) {
                    break;
                }
                TypeBinding findSuperTypeOriginatingFrom = typeBindingArr2[i10].findSuperTypeOriginatingFrom(typeBinding);
                if (findSuperTypeOriginatingFrom != null) {
                    return findSuperTypeOriginatingFrom;
                }
                i10++;
            }
        }
        return super.findSuperTypeOriginatingFrom(typeBinding);
    }

    @Override
    public MethodBinding[] getMethods(char[] cArr) {
        TypeBinding[] typeBindingArr = this.upperBounds;
        if (typeBindingArr.length == 1) {
            TypeBinding typeBinding = typeBindingArr[0];
            if (typeBinding instanceof ReferenceBinding) {
                return ((ReferenceBinding) typeBinding).getMethods(cArr);
            }
        }
        return super.getMethods(cArr);
    }

    @Override
    public void initializeBounds(Scope scope, ParameterizedTypeBinding parameterizedTypeBinding) {
    }

    /* JADX WARN: Code restructure failed: missing block: B:30:0x005d, code lost:
    
        r2 = r2 + 1;
     */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0043 A[Catch: all -> 0x0033, TRY_LEAVE, TryCatch #0 {all -> 0x0033, blocks: (B:10:0x0010, B:12:0x0014, B:14:0x001d, B:16:0x0023, B:18:0x002e, B:20:0x0043, B:23:0x004a, B:26:0x0055, B:30:0x005d, B:28:0x0060, B:39:0x0067, B:50:0x003a), top: B:9:0x0010 }] */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0063  */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean isCompatibleWith(TypeBinding typeBinding, Scope scope) {
        ReferenceBinding[] referenceBindingArr;
        if (TypeBinding.equalsEquals(this, typeBinding) || this.inRecursiveFunction) {
            return true;
        }
        this.inRecursiveFunction = true;
        try {
            TypeBinding[] typeBindingArr = this.upperBounds;
            if (typeBindingArr != null) {
                int length = typeBindingArr.length;
                int kind = typeBinding.kind();
                if (kind == 8196 && typeBinding.boundKind() == 1) {
                    TypeBinding allBounds = ((WildcardBinding) typeBinding).allBounds();
                    if (allBounds instanceof IntersectionTypeBinding18) {
                        referenceBindingArr = ((IntersectionTypeBinding18) allBounds).intersectingTypes;
                        if (referenceBindingArr == null) {
                        }
                    }
                    referenceBindingArr = null;
                    if (referenceBindingArr == null) {
                    }
                } else {
                    if (kind == 32772) {
                        referenceBindingArr = ((IntersectionTypeBinding18) typeBinding).intersectingTypes;
                        if (referenceBindingArr == null) {
                            int length2 = referenceBindingArr.length;
                            int i10 = 0;
                            while (i10 < length2) {
                                ReferenceBinding referenceBinding = referenceBindingArr[i10];
                                for (TypeBinding typeBinding2 : this.upperBounds) {
                                    if (typeBinding2.isCompatibleWith(referenceBinding, scope)) {
                                        break;
                                    }
                                }
                                this.inRecursiveFunction = false;
                                return false;
                            }
                            this.inRecursiveFunction = false;
                            return true;
                        }
                        for (int i11 = 0; i11 < length; i11++) {
                            if (this.upperBounds[i11].isCompatibleWith(typeBinding, scope)) {
                                this.inRecursiveFunction = false;
                                return true;
                            }
                        }
                    }
                    referenceBindingArr = null;
                    if (referenceBindingArr == null) {
                    }
                }
            }
            return false;
        } finally {
            this.inRecursiveFunction = false;
        }
    }

    @Override
    public boolean isEquivalentTo(TypeBinding typeBinding) {
        if (TypeBinding.equalsEquals(this, typeBinding)) {
            return true;
        }
        if (typeBinding == null || this.upperBounds == null) {
            return false;
        }
        int i10 = 0;
        while (true) {
            TypeBinding[] typeBindingArr = this.upperBounds;
            if (i10 >= typeBindingArr.length) {
                return true;
            }
            TypeBinding typeBinding2 = typeBindingArr[i10];
            if (typeBinding2 == null || !typeBinding2.isArrayType()) {
                int kind = typeBinding.kind();
                if ((kind == 516 || kind == 8196) && !((WildcardBinding) typeBinding).boundCheck(typeBinding2)) {
                    return false;
                }
            } else if (!typeBinding2.isCompatibleWith(typeBinding)) {
                return false;
            }
            i10++;
        }
    }

    @Override
    public boolean isProperType(boolean z10) {
        if (!z10) {
            return false;
        }
        if (this.inRecursiveFunction) {
            return true;
        }
        this.inRecursiveFunction = true;
        try {
            TypeBinding typeBinding = this.lowerBound;
            if (typeBinding != null && !typeBinding.isProperType(z10)) {
                return false;
            }
            if (this.upperBounds != null) {
                int i10 = 0;
                while (true) {
                    TypeBinding[] typeBindingArr = this.upperBounds;
                    if (i10 >= typeBindingArr.length) {
                        break;
                    }
                    if (!typeBindingArr[i10].isProperType(z10)) {
                        return false;
                    }
                    i10++;
                }
            }
            return true;
        } finally {
            this.inRecursiveFunction = false;
        }
    }

    @Override
    public char[] readableName() {
        TypeBinding typeBinding;
        if (this.lowerBound != null || (typeBinding = this.firstBound) == null) {
            return super.readableName();
        }
        CaptureBinding18 captureBinding18 = this.prototype;
        int i10 = captureBinding18.recursionLevel;
        if (i10 >= 2) {
            return this.originalName;
        }
        try {
            captureBinding18.recursionLevel = i10 + 1;
            TypeBinding[] typeBindingArr = this.upperBounds;
            if (typeBindingArr == null || typeBindingArr.length <= 1) {
                return typeBinding.readableName();
            }
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append(this.upperBounds[0].readableName());
            for (int i11 = 1; i11 < this.upperBounds.length; i11++) {
                stringBuffer.append('&');
                stringBuffer.append(this.upperBounds[i11].readableName());
            }
            int length = stringBuffer.length();
            char[] cArr = new char[length];
            stringBuffer.getChars(0, length, cArr, 0);
            return cArr;
        } finally {
            this.prototype.recursionLevel--;
        }
    }

    public boolean setUpperBounds(TypeBinding[] typeBindingArr, ReferenceBinding referenceBinding) {
        this.upperBounds = typeBindingArr;
        if (typeBindingArr.length > 0) {
            this.firstBound = typeBindingArr[0];
        }
        if (!ReferenceBinding.isConsistentIntersection(typeBindingArr)) {
            return false;
        }
        int i10 = 0;
        for (TypeBinding typeBinding : typeBindingArr) {
            if (!(typeBinding instanceof ReferenceBinding)) {
                if (TypeBinding.equalsEquals(typeBinding.leafComponentType(), this)) {
                    return false;
                }
            } else if (this.superclass == null && typeBinding.isClass()) {
                this.superclass = (ReferenceBinding) typeBinding;
            } else if (typeBinding.isInterface()) {
                i10++;
            }
        }
        this.superInterfaces = new ReferenceBinding[i10];
        int i11 = 0;
        for (TypeBinding typeBinding2 : typeBindingArr) {
            if (typeBinding2.isInterface()) {
                this.superInterfaces[i11] = (ReferenceBinding) typeBinding2;
                i11++;
            }
        }
        if (this.superclass != null) {
            return true;
        }
        this.superclass = referenceBinding;
        return true;
    }

    @Override
    public char[] shortReadableName() {
        TypeBinding typeBinding;
        if (this.lowerBound != null || (typeBinding = this.firstBound) == null) {
            return super.shortReadableName();
        }
        CaptureBinding18 captureBinding18 = this.prototype;
        int i10 = captureBinding18.recursionLevel;
        if (i10 >= 2) {
            return this.originalName;
        }
        try {
            captureBinding18.recursionLevel = i10 + 1;
            TypeBinding[] typeBindingArr = this.upperBounds;
            if (typeBindingArr == null || typeBindingArr.length <= 1) {
                return typeBinding.shortReadableName();
            }
            StringBuffer stringBuffer = new StringBuffer();
            stringBuffer.append(this.upperBounds[0].shortReadableName());
            for (int i11 = 1; i11 < this.upperBounds.length; i11++) {
                stringBuffer.append('&');
                stringBuffer.append(this.upperBounds[i11].shortReadableName());
            }
            int length = stringBuffer.length();
            char[] cArr = new char[length];
            stringBuffer.getChars(0, length, cArr, 0);
            return cArr;
        } finally {
            this.prototype.recursionLevel--;
        }
    }

    @Override
    public TypeBinding substituteInferenceVariable(InferenceVariable inferenceVariable, TypeBinding typeBinding) {
        boolean z10;
        ReferenceBinding[] referenceBindingArr;
        TypeBinding[] typeBindingArr;
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
            ReferenceBinding[] referenceBindingArr2 = this.superInterfaces;
            TypeBinding typeBinding2 = null;
            if (referenceBindingArr2 != null) {
                int length = referenceBindingArr2.length;
                if (z10) {
                    referenceBindingArr = new ReferenceBinding[length];
                    System.arraycopy(referenceBindingArr2, 0, referenceBindingArr, 0, length);
                } else {
                    referenceBindingArr = null;
                }
                for (int i10 = 0; i10 < length; i10++) {
                    ReferenceBinding referenceBinding2 = this.superInterfaces[i10];
                    if (referenceBinding2 != null) {
                        ReferenceBinding referenceBinding3 = (ReferenceBinding) referenceBinding2.substituteInferenceVariable(inferenceVariable, typeBinding);
                        if (TypeBinding.notEquals(referenceBinding3, this.superInterfaces[i10])) {
                            if (referenceBindingArr == null) {
                                referenceBindingArr = new ReferenceBinding[length];
                                System.arraycopy(this.superInterfaces, 0, referenceBindingArr, 0, length);
                            }
                            referenceBindingArr[i10] = referenceBinding3;
                            z10 = true;
                        }
                    }
                }
            } else {
                referenceBindingArr = null;
            }
            TypeBinding[] typeBindingArr2 = this.upperBounds;
            if (typeBindingArr2 != null) {
                int length2 = typeBindingArr2.length;
                if (z10) {
                    typeBindingArr = new TypeBinding[length2];
                    System.arraycopy(typeBindingArr2, 0, typeBindingArr, 0, length2);
                } else {
                    typeBindingArr = null;
                }
                for (int i11 = 0; i11 < length2; i11++) {
                    TypeBinding typeBinding3 = this.upperBounds[i11];
                    if (typeBinding3 != null) {
                        TypeBinding substituteInferenceVariable = typeBinding3.substituteInferenceVariable(inferenceVariable, typeBinding);
                        if (TypeBinding.notEquals(substituteInferenceVariable, this.upperBounds[i11])) {
                            if (typeBindingArr == null) {
                                typeBindingArr = new TypeBinding[length2];
                                System.arraycopy(this.upperBounds, 0, typeBindingArr, 0, length2);
                            }
                            typeBindingArr[i11] = substituteInferenceVariable;
                            z10 = true;
                        }
                    }
                }
            } else {
                typeBindingArr = null;
            }
            TypeBinding typeBinding4 = this.firstBound;
            if (typeBinding4 != null) {
                typeBinding2 = typeBinding4.substituteInferenceVariable(inferenceVariable, typeBinding);
                z10 |= TypeBinding.notEquals(this.firstBound, typeBinding2);
            }
            if (!z10) {
                this.inRecursiveFunction = false;
                return this;
            }
            final CaptureBinding18 captureBinding18 = (CaptureBinding18) clone(enclosingType());
            captureBinding18.tagBits = this.tagBits;
            Substitution substitution = new Substitution() {
                @Override
                public LookupEnvironment environment() {
                    return CaptureBinding18.this.environment;
                }

                @Override
                public boolean isRawSubstitution() {
                    return false;
                }

                @Override
                public TypeBinding substitute(TypeVariableBinding typeVariableBinding) {
                    return typeVariableBinding == CaptureBinding18.this ? captureBinding18 : typeVariableBinding;
                }
            };
            if (typeBinding2 != null) {
                captureBinding18.firstBound = Scope.substitute(substitution, typeBinding2);
            }
            captureBinding18.superclass = (ReferenceBinding) Scope.substitute(substitution, referenceBinding);
            captureBinding18.superInterfaces = Scope.substitute(substitution, referenceBindingArr);
            captureBinding18.upperBounds = Scope.substitute(substitution, typeBindingArr);
            this.inRecursiveFunction = false;
            return captureBinding18;
        } catch (Throwable th2) {
            this.inRecursiveFunction = false;
            throw th2;
        }
    }

    @Override
    public TypeBinding uncapture(Scope scope) {
        return this;
    }

    private CaptureBinding18(CaptureBinding18 captureBinding18) {
        super(captureBinding18);
        this.recursionLevel = 0;
        this.sourceName = CharOperation.append(captureBinding18.sourceName, JavaElement.JEM_MODULAR_CLASSFILE);
        this.originalName = captureBinding18.originalName;
        this.upperBounds = captureBinding18.upperBounds;
        this.prototype = captureBinding18.prototype;
    }
}
