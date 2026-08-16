package org.eclipse.jdt.internal.compiler.ast;

import okhttp3.v;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.ASTVisitor;
import org.eclipse.jdt.internal.compiler.ast.TypeReference;
import org.eclipse.jdt.internal.compiler.classfmt.ClassFileConstants;
import org.eclipse.jdt.internal.compiler.impl.Constant;
import org.eclipse.jdt.internal.compiler.lookup.Binding;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.ClassScope;
import org.eclipse.jdt.internal.compiler.lookup.PackageBinding;
import org.eclipse.jdt.internal.compiler.lookup.ParameterizedTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.Scope;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeVariableBinding;
import org.eclipse.jdt.internal.core.JavaElement;
import org.eclipse.jdt.internal.core.search.indexing.IIndexConstants;
import w2.C15883c;

public class ParameterizedQualifiedTypeReference extends ArrayQualifiedTypeReference {
    public TypeReference[][] typeArguments;
    ReferenceBinding[] typesPerToken;

    public ParameterizedQualifiedTypeReference(char[][] cArr, TypeReference[][] typeReferenceArr, int i10, long[] jArr) {
        super(cArr, i10, jArr);
        this.typeArguments = typeReferenceArr;
        for (TypeReference[] typeReferenceArr2 : typeReferenceArr) {
            if (typeReferenceArr2 != null) {
                for (TypeReference typeReference : typeReferenceArr2) {
                    if ((typeReference.bits & 1048576) != 0) {
                        this.bits |= 1048576;
                        return;
                    }
                }
            }
        }
    }

    private void createArrayType(Scope scope) {
        int i10 = this.dimensions;
        if (i10 > 0) {
            if (i10 > 255) {
                scope.problemReporter().tooManyDimensions(this);
            }
            this.resolvedType = scope.createArrayType(this.resolvedType, this.dimensions);
        }
    }

