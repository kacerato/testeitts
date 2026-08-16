package org.eclipse.jdt.core.dom;

import org.eclipse.jdt.internal.compiler.ast.ConstructorDeclaration;
import org.eclipse.jdt.internal.compiler.lookup.ClassScope;
import org.eclipse.jdt.internal.compiler.lookup.CompilationUnitScope;
import org.eclipse.jdt.internal.compiler.lookup.MethodScope;

public class NodeSearcher extends org.eclipse.jdt.internal.compiler.ASTVisitor {
    public org.eclipse.jdt.internal.compiler.ast.TypeDeclaration enclosingType;
    public org.eclipse.jdt.internal.compiler.ast.ASTNode found;
    public int position;

    public NodeSearcher(int i10) {
        this.position = i10;
    }

    @Override
    public boolean visit(ConstructorDeclaration constructorDeclaration, ClassScope classScope) {
        int i10 = constructorDeclaration.declarationSourceStart;
        int i11 = this.position;
        if (i10 > i11 || i11 > constructorDeclaration.declarationSourceEnd) {
            return true;
        }
        this.found = constructorDeclaration;
        return false;
    }

    @Override
    public boolean visit(org.eclipse.jdt.internal.compiler.ast.FieldDeclaration fieldDeclaration, MethodScope methodScope) {
        int i10 = fieldDeclaration.declarationSourceStart;
        int i11 = this.position;
        if (i10 > i11 || i11 > fieldDeclaration.declarationSourceEnd) {
            return true;
        }
        this.found = fieldDeclaration;
        return false;
    }

    @Override
    public boolean visit(org.eclipse.jdt.internal.compiler.ast.Initializer initializer, MethodScope methodScope) {
        int i10 = initializer.declarationSourceStart;
        int i11 = this.position;
        if (i10 > i11 || i11 > initializer.declarationSourceEnd) {
            return true;
        }
        this.found = initializer;
        return false;
    }

    @Override
    public boolean visit(org.eclipse.jdt.internal.compiler.ast.TypeDeclaration typeDeclaration, ClassScope classScope) {
        int i10 = typeDeclaration.declarationSourceStart;
        int i11 = this.position;
        if (i10 > i11 || i11 > typeDeclaration.declarationSourceEnd) {
            return false;
        }
        this.enclosingType = typeDeclaration;
        return true;
    }

    @Override
    public boolean visit(org.eclipse.jdt.internal.compiler.ast.MethodDeclaration methodDeclaration, ClassScope classScope) {
        int i10 = methodDeclaration.declarationSourceStart;
        int i11 = this.position;
        if (i10 > i11 || i11 > methodDeclaration.declarationSourceEnd) {
            return true;
        }
        this.found = methodDeclaration;
        return false;
    }

    @Override
    public boolean visit(org.eclipse.jdt.internal.compiler.ast.TypeDeclaration typeDeclaration, CompilationUnitScope compilationUnitScope) {
        int i10 = typeDeclaration.declarationSourceStart;
        int i11 = this.position;
        if (i10 > i11 || i11 > typeDeclaration.declarationSourceEnd) {
            return false;
        }
        this.enclosingType = typeDeclaration;
        return true;
    }
}
