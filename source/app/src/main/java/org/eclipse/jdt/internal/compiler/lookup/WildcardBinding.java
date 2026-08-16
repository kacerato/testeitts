package org.eclipse.jdt.internal.compiler.lookup;

import java.util.List;
import java.util.Set;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.ast.Annotation;
import org.eclipse.jdt.internal.compiler.ast.Wildcard;
import org.eclipse.jdt.internal.compiler.impl.CompilerOptions;
import org.eclipse.jdt.internal.core.JavaElement;
import w2.C15883c;

public class WildcardBinding extends ReferenceBinding {
    public TypeBinding bound;
    public int boundKind;
    LookupEnvironment environment;
    char[] genericSignature;
    public ReferenceBinding genericType;
    boolean inRecursiveFunction = false;
    public TypeBinding[] otherBounds;
    public int rank;
    ReferenceBinding[] superInterfaces;
    ReferenceBinding superclass;
    TypeVariableBinding typeVariable;

    public WildcardBinding(ReferenceBinding referenceBinding, int i10, TypeBinding typeBinding, TypeBinding[] typeBindingArr, int i11, LookupEnvironment lookupEnvironment) {
        this.rank = i10;
        this.boundKind = i11;
        this.modifiers = CompilerOptions.ShouldImplementHashcode;
        this.environment = lookupEnvironment;
        initialize(referenceBinding, typeBinding, typeBindingArr);
        if (referenceBinding instanceof UnresolvedReferenceBinding) {
            ((UnresolvedReferenceBinding) referenceBinding).addWrapper(this, lookupEnvironment);
        }
        if (typeBinding instanceof UnresolvedReferenceBinding) {
            ((UnresolvedReferenceBinding) typeBinding).addWrapper(this, lookupEnvironment);
        }
        this.tagBits |= 16777216;
        this.typeBits = 134217728;
    }

    @Override
    public boolean acceptsNonNullDefault() {
        return false;
    }

    @Override
    public ReferenceBinding actualType() {
        return this.genericType;
    }

    @Override
    public TypeBinding[] additionalBounds() {
        return this.otherBounds;
    }

    public TypeBinding allBounds() {
        TypeBinding[] typeBindingArr = this.otherBounds;
        if (typeBindingArr == null || typeBindingArr.length == 0) {
            return this.bound;
        }
        ReferenceBinding[] referenceBindingArr = new ReferenceBinding[typeBindingArr.length + 1];
        try {
            referenceBindingArr[0] = (ReferenceBinding) this.bound;
            System.arraycopy(typeBindingArr, 0, referenceBindingArr, 1, typeBindingArr.length);
            return this.environment.createIntersectionType18(referenceBindingArr);
        } catch (ArrayStoreException unused) {
            return this.bound;
        } catch (ClassCastException unused2) {
            return this.bound;
        }
    }

    @Override
    public String annotatedDebugName() {
        StringBuffer stringBuffer = new StringBuffer(16);
        AnnotationBinding[] typeAnnotations = getTypeAnnotations();
        int length = typeAnnotations == null ? 0 : typeAnnotations.length;
        for (int i10 = 0; i10 < length; i10++) {
            stringBuffer.append((Object) typeAnnotations[i10]);
            stringBuffer.append(C15883c.f126249O);
        }
        int i11 = this.boundKind;
        if (i11 == 0) {
            stringBuffer.append(TypeConstants.WILDCARD_NAME);
            return stringBuffer.toString();
        }
        if (i11 != 1) {
            stringBuffer.append(CharOperation.concat(TypeConstants.WILDCARD_NAME, TypeConstants.WILDCARD_SUPER, this.bound.annotatedDebugName().toCharArray()));
            return stringBuffer.toString();
        }
        if (this.otherBounds == null) {
            stringBuffer.append(CharOperation.concat(TypeConstants.WILDCARD_NAME, TypeConstants.WILDCARD_EXTENDS, this.bound.annotatedDebugName().toCharArray()));
            return stringBuffer.toString();
        }
        stringBuffer.append(this.bound.annotatedDebugName());
        int length2 = this.otherBounds.length;
        for (int i12 = 0; i12 < length2; i12++) {
            stringBuffer.append(" & ");
            stringBuffer.append(this.otherBounds[i12].annotatedDebugName());
        }
        return stringBuffer.toString();
    }

    @Override
    public TypeBinding bound() {
        return this.bound;
    }

