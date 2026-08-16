package org.eclipse.jdt.internal.compiler.ast;

import org.eclipse.jdt.internal.compiler.ASTVisitor;
import org.eclipse.jdt.internal.compiler.impl.Constant;
import org.eclipse.jdt.internal.compiler.lookup.Binding;
import org.eclipse.jdt.internal.compiler.lookup.BlockScope;
import org.eclipse.jdt.internal.compiler.lookup.ClassScope;
import org.eclipse.jdt.internal.compiler.lookup.PackageBinding;
import org.eclipse.jdt.internal.compiler.lookup.Scope;
import org.eclipse.jdt.internal.compiler.lookup.TypeBinding;

public class JavadocQualifiedTypeReference extends QualifiedTypeReference {
    public PackageBinding packageBinding;
    public int tagSourceEnd;
    public int tagSourceStart;

    public JavadocQualifiedTypeReference(char[][] cArr, long[] jArr, int i10, int i11) {
        super(cArr, jArr);
        this.tagSourceStart = i10;
        this.tagSourceEnd = i11;
        this.bits |= 32768;
    }

    private TypeBinding internalResolveType(Scope scope, boolean z10) {
        this.constant = Constant.NotAConstant;
        TypeBinding typeBinding = this.resolvedType;
        if (typeBinding != null) {
            return typeBinding.isValidBinding() ? this.resolvedType : this.resolvedType.closestMatch();
        }
        TypeBinding typeBinding2 = getTypeBinding(scope);
        this.resolvedType = typeBinding2;
        if (typeBinding2 == null) {
            return null;
        }
        if (typeBinding2.isValidBinding()) {
            if (typeBinding2.isGenericType() || typeBinding2.isParameterizedType()) {
                this.resolvedType = scope.environment().convertToRawType(typeBinding2, true);
            }
            return this.resolvedType;
        }
        Binding typeOrPackage = scope.getTypeOrPackage(this.tokens);
        if (typeOrPackage instanceof PackageBinding) {
            this.packageBinding = (PackageBinding) typeOrPackage;
        } else {
            reportInvalidType(scope);
        }
        return null;
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
    public TypeBinding resolveType(BlockScope blockScope, boolean z10, int i10) {
        return internalResolveType(blockScope, z10);
    }

    @Override
    public void traverse(ASTVisitor aSTVisitor, BlockScope blockScope) {
        aSTVisitor.visit(this, blockScope);
        aSTVisitor.endVisit(this, blockScope);
    }

    @Override
    public void reportDeprecatedType(TypeBinding typeBinding, Scope scope, int i10) {
        scope.problemReporter().javadocDeprecatedType(typeBinding, this, scope.getDeclarationModifiers(), i10);
    }

    @Override
    public TypeBinding resolveType(ClassScope classScope, int i10) {
        return internalResolveType((Scope) classScope, false);
    }

    @Override
    public void traverse(ASTVisitor aSTVisitor, ClassScope classScope) {
        aSTVisitor.visit(this, classScope);
        aSTVisitor.endVisit(this, classScope);
    }
}
