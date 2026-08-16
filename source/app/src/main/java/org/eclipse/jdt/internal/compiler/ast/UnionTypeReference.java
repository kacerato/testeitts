package org.eclipse.jdt.internal.compiler.ast;

import org.eclipse.jdt.internal.compiler.ASTVisitor;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.ClassScope;
import org.eclipse.jdt.internal.compiler.lookup.Scope;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;

public class UnionTypeReference extends TypeReference {
    public TypeReference[] typeReferences;

    public UnionTypeReference(TypeReference[] typeReferenceArr) {
        this.bits |= 536870912;
        this.typeReferences = typeReferenceArr;
        this.sourceStart = typeReferenceArr[0].sourceStart;
        this.sourceEnd = typeReferenceArr[typeReferenceArr.length - 1].sourceEnd;
    }

    @Override
    public TypeReference augmentTypeWithAdditionalDimensions(int i10, Annotation[][] annotationArr, boolean z10) {
        return this;
    }

    @Override
    public char[] getLastToken() {
        return null;
    }

    @Override
    public TypeBinding getTypeBinding(Scope scope) {
        return null;
    }

    @Override
    public char[][] getTypeName() {
        return this.typeReferences[0].getTypeName();
    }

    @Override
    public boolean isUnionType() {
        return true;
    }

    @Override
    public StringBuffer printExpression(int i10, StringBuffer stringBuffer) {
        TypeReference[] typeReferenceArr = this.typeReferences;
        int length = typeReferenceArr == null ? 0 : typeReferenceArr.length;
        ASTNode.printIndent(i10, stringBuffer);
        for (int i11 = 0; i11 < length; i11++) {
            this.typeReferences[i11].printExpression(0, stringBuffer);
            if (i11 != length - 1) {
                stringBuffer.append(" | ");
            }
        }
        return stringBuffer;
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x006f  */
    @Override
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public TypeBinding resolveType(BlockScope blockScope, boolean z10, int i10) {
        int i11;
        int length = this.typeReferences.length;
        TypeBinding[] typeBindingArr = new TypeBinding[length];
        boolean z11 = false;
        for (int i12 = 0; i12 < length; i12++) {
            TypeBinding resolveType = this.typeReferences[i12].resolveType(blockScope, z10, i10);
            if (resolveType == null) {
                return null;
            }
            int kind = resolveType.kind();
            if (kind != 260) {
                if (kind == 4100) {
                    blockScope.problemReporter().invalidTypeVariableAsException(resolveType, this.typeReferences[i12]);
                    z11 = true;
                }
                if (resolveType.findSuperTypeOriginatingFrom(21, true) == null && resolveType.isValidBinding()) {
                    blockScope.problemReporter().cannotThrowType(this.typeReferences[i12], resolveType);
                    z11 = true;
                }
                typeBindingArr[i12] = resolveType;
                for (i11 = 0; i11 < i12; i11++) {
                    if (typeBindingArr[i11].isCompatibleWith(resolveType)) {
                        blockScope.problemReporter().wrongSequenceOfExceptionTypes(this.typeReferences[i11], typeBindingArr[i11], resolveType);
                    } else if (resolveType.isCompatibleWith(typeBindingArr[i11])) {
                        blockScope.problemReporter().wrongSequenceOfExceptionTypes(this.typeReferences[i12], resolveType, typeBindingArr[i11]);
                    }
                    z11 = true;
                }
            } else {
                if (resolveType.isBoundParameterizedType()) {
                    blockScope.problemReporter().invalidParameterizedExceptionType(resolveType, this.typeReferences[i12]);
                    z11 = true;
                }
                if (resolveType.findSuperTypeOriginatingFrom(21, true) == null) {
                    blockScope.problemReporter().cannotThrowType(this.typeReferences[i12], resolveType);
                    z11 = true;
                }
                typeBindingArr[i12] = resolveType;
                while (i11 < i12) {
                }
            }
        }
        if (z11) {
            return null;
        }
        TypeBinding lowerUpperBound = blockScope.lowerUpperBound(typeBindingArr);
        this.resolvedType = lowerUpperBound;
        return lowerUpperBound;
    }

    @Override
    public void traverse(ASTVisitor aSTVisitor, BlockScope blockScope) {
        if (aSTVisitor.visit(this, blockScope)) {
            TypeReference[] typeReferenceArr = this.typeReferences;
            int length = typeReferenceArr == null ? 0 : typeReferenceArr.length;
            for (int i10 = 0; i10 < length; i10++) {
                this.typeReferences[i10].traverse(aSTVisitor, blockScope);
            }
        }
        aSTVisitor.endVisit(this, blockScope);
    }

    @Override
    public void traverse(ASTVisitor aSTVisitor, ClassScope classScope) {
        if (aSTVisitor.visit(this, classScope)) {
            TypeReference[] typeReferenceArr = this.typeReferences;
            int length = typeReferenceArr == null ? 0 : typeReferenceArr.length;
            for (int i10 = 0; i10 < length; i10++) {
                this.typeReferences[i10].traverse(aSTVisitor, classScope);
            }
        }
        aSTVisitor.endVisit(this, classScope);
    }
}