    public boolean boundCheck(TypeBinding typeBinding) {
        int i10 = this.boundKind;
        if (i10 == 0) {
            return true;
        }
        if (i10 != 1) {
            return typeBinding.isCompatibleWith(this.bound);
        }
        if (!typeBinding.isCompatibleWith(this.bound)) {
            return false;
        }
        TypeBinding[] typeBindingArr = this.otherBounds;
        int length = typeBindingArr == null ? 0 : typeBindingArr.length;
        for (int i11 = 0; i11 < length; i11++) {
            if (!typeBinding.isCompatibleWith(this.otherBounds[i11])) {
                return false;
            }
        }
        return true;
    }

    @Override
    public int boundKind() {
        return this.boundKind;
    }

    @Override
    public boolean canBeInstantiated() {
        return false;
    }

    @Override
    public TypeBinding clone(TypeBinding typeBinding) {
        return new WildcardBinding(this.genericType, this.rank, this.bound, this.otherBounds, this.boundKind, this.environment);
    }

    @Override
    public void collectInferenceVariables(Set<InferenceVariable> set) {
        TypeBinding typeBinding = this.bound;
        if (typeBinding != null) {
            typeBinding.collectInferenceVariables(set);
        }
        TypeBinding[] typeBindingArr = this.otherBounds;
        if (typeBindingArr != null) {
            int length = typeBindingArr.length;
            for (int i10 = 0; i10 < length; i10++) {
                this.otherBounds[i10].collectInferenceVariables(set);
            }
        }
    }

    @Override
    public List<TypeBinding> collectMissingTypes(List<TypeBinding> list) {
        return (this.tagBits & 128) != 0 ? this.bound.collectMissingTypes(list) : list;
    }

