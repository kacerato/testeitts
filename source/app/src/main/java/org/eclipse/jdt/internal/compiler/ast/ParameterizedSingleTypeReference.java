package org.eclipse.jdt.internal.compiler.ast;

import java.util.function.Consumer;
import okhttp3.v;
import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.ASTVisitor;
import org.eclipse.jdt.internal.compiler.ast.TypeReference;
import org.eclipse.jdt.internal.compiler.classfmt.ClassFileConstants;
import org.eclipse.jdt.internal.compiler.impl.Constant;
import org.eclipse.jdt.internal.compiler.lookup.Binding;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.ClassScope;
import org.eclipse.jdt.internal.compiler.lookup.ParameterizedTypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.Scope;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeVariableBinding;
import org.eclipse.jdt.internal.core.JavaElement;
import org.eclipse.jdt.internal.core.search.indexing.IIndexConstants;
import w2.C15883c;

public class ParameterizedSingleTypeReference extends ArrayTypeReference {
    public static final TypeBinding[] DIAMOND_TYPE_ARGUMENTS = new TypeBinding[0];
    public TypeReference[] typeArguments;

    public ParameterizedSingleTypeReference(char[] cArr, TypeReference[] typeReferenceArr, int i10, long j10) {
        super(cArr, i10, j10);
        this.originalSourceEnd = this.sourceEnd;
        this.typeArguments = typeReferenceArr;
        for (TypeReference typeReference : typeReferenceArr) {
            if ((typeReference.bits & 1048576) != 0) {
                this.bits |= 1048576;
                return;
            }
        }
    }

    private TypeBinding createArrayType(Scope scope, TypeBinding typeBinding) {
        int i10 = this.dimensions;
        if (i10 <= 0) {
            return typeBinding;
        }
        if (i10 > 255) {
            scope.problemReporter().tooManyDimensions(this);
        }
        return scope.createArrayType(typeBinding, this.dimensions);
    }