    /* JADX WARN: Type inference failed for: r7v0 */
    /* JADX WARN: Type inference failed for: r7v1, types: [org.eclipse.jdt.internal.compiler.lookup.TypeBinding, org.eclipse.jdt.internal.compiler.ast.TypeReference] */
    /* JADX WARN: Type inference failed for: r7v2 */
    private TypeBinding internalResolveLeafType(Scope scope, boolean z10) {
        PackageBinding packageBinding;
        Object obj;
        ReferenceBinding maybeCreateParameterizedType;
        TypeReference typeReference;
        boolean z11;
        TypeBinding resolveTypeArgument;
        boolean z12 = z10;
        boolean z13 = scope.kind == 3;
        Binding binding = scope.getPackage(this.tokens);
        ?? r72 = 0;
        if (binding != null && !binding.isValidBinding()) {
            this.resolvedType = (ReferenceBinding) binding;
            reportInvalidType(scope);
            int length = this.tokens.length;
            for (int i10 = 0; i10 < length; i10++) {
                TypeReference[] typeReferenceArr = this.typeArguments[i10];
                if (typeReferenceArr != null) {
                    for (TypeReference typeReference2 : typeReferenceArr) {
                        if (z13) {
                            typeReference2.resolveType((ClassScope) scope);
                        } else {
                            typeReference2.resolveType((BlockScope) scope, z12);
                        }
                    }
                }
            }
            return null;
        }
        PackageBinding packageBinding2 = binding == null ? null : (PackageBinding) binding;
        rejectAnnotationsOnPackageQualifiers(scope, packageBinding2);
        int length2 = this.tokens.length;
        this.typesPerToken = new ReferenceBinding[length2];
        int length3 = packageBinding2 == null ? 0 : packageBinding2.compoundName.length;
        ReferenceBinding referenceBinding = null;
        boolean z14 = true;
        while (length3 < length2) {
            findNextTypeBinding(length3, scope, packageBinding2);
            if (!this.resolvedType.isValidBinding()) {
                reportInvalidType(scope);
                while (length3 < length2) {
                    TypeReference[] typeReferenceArr2 = this.typeArguments[length3];
                    if (typeReferenceArr2 != null) {
                        for (TypeReference typeReference3 : typeReferenceArr2) {
                            if (z13) {
                                typeReference3.resolveType((ClassScope) scope);
                            } else {
                                typeReference3.resolveType((BlockScope) scope);
                            }
                        }
                    }
                    length3++;
                }
                return r72;
            }
            ReferenceBinding referenceBinding2 = (ReferenceBinding) this.resolvedType;
            if (referenceBinding == null) {
                referenceBinding = referenceBinding2.enclosingType();
                if (referenceBinding != null && referenceBinding2.hasEnclosingInstanceContext()) {
                    referenceBinding = scope.environment().convertToParameterizedType(referenceBinding);
                }
            } else {
                Annotation[][] annotationArr = this.annotations;
                if (annotationArr != null) {
                    QualifiedTypeReference.rejectAnnotationsOnStaticMemberQualififer(scope, referenceBinding2, annotationArr[length3 - 1]);
                }
                if (z14 && referenceBinding2.isStatic() && (referenceBinding.isParameterizedTypeWithActualArguments() || referenceBinding.isGenericType())) {
                    scope.problemReporter().staticMemberOfParameterizedType(this, referenceBinding2, referenceBinding, length3);
                    referenceBinding = referenceBinding.actualType();
                    z14 = false;
                }
                ReferenceBinding enclosingType = referenceBinding2.enclosingType();
                if (enclosingType != null && TypeBinding.notEquals(enclosingType.erasure(), referenceBinding.erasure())) {
                    referenceBinding = enclosingType;
                }
            }
            TypeReference[] typeReferenceArr3 = this.typeArguments[length3];
            if (typeReferenceArr3 != null) {
                if (z13) {
                    ClassScope classScope = (ClassScope) scope;
                    typeReference = classScope.superTypeReference;
                    classScope.superTypeReference = r72;
                } else {
                    typeReference = r72;
                }
                int length4 = typeReferenceArr3.length;
                boolean z15 = length4 == 0 && length3 == length2 + (-1) && (this.bits & 524288) != 0;
                TypeBinding[] typeBindingArr = new TypeBinding[length4];
                ReferenceBinding referenceBinding3 = (ReferenceBinding) referenceBinding2.original();
                packageBinding = packageBinding2;
                int i11 = 0;
                boolean z16 = false;
                while (i11 < length4) {
                    TypeReference typeReference4 = typeReferenceArr3[i11];
                    if (z13) {
                        z11 = z15;
                        resolveTypeArgument = typeReference4.resolveTypeArgument((ClassScope) scope, referenceBinding3, i11);
                    } else {
                        z11 = z15;
                        resolveTypeArgument = typeReference4.resolveTypeArgument((BlockScope) scope, referenceBinding3, i11);
                    }
                    if (resolveTypeArgument == null) {
                        z16 = true;
                    } else {
                        typeBindingArr[i11] = resolveTypeArgument;
                    }
                    i11++;
                    z12 = z10;
                    z15 = z11;
                }
                if (z16) {
                    return null;
                }
                if (z13) {
                    ClassScope classScope2 = (ClassScope) scope;
                    classScope2.superTypeReference = typeReference;
                    if (classScope2.detectHierarchyCycle(referenceBinding3, this)) {
                        return null;
                    }
                }
                TypeVariableBinding[] typeVariables = referenceBinding3.typeVariables();
                if (typeVariables == Binding.NO_TYPE_VARIABLES) {
                    if (scope.compilerOptions().originalSourceLevel >= ClassFileConstants.JDK1_5) {
                        scope.problemReporter().nonGenericTypeCannotBeParameterized(length3, this, referenceBinding2, typeBindingArr);
                        return null;
                    }
                    if (referenceBinding != null && referenceBinding.isParameterizedType()) {
                        referenceBinding2 = scope.environment().createParameterizedType(referenceBinding3, null, referenceBinding);
                    }
                    this.resolvedType = referenceBinding2;
                    return referenceBinding2;
                }
                if (length4 != typeVariables.length && !z15) {
                    scope.problemReporter().incorrectArityForParameterizedType(this, referenceBinding2, typeBindingArr, length3);
                    return null;
                }
                if (z14) {
                    if (referenceBinding2.hasEnclosingInstanceContext()) {
                        ReferenceBinding enclosingType2 = referenceBinding2.enclosingType();
                        if (enclosingType2 != null && enclosingType2.isRawType()) {
                            scope.problemReporter().rawMemberTypeCannotBeParameterized(this, scope.environment().createRawType(referenceBinding3, enclosingType2), typeBindingArr);
                            z14 = false;
                        }
                    } else if (referenceBinding != null && referenceBinding.isRawType()) {
                        referenceBinding = referenceBinding.actualType();
                        this.typesPerToken[length3 - 1] = referenceBinding;
                    }
                }
                ParameterizedTypeBinding createParameterizedType = scope.environment().createParameterizedType(referenceBinding3, typeBindingArr, referenceBinding);
                if (z15) {
                    createParameterizedType.arguments = ParameterizedSingleTypeReference.DIAMOND_TYPE_ARGUMENTS;
                } else if (z12) {
                    createParameterizedType.boundCheck(scope, typeReferenceArr3);
                } else {
                    scope.deferBoundCheck(this);
                }
                referenceBinding = createParameterizedType;
                obj = null;
            } else {
                packageBinding = packageBinding2;
                ReferenceBinding referenceBinding4 = (ReferenceBinding) referenceBinding2.original();
                if (z13 && ((ClassScope) scope).detectHierarchyCycle(referenceBinding4, this)) {
                    return null;
                }
                if (referenceBinding4.isGenericType()) {
                    if (z14 && referenceBinding != null && referenceBinding.isParameterizedType() && referenceBinding4.hasEnclosingInstanceContext()) {
                        obj = null;
                        scope.problemReporter().parameterizedMemberTypeMissingArguments(this, scope.environment().createParameterizedType(referenceBinding4, null, referenceBinding), length3);
                        z14 = false;
                    } else {
                        obj = null;
                    }
                    maybeCreateParameterizedType = scope.environment().createRawType(referenceBinding4, referenceBinding);
                } else {
                    obj = null;
                    maybeCreateParameterizedType = scope.environment().maybeCreateParameterizedType(referenceBinding4, referenceBinding);
                }
                referenceBinding = maybeCreateParameterizedType;
            }
            if (isTypeUseDeprecated(referenceBinding, scope)) {
                reportDeprecatedType(referenceBinding, scope, length3);
            }
            this.resolvedType = referenceBinding;
            this.typesPerToken[length3] = referenceBinding;
            recordResolution(scope.environment(), this.resolvedType);
            length3++;
            z12 = z10;
            r72 = obj;
            packageBinding2 = packageBinding;
        }
        return this.resolvedType;
    }