    @Override
    public void collectSubstitutes(Scope scope, TypeBinding typeBinding, InferenceContext inferenceContext, int i10) {
        if ((this.tagBits & TagBits.HasTypeVariable) == 0 || typeBinding == TypeBinding.NULL || typeBinding.kind() == 65540) {
            return;
        }
        if (typeBinding.isCapture()) {
            typeBinding = ((CaptureBinding) typeBinding).wildcard;
        }
        int i11 = 0;
        if (i10 == 0) {
            int i12 = this.boundKind;
            if (i12 != 1) {
                if (i12 == 2 && typeBinding.kind() == 516) {
                    WildcardBinding wildcardBinding = (WildcardBinding) typeBinding;
                    if (wildcardBinding.boundKind != 2) {
                        return;
                    }
                    this.bound.collectSubstitutes(scope, wildcardBinding.bound, inferenceContext, 0);
                    TypeBinding[] typeBindingArr = wildcardBinding.otherBounds;
                    int length = typeBindingArr == null ? 0 : typeBindingArr.length;
                    for (int i13 = 0; i13 < length; i13++) {
                        this.bound.collectSubstitutes(scope, wildcardBinding.otherBounds[i13], inferenceContext, 0);
                    }
                    return;
                }
                return;
            }
            int kind = typeBinding.kind();
            if (kind != 516) {
                if (kind != 8196) {
                    return;
                }
                WildcardBinding wildcardBinding2 = (WildcardBinding) typeBinding;
                this.bound.collectSubstitutes(scope, wildcardBinding2.bound, inferenceContext, 0);
                TypeBinding[] typeBindingArr2 = wildcardBinding2.otherBounds;
                int length2 = typeBindingArr2 == null ? 0 : typeBindingArr2.length;
                for (int i14 = 0; i14 < length2; i14++) {
                    this.bound.collectSubstitutes(scope, wildcardBinding2.otherBounds[i14], inferenceContext, 0);
                }
                return;
            }
            WildcardBinding wildcardBinding3 = (WildcardBinding) typeBinding;
            if (wildcardBinding3.boundKind != 1) {
                return;
            }
            this.bound.collectSubstitutes(scope, wildcardBinding3.bound, inferenceContext, 0);
            TypeBinding[] typeBindingArr3 = wildcardBinding3.otherBounds;
            int length3 = typeBindingArr3 == null ? 0 : typeBindingArr3.length;
            for (int i15 = 0; i15 < length3; i15++) {
                this.bound.collectSubstitutes(scope, wildcardBinding3.otherBounds[i15], inferenceContext, 0);
            }
            return;
        }
        if (i10 == 1) {
            int i16 = this.boundKind;
            if (i16 == 1) {
                int kind2 = typeBinding.kind();
                if (kind2 == 516) {
                    WildcardBinding wildcardBinding4 = (WildcardBinding) typeBinding;
                    if (wildcardBinding4.boundKind != 1) {
                        return;
                    }
                    this.bound.collectSubstitutes(scope, wildcardBinding4.bound, inferenceContext, 1);
                    return;
                }
                if (kind2 != 8196) {
                    this.bound.collectSubstitutes(scope, typeBinding, inferenceContext, 1);
                    return;
                }
                WildcardBinding wildcardBinding5 = (WildcardBinding) typeBinding;
                this.bound.collectSubstitutes(scope, wildcardBinding5.bound, inferenceContext, 1);
                int length4 = wildcardBinding5.otherBounds.length;
                while (i11 < length4) {
                    this.bound.collectSubstitutes(scope, wildcardBinding5.otherBounds[i11], inferenceContext, 1);
                    i11++;
                }
                return;
            }
            if (i16 != 2) {
                return;
            }
            int kind3 = typeBinding.kind();
            if (kind3 != 516) {
                if (kind3 != 8196) {
                    this.bound.collectSubstitutes(scope, typeBinding, inferenceContext, 2);
                    return;
                }
                return;
            }
            WildcardBinding wildcardBinding6 = (WildcardBinding) typeBinding;
            if (wildcardBinding6.boundKind != 2) {
                return;
            }
            this.bound.collectSubstitutes(scope, wildcardBinding6.bound, inferenceContext, 2);
            TypeBinding[] typeBindingArr4 = wildcardBinding6.otherBounds;
            int length5 = typeBindingArr4 == null ? 0 : typeBindingArr4.length;
            while (i11 < length5) {
                this.bound.collectSubstitutes(scope, wildcardBinding6.otherBounds[i11], inferenceContext, 2);
                i11++;
            }
            return;
        }
        if (i10 != 2) {
            return;
        }
        int i17 = this.boundKind;
        if (i17 != 1) {
            if (i17 == 2 && typeBinding.kind() == 516) {
                WildcardBinding wildcardBinding7 = (WildcardBinding) typeBinding;
                if (wildcardBinding7.boundKind != 2) {
                    return;
                }
                this.bound.collectSubstitutes(scope, wildcardBinding7.bound, inferenceContext, 2);
                TypeBinding[] typeBindingArr5 = wildcardBinding7.otherBounds;
                int length6 = typeBindingArr5 == null ? 0 : typeBindingArr5.length;
                while (i11 < length6) {
                    this.bound.collectSubstitutes(scope, wildcardBinding7.otherBounds[i11], inferenceContext, 2);
                    i11++;
                }
                return;
            }
            return;
        }
        int kind4 = typeBinding.kind();
        if (kind4 != 516) {
            if (kind4 != 8196) {
                return;
            }
            WildcardBinding wildcardBinding8 = (WildcardBinding) typeBinding;
            this.bound.collectSubstitutes(scope, wildcardBinding8.bound, inferenceContext, 2);
            TypeBinding[] typeBindingArr6 = wildcardBinding8.otherBounds;
            int length7 = typeBindingArr6 == null ? 0 : typeBindingArr6.length;
            while (i11 < length7) {
                this.bound.collectSubstitutes(scope, wildcardBinding8.otherBounds[i11], inferenceContext, 2);
                i11++;
            }
            return;
        }
        WildcardBinding wildcardBinding9 = (WildcardBinding) typeBinding;
        if (wildcardBinding9.boundKind != 1) {
            return;
        }
        this.bound.collectSubstitutes(scope, wildcardBinding9.bound, inferenceContext, 2);
        TypeBinding[] typeBindingArr7 = wildcardBinding9.otherBounds;
        int length8 = typeBindingArr7 == null ? 0 : typeBindingArr7.length;
        while (i11 < length8) {
            this.bound.collectSubstitutes(scope, wildcardBinding9.otherBounds[i11], inferenceContext, 2);
            i11++;
        }
    }

    @Override
    public char[] computeUniqueKey(boolean z10) {
        char[] computeUniqueKey = this.genericType.computeUniqueKey(false);
        char[] charArray = (String.valueOf(JavaElement.JEM_COMPILATIONUNIT) + String.valueOf(this.rank) + JavaElement.JEM_ANNOTATION).toCharArray();
        int i10 = this.boundKind;
        return CharOperation.concat(computeUniqueKey, charArray, i10 != 0 ? i10 != 1 ? CharOperation.concat(TypeConstants.WILDCARD_MINUS, this.bound.computeUniqueKey(false)) : CharOperation.concat(TypeConstants.WILDCARD_PLUS, this.bound.computeUniqueKey(false)) : TypeConstants.WILDCARD_STAR);
    }

    @Override
    public char[] constantPoolName() {
        return erasure().constantPoolName();
    }

    @Override
    public String debugName() {
        return toString();
    }

