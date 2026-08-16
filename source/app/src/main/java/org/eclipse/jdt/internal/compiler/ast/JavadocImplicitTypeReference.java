package org.eclipse.jdt.internal.compiler.ast;

import org.eclipse.jdt.internal.compiler.ASTVisitor;
import org.eclipse.jdt.internal.compiler.impl.Constant;
import org.eclipse.jdt.internal.compiler.lookup.ArrayBinding;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.ClassScope;
import org.eclipse.jdt.internal.compiler.lookup.ReferenceBinding;
import org.eclipse.jdt.internal.compiler.lookup.Scope;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;

public class JavadocImplicitTypeReference extends TypeReference {
    public char[] token;

    public JavadocImplicitTypeReference(char[] cArr, int i10) {
        this.token = cArr;
        this.sourceStart = i10;
        this.sourceEnd = i10;
    }

    @Override
    public TypeReference augmentTypeWithAdditionalDimensions(int i10, Annotation[][] annotationArr, boolean z10) {
        return null;
    }

    @Override
    public char[] getLastToken() {
        return this.token;
    }

    @Override
    public TypeBinding getTypeBinding(Scope scope) {
        this.constant = Constant.NotAConstant;
        ReferenceBinding enclosingReceiverType = scope.enclosingReceiverType();
        this.resolvedType = enclosingReceiverType;
        return enclosingReceiverType;
    }

    @Override
    public char[][] getTypeName() {
        char[] cArr = this.token;
        if (cArr != null) {
            return new char[][]{cArr};
        }
        return null;
    }

    @Override
    public TypeBinding internalResolveType(Scope scope, int i10) {
        this.constant = Constant.NotAConstant;
        TypeBinding typeBinding = this.resolvedType;
        if (typeBinding != null) {
            if (typeBinding.isValidBinding()) {
                return this.resolvedType;
            }
            int problemId = this.resolvedType.problemId();
            if (problemId == 1 || problemId == 2) {
                return this.resolvedType.closestMatch();
            }
            return null;
        }
        TypeBinding typeBinding2 = getTypeBinding(scope);
        this.resolvedType = typeBinding2;
        if (typeBinding2 == null) {
            return null;
        }
        boolean isValidBinding = typeBinding2.isValidBinding();
        if (!isValidBinding) {
            reportInvalidType(scope);
            int problemId2 = typeBinding2.problemId();
            if ((problemId2 != 1 && problemId2 != 2) || (typeBinding2 = typeBinding2.closestMatch()) == null) {
                return null;
            }
        }
        if (typeBinding2.isArrayType() && ((ArrayBinding) typeBinding2).leafComponentType == TypeBinding.VOID) {
            scope.problemReporter().cannotAllocateVoidArray(this);
            return null;
        }
        if (isTypeUseDeprecated(typeBinding2, scope)) {
            reportDeprecatedType(typeBinding2, scope);
        }
        if (typeBinding2.isGenericType() || typeBinding2.isParameterizedType()) {
            typeBinding2 = scope.environment().convertToRawType(typeBinding2, true);
        }
        if (!isValidBinding) {
            return typeBinding2;
        }
        this.resolvedType = typeBinding2;
        return typeBinding2;
    }

    @Override
    public boolean isThis() {
        return true;
    }

    @Override
    public StringBuffer printExpression(int i10, StringBuffer stringBuffer) {
        return new StringBuffer();
    }

    @Override
    public void reportDeprecatedType(TypeBinding typeBinding, Scope scope) {
        scope.problemReporter().javadocDeprecatedType(typeBinding, this, scope.getDeclarationModifiers());
    }

    @Override
    public void reportInvalidType(Scope scope) {
        scope.problemReporter().javadocInvalidType(this, this.resolvedType, scope.getDeclarationModifiers());
    }

    @Override
    public void traverse(ASTVisitor aSTVisitor, BlockScope blockScope) {
        aSTVisitor.visit(this, blockScope);
        aSTVisitor.endVisit(this, blockScope);
    }

    @Override
    public void traverse(ASTVisitor aSTVisitor, ClassScope classScope) {
        aSTVisitor.visit(this, classScope);
        aSTVisitor.endVisit(this, classScope);
    }
}