    private TypeBinding internalResolveType(Scope scope, boolean z10, int i10) {
        TypeBinding typeBinding;
        this.constant = Constant.NotAConstant;
        int i11 = this.bits;
        if ((i11 & 262144) != 0 && (typeBinding = this.resolvedType) != null) {
            if (typeBinding.isValidBinding()) {
                return this.resolvedType;
            }
            int problemId = this.resolvedType.problemId();
            if (problemId == 1 || problemId == 2 || problemId == 5) {
                return this.resolvedType.closestMatch();
            }
            return null;
        }
        this.bits = i11 | 262144;
        TypeBinding internalResolveLeafType = internalResolveLeafType(scope, z10);
        createArrayType(scope);
        resolveAnnotations(scope, i10);
        int i12 = this.dimensions;
        if (i12 > 0) {
            this.resolvedType = ArrayTypeReference.maybeMarkArrayContentsNonNull(scope, this.resolvedType, this.sourceStart, i12, null);
        }
        TypeReference[][] typeReferenceArr = this.typeArguments;
        if (typeReferenceArr != null) {
            checkIllegalNullAnnotations(scope, typeReferenceArr[typeReferenceArr.length - 1]);
        }
        return internalResolveLeafType == null ? internalResolveLeafType : this.resolvedType;
    }