    public long determineNullBitsFromDeclaration(Scope scope, Wildcard wildcard) {
        long j10;
        long j11;
        TypeBinding[] typeBindingArr;
        Annotation findAnnotation;
        Annotation findAnnotation2;
        AnnotationBinding[] annotationBindingArr = this.typeAnnotations;
        if (annotationBindingArr != null) {
            j10 = 0;
            for (AnnotationBinding annotationBinding : annotationBindingArr) {
                if (annotationBinding != null) {
                    if (annotationBinding.type.hasNullBit(64)) {
                        if ((j10 & 72057594037927936L) == 0) {
                            j10 |= 36028797018963968L;
                        } else if (wildcard != null && (findAnnotation2 = wildcard.findAnnotation(36028797018963968L)) != null) {
                            scope.problemReporter().contradictoryNullAnnotations(findAnnotation2);
                        }
                    } else if (annotationBinding.type.hasNullBit(32)) {
                        if ((j10 & 36028797018963968L) == 0) {
                            j10 |= 72057594037927936L;
                        } else if (wildcard != null && (findAnnotation = wildcard.findAnnotation(72057594037927936L)) != null) {
                            scope.problemReporter().contradictoryNullAnnotations(findAnnotation);
                        }
                    }
                }
            }
        } else {
            j10 = 0;
        }
        TypeBinding typeBinding = this.bound;
        if (typeBinding != null && typeBinding.isValidBinding()) {
            long j12 = this.bound.tagBits;
            long j13 = TagBits.AnnotationNullMASK & j12;
            if (j13 != 0) {
                if (this.boundKind != 2) {
                    if ((j12 & 72057594037927936L) != 0) {
                        if (j10 == 0) {
                            j11 = 72057594037927936L;
                            if (j11 != 0 && (typeBindingArr = this.otherBounds) != null) {
                                int length = typeBindingArr.length;
                                for (int i10 = 0; i10 < length; i10++) {
                                    if ((this.otherBounds[i10].tagBits & 72057594037927936L) != 0) {
                                        return 72057594037927936L;
                                    }
                                }
                                return j11;
                            }
                        }
                        if (wildcard != null && (j10 & 36028797018963968L) != 0) {
                            Annotation findAnnotation3 = wildcard.bound.findAnnotation(j13);
                            if (findAnnotation3 == null) {
                                TypeBinding withoutToplevelNullAnnotation = this.bound.withoutToplevelNullAnnotation();
                                this.bound = withoutToplevelNullAnnotation;
                                wildcard.bound.resolvedType = withoutToplevelNullAnnotation;
                            } else {
                                scope.problemReporter().contradictoryNullAnnotationsOnBounds(findAnnotation3, j10);
                            }
                        }
                    }
                    j11 = j10;
                    return j11 != 0 ? j11 : j11;
                }
                if ((j12 & 36028797018963968L) != 0) {
                    if (j10 == 0) {
                        return 36028797018963968L;
                    }
                    if (wildcard != null && (j10 & 72057594037927936L) != 0) {
                        Annotation findAnnotation4 = wildcard.bound.findAnnotation(j13);
                        if (findAnnotation4 == null) {
                            TypeBinding withoutToplevelNullAnnotation2 = this.bound.withoutToplevelNullAnnotation();
                            this.bound = withoutToplevelNullAnnotation2;
                            wildcard.bound.resolvedType = withoutToplevelNullAnnotation2;
                        } else {
                            scope.problemReporter().contradictoryNullAnnotationsOnBounds(findAnnotation4, j10);
                        }
                    }
                }
            }
        }
        return j10;
    }

    @Override
    public boolean enterRecursiveFunction() {
        if (this.inRecursiveFunction) {
            return false;
        }
        this.inRecursiveFunction = true;
        return true;
    }

    @Override
    public TypeBinding erasure() {
        TypeBinding[] typeBindingArr = this.otherBounds;
        if (typeBindingArr != null) {
            TypeBinding typeBinding = this.bound;
            return typeBinding.f102482id == 1 ? typeBindingArr[0].erasure() : typeBinding.erasure();
        }
        if (this.boundKind == 1) {
            return this.bound.erasure();
        }
        TypeVariableBinding typeVariable = typeVariable();
        return typeVariable != null ? typeVariable.erasure() : this.genericType;
    }

    public void evaluateNullAnnotations(Scope scope, Wildcard wildcard) {
        TypeVariableBinding typeVariable;
        long determineNullBitsFromDeclaration = determineNullBitsFromDeclaration(scope, wildcard);
        if (determineNullBitsFromDeclaration == 0 && (typeVariable = typeVariable()) != null) {
            long j10 = typeVariable.tagBits & TagBits.AnnotationNullMASK;
            if (j10 != 0) {
                determineNullBitsFromDeclaration = j10;
            }
        }
        if (determineNullBitsFromDeclaration != 0) {
            this.tagBits = determineNullBitsFromDeclaration | (this.tagBits & (-108086391056891905L)) | TagBits.HasNullTypeAnnotation;
        }
    }

    @Override
    public void exitRecursiveFunction() {
        this.inRecursiveFunction = false;
    }