    private TypeBinding internalResolveLeafType(Scope scope, ReferenceBinding referenceBinding, boolean z10) {
        ReferenceBinding referenceBinding2;
        ReferenceBinding referenceBinding3;
        TypeReference typeReference;
        ReferenceBinding enclosingType;
        int i10 = 0;
        int i11 = 1;
        TypeBinding typeBinding = null;
        if (referenceBinding == null) {
            TypeBinding type = scope.getType(this.token);
            this.resolvedType = type;
            if (!type.isValidBinding()) {
                reportInvalidType(scope);
                int problemId = this.resolvedType.problemId();
                if (problemId == 1 || problemId == 2 || problemId == 5) {
                    TypeBinding closestMatch = this.resolvedType.closestMatch();
                    if (closestMatch instanceof ReferenceBinding) {
                        referenceBinding3 = (ReferenceBinding) closestMatch;
                    }
                }
                boolean z11 = scope.kind == 3;
                int length = this.typeArguments.length;
                while (i10 < length) {
                    TypeReference typeReference2 = this.typeArguments[i10];
                    if (z11) {
                        typeReference2.resolveType((ClassScope) scope);
                    } else {
                        typeReference2.resolveType((BlockScope) scope, z10);
                    }
                    i10++;
                }
                return null;
            }
            referenceBinding3 = (ReferenceBinding) this.resolvedType;
            referenceBinding2 = referenceBinding3.enclosingType();
            if (referenceBinding2 != null && referenceBinding3.hasEnclosingInstanceContext()) {
                referenceBinding2 = scope.environment().convertToParameterizedType(referenceBinding2);
            }
        } else {
            ReferenceBinding memberType = scope.getMemberType(this.token, referenceBinding);
            this.resolvedType = memberType;
            if (!memberType.isValidBinding()) {
                scope.problemReporter().invalidEnclosingType(this, memberType, referenceBinding);
                return null;
            }
            if (isTypeUseDeprecated(memberType, scope)) {
                scope.problemReporter().deprecatedType(memberType, this);
            }
            ReferenceBinding enclosingType2 = memberType.enclosingType();
            if (enclosingType2 == null || !TypeBinding.notEquals(enclosingType2.erasure(), referenceBinding.erasure())) {
                referenceBinding2 = referenceBinding;
                referenceBinding3 = memberType;
            } else {
                referenceBinding3 = memberType;
                referenceBinding2 = enclosingType2;
            }
        }
        boolean z12 = scope.kind == 3;
        if (z12) {
            ClassScope classScope = (ClassScope) scope;
            typeReference = classScope.superTypeReference;
            classScope.superTypeReference = null;
        } else {
            typeReference = null;
        }
        boolean z13 = (this.bits & 524288) != 0;
        int length2 = this.typeArguments.length;
        TypeBinding[] typeBindingArr = new TypeBinding[length2];
        ReferenceBinding referenceBinding4 = (ReferenceBinding) referenceBinding3.original();
        int i12 = 0;
        boolean z14 = false;
        while (i12 < length2) {
            TypeReference typeReference3 = this.typeArguments[i12];
            TypeBinding resolveTypeArgument = z12 ? typeReference3.resolveTypeArgument((ClassScope) scope, referenceBinding4, i12) : typeReference3.resolveTypeArgument((BlockScope) scope, referenceBinding4, i12);
            this.bits = (typeReference3.bits & 1048576) | this.bits;
            if (resolveTypeArgument == null) {
                z14 = true;
            } else {
                typeBindingArr[i12] = resolveTypeArgument;
            }
            i12++;
            i10 = 0;
            i11 = 1;
            typeBinding = null;
        }
        if (z14) {
            return typeBinding;
        }
        if (z12) {
            ClassScope classScope2 = (ClassScope) scope;
            classScope2.superTypeReference = typeReference;
            if (classScope2.detectHierarchyCycle(referenceBinding4, this)) {
                return typeBinding;
            }
        }
        TypeVariableBinding[] typeVariables = referenceBinding4.typeVariables();
        if (typeVariables == Binding.NO_TYPE_VARIABLES) {
            if (scope.compilerOptions().originalSourceLevel < ClassFileConstants.JDK1_5) {
                i11 = i10;
            }
            if ((referenceBinding4.tagBits & 128) == 0 && i11 != 0) {
                this.resolvedType = referenceBinding3;
                scope.problemReporter().nonGenericTypeCannotBeParameterized(i10, this, referenceBinding3, typeBindingArr);
                return typeBinding;
            }
            if (i11 == 0) {
                if (!this.resolvedType.isValidBinding()) {
                    return referenceBinding3;
                }
                this.resolvedType = referenceBinding3;
                return referenceBinding3;
            }
        } else if (length2 != typeVariables.length) {
            if (!z13) {
                scope.problemReporter().incorrectArityForParameterizedType(this, referenceBinding3, typeBindingArr);
                return typeBinding;
            }
        } else if (!referenceBinding3.isStatic() && (enclosingType = referenceBinding3.enclosingType()) != null && enclosingType.isRawType()) {
            scope.problemReporter().rawMemberTypeCannotBeParameterized(this, scope.environment().createRawType(referenceBinding4, enclosingType), typeBindingArr);
            return typeBinding;
        }
        ParameterizedTypeBinding createParameterizedType = scope.environment().createParameterizedType(referenceBinding4, typeBindingArr, referenceBinding2);
        if (z13) {
            createParameterizedType.arguments = DIAMOND_TYPE_ARGUMENTS;
        } else if (z10) {
            createParameterizedType.boundCheck(scope, this.typeArguments);
        } else {
            scope.deferBoundCheck(this);
        }
        if (isTypeUseDeprecated(createParameterizedType, scope)) {
            reportDeprecatedType(createParameterizedType, scope);
        }
        checkIllegalNullAnnotations(scope, this.typeArguments);
        if (!this.resolvedType.isValidBinding()) {
            return createParameterizedType;
        }
        this.resolvedType = createParameterizedType;
        return createParameterizedType;
    }