    @Override
    public TypeReference augmentTypeWithAdditionalDimensions(int i10, Annotation[][] annotationArr, boolean z10) {
        ParameterizedQualifiedTypeReference parameterizedQualifiedTypeReference = new ParameterizedQualifiedTypeReference(this.tokens, this.typeArguments, dimensions() + i10, getMergedAnnotationsOnDimensions(i10, annotationArr), this.sourcePositions);
        parameterizedQualifiedTypeReference.annotations = this.annotations;
        parameterizedQualifiedTypeReference.bits |= this.bits & 1048576;
        if (!z10) {
            parameterizedQualifiedTypeReference.extendedDimensions = i10;
        }
        return parameterizedQualifiedTypeReference;
    }

    @Override
    public void checkBounds(Scope scope) {
        TypeBinding typeBinding = this.resolvedType;
        if (typeBinding == null || !typeBinding.isValidBinding()) {
            return;
        }
        checkBounds((ReferenceBinding) this.resolvedType.leafComponentType(), scope, this.typeArguments.length - 1);
    }

    @Override
    public char[][] getParameterizedTypeName() {
        int length = this.tokens.length;
        char[][] cArr = new char[length];
        for (int i10 = 0; i10 < length; i10++) {
            TypeReference[] typeReferenceArr = this.typeArguments[i10];
            if (typeReferenceArr == null) {
                cArr[i10] = this.tokens[i10];
            } else {
                StringBuffer stringBuffer = new StringBuffer(5);
                stringBuffer.append(this.tokens[i10]);
                stringBuffer.append('<');
                int length2 = typeReferenceArr.length;
                for (int i11 = 0; i11 < length2; i11++) {
                    if (i11 > 0) {
                        stringBuffer.append(IIndexConstants.PARAMETER_SEPARATOR);
                    }
                    stringBuffer.append(CharOperation.concatWith(typeReferenceArr[i11].getParameterizedTypeName(), '.'));
                }
                stringBuffer.append('>');
                int length3 = stringBuffer.length();
                char[] cArr2 = new char[length3];
                cArr[i10] = cArr2;
                stringBuffer.getChars(0, length3, cArr2, 0);
            }
        }
        int i12 = this.dimensions;
        if (i12 > 0) {
            char[] cArr3 = new char[i12 * 2];
            for (int i13 = 0; i13 < i12; i13++) {
                int i14 = i13 * 2;
                cArr3[i14] = '[';
                cArr3[i14 + 1] = JavaElement.JEM_TYPE_PARAMETER;
            }
            int i15 = length - 1;
            cArr[i15] = CharOperation.concat(cArr[i15], cArr3);
        }
        return cArr;
    }

    @Override
    public TypeReference[][] getTypeArguments() {
        return this.typeArguments;
    }

    @Override
    public TypeBinding getTypeBinding(Scope scope) {
        return null;
    }

    @Override
    public boolean hasNullTypeAnnotation(TypeReference.AnnotationPosition annotationPosition) {
        TypeBinding typeBinding;
        if (super.hasNullTypeAnnotation(annotationPosition)) {
            return true;
        }
        if (annotationPosition == TypeReference.AnnotationPosition.ANY && (((typeBinding = this.resolvedType) == null || typeBinding.hasNullTypeAnnotations()) && this.typeArguments != null)) {
            int i10 = 0;
            while (true) {
                TypeReference[][] typeReferenceArr = this.typeArguments;
                if (i10 >= typeReferenceArr.length) {
                    break;
                }
                TypeReference[] typeReferenceArr2 = typeReferenceArr[i10];
                if (typeReferenceArr2 != null) {
                    for (TypeReference typeReference : typeReferenceArr2) {
                        if (typeReference.hasNullTypeAnnotation(annotationPosition)) {
                            return true;
                        }
                    }
                }
                i10++;
            }
        }
        return false;
    }

    @Override
    public boolean isParameterizedTypeReference() {
        return true;
    }