    @Override
    public char[] genericTypeSignature() {
        if (this.genericSignature == null) {
            int i10 = this.boundKind;
            if (i10 == 0) {
                this.genericSignature = TypeConstants.WILDCARD_STAR;
            } else if (i10 != 1) {
                this.genericSignature = CharOperation.concat(TypeConstants.WILDCARD_MINUS, this.bound.genericTypeSignature());
            } else {
                this.genericSignature = CharOperation.concat(TypeConstants.WILDCARD_PLUS, this.bound.genericTypeSignature());
            }
        }
        return this.genericSignature;
    }

    @Override
    public ReferenceBinding[] getIntersectingTypes() {
        if (isIntersectionType()) {
            TypeBinding[] typeBindingArr = this.otherBounds;
            ReferenceBinding[] referenceBindingArr = new ReferenceBinding[typeBindingArr.length + 1];
            try {
                referenceBindingArr[0] = (ReferenceBinding) this.bound;
                System.arraycopy(typeBindingArr, 0, referenceBindingArr, 1, typeBindingArr.length);
                return referenceBindingArr;
            } catch (ArrayStoreException | ClassCastException unused) {
            }
        }
        return null;
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

    @Override
    public int hashCode() {
        return this.genericType.hashCode();
    }

    public void initialize(ReferenceBinding referenceBinding, TypeBinding typeBinding, TypeBinding[] typeBindingArr) {
        this.genericType = referenceBinding;
        this.bound = typeBinding;
        this.otherBounds = typeBindingArr;
        if (referenceBinding != null) {
            this.fPackage = referenceBinding.getPackage();
        }
        if (typeBinding != null) {
            this.tagBits = (typeBinding.tagBits & 2305843009751615616L) | this.tagBits;
        }
        if (typeBindingArr != null) {
            for (TypeBinding typeBinding2 : typeBindingArr) {
                this.tagBits |= typeBinding2.tagBits & 2305843009214744576L;
            }
        }
    }

    @Override
    public boolean isHierarchyConnected() {
        return (this.superclass == null || this.superInterfaces == null) ? false : true;
    }

    @Override
    public boolean isIntersectionType() {
        return this.otherBounds != null;
    }

    @Override
    public boolean isProperType(boolean z10) {
        if (this.inRecursiveFunction) {
            return true;
        }
        this.inRecursiveFunction = true;
        try {
            TypeBinding typeBinding = this.bound;
            if (typeBinding != null && !typeBinding.isProperType(z10)) {
                return false;
            }
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
    public boolean isSuperclassOf(ReferenceBinding referenceBinding) {
        if (this.boundKind == 2) {
            TypeBinding typeBinding = this.bound;
            if (typeBinding instanceof ReferenceBinding) {
                return ((ReferenceBinding) typeBinding).isSuperclassOf(referenceBinding);
            }
            if (referenceBinding.f102482id == 1) {
                return true;
            }
        }
        return false;
    }

    @Override
    public boolean isUnboundWildcard() {
        return this.boundKind == 0;
    }

    @Override
    public boolean isWildcard() {
        return true;
    }

    @Override
    public int kind() {
        return this.otherBounds == null ? 516 : 8196;
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
            TypeBinding typeBinding = this.bound;
            if (typeBinding != null && typeBinding.mentionsAny(typeBindingArr, -1)) {
                return true;
            }
            TypeBinding[] typeBindingArr2 = this.otherBounds;
            if (typeBindingArr2 != null) {
                int length = typeBindingArr2.length;
                for (int i11 = 0; i11 < length; i11++) {
                    if (this.otherBounds[i11].mentionsAny(typeBindingArr, -1)) {
                        return true;
                    }
                }
            }
            return false;
        } finally {
            this.inRecursiveFunction = false;
        }
    }

    @Override
    public char[] nullAnnotatedReadableName(CompilerOptions compilerOptions, boolean z10) {
        StringBuffer stringBuffer = new StringBuffer(10);
        appendNullAnnotation(stringBuffer, compilerOptions);
        int i10 = this.boundKind;
        if (i10 == 0) {
            stringBuffer.append(TypeConstants.WILDCARD_NAME);
        } else if (i10 != 1) {
            stringBuffer.append(TypeConstants.WILDCARD_NAME);
            stringBuffer.append(TypeConstants.WILDCARD_SUPER);
            stringBuffer.append(this.bound.nullAnnotatedReadableName(compilerOptions, z10));
        } else if (this.otherBounds == null) {
            stringBuffer.append(TypeConstants.WILDCARD_NAME);
            stringBuffer.append(TypeConstants.WILDCARD_EXTENDS);
            stringBuffer.append(this.bound.nullAnnotatedReadableName(compilerOptions, z10));
        } else {
            stringBuffer.append(this.bound.nullAnnotatedReadableName(compilerOptions, z10));
            int length = this.otherBounds.length;
            for (int i11 = 0; i11 < length; i11++) {
                stringBuffer.append('&');
                stringBuffer.append(this.otherBounds[i11].nullAnnotatedReadableName(compilerOptions, z10));
            }
        }
        int length2 = stringBuffer.length();
        char[] cArr = new char[length2];
        stringBuffer.getChars(0, length2, cArr, 0);
        return cArr;
    }

    @Override
    public int rank() {
        return this.rank;
    }

    @Override
    public char[] readableName() {
        int i10 = this.boundKind;
        if (i10 == 0) {
            return TypeConstants.WILDCARD_NAME;
        }
        if (i10 != 1) {
            return CharOperation.concat(TypeConstants.WILDCARD_NAME, TypeConstants.WILDCARD_SUPER, this.bound.readableName());
        }
        if (this.otherBounds == null) {
            return CharOperation.concat(TypeConstants.WILDCARD_NAME, TypeConstants.WILDCARD_EXTENDS, this.bound.readableName());
        }
        StringBuffer stringBuffer = new StringBuffer(10);
        stringBuffer.append(this.bound.readableName());
        int length = this.otherBounds.length;
        for (int i11 = 0; i11 < length; i11++) {
            stringBuffer.append('&');
            stringBuffer.append(this.otherBounds[i11].readableName());
        }
        int length2 = stringBuffer.length();
        char[] cArr = new char[length2];
        stringBuffer.getChars(0, length2, cArr, 0);
        return cArr;
    }

    public ReferenceBinding resolve() {
        long j10 = this.tagBits;
        if ((16777216 & j10) == 0) {
            return this;
        }
        this.tagBits = j10 & (-16777217);
        BinaryTypeBinding.resolveType(this.genericType, this.environment, false);
        int i10 = this.boundKind;
        if (i10 == 1) {
            TypeBinding resolveType = BinaryTypeBinding.resolveType(this.bound, this.environment, true);
            this.bound = resolveType;
            this.tagBits |= (resolveType.tagBits & 2048) | 2305843009213693952L;
            TypeBinding[] typeBindingArr = this.otherBounds;
            int length = typeBindingArr == null ? 0 : typeBindingArr.length;
            for (int i11 = 0; i11 < length; i11++) {
                TypeBinding resolveType2 = BinaryTypeBinding.resolveType(this.otherBounds[i11], this.environment, true);
                this.otherBounds[i11] = resolveType2;
                this.tagBits |= (resolveType2.tagBits & 2048) | 2305843009213693952L;
            }
        } else if (i10 == 2) {
            TypeBinding resolveType3 = BinaryTypeBinding.resolveType(this.bound, this.environment, true);
            this.bound = resolveType3;
            this.tagBits |= 2305843009213693952L | (2048 & resolveType3.tagBits);
        }
        if (this.environment.usesNullTypeAnnotations()) {
            evaluateNullAnnotations(null, null);
        }
        return this;
    }

    @Override
    public void setTypeAnnotations(AnnotationBinding[] annotationBindingArr, boolean z10) {
        this.tagBits |= 2097152;
        if (annotationBindingArr != null && annotationBindingArr.length != 0) {
            this.typeAnnotations = annotationBindingArr;
        }
        if (z10) {
            evaluateNullAnnotations(null, null);
        }
    }

    @Override
    public char[] shortReadableName() {
        int i10 = this.boundKind;
        if (i10 == 0) {
            return TypeConstants.WILDCARD_NAME;
        }
        if (i10 != 1) {
            return CharOperation.concat(TypeConstants.WILDCARD_NAME, TypeConstants.WILDCARD_SUPER, this.bound.shortReadableName());
        }
        if (this.otherBounds == null) {
            return CharOperation.concat(TypeConstants.WILDCARD_NAME, TypeConstants.WILDCARD_EXTENDS, this.bound.shortReadableName());
        }
        StringBuffer stringBuffer = new StringBuffer(10);
        stringBuffer.append(this.bound.shortReadableName());
        int length = this.otherBounds.length;
        for (int i11 = 0; i11 < length; i11++) {
            stringBuffer.append('&');
            stringBuffer.append(this.otherBounds[i11].shortReadableName());
        }
        int length2 = stringBuffer.length();
        char[] cArr = new char[length2];
        stringBuffer.getChars(0, length2, cArr, 0);
        return cArr;
    }

    @Override
    public char[] signature() {
        char[] cArr = this.signature;
        return cArr == null ? this.boundKind != 1 ? typeVariable().signature() : this.bound.signature() : cArr;
    }

    @Override
    public char[] sourceName() {
        int i10 = this.boundKind;
        return i10 != 0 ? i10 != 1 ? CharOperation.concat(TypeConstants.WILDCARD_NAME, TypeConstants.WILDCARD_SUPER, this.bound.sourceName()) : CharOperation.concat(TypeConstants.WILDCARD_NAME, TypeConstants.WILDCARD_EXTENDS, this.bound.sourceName()) : TypeConstants.WILDCARD_NAME;
    }

    @Override
    public TypeBinding substituteInferenceVariable(InferenceVariable inferenceVariable, TypeBinding typeBinding) {
        TypeBinding typeBinding2;
        boolean z10;
        TypeBinding typeBinding3 = this.bound;
        if (typeBinding3 != null) {
            TypeBinding substituteInferenceVariable = typeBinding3.substituteInferenceVariable(inferenceVariable, typeBinding);
            z10 = TypeBinding.notEquals(substituteInferenceVariable, this.bound);
            typeBinding2 = substituteInferenceVariable;
        } else {
            typeBinding2 = typeBinding3;
            z10 = false;
        }
        TypeBinding[] typeBindingArr = this.otherBounds;
        TypeBinding[] typeBindingArr2 = null;
        if (typeBindingArr != null) {
            int length = typeBindingArr.length;
            if (z10) {
                typeBindingArr2 = new ReferenceBinding[length];
                System.arraycopy(typeBindingArr, 0, typeBindingArr2, 0, length);
            }
            for (int i10 = 0; i10 < length; i10++) {
                TypeBinding typeBinding4 = this.otherBounds[i10];
                if (typeBinding4 != null) {
                    TypeBinding substituteInferenceVariable2 = typeBinding4.substituteInferenceVariable(inferenceVariable, typeBinding);
                    if (TypeBinding.notEquals(substituteInferenceVariable2, this.otherBounds[i10])) {
                        if (typeBindingArr2 == null) {
                            ReferenceBinding[] referenceBindingArr = new ReferenceBinding[length];
                            System.arraycopy(this.otherBounds, 0, referenceBindingArr, 0, length);
                            typeBindingArr2 = referenceBindingArr;
                        }
                        typeBindingArr2[i10] = substituteInferenceVariable2;
                    }
                }
            }
        }
        TypeBinding[] typeBindingArr3 = typeBindingArr2;
        return z10 | (typeBindingArr3 != null) ? this.environment.createWildcard(this.genericType, this.rank, typeBinding2, typeBindingArr3, this.boundKind) : this;
    }

    @Override
    public ReferenceBinding[] superInterfaces() {
        if (this.superInterfaces == null) {
            if (typeVariable() != null) {
                this.superInterfaces = this.typeVariable.superInterfaces();
            } else {
                this.superInterfaces = Binding.NO_SUPERINTERFACES;
            }
            if (this.boundKind == 1) {
                if (this.bound.isInterface()) {
                    ReferenceBinding[] referenceBindingArr = this.superInterfaces;
                    int length = referenceBindingArr.length;
                    ReferenceBinding[] referenceBindingArr2 = new ReferenceBinding[length + 1];
                    this.superInterfaces = referenceBindingArr2;
                    System.arraycopy(referenceBindingArr, 0, referenceBindingArr2, 1, length);
                    this.superInterfaces[0] = (ReferenceBinding) this.bound;
                }
                TypeBinding[] typeBindingArr = this.otherBounds;
                if (typeBindingArr != null) {
                    ReferenceBinding[] referenceBindingArr3 = this.superInterfaces;
                    int length2 = referenceBindingArr3.length;
                    int length3 = typeBindingArr.length;
                    ReferenceBinding[] referenceBindingArr4 = new ReferenceBinding[length2 + length3];
                    this.superInterfaces = referenceBindingArr4;
                    System.arraycopy(referenceBindingArr3, 0, referenceBindingArr4, 0, length2);
                    for (int i10 = 0; i10 < length3; i10++) {
                        this.superInterfaces[length2 + i10] = (ReferenceBinding) this.otherBounds[i10];
                    }
                }
            }
        }
        return this.superInterfaces;
    }

    @Override
    public ReferenceBinding superclass() {
        TypeBinding typeBinding;
        if (this.superclass == null) {
            if (this.boundKind != 1 || this.bound.isInterface()) {
                TypeVariableBinding typeVariable = typeVariable();
                typeBinding = typeVariable != null ? typeVariable.firstBound : null;
            } else {
                typeBinding = this.bound;
            }
            this.superclass = (!(typeBinding instanceof ReferenceBinding) || typeBinding.isInterface()) ? this.environment.getResolvedJavaBaseType(TypeConstants.JAVA_LANG_OBJECT, null) : (ReferenceBinding) typeBinding;
        }
        return this.superclass;
    }

    @Override
    public void swapUnresolved(UnresolvedReferenceBinding unresolvedReferenceBinding, ReferenceBinding referenceBinding, LookupEnvironment lookupEnvironment) {
        boolean z10;
        if (this.genericType == unresolvedReferenceBinding) {
            this.genericType = referenceBinding;
            z10 = true;
        } else {
            z10 = false;
        }
        if (this.bound == unresolvedReferenceBinding) {
            this.bound = lookupEnvironment.convertUnresolvedBinaryToRawType(referenceBinding);
            z10 = true;
        }
        TypeBinding[] typeBindingArr = this.otherBounds;
        if (typeBindingArr != null) {
            int length = typeBindingArr.length;
            for (int i10 = 0; i10 < length; i10++) {
                TypeBinding[] typeBindingArr2 = this.otherBounds;
                if (typeBindingArr2[i10] == unresolvedReferenceBinding) {
                    typeBindingArr2[i10] = lookupEnvironment.convertUnresolvedBinaryToRawType(referenceBinding);
                    z10 = true;
                }
            }
        }
        if (z10) {
            initialize(this.genericType, this.bound, this.otherBounds);
        }
    }

    public String toString() {
        if (hasTypeAnnotations()) {
            return annotatedDebugName();
        }
        int i10 = this.boundKind;
        if (i10 == 0) {
            return new String(TypeConstants.WILDCARD_NAME);
        }
        if (i10 != 1) {
            return new String(CharOperation.concat(TypeConstants.WILDCARD_NAME, TypeConstants.WILDCARD_SUPER, this.bound.debugName().toCharArray()));
        }
        if (this.otherBounds == null) {
            return new String(CharOperation.concat(TypeConstants.WILDCARD_NAME, TypeConstants.WILDCARD_EXTENDS, this.bound.debugName().toCharArray()));
        }
        StringBuffer stringBuffer = new StringBuffer(this.bound.debugName());
        int length = this.otherBounds.length;
        for (int i11 = 0; i11 < length; i11++) {
            stringBuffer.append('&');
            stringBuffer.append(this.otherBounds[i11].debugName());
        }
        return stringBuffer.toString();
    }

    public TypeVariableBinding typeVariable() {
        if (this.typeVariable == null) {
            TypeVariableBinding[] typeVariables = this.genericType.typeVariables();
            int i10 = this.rank;
            if (i10 < typeVariables.length) {
                this.typeVariable = typeVariables[i10];
            }
        }
        return this.typeVariable;
    }

    @Override
    public TypeBinding unannotated() {
        return hasTypeAnnotations() ? this.environment.getUnannotatedType(this) : this;
    }

    @Override
    public TypeBinding uncapture(Scope scope) {
        int length;
        TypeBinding[] typeBindingArr;
        if ((this.tagBits & 2305843009213693952L) == 0) {
            return this;
        }
        TypeBinding typeBinding = this.bound;
        TypeBinding uncapture = typeBinding != null ? typeBinding.uncapture(scope) : null;
        TypeBinding[] typeBindingArr2 = this.otherBounds;
        if (typeBindingArr2 == null) {
            typeBindingArr = null;
            length = 0;
        } else {
            length = typeBindingArr2.length;
            typeBindingArr = new TypeBinding[length];
        }
        for (int i10 = 0; i10 < length; i10++) {
            TypeBinding typeBinding2 = this.otherBounds[i10];
            typeBindingArr[i10] = typeBinding2 == null ? null : typeBinding2.uncapture(scope);
        }
        return scope.environment().createWildcard(this.genericType, this.rank, uncapture, typeBindingArr, this.boundKind, getTypeAnnotations());
    }

    @Override
    public long updateTagBits() {
        if (!this.inRecursiveFunction) {
            this.inRecursiveFunction = true;
            try {
                TypeBinding typeBinding = this.bound;
                if (typeBinding != null) {
                    this.tagBits |= typeBinding.updateTagBits();
                }
                TypeBinding[] typeBindingArr = this.otherBounds;
                if (typeBindingArr != null) {
                    int length = typeBindingArr.length;
                    for (int i10 = 0; i10 < length; i10++) {
                        this.tagBits |= this.otherBounds[i10].updateTagBits();
                    }
                }
            } finally {
                this.inRecursiveFunction = false;
            }
        }
        return super.updateTagBits();
    }

    @Override
    public TypeBinding withoutToplevelNullAnnotation() {
        if (!hasNullTypeAnnotations()) {
            return this;
        }
        return this.environment.createWildcard(this.genericType, this.rank, this.bound, this.otherBounds, this.boundKind, this.environment.filterNullTypeAnnotations(getTypeAnnotations()));
    }
}