    private TypeBinding internalResolveType(Scope scope, ReferenceBinding referenceBinding, boolean z10, int i10) {
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
        TypeBinding internalResolveLeafType = internalResolveLeafType(scope, referenceBinding, z10);
        if (internalResolveLeafType == null) {
            this.resolvedType = createArrayType(scope, this.resolvedType);
            resolveAnnotations(scope, 0);
            return null;
        }
        TypeBinding createArrayType = createArrayType(scope, internalResolveLeafType);
        if (!this.resolvedType.isValidBinding() && this.resolvedType.dimensions() == createArrayType.dimensions()) {
            resolveAnnotations(scope, 0);
            return createArrayType;
        }
        this.resolvedType = createArrayType;
        resolveAnnotations(scope, i10);
        int i12 = this.dimensions;
        if (i12 > 0) {
            this.resolvedType = ArrayTypeReference.maybeMarkArrayContentsNonNull(scope, this.resolvedType, this.sourceStart, i12, new Consumer() {
                @Override
                public final void accept(Object obj) {
                    ParameterizedSingleTypeReference.this.lambda$0((TypeBinding) obj);
                }
            });
        }
        return this.resolvedType;
    }

    public void lambda$0(TypeBinding typeBinding) {
        this.leafComponentTypeWithoutDefaultNullness = typeBinding;
    }

    @Override
    public TypeReference augmentTypeWithAdditionalDimensions(int i10, Annotation[][] annotationArr, boolean z10) {
        ParameterizedSingleTypeReference parameterizedSingleTypeReference = new ParameterizedSingleTypeReference(this.token, this.typeArguments, dimensions() + i10, getMergedAnnotationsOnDimensions(i10, annotationArr), this.sourceEnd + (this.sourceStart << 32));
        parameterizedSingleTypeReference.annotations = this.annotations;
        parameterizedSingleTypeReference.bits |= this.bits & 1048576;
        if (!z10) {
            parameterizedSingleTypeReference.extendedDimensions = i10;
        }
        return parameterizedSingleTypeReference;
    }

    @Override
    public void checkBounds(Scope scope) {
        TypeBinding typeBinding = this.resolvedType;
        if (typeBinding != null && (typeBinding.leafComponentType() instanceof ParameterizedTypeBinding)) {
            ParameterizedTypeBinding parameterizedTypeBinding = (ParameterizedTypeBinding) this.resolvedType.leafComponentType();
            if (parameterizedTypeBinding.arguments != null) {
                parameterizedTypeBinding.boundCheck(scope, this.typeArguments);
            }
        }
    }

    @Override
    public char[][] getParameterizedTypeName() {
        StringBuffer stringBuffer = new StringBuffer(5);
        stringBuffer.append(this.token);
        stringBuffer.append('<');
        int length = this.typeArguments.length;
        for (int i10 = 0; i10 < length; i10++) {
            if (i10 > 0) {
                stringBuffer.append(IIndexConstants.PARAMETER_SEPARATOR);
            }
            stringBuffer.append(CharOperation.concatWith(this.typeArguments[i10].getParameterizedTypeName(), '.'));
        }
        stringBuffer.append('>');
        int length2 = stringBuffer.length();
        char[] cArr = new char[length2];
        stringBuffer.getChars(0, length2, cArr, 0);
        int i11 = this.dimensions;
        if (i11 > 0) {
            char[] cArr2 = new char[i11 * 2];
            for (int i12 = 0; i12 < i11; i12++) {
                int i13 = i12 * 2;
                cArr2[i13] = '[';
                cArr2[i13 + 1] = JavaElement.JEM_TYPE_PARAMETER;
            }
            cArr = CharOperation.concat(cArr, cArr2);
        }
        return new char[][]{cArr};
    }