    @Override
    public StringBuffer printExpression(int i10, StringBuffer stringBuffer) {
        int i11;
        int i12;
        Annotation[] annotationArr;
        int length = this.tokens.length;
        int i13 = 0;
        int i14 = 0;
        while (true) {
            i11 = length - 1;
            if (i14 >= i11) {
                break;
            }
            Annotation[][] annotationArr2 = this.annotations;
            if (annotationArr2 != null && (annotationArr = annotationArr2[i14]) != null) {
                ASTNode.printAnnotations(annotationArr, stringBuffer);
                stringBuffer.append(C15883c.f126249O);
            }
            stringBuffer.append(this.tokens[i14]);
            TypeReference[] typeReferenceArr = this.typeArguments[i14];
            if (typeReferenceArr != null) {
                stringBuffer.append('<');
                int length2 = typeReferenceArr.length;
                if (length2 > 0) {
                    int i15 = length2 - 1;
                    for (int i16 = 0; i16 < i15; i16++) {
                        typeReferenceArr[i16].print(0, stringBuffer);
                        stringBuffer.append(", ");
                    }
                    typeReferenceArr[i15].print(0, stringBuffer);
                }
                stringBuffer.append('>');
            }
            stringBuffer.append('.');
            i14++;
        }
        Annotation[][] annotationArr3 = this.annotations;
        if (annotationArr3 != null && annotationArr3[i11] != null) {
            stringBuffer.append(" ");
            ASTNode.printAnnotations(this.annotations[i11], stringBuffer);
            stringBuffer.append(C15883c.f126249O);
        }
        stringBuffer.append(this.tokens[i11]);
        TypeReference[] typeReferenceArr2 = this.typeArguments[i11];
        if (typeReferenceArr2 != null) {
            stringBuffer.append('<');
            int length3 = typeReferenceArr2.length;
            if (length3 > 0) {
                int i17 = length3 - 1;
                for (int i18 = 0; i18 < i17; i18++) {
                    typeReferenceArr2[i18].print(0, stringBuffer);
                    stringBuffer.append(", ");
                }
                typeReferenceArr2[i17].print(0, stringBuffer);
            }
            stringBuffer.append('>');
        }
        Annotation[][] annotationsOnDimensions = getAnnotationsOnDimensions();
        if ((this.bits & 16384) != 0) {
            while (true) {
                i12 = this.dimensions;
                if (i13 >= i12 - 1) {
                    break;
                }
                if (annotationsOnDimensions != null && annotationsOnDimensions[i13] != null) {
                    stringBuffer.append(" ");
                    ASTNode.printAnnotations(annotationsOnDimensions[i13], stringBuffer);
                    stringBuffer.append(" ");
                }
                stringBuffer.append(v.f99450n);
                i13++;
            }
            if (annotationsOnDimensions != null && annotationsOnDimensions[i12 - 1] != null) {
                stringBuffer.append(" ");
                ASTNode.printAnnotations(annotationsOnDimensions[this.dimensions - 1], stringBuffer);
                stringBuffer.append(" ");
            }
            stringBuffer.append("...");
        } else {
            while (i13 < this.dimensions) {
                if (annotationsOnDimensions != null && annotationsOnDimensions[i13] != null) {
                    stringBuffer.append(" ");
                    ASTNode.printAnnotations(annotationsOnDimensions[i13], stringBuffer);
                    stringBuffer.append(" ");
                }
                stringBuffer.append(v.f99450n);
                i13++;
            }
        }
        return stringBuffer;
    }

    @Override
    public TypeBinding resolveType(BlockScope blockScope, boolean z10, int i10) {
        return internalResolveType(blockScope, z10, i10);
    }

