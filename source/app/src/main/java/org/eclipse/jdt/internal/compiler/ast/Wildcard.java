package org.eclipse.jdt.internal.compiler.ast;

import org.eclipse.jdt.core.compiler.CharOperation;
import org.eclipse.jdt.internal.compiler.ASTVisitor;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.ClassScope;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.Scope;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;
import org.eclipse.jdt.internal.compiler.lookup.TypeConstants;
import org.eclipse.jdt.internal.compiler.lookup.WildcardBinding;
import w2.C15883c;

public class Wildcard extends SingleTypeReference {
    public static final int EXTENDS = 1;
    public static final int SUPER = 2;
    public static final int UNBOUND = 0;
    public TypeReference bound;
    public int kind;

    public Wildcard(int i10) {
        super(TypeConstants.WILDCARD_NAME, 0L);
        this.kind = i10;
    }

    private TypeBinding internalResolveType(Scope scope, ReferenceBinding referenceBinding, int i10) {
        TypeBinding typeBinding;
        TypeReference typeReference = this.bound;
        if (typeReference != null) {
            TypeBinding resolveType = scope.kind == 3 ? typeReference.resolveType((ClassScope) scope, 256) : typeReference.resolveType((BlockScope) scope, true, 256);
            this.bits |= this.bound.bits & 1048576;
            if (resolveType == null) {
                return null;
            }
            typeBinding = resolveType;
        } else {
            typeBinding = null;
        }
        this.resolvedType = scope.environment().createWildcard(referenceBinding, i10, typeBinding, null, this.kind);
        resolveAnnotations(scope, 0);
        if (scope.environment().usesNullTypeAnnotations()) {
            ((WildcardBinding) this.resolvedType).evaluateNullAnnotations(scope, this);
        }
        return this.resolvedType;
    }

    @Override
    public char[][] getParameterizedTypeName() {
        int i10 = this.kind;
        return i10 != 0 ? i10 != 1 ? new char[][]{CharOperation.concat(TypeConstants.WILDCARD_NAME, TypeConstants.WILDCARD_SUPER, CharOperation.concatWith(this.bound.getParameterizedTypeName(), '.'))} : new char[][]{CharOperation.concat(TypeConstants.WILDCARD_NAME, TypeConstants.WILDCARD_EXTENDS, CharOperation.concatWith(this.bound.getParameterizedTypeName(), '.'))} : new char[][]{TypeConstants.WILDCARD_NAME};
    }

    @Override
    public char[][] getTypeName() {
        int i10 = this.kind;
        return i10 != 0 ? i10 != 1 ? new char[][]{CharOperation.concat(TypeConstants.WILDCARD_NAME, TypeConstants.WILDCARD_SUPER, CharOperation.concatWith(this.bound.getTypeName(), '.'))} : new char[][]{CharOperation.concat(TypeConstants.WILDCARD_NAME, TypeConstants.WILDCARD_EXTENDS, CharOperation.concatWith(this.bound.getTypeName(), '.'))} : new char[][]{TypeConstants.WILDCARD_NAME};
    }

    @Override
    public boolean isWildcard() {
        return true;
    }

    @Override
    public StringBuffer printExpression(int i10, StringBuffer stringBuffer) {
        Annotation[] annotationArr;
        Annotation[][] annotationArr2 = this.annotations;
        if (annotationArr2 != null && (annotationArr = annotationArr2[0]) != null) {
            ASTNode.printAnnotations(annotationArr, stringBuffer);
            stringBuffer.append(C15883c.f126249O);
        }
        int i11 = this.kind;
        if (i11 == 0) {
            stringBuffer.append(TypeConstants.WILDCARD_NAME);
        } else if (i11 != 1) {
            stringBuffer.append(TypeConstants.WILDCARD_NAME);
            stringBuffer.append(TypeConstants.WILDCARD_SUPER);
            this.bound.printExpression(0, stringBuffer);
        } else {
            stringBuffer.append(TypeConstants.WILDCARD_NAME);
            stringBuffer.append(TypeConstants.WILDCARD_EXTENDS);
            this.bound.printExpression(0, stringBuffer);
        }
        return stringBuffer;
    }

    @Override
    public TypeBinding resolveType(BlockScope blockScope, boolean z10, int i10) {
        TypeReference typeReference = this.bound;
        if (typeReference == null) {
            return null;
        }
        typeReference.resolveType(blockScope, z10, 256);
        this.bits |= this.bound.bits & 1048576;
        return null;
    }

    @Override
    public TypeBinding resolveTypeArgument(BlockScope blockScope, ReferenceBinding referenceBinding, int i10) {
        return internalResolveType(blockScope, referenceBinding, i10);
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
            TypeReference typeReference = this.bound;
            if (typeReference != null) {
                typeReference.traverse(aSTVisitor, blockScope);
            }
        }
        aSTVisitor.endVisit(this, blockScope);
    }

    @Override
    public TypeBinding resolveTypeArgument(ClassScope classScope, ReferenceBinding referenceBinding, int i10) {
        return internalResolveType(classScope, referenceBinding, i10);
    }

    @Override
    public TypeBinding resolveType(ClassScope classScope, int i10) {
        TypeReference typeReference = this.bound;
        if (typeReference == null) {
            return null;
        }
        typeReference.resolveType(classScope, 256);
        this.bits |= this.bound.bits & 1048576;
        return null;
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
            TypeReference typeReference = this.bound;
            if (typeReference != null) {
                typeReference.traverse(aSTVisitor, classScope);
            }
        }
        aSTVisitor.endVisit(this, classScope);
    }
}