    @Override
    public TypeReference[][] getTypeArguments() {
        return new TypeReference[][]{this.typeArguments};
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
                TypeReference[] typeReferenceArr = this.typeArguments;
                if (i10 >= typeReferenceArr.length) {
                    break;
                }
                if (typeReferenceArr[i10].hasNullTypeAnnotation(annotationPosition)) {
                    return true;
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
        Annotation[] annotationArr;
        Annotation[][] annotationArr2 = this.annotations;
        int i12 = 0;
        if (annotationArr2 != null && (annotationArr = annotationArr2[0]) != null) {
            ASTNode.printAnnotations(annotationArr, stringBuffer);
            stringBuffer.append(C15883c.f126249O);
        }
        stringBuffer.append(this.token);
        stringBuffer.append("<");
        int length = this.typeArguments.length;
        if (length > 0) {
            int i13 = length - 1;
            for (int i14 = 0; i14 < i13; i14++) {
                this.typeArguments[i14].print(0, stringBuffer);
                stringBuffer.append(", ");
            }
            this.typeArguments[i13].print(0, stringBuffer);
        }
        stringBuffer.append(">");
        Annotation[][] annotationsOnDimensions = getAnnotationsOnDimensions();
        if ((this.bits & 16384) != 0) {
            while (true) {
                i11 = this.dimensions;
                if (i12 >= i11 - 1) {
                    break;
                }
                if (annotationsOnDimensions != null && annotationsOnDimensions[i12] != null) {
                    stringBuffer.append(" ");
                    ASTNode.printAnnotations(annotationsOnDimensions[i12], stringBuffer);
                    stringBuffer.append(" ");
                }
                stringBuffer.append(v.f99450n);
                i12++;
            }
            if (annotationsOnDimensions != null && annotationsOnDimensions[i11 - 1] != null) {
                stringBuffer.append(" ");
                ASTNode.printAnnotations(annotationsOnDimensions[this.dimensions - 1], stringBuffer);
                stringBuffer.append(" ");
            }
            stringBuffer.append("...");
        } else {
            while (i12 < this.dimensions) {
                if (annotationsOnDimensions != null && annotationsOnDimensions[i12] != null) {
                    stringBuffer.append(" ");
                    ASTNode.printAnnotations(annotationsOnDimensions[i12], stringBuffer);
                    stringBuffer.append(" ");
                }
                stringBuffer.append(v.f99450n);
                i12++;
            }
        }
        return stringBuffer;
    }

    @Override
    public TypeBinding resolveType(BlockScope blockScope, boolean z10, int i10) {
        return internalResolveType(blockScope, null, z10, i10);
    }

    @Override
    public TypeBinding resolveTypeEnclosing(BlockScope blockScope, ReferenceBinding referenceBinding) {
        return internalResolveType(blockScope, referenceBinding, true, 0);
    }

    @Override
    public void traverse(ASTVisitor aSTVisitor, BlockScope blockScope) {
        if (aSTVisitor.visit(this, blockScope)) {
            Annotation[][] annotationArr = this.annotations;
            if (annotationArr != null) {
                Annotation[] annotationArr2 = annotationArr[0];
                int length = annotationArr2 == null ? 0 : annotationArr2.length;
                for (int i10 = 0; i10 < length; i10++) {
                    annotationArr2[i10].traverse(aSTVisitor, blockScope);
                }
            }
            Annotation[][] annotationsOnDimensions = getAnnotationsOnDimensions(true);
            if (annotationsOnDimensions != null) {
                for (Annotation[] annotationArr3 : annotationsOnDimensions) {
                    if (annotationArr3 != null) {
                        for (Annotation annotation : annotationArr3) {
                            annotation.traverse(aSTVisitor, blockScope);
                        }
                    }
                }
            }
            int length2 = this.typeArguments.length;
            for (int i11 = 0; i11 < length2; i11++) {
                this.typeArguments[i11].traverse(aSTVisitor, blockScope);
            }
        }
        aSTVisitor.endVisit(this, blockScope);
    }

    @Override
    public TypeBinding resolveType(ClassScope classScope, int i10) {
        return internalResolveType(classScope, null, false, i10);
    }

    public ParameterizedSingleTypeReference(char[] cArr, TypeReference[] typeReferenceArr, int i10, Annotation[][] annotationArr, long j10) {
        this(cArr, typeReferenceArr, i10, j10);
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
                Annotation[] annotationArr2 = annotationArr[0];
                int length = annotationArr2 == null ? 0 : annotationArr2.length;
                for (int i10 = 0; i10 < length; i10++) {
                    annotationArr2[i10].traverse(aSTVisitor, classScope);
                }
            }
            Annotation[][] annotationsOnDimensions = getAnnotationsOnDimensions(true);
            if (annotationsOnDimensions != null) {
                for (Annotation[] annotationArr3 : annotationsOnDimensions) {
                    for (Annotation annotation : annotationArr3) {
                        annotation.traverse(aSTVisitor, classScope);
                    }
                }
            }
            int length2 = this.typeArguments.length;
            for (int i11 = 0; i11 < length2; i11++) {
                this.typeArguments[i11].traverse(aSTVisitor, classScope);
            }
        }
        aSTVisitor.endVisit(this, classScope);
    }
}