    @Override
    public void traverse(ASTVisitor aSTVisitor, BlockScope blockScope) {
        if (aSTVisitor.visit(this, blockScope)) {
            Annotation[][] annotationArr = this.annotations;
            if (annotationArr != null) {
                int length = annotationArr.length;
                for (int i10 = 0; i10 < length; i10++) {
                    Annotation[] annotationArr2 = this.annotations[i10];
                    int length2 = annotationArr2 == null ? 0 : annotationArr2.length;
                    for (int i11 = 0; i11 < length2; i11++) {
                        this.annotations[i10][i11].traverse(aSTVisitor, blockScope);
                    }
                }
            }
            Annotation[][] annotationsOnDimensions = getAnnotationsOnDimensions(true);
            if (annotationsOnDimensions != null) {
                int length3 = annotationsOnDimensions.length;
                for (int i12 = 0; i12 < length3; i12++) {
                    Annotation[] annotationArr3 = annotationsOnDimensions[i12];
                    int length4 = annotationArr3 == null ? 0 : annotationArr3.length;
                    for (int i13 = 0; i13 < length4; i13++) {
                        annotationArr3[i13].traverse(aSTVisitor, blockScope);
                    }
                }
            }
            int length5 = this.typeArguments.length;
            for (int i14 = 0; i14 < length5; i14++) {
                TypeReference[] typeReferenceArr = this.typeArguments[i14];
                if (typeReferenceArr != null) {
                    int length6 = typeReferenceArr.length;
                    for (int i15 = 0; i15 < length6; i15++) {
                        this.typeArguments[i14][i15].traverse(aSTVisitor, blockScope);
                    }
                }
            }
        }
        aSTVisitor.endVisit(this, blockScope);
    }

    @Override
    public TypeBinding resolveType(ClassScope classScope, int i10) {
        return internalResolveType(classScope, false, i10);
    }

    public void checkBounds(ReferenceBinding referenceBinding, Scope scope, int i10) {
        int i11;
        ReferenceBinding referenceBinding2;
        if (i10 > 0 && (referenceBinding2 = this.typesPerToken[i10 - 1]) != null) {
            checkBounds(referenceBinding2, scope, i11);
        }
        if (referenceBinding.isParameterizedTypeWithActualArguments()) {
            ParameterizedTypeBinding parameterizedTypeBinding = (ParameterizedTypeBinding) referenceBinding;
            if (parameterizedTypeBinding.genericType().typeVariables() != null) {
                parameterizedTypeBinding.boundCheck(scope, this.typeArguments[i10]);
            }
        }
    }

    public ParameterizedQualifiedTypeReference(char[][] cArr, TypeReference[][] typeReferenceArr, int i10, Annotation[][] annotationArr, long[] jArr) {
        this(cArr, typeReferenceArr, i10, jArr);
        setAnnotationsOnDimensions(annotationArr);
        if (annotationArr != null) {
            this.bits |= 1048576;
        }
    }

    @Override
    public void traverse(ASTVisitor aSTVisitor, ClassScope classScope) {
        if (aSTVisitor.visit(this, classScope)) {
            Annotation[][] annotationArr = this.annotations;
            if (annotationArr != null) {
                int length = annotationArr.length;
                for (int i10 = 0; i10 < length; i10++) {
                    Annotation[] annotationArr2 = this.annotations[i10];
                    int length2 = annotationArr2 == null ? 0 : annotationArr2.length;
                    for (int i11 = 0; i11 < length2; i11++) {
                        this.annotations[i10][i11].traverse(aSTVisitor, classScope);
                    }
                }
            }
            Annotation[][] annotationsOnDimensions = getAnnotationsOnDimensions(true);
            if (annotationsOnDimensions != null) {
                int length3 = annotationsOnDimensions.length;
                for (int i12 = 0; i12 < length3; i12++) {
                    Annotation[] annotationArr3 = annotationsOnDimensions[i12];
                    int length4 = annotationArr3 == null ? 0 : annotationArr3.length;
                    for (int i13 = 0; i13 < length4; i13++) {
                        annotationArr3[i13].traverse(aSTVisitor, classScope);
                    }
                }
            }
            int length5 = this.typeArguments.length;
            for (int i14 = 0; i14 < length5; i14++) {
                TypeReference[] typeReferenceArr = this.typeArguments[i14];
                if (typeReferenceArr != null) {
                    int length6 = typeReferenceArr.length;
                    for (int i15 = 0; i15 < length6; i15++) {
                        this.typeArguments[i14][i15].traverse(aSTVisitor, classScope);
                    }
                }
            }
        }
        aSTVisitor.endVisit(this, classScope);
    }
}
